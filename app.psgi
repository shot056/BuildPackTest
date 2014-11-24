use strict;
use warnings;
use Mojo::Server::PSGI;
use Plack::Builder;
use FindBin;
use lib "$FindBin::Bin/lib";
use BuildPackTest;

my $psgi = Mojo::Server::PSGI->new( app => BuildPackTest->new );
my $app  = $psgi->to_psgi_app;

builder {
    $app;
};
