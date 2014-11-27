use strict;
use warnings;

use Test::More;
use Data::Util qw/
    is_instance
/;

BEGIN {
    use_ok 'Stack';
    can_ok 'Stack', qw/new count/;
}

subtest 'new(), create instance' => sub {
    subtest 'success' => sub {
        my $stack = Stack->new;
        ok is_instance($stack,'Stack');
        my $inited_stack = Stack->new(1,2,3,4);
        ok is_instance($inited_stack,'Stack');
    };
};

subtest 'count(), return stack size' => sub {
    subtest 'stack is empty' => sub {
        my $stack = Stack->new();
        is $stack->count, 0;
    };
    subtest 'stack is (1,2,3)' => sub {
        my $stack = Stack->new(1,2,3);
        is $stack->count, 3;
    };

};

done_testing;
