ALTER TABLE streams ADD COLUMN unread_message_count INTEGER DEFAULT NULL;

ALTER TABLE streams ADD COLUMN total_message_count INTEGER DEFAULT NULL;

ALTER TABLE streams ADD COLUMN last_message_received_at INTEGER DEFAULT NULL;

ALTER TABLE streams ADD COLUMN last_message_seq INTEGER DEFAULT NULL;

ALTER TABLE streams ADD COLUMN oldest_unread_message_seq INTEGER DEFAULT NULL;

ALTER TABLE streams ADD COLUMN base_sync_seq INTEGER NOT NULL DEFAULT 0;

ALTER TABLE streams ADD COLUMN marked_to_fetch_historic_data INTEGER NOT NULL DEFAULT 0;

ALTER TABLE conversations ADD COLUMN total_message_count INTEGER DEFAULT NULL;

ALTER TABLE conversations ADD COLUMN total_unread_message_count INTEGER DEFAULT NULL;

ALTER TABLE conversations ADD COLUMN historic_message_status INTEGER NOT NULL DEFAULT 2;

-- When stream's base_sync_seq OR marked_to_fetch_historic_data changes, Conversation's historic_message_status
-- needs to be recalculated. So, create triggers to insert synced changes, that results in the stream being
-- processed during inbound recon.
CREATE TRIGGER track_updates_of_base_sync_seq_for_streams AFTER UPDATE OF base_sync_seq ON streams WHEN NEW.base_sync_seq IS NOT NULL BEGIN INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1); END;

CREATE TRIGGER track_updates_of_marked_to_fetch_historic_data AFTER UPDATE OF marked_to_fetch_historic_data ON streams BEGIN INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1); END;

-- Triggers to track updates of stream total_message_count & unread_message_count
CREATE TRIGGER track_updates_of_total_message_count_for_streams AFTER UPDATE OF total_message_count ON streams WHEN NEW.total_message_count IS NOT NULL BEGIN INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1); END;

CREATE TRIGGER track_updates_of_unread_message_count_for_streams AFTER UPDATE OF unread_message_count ON streams WHEN NEW.unread_message_count IS NOT NULL BEGIN INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1); END;