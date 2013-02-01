#!/usr/bin/perl
use strict;
use warnings;

use Pod::2::html;

open(STDOUT, ">out.dat"); 
open(STDERR, ">err.dat");

my $pod = Pod::2::html->new('DWAVDesk.xs');
$pod->template('templates/main.tmpl');
$pod->readpod(-head1 => "a", -head3 => "c", -item => "d");
