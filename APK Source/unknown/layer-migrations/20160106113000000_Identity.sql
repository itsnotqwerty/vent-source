-------------------------------------------------------------------------------
-- Create a table that represents identity profiles
-------------------------------------------------------------------------------
CREATE TABLE identities (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  object_identifier TEXT UNIQUE NOT NULL,
  user_id TEXT UNIQUE NOT NULL,
  display_name TEXT,
  first_name TEXT,
  last_name TEXT,
  email_address TEXT,
  phone_number TEXT,
  avatar_image_url TEXT,
  public_key TEXT,
  followed BOOLEAN NOT NULL DEFAULT 0,
  syncable_change BOOLEAN NOT NULL DEFAULT 0,
  UNIQUE(database_identifier)
);

CREATE TABLE response_versions (
  response_name TEXT UNIQUE NOT NULL,
  version INTEGER NOT NULL DEFAULT 0
);

ALTER TABLE synced_changes ADD COLUMN column_name TEXT;

CREATE INDEX identities_user_id_idx ON identities(user_id);

CREATE INDEX identities_display_name_idx ON identities(display_name);

CREATE INDEX identities_first_name_idx ON identities(first_name);

CREATE INDEX identities_last_name_idx ON identities(last_name);

INSERT INTO identities (object_identifier, user_id, display_name)
	SELECT DISTINCT 'layer:///identities/' || events.creator_id AS new_object_identifier, events.creator_id AS new_user_id, events.creator_name AS new_display_name
		FROM events
		WHERE creator_id IS NOT NULL;

INSERT INTO identities (object_identifier, user_id)
	SELECT DISTINCT 'layer:///identities/' || sm.member_id AS new_object_identifier, sm.member_id AS new_user_id
		FROM stream_members AS sm
		LEFT OUTER JOIN identities AS iden
		ON sm.member_id = iden.user_id
		WHERE iden.user_id IS NULL;