
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "A system for implementing database migrations",
  "AUTHOR" => "Dave Rolsky <autarch\@urth.org>",
  "BUILD_REQUIRES" => {
    "Moose" => 0,
    "Test::Fatal" => 0,
    "Test::More" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Database-Migrator",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "Database::Migrator",
  "PREREQ_PM" => {
    "DBI" => 0,
    "Eval::Closure" => 0,
    "File::Slurp" => 0,
    "IPC::Run3" => 0,
    "Log::Dispatch" => 0,
    "Moose::Role" => 0,
    "Moose::Util::TypeConstraints" => 0,
    "MooseX::Getopt::Dashes" => 0,
    "MooseX::Types" => 0,
    "MooseX::Types::Combine" => 0,
    "MooseX::Types::Path::Class" => 0,
    "namespace::autoclean" => 0,
    "parent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.04",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



