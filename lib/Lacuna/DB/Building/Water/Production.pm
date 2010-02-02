package Lacuna::DB::Building::Water::Production;

use Moose;
extends 'Lacuna::DB::Building::Water';

has '+image' => ( 
    default => 'water-production', 
);

has '+name' => (
    default => 'Water Production Plant',
);

has '+food_to_build' => (
    default => -100,
);

has '+energy_to_build' => (
    default => -100,
);

has '+ore_to_build' => (
    default => -100,
);

has '+water_to_build' => (
    default => -100,
);

has '+waste_to_build' => (
    default => 20,
);

has '+time_to_build' => (
    default => 95,
);

has '+food_consumption' => (
    default => 10,
);

has '+energy_consumption' => (
    default => 100,
);

has '+ore_consumption' => (
    default => 100,
);

has '+water_production' => (
    default => 170,
);

has '+waste_production' => (
    default => 20,
);



no Moose;
__PACKAGE__->meta->make_immutable;
