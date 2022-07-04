package MyBuilder;
use strict;
use warnings;

use Crypt::OpenSSL::Guess qw(openssl_inc_paths openssl_lib_paths);

use parent 'Module::Build::XSUtil';

sub new {
    my ($class, %argv) = @_;
    $class->SUPER::new(
        %argv,
        cc_warnings => 1, # powered by Module::Build::XSUtil
        generate_ppport_h => 'lib/ppport.h', # powered by Module::Build::XSUtil
        extra_compiler_flags => openssl_inc_paths(),
        extra_linker_flags => openssl_lib_paths . " -lssl -lcrypto",
    );
}

1;
