package Nephia::Setup::Plugin::Assets::Bootstrap;
use 5.008005;
use strict;
use warnings;
use parent 'Nephia::Setup::Plugin';
use Nephia::Setup::Plugin::Assets::Bootstrap::Archive_2_3_2;

our $VERSION = "0.02";
our $ARCHIVE_FILENAME = 'bootstrap-2.3.2.zip';

sub fix_setup {
    my $self = shift;
    $self->setup->action_chain->append('Assets::Bootstrap' => \&_assets_bootstrap);
}

sub _assets_bootstrap {
    my ($setup, $context) = @_;
    my $data = Nephia::Setup::Plugin::Assets::Bootstrap::Archive_2_3_2->data;
    $setup->spew($ARCHIVE_FILENAME, $data); 
    $setup->assets_archive($ARCHIVE_FILENAME, qw/static/);
}

1;
__END__

=encoding utf-8

=head1 NAME

Nephia::Setup::Plugin::Assets::Bootstrap - Deploy twitter-bootstrap(v.2.3.2) into your webapp

=head1 SYNOPSIS

    $ nephia-setup YourApp --plugins Assets::Bootstrap

=head1 DESCRIPTION

Nephia::Setup::Plugin::Assets::Bootstrap is setup task for Nephia::Setup that deploys twitter-bootstrap into your application.

=head1 LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ytnobody E<lt>ytnobody@gmail.comE<gt>

=cut

