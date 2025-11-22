#!/usr/bin/perl

use strict;
use warnings;

print "Enter your number: ";
my $number = <STDIN>;
chomp($number);

if ($number eq "") {
    print "You must enter a number!\n";
    exit;
}

print "You entered: $number\n";
print "Multiplication Table (1 to 10)\n";
print "------------------------------\n";

for my $i (1..10) {
    my $ans = $number * $i;
    print "$number x $i = $ans\n";
}
