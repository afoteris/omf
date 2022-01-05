use strict;
use warnings;

my $fh;
my $input = 'report.txt';
my $output = 'output.txt';
my $str;

open $fh, '<', $input or die $!;
while (<$fh>) {
    $str .= $_;
}
close $fh;

my @matches = $str =~ m/\$_SESSION\[.+?]/g;

my %matches = map {$_, 1} @matches;
@matches = keys %matches;

open($fh, '>', $output) or die $!;
for (my $i = 0; $i < scalar(@matches); $i++) {
    print $fh "$matches[$i]\n";
}
close $fh;
