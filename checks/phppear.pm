# phppear -- lintian check script -*- perl -*-

# Copyright (C) 2013 Mathieu Parent <math.parent@gmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, you can find it on the World Wide
# Web at http://www.gnu.org/copyleft/gpl.html, or write to the Free
# Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
# MA 02110-1301, USA.

package Lintian::phppear;

use strict;
use warnings;

use Lintian::Tags qw(tag);
use Lintian::Relation;

sub run {
    my ($pkg, $type, $info) = @_;

    # PEAR or PECL package
    my $package_xml = $info->index('package.xml');
    my $package2_xml = $info->index('package2.xml');
    if (defined($package_xml) || defined($package2_xml)) {
        # Checking source builddep
        my $bdepends = $info->relation('build-depends');
        if (!$bdepends->implies('pkg-php-tools')) {
            tag 'pear-package-without-pkg-php-tools-builddep';
        }
    }
    return;
}

1;
