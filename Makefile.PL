use 5.010001;
use ExtUtils::MakeMaker;
use Config;

my $project = 'DWAVDesk';

sub libs {
  if (($Config{'archname'} =~ /64/) && ($^O =~ /linux/i)) {
    '-L/usr/local/lib64  -ldwavdapi';
  } else {
    '-L/usr/local/lib -ldwavdapi';
  }
}

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
  NAME              => $project,
  VERSION_FROM      => 'lib/'.$project.'.pm', # finds $VERSION
  PREREQ_PM         => {}, # e.g., Module::Name => 1.1
  ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
    (ABSTRACT_FROM  => 'lib/'.$project.'.pm', # retrieve abstract from module
     AUTHOR         => 'Yuliya Belyaeva <y.belyaeva@drweb.com>') : ()),
  LIBS              => [libs()], # e.g., '-lm'
  DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
  INC               => '-I.', # e.g., '-I. -I/usr/include/other'
  XSPROTOARG        => '-noprototypes',
  TYPEMAPS          => ['perlobject.map'],
  PERL_MALLOC_OK    => 1
);
