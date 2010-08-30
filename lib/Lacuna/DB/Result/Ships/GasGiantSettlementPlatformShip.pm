package Lacuna::DB::Result::Ships::GasGiantSettlementPlatformShip;

use Moose;
no warnings qw(uninitialized);
extends 'Lacuna::DB::Result::Ships';


use constant pilotable      => 1;

use constant prereq         => { class=> 'Lacuna::DB::Result::Building::GasGiantLab',  level => 1 };
use constant food_cost      => 36000;
use constant water_cost     => 90000;
use constant energy_cost    => 540000;
use constant ore_cost       => 450000;
use constant time_cost      => 48000;
use constant waste_cost     => 123000;
use constant base_speed     => 500;
use constant base_stealth   => 0;
use constant base_hold_size => 0;

sub arrive {
    my ($self) = @_;
    if ($self->direction eq 'out') {
        my $lab = $self->body->get_building_of_class('Lacuna::DB::Result::Building::GasGiantLab');
        if (defined $lab) {
            $self->foreign_body->add_plan('Lacuna::DB::Result::Building::Permanent::GasGiantPlatform', 1, $lab->level);
        }
    }
    else {
        $self->land;
    }
}

no Moose;
__PACKAGE__->meta->make_immutable(inline_constructor => 0);
