#!/usr/bin/perl

use strict;
use warnings;
use CGI;
###part1 perl below


my $q = CGI->new;

my $number = $q->param('number');


print $q->header;

print $number;



#####part2 HTML 


print <<"HTML";

<html>
<head>
    <title>Enter your Fav Num</title>
</head>
<body>


<form action="" method="post">
   <h1><form method="POST" action="">
        Enter your number:
        <input type="text" name="number">
</h1>
    <input type="submit">
</form>

HTML
