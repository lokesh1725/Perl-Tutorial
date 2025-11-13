#!/usr/bin/perl
use strict;
use warnings;

print "Content-type: text/html\n\n";

print <<"HTML";
<html>
<head>
<title>45 Times Table (1 to 50)</title>
</head>
<body>
<h2>45 Multiplication Table (1 to 50)</h2>

<table border="1">
<tr>
<th>N</th>
<th>45 * N</th>
</tr>
HTML
# Loop to print 50 rows
for my $i (1..50) {
    my $result = 45 * $i;
    print "<tr><td>$i</td><td>$result</td></tr>\n";
}
print <<"HTML";
</table>

</body>
</html>
HTML

exit;
