use utf8;
package Biblio::Zotero::DB::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Biblio::Zotero::DB::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 userid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 username

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "username",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</userid>

=back

=cut

__PACKAGE__->set_primary_key("userid");

=head1 RELATIONS

=head2 group_items_createdbyuserids

Type: has_many

Related object: L<Biblio::Zotero::DB::Schema::Result::GroupItem>

=cut

__PACKAGE__->has_many(
  "group_items_createdbyuserids",
  "Biblio::Zotero::DB::Schema::Result::GroupItem",
  { "foreign.createdbyuserid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 group_items_lastmodifiedbyuserids

Type: has_many

Related object: L<Biblio::Zotero::DB::Schema::Result::GroupItem>

=cut

__PACKAGE__->has_many(
  "group_items_lastmodifiedbyuserids",
  "Biblio::Zotero::DB::Schema::Result::GroupItem",
  { "foreign.lastmodifiedbyuserid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2013-07-02 23:02:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NjY6s58eeAbm7PnMru0l2w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
