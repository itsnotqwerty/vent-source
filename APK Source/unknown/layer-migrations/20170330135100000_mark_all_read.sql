ALTER TABLE conversation_participants ADD COLUMN mark_as_read_from_position INTEGER;

ALTER TABLE events ADD COLUMN target_position INTEGER;

-- Trigger for syncable change when updating mark as read position
CREATE TRIGGER track_read_position_change_of_conversation_participants AFTER UPDATE OF mark_as_read_from_position ON conversation_participants
WHEN NEW.mark_as_read_from_position > OLD.mark_as_read_from_position OR (NEW.mark_as_read_from_position NOT NULL AND OLD.mark_as_read_from_position IS NULL)
BEGIN
  INSERT INTO syncable_changes(table_name, row_identifier, change_type) VALUES ('conversation_participants', NEW.database_identifier, 1);
END;