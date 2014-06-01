package JavaScript::ExtJS::V3;

# ABSTRACT: Perl distribution for ExtJS 3.x sources
our $VERSION = '3.4.11';

use File::ShareDir qw(dist_dir);
require Path::Class;

sub dir {
  my $dist = shift || __PACKAGE__;
  $dist =~ s/\:\:/\-/g;
  return Path::Class::dir(dist_dir($dist),'ext-3.4.1');
}

1;

__END__

=pod

=head1 NAME

JavaScript::ExtJS::V3 - Perl distribution for ExtJS 3.x sources

=head1 VERSION

ExtJS v3.4.11 (GPL)

=head1 SYNOPSIS

  use JavaScript::ExtJS::V3 '3.4.11';
  
  my $dir = JavaScript::ExtJS::V3->dir;
  print "ExtJS sources are installed in: $dir\n";

=head1 DESCRIPTION

This module contains ExtJS 3.x sources packaged for distribution on CPAN. Upon installation,
the source directory is installed into the system share dir (see L<File::ShareDir>) and made 
available via class method C<dir>. This is useful for web apps that depend on ExtJS.

=head1 METHODS

=head2 dir

Returns the ExtJS source directory as a L<Path::Class::Dir> object.

=head1 SEE ALSO

=over 4

=item * L<www.sencha.com|http://www.sencha.com>

=item * L<ExtJS 3.4.0 API Docs|http://dev.sencha.com/deploy/ext-3.4.0/docs/>

=back

=head1 AUTHOR

Henry Van Styn <vanstyn@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by IntelliTree Solutions llc. 

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

Ext JS is Copyright (c) 2006-2013, Sencha Inc. All rights reserved. See L<http://www.sencha.com/license|http://www.sencha.com/license>

=cut

