#!/usr/bin/perl -w

use strict;


use constant THRESHOLD => 50;

my $count = 0;
my $number = 0;

open FILE, ">>log.txt";

while (<STDIN>) {
    print FILE $_;
    if ($_ =~ /28ready/) {
        print "Send start request\n";
        system("./s");
    }
    if ($_ =~ /doremi/) {
        ++$count;
    }
    if ($count > THRESHOLD) {
        print "okok!! reboot\n";
        last;
    }
}

close FILE;

open FILE, "num.txt";
$number = <FILE>;
++$number;
close FILE;

print "Testing $number OK!\n";

open FILE, ">num.txt";
print FILE $number;
close FILE;

print "Rebooting...\n";
