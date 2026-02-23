use strict;
use warnings;
use POSIX qw(strftime);
use Time::Local;
use Math::Trig;   # for pow equivalent

print "Enter loan amount: ";
my $amount = <STDIN>;
chomp($amount);

print "Enter loan term (months): ";
my $term = <STDIN>;
chomp($term);

print "Enter annual interest rate (in %): ";
my $annual_rate = <STDIN>;
chomp($annual_rate);

# Convert percentage to decimal
$annual_rate = $annual_rate / 100.0;

# Current date
my ($sec,$min,$hour,$mday,$mon,$year) = localtime();
$year += 1900;
my $day = 15;

my @months = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);

my $monthly_rate = $annual_rate / 12.0;

# EMI calculation
my $emi = $amount * $monthly_rate * ( (1 + $monthly_rate) ** $term ) /
          ( ( (1 + $monthly_rate) ** $term ) - 1 );

my $balance = $amount;
my $total_interest = 0;

print "\nDate\t\tPrincipal\tInterest\tEMI\n";

for (my $i = 0; $i < $term; $i++) {

    my $interest = $balance * $monthly_rate;
    my $principal = $emi - $interest;

    if ($principal > $balance) {
        $principal = $balance;
    }

    $balance -= $principal;
    $total_interest += $interest;

    printf "%s %d, %d\t%.2f\t\t%.2f\t\t%.2f\n",
           $months[$mon], $day, $year,
           $principal, $interest, $emi;

    $mon++;
    if ($mon == 12) {
        $mon = 0;
        $year++;
    }
}

printf "\nTotal Interest = %.2f", $total_interest;
printf "\nTotal Payment  = %.2f\n", $emi * $term;