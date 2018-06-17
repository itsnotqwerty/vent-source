DELETE FROM messages WHERE messages.conversation_database_identifier IS NOT NULL AND NOT EXISTS (SELECT * FROM conversations WHERE database_identifier=messages.conversation_database_identifier);

DELETE FROM messages WHERE messages.event_database_identifier IS NOT NULL AND NOT EXISTS (SELECT * FROM events WHERE database_identifier=messages.event_database_identifier);

DELETE FROM message_parts WHERE message_parts.message_database_identifier IS NOT NULL AND NOT EXISTS (SELECT * FROM messages WHERE database_identifier=message_parts.message_database_identifier);

DELETE FROM message_recipient_status WHERE message_recipient_status.message_database_identifier IS NOT NULL AND NOT EXISTS (SELECT * FROM messages WHERE database_identifier=message_recipient_status.message_database_identifier);

DELETE FROM conversation_participants WHERE conversation_participants.conversation_database_identifier IS NOT NULL AND NOT EXISTS (SELECT * FROM conversations WHERE database_identifier=conversation_participants.conversation_database_identifier);

DELETE FROM conversation_participants WHERE conversation_participants.event_database_identifier IS NOT NULL AND NOT EXISTS (SELECT * FROM events WHERE database_identifier=conversation_participants.event_database_identifier);

DELETE FROM event_content_parts WHERE event_content_parts.event_database_identifier IS NOT NULL AND NOT EXISTS (SELECT * FROM events WHERE database_identifier=event_content_parts.event_database_identifier);

DELETE FROM events WHERE events.stream_database_identifier IS NOT NULL AND NOT EXISTS (SELECT * FROM streams WHERE database_identifier=events.stream_database_identifier);

DELETE FROM stream_members WHERE stream_members.stream_database_identifier IS NOT NULL AND NOT EXISTS (SELECT * FROM streams WHERE database_identifier=stream_members.stream_database_identifier);