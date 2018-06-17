CREATE TABLE presence (
  database_identifier INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  user_id TEXT UNIQUE NOT NULL,
  status INTEGER,
  last_seen_at INTEGER,
  syncable_change BOOLEAN NOT NULL DEFAULT 0
);