use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'Perf::ARM',
    'VERSION_FROM' => 'ARM.pm', # finds $VERSION
    'LIBS'	=> ['-larm'],   # e.g., '-lm' 
    'DEFINE'	=> '+DAportable +e', 
    'INC'	=> '', 

    'dist' => {
	# use gzip, not compress, and force over existing
	'COMPRESS'  => "gzip -f",
    },
);

    # used during various portions of the development
    #'DEFINE'	=> '-D_HPUX_SOURCE +e', 
    #'DEFINE'	=> '-Ae -D__hpux',     # e.g., '-DHAVE_SOMETHING' 
    #'DEFINE'	=> '-D_HPUX_SOURCE +DA1.0 +DS1.1 +e',
    #'LIBS'	=> ['-larm -lpthread'],   # e.g., '-lm' 
