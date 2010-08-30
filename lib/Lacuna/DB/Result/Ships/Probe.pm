package Lacuna::DB::Result::Ships::Probe;

use Moose;
no warnings qw(uninitialized);
extends 'Lacuna::DB::Result::Ships';

use constant prereq         => { class=> 'Lacuna::DB::Result::Building::Observatory',  level => 1 };
use constant food_cost      => 100;
use constant water_cost     => 300;
use constant energy_cost    => 2000;
use constant ore_cost       => 1700;
use constant time_cost      => 3600;
use constant waste_cost     => 500;
use constant base_speed     => 5000;
use constant base_stealth   => 1000;
use constant base_hold_size => 0;

sub arrive {
    my ($self) = @_;
    my $empire = $self->body->empire;
    $empire->add_probe($self->foreign_star_id, $self->body_id);
    $self->delete;
}

no Moose;
__PACKAGE__->meta->make_immutable(inline_constructor => 0);
