----------------------------------------------------------------------------------------------------
-- 1: Remove unused columns and add deletion modes. SQLite cannot drop columns, so we must recreate
--    the world.
--
-- Note that:
--  1. UNIQUE columns have an implicit INDEX;
--  2. FOREIGN KEY statements do *not* create an implicit INDEX.
----------------------------------------------------------------------------------------------------

-- Unused
DROP TABLE IF EXISTS deleted_message_parts;

-- Remove created_at and deleted_at.  Add is_deleted.

DROP TABLE IF EXISTS temp_conversation_participants;

CREATE TABLE temp_conversation_participants (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  conversation_database_identifier INTEGER NOT NULL,
  stream_member_database_identifier INTEGER,
  member_id TEXT NOT NULL,
  is_deleted INTEGER NOT NULL DEFAULT 0,
  seq INTEGER,
  event_database_identifier INTEGER UNIQUE,
  UNIQUE(conversation_database_identifier, member_id),
  FOREIGN KEY(conversation_database_identifier) REFERENCES conversations(database_identifier) ON DELETE CASCADE,
  FOREIGN KEY(event_database_identifier) REFERENCES events(database_identifier) ON DELETE CASCADE
);

INSERT INTO temp_conversation_participants
  SELECT database_identifier,
         conversation_database_identifier,
         stream_member_database_identifier,
         member_id,
         (CASE WHEN deleted_at NOT NULL THEN 1 ELSE 0 END),
         seq,
         event_database_identifier
  FROM conversation_participants;

DROP INDEX IF EXISTS conversation_participants_conversation_database_identifier_idx;

DROP INDEX IF EXISTS conversation_participants_deleted_at_idx;

DROP INDEX IF EXISTS conversation_participants_event_database_identifier_idx;

DROP TRIGGER IF EXISTS track_deletes_of_conversation_participants;

DROP TRIGGER IF EXISTS track_inserts_of_conversation_participants;

DROP TRIGGER IF EXISTS track_re_inserts_of_conversation_participants;

DROP TABLE conversation_participants;

ALTER TABLE temp_conversation_participants RENAME TO conversation_participants;

CREATE INDEX conversation_participants_conversation_database_identifier_idx ON conversation_participants(conversation_database_identifier);

CREATE INDEX conversation_participants_is_deleted_idx ON conversation_participants(is_deleted);

CREATE TRIGGER track_deletes_of_conversation_participants AFTER UPDATE OF is_deleted ON conversation_participants
WHEN NEW.seq IS OLD.seq AND (NEW.is_deleted != 0 AND OLD.is_deleted = 0)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversation_participants', NEW.database_identifier, 2);
END;

CREATE TRIGGER track_inserts_of_conversation_participants AFTER INSERT ON conversation_participants
WHEN NEW.stream_member_database_identifier IS NULL
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversation_participants', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_re_inserts_of_conversation_participants AFTER UPDATE OF is_deleted ON conversation_participants
WHEN NEW.seq IS NOT NULL AND NEW.seq = OLD.seq AND (NEW.is_deleted = 0 AND OLD.is_deleted != 0)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversation_participants', NEW.database_identifier, 0);
END;


-- Remove created_at, deleted_at, and version.  Add deletion modes.

DROP TABLE IF EXISTS temp_conversations;

CREATE TABLE temp_conversations (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  object_identifier TEXT UNIQUE NOT NULL,
  stream_database_identifier INTEGER UNIQUE,
  stream_id BLOB UNIQUE,
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

INSERT INTO temp_conversations
  SELECT database_identifier,
         object_identifier,
         stream_database_identifier,
         stream_id,
         created_at,
         type,
         is_distinct,
         (CASE WHEN deleted_at NOT NULL THEN 1 ELSE 0 END),
         0, -- placeholder
         has_unread_messages,
         total_message_count,
         total_unread_message_count,
         historic_message_status
  FROM conversations;

DROP INDEX IF EXISTS conversations_deleted_at_idx;

DROP INDEX IF EXISTS conversations_has_unread_messages_idx;

DROP INDEX IF EXISTS conversations_stream_database_identifier_idx;

DROP INDEX IF EXISTS conversations_type_idx;

DROP TRIGGER IF EXISTS track_deletes_of_conversations;

DROP TRIGGER IF EXISTS track_inserts_of_conversations;

DROP TABLE conversations;

ALTER TABLE temp_conversations RENAME TO conversations;

CREATE INDEX conversations_created_at_idx ON conversations(created_at);

CREATE INDEX conversations_is_deleted_all_participants_idx ON conversations(is_deleted_all_participants);

CREATE INDEX conversations_is_deleted_my_devices_idx ON conversations(is_deleted_my_devices);

CREATE INDEX conversations_has_unread_messages_idx ON conversations(has_unread_messages);

CREATE INDEX conversations_type_idx ON conversations(type);

CREATE INDEX conversations_is_distinct_idx ON conversations(is_distinct);

CREATE TRIGGER track_inserts_of_conversations AFTER INSERT ON conversations
WHEN NEW.stream_database_identifier IS NULL
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversations', NEW.database_identifier, 0);
END;


-- Remove deleted_at.  Add is_deleted.

DROP TABLE IF EXISTS temp_local_keyed_values;

CREATE TABLE temp_local_keyed_values (
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

INSERT INTO temp_local_keyed_values
  SELECT database_identifier,
         object_type,
         object_id,
         key_type,
         key,
         value,
         (CASE WHEN deleted_at NOT NULL THEN 1 ELSE 0 END),
         timestamp
  FROM local_keyed_values;

-- TODO: make sure outbound recon is clearing ephemeral local_keyed_values when inserted to remote_keyed_values

DROP TRIGGER IF EXISTS track_deletes_of_local_keyed_values;

DROP TRIGGER IF EXISTS track_inserts_of_local_keyed_values;

DROP TRIGGER IF EXISTS track_re_inserts_of_local_keyed_values;

DROP TRIGGER IF EXISTS track_updates_of_local_keyed_values;

DROP TABLE local_keyed_values;

ALTER TABLE temp_local_keyed_values RENAME TO local_keyed_values;

CREATE INDEX local_keyed_values_type_id_key_idx ON local_keyed_values(object_type, object_id, key);

CREATE TRIGGER track_deletes_of_local_keyed_values AFTER UPDATE OF is_deleted ON local_keyed_values
WHEN NEW.timestamp IS NULL AND (NEW.is_deleted != 0 AND OLD.is_deleted = 0)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('local_keyed_values', NEW.database_identifier, 2);
END;

CREATE TRIGGER track_inserts_of_local_keyed_values AFTER INSERT ON local_keyed_values
WHEN NEW.timestamp IS NULL
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('local_keyed_values', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_re_inserts_of_local_keyed_values AFTER UPDATE OF is_deleted ON local_keyed_values
WHEN NEW.timestamp IS NULL AND (NEW.is_deleted = 0 AND OLD.is_deleted != 0)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('local_keyed_values', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_updates_of_local_keyed_values AFTER UPDATE OF value ON local_keyed_values
WHEN OLD.is_deleted = 0 AND NEW.timestamp IS NULL AND (NEW.value != OLD.value)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('local_keyed_values', NEW.database_identifier, 1);
END;


-- Remove deleted_at.  Add is_deleted.

DROP TABLE IF EXISTS temp_remote_keyed_values;

CREATE TABLE temp_remote_keyed_values (
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

INSERT INTO temp_remote_keyed_values
  SELECT database_identifier,
         object_type,
         object_id,
         key_type,
         key,
         value,
         (CASE WHEN deleted_at NOT NULL THEN 1 ELSE 0 END),
         timestamp,
         0
  FROM remote_keyed_values;

DROP TRIGGER IF EXISTS track_deletes_of_remote_keyed_values;

DROP TRIGGER IF EXISTS track_inserts_of_remote_keyed_values;

DROP TRIGGER IF EXISTS track_re_inserts_of_remote_keyed_values;

DROP TRIGGER IF EXISTS track_updates_of_event_type_message_to_tombstone;

DROP TRIGGER IF EXISTS track_updates_of_remote_keyed_values;

DROP TABLE remote_keyed_values;

ALTER TABLE temp_remote_keyed_values RENAME TO remote_keyed_values;

CREATE INDEX remote_keyed_values_is_errored_idx ON remote_keyed_values(is_errored);

CREATE INDEX remote_keyed_values_type_id_key_idx ON remote_keyed_values(object_type, object_id, key);

CREATE TRIGGER track_deletes_of_remote_keyed_values AFTER UPDATE OF is_deleted ON remote_keyed_values
WHEN NEW.timestamp NOT NULL AND (NEW.is_deleted != 0 AND OLD.is_deleted = 0)
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('remote_keyed_values', OLD.database_identifier, 2);
END;

CREATE TRIGGER track_inserts_of_remote_keyed_values AFTER INSERT ON remote_keyed_values
WHEN NEW.timestamp NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('remote_keyed_values', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_re_inserts_of_remote_keyed_values AFTER UPDATE OF is_deleted ON remote_keyed_values
WHEN NEW.timestamp NOT NULL AND (NEW.is_deleted = 0 AND OLD.is_deleted != 0)
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('remote_keyed_values', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_updates_of_remote_keyed_values AFTER UPDATE OF timestamp ON remote_keyed_values
WHEN NEW.timestamp NOT NULL AND OLD.is_deleted = 0 AND (NEW.value != OLD.value)
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('remote_keyed_values', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_event_type_message_to_tombstone AFTER UPDATE OF type ON events
WHEN NEW.type = 10 AND OLD.type = 4
BEGIN
  DELETE FROM event_content_parts WHERE event_database_identifier = NEW.database_identifier;
  DELETE FROM remote_keyed_values WHERE object_type = 'event' AND object_id = NEW.database_identifier;
END;


-- Remove deleted_at, created_at, and version.  Add synced_at and deletion modes.

DROP TABLE IF EXISTS temp_messages;

CREATE TABLE temp_messages (
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

INSERT INTO temp_messages
  SELECT database_identifier,
         object_identifier,
         conversation_database_identifier,
         event_database_identifier,
         seq,
         type,
         user_id,
         user_name,
         (CASE WHEN (strftime('%s', created_at) * 1000) < received_at THEN (strftime('%s', created_at) * 1000) ELSE received_at END),  -- sent_at cannot be reconstructed; set to min(created_at, sent_at)
         sent_at, -- sent_at->synced_at (InboundRecon sets sentAt to server's timestamp)
         received_at, -- placeholder/approximation
         (CASE WHEN deleted_at NOT NULL THEN 1 ELSE 0 END),
         0, -- placeholder
         message_index,
         is_unread
  FROM messages;

DROP INDEX IF EXISTS messages_conversation_database_identifier_idx;

DROP INDEX IF EXISTS messages_deleted_at_idx;

DROP INDEX IF EXISTS messages_event_database_identifier_idx;

DROP INDEX IF EXISTS messages_is_unread_idx;

DROP INDEX IF EXISTS messages_message_index_idx;

DROP INDEX IF EXISTS messages_type_idx;

DROP TRIGGER IF EXISTS track_deletes_of_messages;

DROP TRIGGER IF EXISTS track_message_send_on_insert;

DROP TABLE messages;

ALTER TABLE temp_messages RENAME TO messages;

CREATE INDEX messages_conversation_database_identifier_idx ON messages(conversation_database_identifier);

CREATE INDEX messages_is_deleted_all_participants_idx ON messages(is_deleted_all_participants);

CREATE INDEX messages_is_deleted_my_devices_idx ON messages(is_deleted_my_devices);

CREATE INDEX messages_is_unread_idx ON messages(is_unread);

CREATE INDEX messages_message_index_idx ON messages(message_index);

CREATE INDEX messages_type_idx ON messages(type);

CREATE INDEX messages_user_id_idx ON messages(user_id);

CREATE TRIGGER track_message_send_on_insert AFTER INSERT ON messages
WHEN NEW.seq IS NULL
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('messages', NEW.database_identifier, 0);
END;


ALTER TABLE events ADD client_timestamp INTEGER;

ALTER TABLE events ADD is_errored INTEGER NOT NULL DEFAULT 0;

DROP INDEX IF EXISTS events_client_id_idx;

DROP INDEX IF EXISTS events_seq_idx;

DROP INDEX IF EXISTS events_stream_database_identifier_idx;

CREATE INDEX events_client_id_idx ON events(client_id);

CREATE INDEX events_creator_id_idx ON events(creator_id);

CREATE INDEX events_is_errored_idx ON events(is_errored);

CREATE INDEX events_preceding_seq_idx ON events(preceding_seq);

CREATE INDEX events_stream_database_identifier_idx ON events(stream_database_identifier);

CREATE INDEX events_target_seq_idx ON events(target_seq);

CREATE INDEX events_type_idx ON events(type);


-- Remove deleted_at.  Add is_deleted.

DROP TABLE IF EXISTS temp_stream_members;

CREATE TABLE temp_stream_members (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  stream_database_identifier INTEGER NOT NULL,
  member_id TEXT NOT NULL,
  is_deleted INTEGER NOT NULL DEFAULT 0,
  seq INTEGER,
  UNIQUE (stream_database_identifier, member_id),
  FOREIGN KEY(stream_database_identifier) REFERENCES streams(database_identifier) ON DELETE CASCADE
);

INSERT INTO temp_stream_members
  SELECT database_identifier,
         stream_database_identifier,
         member_id,
         (CASE WHEN deleted_at NOT NULL THEN 1 ELSE 0 END),
         seq
  FROM stream_members;

DROP INDEX IF EXISTS stream_members_deleted_at_idx;

DROP INDEX IF EXISTS stream_members_stream_database_identifier_idx;

DROP TRIGGER IF EXISTS track_deletes_of_stream_members;

DROP TRIGGER IF EXISTS track_inserts_of_stream_members;

DROP TABLE stream_members;

ALTER TABLE temp_stream_members RENAME TO stream_members;

CREATE INDEX stream_members_stream_database_identifier_idx ON stream_members(stream_database_identifier);

CREATE INDEX stream_members_is_deleted_idx ON stream_members(is_deleted);

CREATE INDEX stream_members_member_id_idx ON stream_members(member_id);


-- Remove deleted_at.  Add is_deleted.

DROP TABLE IF EXISTS temp_streams;

CREATE TABLE temp_streams (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  stream_id BLOB UNIQUE,
  client_id BLOB, 
  request_client_id BLOB,
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
  max_synced_mutation_seq INTEGER
);

INSERT INTO temp_streams
  SELECT database_identifier,
         stream_id,
         client_id, 
         request_client_id,
         is_distinct,
         type,
         seq,
         base_sync_seq,
         min_synced_seq, 
         max_synced_seq,
         metadata_timestamp,
         total_message_count,
         unread_message_count,
         last_message_received_at,
         last_message_seq,
         oldest_unread_message_seq,
         marked_to_fetch_historic_data,
         client_seq,
         0,
         (CASE WHEN deleted_at NOT NULL THEN 1 ELSE 0 END),
         0,
         null,
         0,
         null,
         null
  FROM streams;

DROP INDEX IF EXISTS streams_client_id_idx;

DROP INDEX IF EXISTS streams_deleted_at_idx;

DROP INDEX IF EXISTS streams_type_idx;

DROP TRIGGER IF EXISTS track_deletes_of_streams;

DROP TRIGGER IF EXISTS track_inserts_of_streams;

DROP TRIGGER IF EXISTS track_updates_of_base_sync_seq_for_streams;

DROP TRIGGER IF EXISTS track_updates_of_marked_to_fetch_historic_data;

DROP TRIGGER IF EXISTS track_updates_of_stream_client_id;

DROP TRIGGER IF EXISTS track_updates_of_stream_distinct;

DROP TRIGGER IF EXISTS track_updates_of_streams;

DROP TRIGGER IF EXISTS track_updates_of_total_message_count_for_streams;

DROP TRIGGER IF EXISTS track_updates_of_unread_message_count_for_streams;

DROP TABLE streams;

ALTER TABLE temp_streams RENAME TO streams;

CREATE INDEX streams_client_id_idx ON streams(client_id);

CREATE INDEX streams_is_errored_idx ON streams(is_errored);

CREATE INDEX streams_is_deleted_idx ON streams(is_deleted);

CREATE INDEX streams_last_message_received_at_idx ON streams(last_message_received_at);

CREATE INDEX streams_seq_idx ON streams(seq);

CREATE INDEX streams_type_idx ON streams(type);

CREATE TRIGGER track_deletes_of_streams AFTER UPDATE OF is_deleted ON streams
WHEN NEW.stream_id NOT NULL AND NEW.is_deleted != 0 AND OLD.is_deleted = 0
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', OLD.database_identifier, 2);
END;

CREATE TRIGGER track_inserts_of_streams AFTER INSERT ON streams
WHEN NEW.stream_id IS NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 0);
END;

CREATE TRIGGER track_updates_of_base_sync_seq_for_streams AFTER UPDATE OF base_sync_seq ON streams
WHEN NEW.base_sync_seq IS NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_marked_to_fetch_historic_data AFTER UPDATE OF marked_to_fetch_historic_data ON streams
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
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


----------------------------------------------------------------------------------------------------
-- 2: Create mutations table
----------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS mutations;

CREATE TABLE mutations (
  database_identifier INTEGER PRIMARY KEY AUTOINCREMENT,
  stream_id BLOB,
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

CREATE INDEX mutations_conversation_object_identifier_idx ON mutations(conversation_object_identifier);

CREATE INDEX mutations_event_database_identifier_idx ON mutations(event_database_identifier);

CREATE INDEX mutations_is_errored_idx ON mutations(is_errored);

CREATE INDEX mutations_message_object_identifier_idx ON mutations(message_object_identifier);

CREATE INDEX mutations_seq_idx ON mutations(seq);

CREATE INDEX mutations_stream_database_identifier_idx ON mutations(stream_database_identifier);

CREATE INDEX mutations_target_seq_idx ON mutations(target_seq);

CREATE INDEX mutations_stream_id_idx ON mutations(stream_id);

CREATE INDEX mutations_target_idx ON mutations(target);

CREATE TRIGGER track_remote_inserts_of_mutations AFTER INSERT ON mutations
WHEN NEW.seq IS NOT NULL
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('mutations', NEW.database_identifier, 0);
END;
