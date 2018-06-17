-- For events imported from legacy messaging systems prior to Layer, Streams will contain imported
-- events from the negative `starting_seq` to -1.
ALTER TABLE streams ADD starting_seq INTEGER;

-- When legacy history events are imported, they optionally contain a map of initial recipient
-- states.  Rather than creating a new server model to handle these (or inserting fake receipt
-- events) we'll just serialize it here.
ALTER TABLE events ADD initial_recipient_status BLOB;

-- When legacy history becomes available, we need to update Conversation HistoricSyncStatus
CREATE TRIGGER track_updates_of_starting_seq AFTER UPDATE OF starting_seq ON streams
WHEN (OLD.starting_seq IS NULL AND NEW.starting_seq IS NOT NULL) OR (OLD.starting_seq IS NOT NULL AND NEW.starting_seq IS NULL) OR (NEW.starting_seq != OLD.starting_seq)
BEGIN
  INSERT INTO synced_changes(table_name, row_identifier, change_type) VALUES ('streams', NEW.database_identifier, 1);
END;
