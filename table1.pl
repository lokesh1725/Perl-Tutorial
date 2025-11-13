#!/usr/bin/perl
use strict;
use warnings;

print "Content-type: text/html\n\n";

print <<"HTML";
<html>
<head>
<title>45 Times Table (1 to 20)</title>
</head>
<body>
<h2>45 Multiplication Table (1 to 20)</h2>

<table border="1">
<tr><th>N</th><th>45 * N</th><th>Answer</th></tr>

<tr><td>1</td><td>45 * 1</td><td>45</td></tr>
<tr><td>2</td><td>45 * 2</td><td>90</td></tr>
<tr><td>3</td><td>45 * 3</td><td>135</td></tr>
<tr><td>4</td><td>45 * 4</td><td>180</td></tr>
<tr><td>5</td><td>45 * 5</td><td>225</td></tr>
<tr><td>6</td><td>45 * 6</td><td>270</td></tr>
<tr><td>7</td><td>45 * 7</td><td>315</td></tr>
<tr><td>8</td><td>45 * 8</td><td>360</td></tr>
<tr><td>9</td><td>45 * 9</td><td>405</td></tr>
<tr><td>10</td><td>45 * 10</td><td>450</td></tr>
<tr><td>11</td><td>45 * 11</td><td>495</td></tr>
<tr><td>12</td><td>45 * 12</td><td>540</td></tr>
<tr><td>13</td><td>45 * 13</td><td>585</td></tr>
<tr><td>14</td><td>45 * 14</td><td>630</td></tr>
<tr><td>15</td><td>45 * 15</td><td>675</td></tr>
<tr><td>16</td><td>45 * 16</td><td>720</td></tr>
<tr><td>17</td><td>45 * 17</td><td>765</td></tr>
<tr><td>18</td><td>45 * 18</td><td>810</td></tr>
<tr><td>19</td><td>45 * 19</td><td>855</td></tr>
<tr><td>20</td><td>45 * 20</td><td>900</td></tr>

</table>

</body>
</html>
HTML

exit;
