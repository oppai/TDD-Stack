use strict;
use warnings;

use Test::More;
use Data::Util qw/
    is_instance
/;

BEGIN {
    use_ok 'Stack';
    can_ok 'Stack', qw/new count pop/;
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

subtest 'pop(), take out first element in stack' => sub {
    subtest 'one element in stack' => sub {
        my $stack = Stack->new(1);
        is $stack->pop, 1;
        is $stack->count, 0;
    };
    subtest 'two elements in stack' => sub {
        my $stack = Stack->new(1,2);
        is $stack->pop, 2;
        is $stack->count, 1;
    };
    subtest 'no elements in stack' => sub {
        my $stack = Stack->new();
        is $stack->pop, undef;
        is $stack->count, 0;
    };
};

done_testing;
