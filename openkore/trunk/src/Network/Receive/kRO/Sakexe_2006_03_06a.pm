#########################################################################
#  OpenKore - Packet sending
#  This module contains functions for sending packets to the server.
#
#  This software is open source, licensed under the GNU General Public
#  License, version 2.
#  Basically, this means that you're allowed to modify and distribute
#  this software. However, if you distribute modified versions, you MUST
#  also distribute the source code.
#  See http://www.gnu.org/licenses/gpl.html for the full license.
#
#  $Revision: 6687 $
#  $Id: kRO.pm 6687 2009-04-19 19:04:25Z technologyguild $
########################################################################
# Korea (kRO)
# The majority of private servers use eAthena, this is a clone of kRO

package Network::Receive::kRO::Sakexe_2006_03_06a;

use strict;
use Network::Receive::kRO::Sakexe_2006_01_26a;
use base qw(Network::Receive::kRO::Sakexe_2006_01_26a);

sub new {
	my ($class) = @_;
	my $self = $class->SUPER::new();
	$self->{packet_list} = {
		# 0x0273,6
		'0274' => ['mail_return', 'V v', [qw(mailID fail)]], # 8
	};
	return $self;
}

=pod
//2006-03-06aSakexe
0x0273,6
0x0274,8
=cut

1;