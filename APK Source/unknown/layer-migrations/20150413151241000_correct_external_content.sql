UPDATE message_parts SET object_identifier = (SELECT messages.object_identifier FROM messages WHERE messages.database_identifier = message_parts.message_database_identifier) || '/parts/' || (SELECT COUNT(*)-1 FROM message_parts AS counted_message_parts WHERE counted_message_parts.message_database_identifier == message_parts.message_database_identifier AND counted_message_parts.database_identifier <= message_parts.database_identifier), size = LENGTH(message_parts.content) WHERE object_identifier IS NULL;

UPDATE message_parts SET transfer_status = 4 WHERE transfer_status IS NULL;