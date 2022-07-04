use Crypt::OpenSSL::Guess qw(openssl_inc_paths openssl_lib_paths);

my %args = (
    INC => openssl_inc_paths(),
    LIBS => [openssl_lib_paths . " -lssl -lcrypto"],
);

if ($ENV{AUTHOR_TESTING}) {
    $args{CCFLAGS} = "-Wall -Wextra -Werror";
}
