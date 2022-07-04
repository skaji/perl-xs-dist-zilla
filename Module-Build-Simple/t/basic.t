use strict;
use warnings;
use Test::More;

use Sample;

diag "you have ", Sample::openssl_version();

pass "ok";

done_testing;
