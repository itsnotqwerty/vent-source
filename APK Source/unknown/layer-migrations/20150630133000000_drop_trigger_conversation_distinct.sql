-- Conversation distinct changes need to create syncable_change only when
-- they are changed by client. This trigger created it for mutations from
-- server as well. So, drop it. `Syncable_Change` will be created in code
-- for local migration.
DROP TRIGGER track_updates_of_conversation_distinct;