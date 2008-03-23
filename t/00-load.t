#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 8;

BEGIN {
    use_ok('Carp');
    use_ok('URI');
    use_ok('LWP::UserAgent');
    use_ok('Class::Data::Accessor');
    use_ok( 'WWW::Pastebin::RafbNet::Create' );
}

diag( "Testing WWW::Pastebin::RafbNet::Create $WWW::Pastebin::RafbNet::Create::VERSION, Perl $], $^X" );
use WWW::Pastebin::RafbNet::Create;
my $o = WWW::Pastebin::RafbNet::Create->new( timeout => 10 );

isa_ok($o,'WWW::Pastebin::RafbNet::Create');
can_ok($o, qw(    paste_uri
    error
    response
    timeout
    ua
    new
    paste
    _set_error
    _make_valid_languages
    _make_valid_tabs));

is($o->timeout, 10, '->timeout');