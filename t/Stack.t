use strict;
use warnings;

use Test::More;
use Data::Util qw/
    is_instance
/;

BEGIN {
    use_ok 'Stack';
}

subtest 'create instance' => sub {
    subtest 'success' => sub {
        my $stack = Stack->new;
        ok is_instance($stack,'Stack');
    };
};

done_testing;
