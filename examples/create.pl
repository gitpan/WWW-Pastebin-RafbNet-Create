#!/usr/bin/perl -w

use strict;
use warnings;

use lib '../lib';
use WWW::Pastebin::RafbNet::Create;

my $text = do { local $/; <STDIN>; };
my $paster = WWW::Pastebin::RafbNet::Create->new;

$paster->paste( $text )
    or die $paster->error;

print "Your paste can be found on $paster\n";


=pod

Usage: cat some_file_to_paste | perl create.pl

=cut