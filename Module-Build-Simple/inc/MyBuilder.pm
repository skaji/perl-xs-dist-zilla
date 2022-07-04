package MyBuilder;
use strict;
use warnings;

use parent 'Module::Build';

sub new {
    my ($class, %argv) = @_;
    $class->SUPER::new(
        %argv,
        extra_compiler_flags => '-I/opt/homebrew/openssl/include -I/usr/local/opt/openssl/include',
        extra_linker_flags => '-L/opt/homebrew/openssl/lib -L/usr/local/opt/openssl/lib -lssl -lcrypto',
    );
}

1;
