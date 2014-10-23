package Database::Migrator::Types;
{
  $Database::Migrator::Types::VERSION = '0.09';
}
BEGIN {
  $Database::Migrator::Types::AUTHORITY = 'cpan:DROLSKY';
}

use strict;
use warnings;

use MooseX::Types::Moose;
use MooseX::Types::Path::Class;
use Path::Class ();

use parent 'MooseX::Types::Combine';

__PACKAGE__->provide_types_from(
    'MooseX::Types::Moose',
    'MooseX::Types::Path::Class',
);

1;

=for Pod::Coverage .*

=cut
