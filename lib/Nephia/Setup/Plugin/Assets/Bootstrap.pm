package Nephia::Setup::Plugin::Assets::Bootstrap;
use 5.008005;
use strict;
use warnings;
use parent 'Nephia::Setup::Plugin';

our $VERSION = "0.01";

sub fix_setup {
    my $self = shift;
    $self->setup->action_chain->append('Assets::Bootstrap' => \&_assets_bootstrap);
}

sub _assets_bootstrap {
    my ($setup, $context) = @_;
    $setup->assets_archive('http://getbootstrap.com/2.3.2/assets/bootstrap.zip', qw/static/);
}

1;
__END__

=encoding utf-8

=head1 NAME

Nephia::Setup::Plugin::Assets::Bootstrap - Download and deploy twitter-bootstrap into your webapp

=head1 SYNOPSIS

    $ nephia-setup YourApp --plugins Assets::Bootstrap

=head1 DESCRIPTION

Nephia::Setup::Plugin::Assets::Bootstrap is downloader for Nephia::Setup that is downloads twitter-bootstrap.

=head1 LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ytnobody E<lt>ytnobody@gmail.comE<gt>

=cut

