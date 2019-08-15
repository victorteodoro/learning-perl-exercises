#!/usr/bin/env perl

use Modern::Perl '2019';
use autodie;

my @lines = `perldoc -uf atan2`;
foreach (@lines) {
    s/\w<([^>]+)>/\U$1/g;
    print;
}