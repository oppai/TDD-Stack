package Stack;

use strict;
use warnings;

sub new {
    my $class = shift;
    my @elems = @_;
    return bless {
        'elements' => \@elems,
    }, $class;
}

sub count {
    my $self = shift;
    return scalar @{ $self->{elements} };
}

1;
