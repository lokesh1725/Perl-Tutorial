#!/usr/bin/perl

use strict;
use warnings;
use CGI;

my $q = CGI->new;
my $number = $q->param('number');

print $q->header;

print <<"HTML";
<html>
<head>
    <title>Enter your Fav Num</title>
</head>
<body>

<form action="" method="post">
    <h1>Enter your number:</h1>
  
    <input type="text" name="number" value="">
    <br><br>
    <input type="submit" value="Submit">
</form>
HTML

# Show result only when a number is entered
if (defined $number && $number ne "") {
    print "<h2>You entered: $number</h2>";
    print "<h3>Multiplication Table (1 to 10)</h3>";

    print "<table border='1' cellpadding='5'>";
    print "<tr><th>N</th><th>$number * N</th><th>Answer</th></tr>";

    for my $i (1..10) {
        my $ans = $number * $i;
        print "<tr><td>$i</td><td>$number x $i</td><td>$ans</td></tr>";
    }

    print "</table>";
}

print "</body></html>";
