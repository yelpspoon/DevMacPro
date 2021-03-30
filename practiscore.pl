#!/usr/bin/perl -w

use strict;
use v5.10;
use English;

use WWW::Mechanize;
use HTML::TreeBuilder;
use Mail::Sendmail;

my $USER = $ENV{USER} or die 'USER is not set';
my $PASSWORD = $ENV{PASSWORD} or die 'PASSWORD is not set';
my $FROM = $ENV{FROM} or die 'FROM is not set';
my $TO = $ENV{TO} || $USER;
my $SITE = 'https://practiscore.com';
my $DB = $ENV{DB} || do { $PROGRAM_NAME =~ /(.*)\.\w+$/; "$1.csv" };

my %seen;
if(open(my $f, '<', $DB)) {
    %seen = map { (split(','))[0] => 1 } <$f>;
}

my $ua = new WWW::Mechanize(agent => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15');
$ua->get("$SITE/login");
$ua->submit_form(fields =>
                 {
                     username => $USER,
                     password => $PASSWORD,
                     previous => '',
                     remember => 'remember',
                 });
my $r = $ua->get("/dashboard/findevents");
my $root = HTML::TreeBuilder->new_from_content($r->decoded_content);
foreach my $tr (($root->find_by_attribute('id', 'findevents')->find_by_tag_name('table'))[1]->find_by_tag_name('tr')) {
    my @tds = $tr->find_by_tag_name('td') or next;
    my $a = ($tds[0]->find_by_tag_name('a'))[0];
    my $link = $a->attr('href');
    next if($seen{$link});
    my $name = ($a->content_list)[0];
    my $date = ($tds[1]->content_list)[0];
    next if(($tds[2]->find_by_tag_name('i'))[0]->attr('class') =~ /text-danger/);
    sendmail(
        From => $FROM,
        To => $TO,
        Subject => 'Practiscore: new match registration available',
        Message => "$name on $date: $SITE/$link\n"
        );
    open(my $f, '>>', $DB) or die "Cannot create $DB: $OS_ERROR\n";
    say $f "$link,$name,$date";
}
