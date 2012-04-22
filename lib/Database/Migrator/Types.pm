package Database::Migrator::Types;
{
  $Database::Migrator::Types::VERSION = '0.04';
}

use strict;
use warnings;

use parent 'MooseX::Types::Combine';

__PACKAGE__->provide_types_from(
    'MooseX::Types::Moose',
    'MooseX::Types::Path::Class',
);

1;
