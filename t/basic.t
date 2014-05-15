use strict;
use Config;

use Test::More tests => 1;

my $output = `$Config{perlpath} -I lib bin/session-token`;

like($output, qr/^[A-Za-z0-9]{22}$/);
