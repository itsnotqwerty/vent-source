package com.layer.sdk.internal.lsdke;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.layer.sdk.internal.lsdkd.lsdka.k;
import com.layer.sdk.internal.lsdkd.lsdka.k.a;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class c
  implements com.layer.sdk.internal.lsdke.lsdkb.lsdka.a
{
  private final UUID a;
  private final String b;
  
  public c(UUID paramUUID, String paramString)
  {
    this.a = paramUUID;
    this.b = paramString;
  }
  
  private boolean a(Cursor paramCursor, String paramString)
  {
    return paramCursor.isNull(paramCursor.getColumnIndex(paramString));
  }
  
  private Long b(Cursor paramCursor, String paramString)
  {
    int i = paramCursor.getColumnIndex(paramString);
    if (paramCursor.isNull(i)) {
      return null;
    }
    return Long.valueOf(paramCursor.getLong(i));
  }
  
  private Integer c(Cursor paramCursor, String paramString)
  {
    int i = paramCursor.getColumnIndex(paramString);
    if (paramCursor.isNull(i)) {
      return null;
    }
    return Integer.valueOf(paramCursor.getInt(i));
  }
  
  private String d(Cursor paramCursor, String paramString)
  {
    int i = paramCursor.getColumnIndex(paramString);
    if (paramCursor.isNull(i)) {
      return null;
    }
    return paramCursor.getString(i);
  }
  
  public boolean a()
  {
    return false;
  }
  
  public com.layer.sdk.internal.lsdke.lsdkb.lsdkc.b b()
  {
    return null;
  }
  
  public List<com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b> c()
  {
    Arrays.asList(new com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b[] { new com.layer.sdk.internal.lsdke.lsdkb.lsdkb.a("20150311175200000_message_index_to_position.sql")
    {
      public final void a(SQLiteDatabase paramAnonymousSQLiteDatabase)
        throws IOException
      {
        if (c.a(c.this) == null) {}
        do
        {
          return;
          HashMap localHashMap1 = new HashMap();
          HashMap localHashMap2 = new HashMap();
          for (;;)
          {
            try
            {
              localCursor = paramAnonymousSQLiteDatabase.rawQuery("SELECT messages.database_identifier AS message_database_identifier, conversations.database_identifier AS conversation_database_identifier, streams.seq AS stream_seq, events.preceding_seq AS event_preceding_seq, events.client_seq AS event_client_seq, messages.user_id AS message_creator FROM messages LEFT OUTER JOIN conversations ON (conversations.database_identifier = messages.conversation_database_identifier) LEFT OUTER JOIN streams ON (streams.database_identifier = conversations.stream_database_identifier) LEFT OUTER JOIN events ON (events.database_identifier = messages.event_database_identifier) ORDER BY messages.database_identifier", null);
            }
            finally
            {
              Long localLong2;
              Long localLong1;
              Object localObject2;
              Cursor localCursor = null;
              continue;
              Object localObject1 = null;
              continue;
              continue;
              int i = -1;
              if (i != -1) {
                continue;
              }
              i = 0;
              continue;
            }
            try
            {
              if (!localCursor.moveToNext()) {
                continue;
              }
              localLong2 = c.a(c.this, localCursor, "conversation_database_identifier");
              localLong1 = c.a(c.this, localCursor, "message_database_identifier");
              if (c.b(c.this, localCursor, "event_preceding_seq")) {
                continue;
              }
              i = c.c(c.this, localCursor, "event_preceding_seq").intValue();
            }
            finally
            {
              if (localCursor == null) {
                continue;
              }
              localCursor.close();
            }
            localObject2 = (Integer)localHashMap1.get(localLong2);
            localObject1 = localObject2;
            if (localObject2 == null) {
              localObject1 = Integer.valueOf(0);
            }
            if (((Integer)localObject1).intValue() < i) {
              localHashMap2.remove(localLong2);
            }
            localHashMap1.put(localLong2, Integer.valueOf(i));
            if (c.b(c.this, localCursor, "event_client_seq")) {
              continue;
            }
            localObject1 = c.c(c.this, localCursor, "event_client_seq");
            localObject2 = localObject1;
            if (localObject1 == null)
            {
              localObject2 = (Integer)localHashMap2.get(localLong2);
              localObject1 = localObject2;
              if (localObject2 == null) {
                localObject1 = Integer.valueOf(0);
              }
              localHashMap2.put(localLong2, Integer.valueOf(((Integer)localObject1).intValue() + 1));
              localObject2 = localObject1;
            }
            localObject1 = c.d(c.this, localCursor, "message_creator");
            paramAnonymousSQLiteDatabase.execSQL("UPDATE messages SET message_index = ? WHERE database_identifier = ?", new Object[] { Long.valueOf(k.a().a(i).c(((Integer)localObject2).intValue()).a((String)localObject1).d()), localLong1 });
          }
          if (c.b(c.this, localCursor, "stream_seq")) {
            break label380;
          }
          i = c.c(c.this, localCursor, "stream_seq").intValue();
          break label382;
        } while (localCursor == null);
        localCursor.close();
      }
    } });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */