#!/usr/bin/perl
use strict;
use warnings;
use DBI;

#  Use full absolute path
my $dbfile = "/var/www/html/sdn/movies.db";

#  Check if the DB file actually exists
if (! -e $dbfile) {
    die "ERROR: Database file not found at: $dbfile\n";
}

my $dbh = DBI->connect("dbi:SQLite:dbname=$dbfile","","", {
    RaiseError => 1,
    AutoCommit => 1
}) or die $DBI::errstr;

print "Connected to SQLite DB: $dbfile\n\n";

#  List all tables to verify what is inside this DB
my $sth = $dbh->prepare("SELECT name FROM sqlite_master WHERE type='table'");
$sth->execute();

print "Tables in this database:\n";
my @tables;
while (my @row = $sth->fetchrow_array) {
    print " - $row[0]\n";
    push @tables, $row[0];
}
$sth->finish();

print "\n";

#  Check if 'movie' table exists
my $has_movie = 0;
foreach my $t (@tables) {
    $has_movie = 1 if $t eq 'movie';
}

if (!$has_movie) {
    print "⚠️ No 'movie' table found in this DB. Not running movie query.\n";
    $dbh->disconnect;
    exit;
}

# If we reach here, movie table exists → safe to query
my $sql = "SELECT movie_id, title, release_date FROM movie LIMIT 5";
my $sth2 = $dbh->prepare($sql);
$sth2->execute();

print "Sample movies:\n";
while (my @row = $sth2->fetchrow_array()) {
    print "MovieID: $row[0], Title: $row[1], Release: $row[2]\n";
}

$sth2->finish();
$dbh->disconnect;

print "\nDone.\n";
