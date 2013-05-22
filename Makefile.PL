use 5.010001;
use ExtUtils::MakeMaker;
use Config;

my $project = 'DWAVDesk';

sub libs {
  if ($^O =~ /linux/i) {
    if (($Config{'archname'} =~ /64/)) {
      '-L/usr/local/lib64  -ldwavdapi';
    } else {
      '-L/usr/local/lib -ldwavdapi';
    }
  } elsif ($^O =~ /mswin32/i || $^O =~ /cygwin/i) {
    '-L .\\dwavdapi\\lib dwavdapi.lib ';
  } else {
    die("Unsupported system: $^O");
  }
}

sub includes {
  if ($^O =~ /linux/i) {
    '-I.';
  } elsif ($^O =~ /mswin32/i || $^O =~ /cygwin/i) {
    '-I .\\dwavdapi\\include';
  } else {
    die("Unknown system: $^O"); 
  }
}

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
  NAME              => $project,
  VERSION_FROM      => 'lib/'.$project.'.pm', # finds $VERSION
  AUTHOR            => 'Yuliya Belyaeva <y.belyaeva@drweb.com>',
  LIBS              => [libs()], # e.g., '-lm'
  INC               => includes(), # e.g., '-I. -I/usr/include/other'
  XSPROTOARG        => '-noprototypes',
  TYPEMAPS          => ['perlobject.map'],
  PERL_MALLOC_OK    => 1
);
