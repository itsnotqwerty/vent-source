-- Only track is_distinct updates on pre-synchronized streams (non-synchronized streams get updates triggered off stream_id)
CREATE TRIGGER track_updates_of_stream_distinct AFTER UPDATE OF is_distinct ON streams
WHEN OLD.stream_id IS NOT NULL AND ((NEW.is_distinct NOT NULL AND OLD.is_distinct IS NULL) OR (NEW.is_distinct IS NULL AND OLD.is_distinct NOT NULL) OR (NEW.is_distinct != OLD.is_distinct))
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

-- Only track client_id updates on pre-synchronized streams (non-synchronized streams get updates triggered off stream_id)
CREATE TRIGGER track_updates_of_stream_client_id AFTER UPDATE OF client_id ON streams
WHEN NEW.client_id != OLD.client_id
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;

CREATE TRIGGER track_updates_of_conversation_distinct AFTER UPDATE OF is_distinct ON conversations
WHEN OLD.is_distinct IS 1 AND NEW.is_distinct IS 0
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversations', NEW.database_identifier, 1);
END;

-- Persist request_client_id for streams
ALTER TABLE streams ADD request_client_id BLOB;