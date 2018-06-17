CREATE TABLE block_list (
  user_id TEXT NOT NULL,
  synced_at DATETIME,
  unblocked_at DATETIME
);

CREATE TABLE conversation_participants (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  conversation_database_identifier INTEGER NOT NULL,
  stream_member_database_identifier INTEGER,
  member_id TEXT NOT NULL,
  is_deleted INTEGER NOT NULL DEFAULT 0,
  seq INTEGER,
  event_database_identifier INTEGER UNIQUE,
  mark_as_read_from_position INTEGER,
  UNIQUE(conversation_database_identifier, member_id),
  FOREIGN KEY(conversation_database_identifier) REFERENCES conversations(database_identifier) ON DELETE CASCADE,
  FOREIGN KEY(event_database_identifier) REFERENCES events(database_identifier) ON DELETE CASCADE
);

CREATE TABLE conversations (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  object_identifier TEXT UNIQUE NOT NULL,
  stream_database_identifier INTEGER UNIQUE,
  stream_id BLOB UNIQUE, -- TODO: Change this to TEXT
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  type INTEGER NOT NULL DEFAULT 1,
  is_distinct INTEGER NOT NULL DEFAULT 0,
  is_deleted_all_participants INTEGER NOT NULL DEFAULT 0,
  is_deleted_my_devices INTEGER NOT NULL DEFAULT 0,
  has_unread_messages INTEGER NOT NULL DEFAULT 0,
  total_message_count INTEGER DEFAULT NULL,
  total_unread_message_count INTEGER DEFAULT NULL,
  historic_message_status INTEGER NOT NULL DEFAULT 2
);

CREATE TABLE event_content_parts (
  event_content_part_id INTEGER NOT NULL,
  event_database_identifier INTEGER NOT NULL,
  type TEXT NOT NULL,
  value BLOB,
  access_expiration INTEGER,
  url TEXT,
  size INTEGER,
  FOREIGN KEY(event_database_identifier) REFERENCES events(database_identifier) ON DELETE CASCADE,
  PRIMARY KEY(event_content_part_id, event_database_identifier)
);

CREATE TABLE events (
  database_identifier INTEGER PRIMARY KEY AUTOINCREMENT,
  type INTEGER NOT NULL,
  creator_id TEXT,
  seq INTEGER,
  timestamp INTEGER,
  preceding_seq INTEGER,
  client_seq INTEGER NOT NULL,
  subtype INTEGER,
  external_content_id BLOB, -- TODO: Change this to TEXT
  member_id TEXT,
  target_seq INTEGER,
  stream_database_identifier INTEGER NOT NULL,
  client_id BLOB, -- TODO: Change this to TEXT
  creator_name TEXT,
  client_timestamp INTEGER,
  is_errored INTEGER NOT NULL DEFAULT 0,
  initial_recipient_status BLOB,
  target_position INTEGER,
  UNIQUE(stream_database_identifier, seq),
  FOREIGN KEY(stream_database_identifier) REFERENCES streams(database_identifier) ON DELETE CASCADE
);

CREATE TABLE local_keyed_values (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  object_type TEXT NOT NULL,
  object_id INTEGER NOT NULL,
  key_type INTEGER NOT NULL,
  key TEXT NOT NULL,
  value TEXT NOT NULL,
  is_deleted INTEGER NOT NULL DEFAULT 0,
  timestamp INTEGER,
  UNIQUE(object_type, object_id, key)
);

CREATE TABLE message_parts (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  message_database_identifier INTEGER NOT NULL,
  mime_type TEXT NOT NULL,
  content BLOB,
  url TEXT,
  access_expiration INTEGER,
  file_path TEXT,
  size INTEGER,
  access_time DATETIME,
  object_identifier TEXT,
  pruned BOOLEAN,
  transfer_status INTEGER,
  version INT NOT NULL DEFAULT 0,
  FOREIGN KEY(message_database_identifier) REFERENCES messages(database_identifier) ON DELETE CASCADE
);

CREATE TABLE message_recipient_status (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  message_database_identifier INTEGER NOT NULL,
  user_id TEXT,
  status INTEGER NOT NULL,
  seq INTEGER,
  UNIQUE (message_database_identifier, user_id, status),
  FOREIGN KEY(message_database_identifier) REFERENCES messages(database_identifier) ON DELETE CASCADE
);

CREATE TABLE messages (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  object_identifier TEXT UNIQUE NOT NULL,
  conversation_database_identifier INTEGER NOT NULL,
  event_database_identifier INTEGER UNIQUE,
  seq INTEGER,
  type INTEGER NOT NULL DEFAULT 1,
  user_id TEXT,
  user_name TEXT,
  sent_at INTEGER,
  received_by_server INTEGER,
  received_by_user INTEGER,
  is_deleted_all_participants INTEGER NOT NULL DEFAULT 0,
  is_deleted_my_devices INTEGER NOT NULL DEFAULT 0,
  message_index INTEGER,
  is_unread INTEGER NOT NULL DEFAULT 0,
  UNIQUE(conversation_database_identifier, seq),
  FOREIGN KEY(conversation_database_identifier) REFERENCES conversations(database_identifier) ON DELETE CASCADE,
  FOREIGN KEY(event_database_identifier) REFERENCES events(database_identifier) ON DELETE CASCADE
);

CREATE TABLE mutations (
  database_identifier INTEGER PRIMARY KEY AUTOINCREMENT,
  stream_id BLOB, -- TODO: Change this to TEXT
  target_seq INTEGER,
  type INTEGER NOT NULL,
  target INTEGER NOT NULL,
  conversation_object_identifier TEXT,
  message_object_identifier TEXT,
  stream_database_identifier INTEGER,
  event_database_identifier INTEGER,
  seq INTEGER,
  is_errored INTEGER NOT NULL DEFAULT 0,
  UNIQUE(stream_id, seq)
);

CREATE TABLE remote_keyed_values (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  object_type TEXT NOT NULL,
  object_id INTEGER NOT NULL,
  key_type INTEGER NOT NULL,
  key TEXT NOT NULL,
  value TEXT NOT NULL,
  is_deleted INTEGER NOT NULL DEFAULT 0,
  timestamp INTEGER,
  is_errored INTEGER NOT NULL DEFAULT 0,
  UNIQUE(object_type, object_id, key)
);

CREATE TABLE schema_migrations (
  version INTEGER UNIQUE NOT NULL
);

CREATE TABLE stream_members (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  stream_database_identifier INTEGER NOT NULL,
  member_id TEXT NOT NULL,
  is_deleted INTEGER NOT NULL DEFAULT 0,
  seq INTEGER,
  UNIQUE (stream_database_identifier, member_id),
  FOREIGN KEY(stream_database_identifier) REFERENCES streams(database_identifier) ON DELETE CASCADE
);

CREATE TABLE streams (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  stream_id BLOB UNIQUE, -- TODO: Change this to TEXT
  client_id BLOB, -- TODO: Change this to TEXT
  request_client_id BLOB, -- TODO: Change this to TEXT
  is_distinct INTEGER NOT NULL DEFAULT 0,
  type INTEGER NOT NULL DEFAULT 1,
  seq INTEGER NOT NULL DEFAULT 0,
  base_sync_seq INTEGER NOT NULL DEFAULT 0,
  min_synced_seq INTEGER,
  max_synced_seq INTEGER,
  metadata_timestamp INTEGER,
  total_message_count INTEGER DEFAULT NULL,
  unread_message_count INTEGER DEFAULT NULL,
  last_message_received_at INTEGER DEFAULT NULL,
  last_message_seq INTEGER DEFAULT NULL,
  oldest_unread_message_seq INTEGER DEFAULT NULL,
  marked_to_fetch_historic_data INTEGER NOT NULL DEFAULT 0,
  client_seq INTEGER NOT NULL DEFAULT 0,
  marked_to_delete INTEGER NOT NULL DEFAULT 0,
  is_deleted INTEGER NOT NULL DEFAULT 0,
  is_errored INTEGER NOT NULL DEFAULT 0,
  mutation_seq INTEGER,
  base_sync_mutation_seq INTEGER NOT NULL DEFAULT 0,
  min_synced_mutation_seq INTEGER,
  max_synced_mutation_seq INTEGER,
  starting_seq INTEGER,
  created_at INTEGER
);

CREATE TABLE syncable_changes (
  change_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  table_name TEXT NOT NULL,
  row_identifier INTEGER NOT NULL,
  change_type INTEGER NOT NULL
);

CREATE TABLE synced_changes (
  change_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  table_name TEXT NOT NULL,
  row_identifier INTEGER NOT NULL,
  change_type INTEGER NOT NULL,
  column_name TEXT
);

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

CREATE TABLE presence (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  user_id TEXT UNIQUE NOT NULL,
  status INTEGER,
  last_seen_at INTEGER,
  syncable_change BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE response_versions (
  response_name TEXT UNIQUE NOT NULL,
  version INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX block_list_user_id_idx ON block_list(user_id);

CREATE INDEX conversation_participants_conversation_database_identifier_idx ON conversation_participants(conversation_database_identifier);

CREATE INDEX conversation_participants_is_deleted_idx ON conversation_participants(is_deleted);

CREATE INDEX conversations_created_at_idx ON conversations(created_at);

CREATE INDEX conversations_has_unread_messages_idx ON conversations(has_unread_messages);

CREATE INDEX conversations_is_deleted_all_participants_idx ON conversations(is_deleted_all_participants);

CREATE INDEX conversations_is_deleted_my_devices_idx ON conversations(is_deleted_my_devices);

CREATE INDEX conversations_is_distinct_idx ON conversations(is_distinct);

CREATE INDEX conversations_type_idx ON conversations(type);

CREATE INDEX event_content_parts_event_database_identifier_idx ON event_content_parts(event_database_identifier);

CREATE INDEX events_client_id_idx ON events(client_id);

CREATE INDEX events_creator_id_idx ON events(creator_id);

CREATE INDEX events_is_errored_idx ON events(is_errored);

CREATE INDEX events_preceding_seq_idx ON events(preceding_seq);

CREATE INDEX events_stream_database_identifier_idx ON events(stream_database_identifier);

CREATE INDEX events_target_seq_idx ON events(target_seq);

CREATE INDEX events_type_idx ON events(type);

CREATE INDEX local_keyed_values_type_id_key_idx ON local_keyed_values(object_type, object_id, key);

CREATE INDEX message_recipient_status_message_database_identifier_idx ON message_recipient_status(message_database_identifier);

CREATE INDEX messages_conversation_database_identifier_idx ON messages(conversation_database_identifier);

CREATE INDEX messages_is_deleted_all_participants_idx ON messages(is_deleted_all_participants);

CREATE INDEX messages_is_deleted_my_devices_idx ON messages(is_deleted_my_devices);

CREATE INDEX messages_is_unread_idx ON messages(is_unread);

CREATE INDEX messages_message_index_idx ON messages(message_index);

CREATE INDEX messages_type_idx ON messages(type);

CREATE INDEX messages_user_id_idx ON messages(user_id);

CREATE INDEX mutations_conversation_object_identifier_idx ON mutations(conversation_object_identifier);

CREATE INDEX mutations_event_database_identifier_idx ON mutations(event_database_identifier);

CREATE INDEX mutations_is_errored_idx ON mutations(is_errored);

CREATE INDEX mutations_message_object_identifier_idx ON mutations(message_object_identifier);

CREATE INDEX mutations_seq_idx ON mutations(seq);

CREATE INDEX mutations_stream_database_identifier_idx ON mutations(stream_database_identifier);

CREATE INDEX mutations_stream_id_idx ON mutations(stream_id);

CREATE INDEX mutations_target_idx ON mutations(target);

CREATE INDEX mutations_target_seq_idx ON mutations(target_seq);

CREATE INDEX remote_keyed_values_is_errored_idx ON remote_keyed_values(is_errored);

CREATE INDEX remote_keyed_values_type_id_key_idx ON remote_keyed_values(object_type, object_id, key);

CREATE INDEX stream_members_is_deleted_idx ON stream_members(is_deleted);

CREATE INDEX stream_members_member_id_idx ON stream_members(member_id);

CREATE INDEX stream_members_stream_database_identifier_idx ON stream_members(stream_database_identifier);

CREATE INDEX streams_client_id_idx ON streams(client_id);

CREATE INDEX streams_is_deleted_idx ON streams(is_deleted);

CREATE INDEX streams_is_errored_idx ON streams(is_errored);

CREATE INDEX streams_last_message_received_at_idx ON streams(last_message_received_at);

CREATE INDEX streams_seq_idx ON streams(seq);

CREATE INDEX streams_type_idx ON streams(type);

CREATE INDEX synced_changes_table_name_idx ON synced_changes(table_name);

CREATE INDEX synced_changes_table_row_idx ON synced_changes(table_name, row_identifier);

CREATE INDEX identities_user_id_idx ON identities(user_id);

CREATE INDEX identities_display_name_idx ON identities(display_name);

CREATE INDEX identities_first_name_idx ON identities(first_name);

CREATE INDEX identities_last_name_idx ON identities(last_name);


CREATE TRIGGER tombstone_duplicate_events_by_client_id AFTER INSERT ON events
FOR EACH ROW WHEN NEW.client_id IS NOT NULL
BEGIN
  UPDATE events SET type = 10
  WHERE database_identifier = NEW.database_identifier
  AND (SELECT count(*) FROM events WHERE client_id = NEW.client_id) > 1;
END;

CREATE TRIGGER track_deletes_of_conversation_participants AFTER UPDATE OF is_deleted ON conversation_participants
WHEN NEW.seq IS OLD.seq AND (NEW.is_deleted != 0 AND OLD.is_deleted = 0)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversation_participants', NEW.database_identifier, 2);
END;

-- Trigger for syncable change when updating mark as read position
CREATE TRIGGER track_read_position_change_of_conversation_participants AFTER UPDATE OF mark_as_read_from_position ON conversation_participants
WHEN NEW.mark_as_read_from_position > OLD.mark_as_read_from_position OR (NEW.mark_as_read_from_position NOT NULL AND OLD.mark_as_read_from_position IS NULL)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversation_participants', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_deletes_of_local_keyed_values AFTER UPDATE OF is_deleted ON local_keyed_values
WHEN NEW.timestamp IS NULL AND (NEW.is_deleted != 0 AND OLD.is_deleted = 0)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('local_keyed_values', NEW.database_identifier, 2);
END;

CREATE TRIGGER track_deletes_of_remote_keyed_values AFTER UPDATE OF is_deleted ON remote_keyed_values
WHEN NEW.timestamp NOT NULL AND (NEW.is_deleted != 0 AND OLD.is_deleted = 0)
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('remote_keyed_values', OLD.database_identifier, 2);
END;

CREATE TRIGGER track_deletes_of_streams AFTER UPDATE OF is_deleted ON streams
WHEN NEW.stream_id NOT NULL AND NEW.is_deleted != 0 AND OLD.is_deleted = 0
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', OLD.database_identifier, 2);
END;

CREATE TRIGGER track_inserts_of_conversation_participants AFTER INSERT ON conversation_participants
WHEN NEW.stream_member_database_identifier IS NULL
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversation_participants', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_inserts_of_conversations AFTER INSERT ON conversations
WHEN NEW.stream_database_identifier IS NULL
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversations', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_inserts_of_events_delete AFTER INSERT ON events FOR EACH ROW
WHEN NEW.seq IS NOT NULL AND NEW.type = 9 AND NOT EXISTS (SELECT 1 FROM events WHERE client_id = NEW.client_id AND database_identifier != NEW.database_identifier)
BEGIN
  INSERT OR IGNORE INTO synced_changes(table_name, row_identifier, change_type) VALUES ('events', (SELECT database_identifier FROM events WHERE stream_database_identifier = NEW.stream_database_identifier AND seq = NEW.target_seq), 2);
  UPDATE events SET type = 10, subtype = NULL, external_content_id = NULL, member_id = NULL, target_seq = NULL WHERE database_identifier = (SELECT database_identifier FROM events WHERE stream_database_identifier = NEW.stream_database_identifier AND seq = NEW.target_seq);
END;

CREATE TRIGGER track_inserts_of_events_non_delete AFTER INSERT ON events FOR EACH ROW
WHEN NEW.seq IS NOT NULL AND NEW.type != 9 AND NOT EXISTS (SELECT 1 FROM events WHERE client_id = NEW.client_id AND database_identifier != NEW.database_identifier)
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('events', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_inserts_of_local_keyed_values AFTER INSERT ON local_keyed_values
WHEN NEW.timestamp IS NULL
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('local_keyed_values', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_inserts_of_remote_keyed_values AFTER INSERT ON remote_keyed_values
WHEN NEW.timestamp NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('remote_keyed_values', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_inserts_of_streams AFTER INSERT ON streams
WHEN NEW.stream_id IS NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_message_send_on_insert AFTER INSERT ON messages
WHEN NEW.seq IS NULL
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('messages', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_re_inserts_of_conversation_participants AFTER UPDATE OF is_deleted ON conversation_participants
WHEN NEW.seq IS NOT NULL AND NEW.seq = OLD.seq AND (NEW.is_deleted = 0 AND OLD.is_deleted != 0)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversation_participants', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_re_inserts_of_local_keyed_values AFTER UPDATE OF is_deleted ON local_keyed_values
WHEN NEW.timestamp IS NULL AND (NEW.is_deleted = 0 AND OLD.is_deleted != 0)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('local_keyed_values', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_re_inserts_of_remote_keyed_values AFTER UPDATE OF is_deleted ON remote_keyed_values
WHEN NEW.timestamp NOT NULL AND (NEW.is_deleted = 0 AND OLD.is_deleted != 0)
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('remote_keyed_values', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_remote_inserts_of_mutations AFTER INSERT ON mutations
WHEN NEW.seq IS NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('mutations', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_syncable_changes_for_message_receipts AFTER INSERT ON message_recipient_status
WHEN NEW.seq IS NULL
BEGIN
    INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('message_recipient_status', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_updates_of_base_sync_seq_for_streams AFTER UPDATE OF base_sync_seq ON streams
WHEN NEW.base_sync_seq IS NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_event_seqs AFTER UPDATE OF seq ON events
WHEN NEW.seq IS NOT NULL AND OLD.seq IS NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('events', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_event_type_message_to_tombstone AFTER UPDATE OF type ON events
WHEN NEW.type = 10 AND OLD.type = 4
BEGIN
  DELETE FROM event_content_parts WHERE event_database_identifier = NEW.database_identifier;
  DELETE FROM remote_keyed_values WHERE object_type = 'event' AND object_id = NEW.database_identifier;
END;

CREATE TRIGGER track_updates_of_local_keyed_values AFTER UPDATE OF value ON local_keyed_values
WHEN OLD.is_deleted = 0 AND NEW.timestamp IS NULL AND (NEW.value != OLD.value)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('local_keyed_values', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_marked_to_fetch_historic_data AFTER UPDATE OF marked_to_fetch_historic_data ON streams
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_remote_keyed_values AFTER UPDATE OF timestamp ON remote_keyed_values
WHEN NEW.timestamp NOT NULL AND OLD.is_deleted = 0 AND (NEW.value != OLD.value)
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('remote_keyed_values', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_stream_client_id AFTER UPDATE OF client_id ON streams
WHEN NEW.client_id != OLD.client_id
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_stream_distinct AFTER UPDATE OF is_distinct ON streams
WHEN OLD.stream_id IS NOT NULL AND ((NEW.is_distinct NOT NULL AND OLD.is_distinct IS NULL) OR (NEW.is_distinct IS NULL AND OLD.is_distinct NOT NULL) OR (NEW.is_distinct != OLD.is_distinct))
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_stream_id_for_events AFTER UPDATE OF stream_database_identifier ON events
WHEN NEW.stream_database_identifier IS NOT NULL AND OLD.stream_database_identifier IS NOT NULL AND NEW.stream_database_identifier != OLD.stream_database_identifier
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('events', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_streams AFTER UPDATE OF stream_id ON streams
WHEN NEW.stream_id IS NOT NULL AND OLD.stream_id IS NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_total_message_count_for_streams AFTER UPDATE OF total_message_count ON streams
WHEN NEW.total_message_count IS NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_unread_message_count_for_streams AFTER UPDATE OF unread_message_count ON streams
WHEN NEW.unread_message_count IS NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_starting_seq AFTER UPDATE OF starting_seq ON streams
WHEN (OLD.starting_seq IS NULL AND NEW.starting_seq IS NOT NULL) OR (OLD.starting_seq IS NOT NULL AND NEW.starting_seq IS NULL) OR (NEW.starting_seq != OLD.starting_seq)
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

----------------------------------------------------------------------------------------------------
-- Schema Migrations [note: must include placeholders for code migrations]
----------------------------------------------------------------------------------------------------

INSERT INTO schema_migrations (version) VALUES (20140628105322170);

INSERT INTO schema_migrations (version) VALUES (20140628114921198);

INSERT INTO schema_migrations (version) VALUES (20140701095427050);

INSERT INTO schema_migrations (version) VALUES (20140701114842931);

INSERT INTO schema_migrations (version) VALUES (20140701144934637);

INSERT INTO schema_migrations (version) VALUES (20140706185141044);

INSERT INTO schema_migrations (version) VALUES (20140707082435390);

INSERT INTO schema_migrations (version) VALUES (20140707175635814);

INSERT INTO schema_migrations (version) VALUES (20140708092626927);

INSERT INTO schema_migrations (version) VALUES (20140708154438053);

INSERT INTO schema_migrations (version) VALUES (20140709095453868);

INSERT INTO schema_migrations (version) VALUES (20140715104949748);

INSERT INTO schema_migrations (version) VALUES (20140717013309255);

INSERT INTO schema_migrations (version) VALUES (20140717021208447);

INSERT INTO schema_migrations (version) VALUES (20140806143305965);

INSERT INTO schema_migrations (version) VALUES (20140820112730372);

INSERT INTO schema_migrations (version) VALUES (20140919115201707);

INSERT INTO schema_migrations (version) VALUES (20141002091849299);

INSERT INTO schema_migrations (version) VALUES (20141002175255465);

INSERT INTO schema_migrations (version) VALUES (20141002175510495);

INSERT INTO schema_migrations (version) VALUES (20141006140917614);

INSERT INTO schema_migrations (version) VALUES (20141006202908488);

INSERT INTO schema_migrations (version) VALUES (20141007110138268);

INSERT INTO schema_migrations (version) VALUES (20141009125004707);

INSERT INTO schema_migrations (version) VALUES (20141009125010758);

INSERT INTO schema_migrations (version) VALUES (20141027152445461);

INSERT INTO schema_migrations (version) VALUES (20141105082802353);

INSERT INTO schema_migrations (version) VALUES (20141110114425514);

INSERT INTO schema_migrations (version) VALUES (20141124205020533);

INSERT INTO schema_migrations (version) VALUES (20150131122302694);

INSERT INTO schema_migrations (version) VALUES (20150202170209118);

INSERT INTO schema_migrations (version) VALUES (20150207191203003);

INSERT INTO schema_migrations (version) VALUES (20150210133608257);

INSERT INTO schema_migrations (version) VALUES (20150316180034638);

INSERT INTO schema_migrations (version) VALUES (20150319131356212);

INSERT INTO schema_migrations (version) VALUES (20150330135300206);

INSERT INTO schema_migrations (version) VALUES (20150407191800000);

INSERT INTO schema_migrations (version) VALUES (20150413151241000);

INSERT INTO schema_migrations (version) VALUES (20150529142429027);

INSERT INTO schema_migrations (version) VALUES (20150616135600000);

INSERT INTO schema_migrations (version) VALUES (20150630133000000);

INSERT INTO schema_migrations (version) VALUES (20150715144100000);

INSERT INTO schema_migrations (version) VALUES (20150720151241000);

INSERT INTO schema_migrations (version) VALUES (20151007133000000);

INSERT INTO schema_migrations (version) VALUES (20160106113000000);

-- Placeholder for `20150311175200000_message_index_to_position.sql` CodeMigration
INSERT INTO schema_migrations (version) VALUES (20150311175200000);

INSERT INTO schema_migrations (version) VALUES (20160202132800000);

INSERT INTO schema_migrations (version) VALUES (20161223142600000);

INSERT INTO schema_migrations (version) VALUES (20170206135700000);

INSERT INTO schema_migrations (version) VALUES (20170324172700000);

INSERT INTO schema_migrations (version) VALUES (20170330135100000);
