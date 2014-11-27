package Stack;

use strict;
use warnings;

sub new {
    my $class = shift;
    my @elems = @_;
    return bless {
        '_elements' => \@elems,
        '_count'     => scalar @elems,
    }, $class;
}

sub count {
    my $self = shift;
    return $self->{_count};
}

sub pop {
    my $self = shift;
    my $last_element = $self->{_elements}[ -1 ];
    $self->{_count} -= 1;
    return $last_element;
}

1;
