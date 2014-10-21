=head1 NAME

Attribute::Lexical::UNIVERSAL - hook for lexical attribute management

=head1 DESCRIPTION

This class is part of the implementation of L<Attribute::Lexical>.
It is not meant to be touched by users directly.

L<Attribute::Lexical> establishes this class as a superclass of
L<UNIVERSAL>, in order to make lexically-scoped attribute declarations
available everywhere.  This is necessary because the underlying system for
attribute management is package-based.  L<Attribute::Lexical>'s attribute
declarations obey lexical, rather than package, scoping.

This class should not affect anything in any situation where there are
no lexical attribute declarations in scope.  However, the underlying
protocol for attribute management is tricky, and convoluted arrangements
of attribute managers are liable to tread on each other's toes.

=head1 SEE ALSO

L<Attribute::Lexical>,
L<UNIVERSAL>,
L<attributes>

=head1 AUTHOR

Andrew Main (Zefram) <zefram@fysh.org>

=head1 COPYRIGHT

Copyright (C) 2009 Andrew Main (Zefram) <zefram@fysh.org>

=head1 LICENSE

This module is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.
