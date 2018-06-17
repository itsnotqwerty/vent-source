package com.layer.sdk.internal.lsdke.lsdkc;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.layer.b.f.c.e;
import com.layer.b.f.c.m;
import com.layer.b.f.c.o;
import com.layer.sdk.internal.lsdkd.lsdka.h.b;
import com.layer.sdk.internal.lsdkd.lsdka.i;
import com.layer.sdk.internal.lsdkd.lsdka.o.b;
import com.layer.sdk.internal.lsdki.c.a;
import com.layer.sdk.internal.lsdki.d.a;
import com.layer.sdk.internal.lsdki.d.b;
import com.layer.sdk.internal.lsdki.d.c;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.q;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart.TransferStatus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class a
{
  private static final k.a a = k.a(a.class);
  
  public static int a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString, boolean paramBoolean)
  {
    int j = 1;
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean)
    {
      i = 1;
      localContentValues.put("is_deleted", Integer.valueOf(i));
      paramh = paramh.bwE.toString();
      if (!paramBoolean) {
        break label84;
      }
    }
    label84:
    for (int i = j;; i = 0)
    {
      return paramSQLiteDatabase.update("stream_members", localContentValues, "stream_database_identifier=? AND member_id=? AND is_deleted!=?", new String[] { paramh, paramString, Integer.toString(i) });
      i = 0;
      break;
    }
  }
  
  public static Boolean a(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation, Integer paramInteger)
  {
    Long localLong = ((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation).m();
    if (localLong == null)
    {
      if (k.a(5)) {
        k.d(a, "Ignoring call to `updateStreamToFetchHistoricMessages`. No stream yet for conversation: " + paramConversation);
      }
      return Boolean.valueOf(false);
    }
    paramConversation = b.a(paramSQLiteDatabase, localLong);
    if ((paramConversation.bwH != null) && (paramConversation.bwH.intValue() == q.a(paramConversation))) {
      return Boolean.valueOf(false);
    }
    if ((paramConversation.bwI.intValue() > 0) && (paramInteger != null)) {
      return Boolean.valueOf(false);
    }
    if (paramInteger == null) {}
    for (paramConversation = "UPDATE streams SET base_sync_seq=" + q.a(paramConversation) + ", marked_to_fetch_historic_data=1 WHERE database_identifier=" + localLong.toString();; paramConversation = "UPDATE streams SET marked_to_fetch_historic_data=" + paramInteger + " WHERE database_identifier=" + localLong.toString())
    {
      paramSQLiteDatabase.execSQL(paramConversation);
      return Boolean.valueOf(true);
    }
  }
  
  public static Boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (Long localLong = Long.valueOf(new Date().getTime());; localLong = null)
    {
      if (Long.valueOf(paramSQLiteDatabase.insertWithOnConflict("block_list", null, c.b.d(paramString, localLong), 5)).longValue() != -1L) {}
      for (paramBoolean = true;; paramBoolean = false) {
        return Boolean.valueOf(paramBoolean);
      }
    }
  }
  
  public static Integer a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdke.lsdka.a parama)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    Object localObject = null;
    for (;;)
    {
      try
      {
        switch (1.bqe[parama.a.ordinal()])
        {
        case 1: 
          if (k.a(6)) {
            k.e(a, "Unknown MinMaxSeq type: " + parama.a);
          }
          throw new IllegalArgumentException("Unknown MinMaxSeq type: " + parama.a);
        }
      }
      finally
      {
        parama = null;
        if (parama != null) {
          parama.close();
        }
      }
      parama = paramSQLiteDatabase.rawQuery("SELECT MIN(seq) AS minSeq FROM events WHERE type=4 AND seq IS NOT NULL AND stream_database_identifier=?", new String[] { parama.c.toString() });
      paramSQLiteDatabase = (SQLiteDatabase)localObject;
      try
      {
        if (parama.moveToNext())
        {
          boolean bool = parama.isNull(0);
          if (!bool) {
            break label182;
          }
        }
        label182:
        int i;
        for (paramSQLiteDatabase = (SQLiteDatabase)localObject;; paramSQLiteDatabase = Integer.valueOf(i))
        {
          localSQLiteDatabase = paramSQLiteDatabase;
          if (parama != null)
          {
            parama.close();
            localSQLiteDatabase = paramSQLiteDatabase;
          }
          return localSQLiteDatabase;
          i = parama.getInt(0);
        }
      }
      finally {}
    }
  }
  
  public static Long a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString)
  {
    Object localObject = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT _ROWID_ FROM stream_members WHERE stream_database_identifier=? AND member_id=?", new String[] { paramh.bwE.toString(), paramString });
      long l;
      if (paramSQLiteDatabase == null) {
        break label94;
      }
    }
    finally
    {
      try
      {
        if (paramSQLiteDatabase.moveToNext())
        {
          l = paramSQLiteDatabase.getLong(0);
          paramString = Long.valueOf(l);
          paramh = paramString;
          if (paramSQLiteDatabase != null)
          {
            paramSQLiteDatabase.close();
            paramh = paramString;
          }
        }
        do
        {
          return paramh;
          paramh = (com.layer.b.d.h)localObject;
        } while (paramSQLiteDatabase == null);
        paramSQLiteDatabase.close();
        return null;
      }
      finally {}
      paramh = finally;
      paramSQLiteDatabase = null;
    }
    paramSQLiteDatabase.close();
    label94:
    throw paramh;
  }
  
  public static Long a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString, Integer paramInteger)
  {
    ContentValues localContentValues = c.b.a(paramh, paramString, paramInteger);
    paramInteger = a(paramSQLiteDatabase, paramh, paramString);
    if (paramInteger != null)
    {
      a(paramSQLiteDatabase, paramh, paramString, false);
      paramSQLiteDatabase = paramInteger;
    }
    do
    {
      return paramSQLiteDatabase;
      paramh = Long.valueOf(paramSQLiteDatabase.insert("stream_members", null, localContentValues));
      paramSQLiteDatabase = paramh;
    } while (paramh.longValue() != -1L);
    throw new IllegalArgumentException("Could not insert stream member");
  }
  
  /* Error */
  public static Long a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_0
    //   4: aload_1
    //   5: iconst_1
    //   6: anewarray 57	java/lang/String
    //   9: dup
    //   10: iconst_0
    //   11: aload_2
    //   12: aastore
    //   13: aload_3
    //   14: aload 4
    //   16: aconst_null
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 236	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore_0
    //   24: aload 7
    //   26: astore_1
    //   27: aload_0
    //   28: invokeinterface 203 1 0
    //   33: ifeq +18 -> 51
    //   36: aload_0
    //   37: iconst_0
    //   38: invokeinterface 217 2 0
    //   43: lstore 5
    //   45: lload 5
    //   47: invokestatic 146	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   50: astore_1
    //   51: aload_0
    //   52: ifnull +9 -> 61
    //   55: aload_0
    //   56: invokeinterface 190 1 0
    //   61: aload_1
    //   62: areturn
    //   63: astore_1
    //   64: aconst_null
    //   65: astore_0
    //   66: aload_0
    //   67: ifnull +9 -> 76
    //   70: aload_0
    //   71: invokeinterface 190 1 0
    //   76: aload_1
    //   77: athrow
    //   78: astore_1
    //   79: goto -13 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	82	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	82	1	paramString1	String
    //   0	82	2	paramString2	String
    //   0	82	3	paramString3	String
    //   0	82	4	paramArrayOfString	String[]
    //   43	3	5	l	long
    //   1	24	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	24	63	finally
    //   27	45	78	finally
  }
  
  public static Long a(SQLiteDatabase paramSQLiteDatabase, String paramString, String[] paramArrayOfString)
  {
    Object localObject = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery(paramString, paramArrayOfString);
      long l;
      if (paramSQLiteDatabase == null) {
        break label76;
      }
    }
    finally
    {
      try
      {
        if (paramSQLiteDatabase.moveToNext())
        {
          l = paramSQLiteDatabase.getLong(0);
          paramArrayOfString = Long.valueOf(l);
          paramString = paramArrayOfString;
          if (paramSQLiteDatabase != null)
          {
            paramSQLiteDatabase.close();
            paramString = paramArrayOfString;
          }
        }
        do
        {
          return paramString;
          paramString = (String)localObject;
        } while (paramSQLiteDatabase == null);
        paramSQLiteDatabase.close();
        return null;
      }
      finally {}
      paramString = finally;
      paramSQLiteDatabase = null;
    }
    paramSQLiteDatabase.close();
    label76:
    throw paramString;
  }
  
  public static Long a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
  {
    Long localLong = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT database_identifier FROM streams WHERE stream_id=" + d.a(paramUUID), null);
      long l;
      if (paramSQLiteDatabase == null) {
        break label97;
      }
    }
    finally
    {
      try
      {
        if (paramSQLiteDatabase.moveToNext())
        {
          l = paramSQLiteDatabase.getLong(0);
          localLong = Long.valueOf(l);
          paramUUID = localLong;
          if (paramSQLiteDatabase != null)
          {
            paramSQLiteDatabase.close();
            paramUUID = localLong;
          }
        }
        do
        {
          return paramUUID;
          paramUUID = localLong;
        } while (paramSQLiteDatabase == null);
        paramSQLiteDatabase.close();
        return null;
      }
      finally {}
      paramUUID = finally;
      paramSQLiteDatabase = null;
    }
    paramSQLiteDatabase.close();
    label97:
    throw paramUUID;
  }
  
  public static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = paramString.getBytes();
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      byte b = paramString[i];
      localStringBuilder.append(String.format(Locale.US, "%02X", new Object[] { Byte.valueOf(b) }));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static List<Uri> a(SQLiteDatabase paramSQLiteDatabase, long paramLong1, String paramString, long paramLong2)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT m.object_identifier FROM messages AS m LEFT OUTER JOIN message_recipient_status AS mrs ON m.database_identifier = mrs.message_database_identifier  AND mrs.user_id = ? WHERE m.conversation_database_identifier = ? AND (mrs.status != 3 OR mrs.status IS NULL) AND m.message_index <= ? AND m.user_id != ?", new String[] { paramString, String.valueOf(paramLong1), String.valueOf(paramLong2), paramString });
      localSQLiteDatabase = paramSQLiteDatabase;
      paramString = new ArrayList(paramSQLiteDatabase.getCount());
      for (;;)
      {
        localSQLiteDatabase = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToNext()) {
          break;
        }
        localSQLiteDatabase = paramSQLiteDatabase;
        paramString.add(Uri.parse(paramSQLiteDatabase.getString(0)));
      }
      if (paramSQLiteDatabase == null) {
        return paramString;
      }
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
    paramSQLiteDatabase.close();
    return paramString;
  }
  
  public static List<com.layer.sdk.internal.lsdke.lsdka.a> a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdke.lsdka.a.a parama, Iterable<UUID> paramIterable)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramIterable.iterator();
    UUID localUUID;
    if (localIterator.hasNext())
    {
      localUUID = (UUID)localIterator.next();
      switch (1.bqe[parama.ordinal()])
      {
      default: 
        throw new IllegalArgumentException("Unknown MinMaxSeq type: " + parama);
      case 1: 
        paramIterable = "SELECT database_identifier, seq, min_synced_seq, max_synced_seq, base_sync_seq, starting_seq FROM streams WHERE stream_id=" + d.a(localUUID);
      }
    }
    try
    {
      label114:
      localCursor = paramSQLiteDatabase.rawQuery(paramIterable, null);
    }
    finally
    {
      try
      {
        long l;
        label155:
        Integer localInteger1;
        label169:
        Integer localInteger2;
        label183:
        Integer localInteger3;
        if (localCursor.moveToNext())
        {
          l = localCursor.getLong(0);
          if (!localCursor.isNull(1)) {
            break label283;
          }
          paramIterable = null;
          if (!localCursor.isNull(2)) {
            break label298;
          }
          localInteger1 = null;
          if (!localCursor.isNull(3)) {
            break label314;
          }
          localInteger2 = null;
          if (!localCursor.isNull(4)) {
            break label330;
          }
          localInteger3 = null;
          label197:
          if (!localCursor.isNull(5)) {
            break label346;
          }
        }
        label283:
        label298:
        label314:
        label330:
        label346:
        int i;
        for (Integer localInteger4 = null;; localInteger4 = Integer.valueOf(i))
        {
          localArrayList.add(new com.layer.sdk.internal.lsdke.lsdka.a(parama, localUUID, Long.valueOf(l), paramIterable, localInteger1, localInteger2, localInteger3, localInteger4));
          if (localCursor == null) {
            break;
          }
          localCursor.close();
          break;
          paramIterable = "SELECT database_identifier, mutation_seq, min_synced_mutation_seq, max_synced_mutation_seq, base_sync_mutation_seq, starting_seq FROM streams WHERE stream_id=" + d.a(localUUID);
          break label114;
          paramIterable = Integer.valueOf(localCursor.getInt(1));
          break label155;
          localInteger1 = Integer.valueOf(localCursor.getInt(2));
          break label169;
          localInteger2 = Integer.valueOf(localCursor.getInt(3));
          break label183;
          localInteger3 = Integer.valueOf(localCursor.getInt(4));
          break label197;
          i = localCursor.getInt(5);
        }
        paramSQLiteDatabase = finally;
        parama = null;
      }
      finally
      {
        for (;;)
        {
          Cursor localCursor;
          parama = localCursor;
        }
      }
      if (parama != null) {
        parama.close();
      }
      throw paramSQLiteDatabase;
      return localArrayList;
    }
  }
  
  public static List<Uri> a(SQLiteDatabase paramSQLiteDatabase, o... paramVarArgs)
  {
    Object localObject2 = null;
    Object localObject1;
    if (paramVarArgs != null) {
      localObject1 = localObject2;
    }
    for (;;)
    {
      try
      {
        if (paramVarArgs.length == 0)
        {
          localObject1 = localObject2;
          paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT object_identifier FROM conversations WHERE is_deleted_all_participants=0 AND is_deleted_my_devices=0 ORDER BY conversations.database_identifier", null);
          localObject1 = paramSQLiteDatabase;
          paramVarArgs = new ArrayList(paramSQLiteDatabase.getCount());
          localObject1 = paramSQLiteDatabase;
          if (!paramSQLiteDatabase.moveToNext()) {
            break;
          }
          localObject1 = paramSQLiteDatabase;
          paramVarArgs.add(Uri.parse(paramSQLiteDatabase.getString(0)));
          continue;
        }
        localObject1 = localObject2;
      }
      finally
      {
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
      }
      Object localObject3 = new HashSet(Arrays.asList(paramVarArgs));
      localObject1 = localObject2;
      if (((Set)localObject3).contains(o.bFt))
      {
        localObject1 = localObject2;
        if (!((Set)localObject3).contains(o.bFv))
        {
          localObject1 = localObject2;
          ((Set)localObject3).add(o.bFv);
        }
      }
      localObject1 = localObject2;
      paramVarArgs = new StringBuilder();
      localObject1 = localObject2;
      paramVarArgs.append("SELECT object_identifier FROM conversations WHERE is_deleted_all_participants=0 AND is_deleted_my_devices=0 AND type IN (");
      localObject1 = localObject2;
      localObject3 = ((Set)localObject3).iterator();
      for (int i = 1;; i = 0)
      {
        localObject1 = localObject2;
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localObject1 = localObject2;
        o localo = (o)((Iterator)localObject3).next();
        if (i == 0)
        {
          localObject1 = localObject2;
          paramVarArgs.append(", ");
        }
        localObject1 = localObject2;
        paramVarArgs.append(localo.a);
      }
      localObject1 = localObject2;
      paramVarArgs.append(") ORDER BY conversations.database_identifier");
      localObject1 = localObject2;
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery(paramVarArgs.toString(), null);
    }
    if (paramSQLiteDatabase != null) {
      paramSQLiteDatabase.close();
    }
    return paramVarArgs;
  }
  
  public static Set<Integer> a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdke.lsdka.a.a parama, UUID paramUUID, Integer paramInteger1, Integer paramInteger2)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    for (;;)
    {
      HashSet localHashSet;
      try
      {
        localHashSet = new HashSet();
        localObject1 = localObject2;
        switch (1.bqe[parama.ordinal()])
        {
        case 1: 
          localObject1 = localObject2;
          throw new IllegalArgumentException("Unknown MinMaxSeq type: " + parama);
        }
      }
      finally
      {
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
      }
      localObject1 = localObject2;
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT seq FROM events WHERE stream_database_identifier=(SELECT database_identifier FROM streams WHERE stream_id=" + d.a(paramUUID) + ") AND seq IS NOT NULL AND (seq < ? OR seq >= ?)", new String[] { paramInteger1.toString(), paramInteger2.toString() });
      for (;;)
      {
        localObject1 = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToNext()) {
          break;
        }
        localObject1 = paramSQLiteDatabase;
        localHashSet.add(Integer.valueOf(paramSQLiteDatabase.getInt(0)));
        continue;
        localObject1 = localObject2;
        paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT seq FROM mutations WHERE stream_id=" + d.a(paramUUID) + " AND seq IS NOT NULL AND (seq < ? OR seq >= ?)", new String[] { paramInteger1.toString(), paramInteger2.toString() });
      }
      if (paramSQLiteDatabase != null) {
        paramSQLiteDatabase.close();
      }
      return localHashSet;
    }
  }
  
  /* Error */
  public static UUID a(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: ldc_w 381
    //   6: iconst_1
    //   7: anewarray 57	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: aload_1
    //   13: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   16: invokevirtual 382	java/lang/String:toString	()Ljava/lang/String;
    //   19: aastore
    //   20: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore_0
    //   24: aload_0
    //   25: invokeinterface 203 1 0
    //   30: ifeq +56 -> 86
    //   33: aload_0
    //   34: iconst_0
    //   35: invokeinterface 206 2 0
    //   40: istore_2
    //   41: iload_2
    //   42: ifeq +19 -> 61
    //   45: aload_3
    //   46: astore_1
    //   47: aload_0
    //   48: ifnull +11 -> 59
    //   51: aload_0
    //   52: invokeinterface 190 1 0
    //   57: aload_3
    //   58: astore_1
    //   59: aload_1
    //   60: areturn
    //   61: aload_0
    //   62: iconst_0
    //   63: invokeinterface 386 2 0
    //   68: invokestatic 392	com/layer/b/e/d:s	([B)Ljava/util/UUID;
    //   71: astore_3
    //   72: aload_3
    //   73: astore_1
    //   74: aload_0
    //   75: ifnull -16 -> 59
    //   78: aload_0
    //   79: invokeinterface 190 1 0
    //   84: aload_3
    //   85: areturn
    //   86: aload_3
    //   87: astore_1
    //   88: aload_0
    //   89: ifnull -30 -> 59
    //   92: aload_0
    //   93: invokeinterface 190 1 0
    //   98: aconst_null
    //   99: areturn
    //   100: astore_1
    //   101: aconst_null
    //   102: astore_0
    //   103: aload_0
    //   104: ifnull +9 -> 113
    //   107: aload_0
    //   108: invokeinterface 190 1 0
    //   113: aload_1
    //   114: athrow
    //   115: astore_1
    //   116: goto -13 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	119	1	paramLong	Long
    //   40	2	2	bool	boolean
    //   1	86	3	localUUID	UUID
    // Exception table:
    //   from	to	target	type
    //   2	24	100	finally
    //   24	41	115	finally
    //   61	72	115	finally
  }
  
  /* Error */
  public static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: iconst_0
    //   4: istore_2
    //   5: iload_2
    //   6: istore_1
    //   7: aload 4
    //   9: astore_3
    //   10: aload_0
    //   11: ldc_w 395
    //   14: invokevirtual 131	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   17: iload_2
    //   18: istore_1
    //   19: aload 4
    //   21: astore_3
    //   22: aload_0
    //   23: invokevirtual 398	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   26: iconst_1
    //   27: istore_2
    //   28: iload_2
    //   29: istore_1
    //   30: aload 4
    //   32: astore_3
    //   33: aload_0
    //   34: ldc_w 400
    //   37: aconst_null
    //   38: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   41: astore 4
    //   43: iload_2
    //   44: istore_1
    //   45: aload 4
    //   47: astore_3
    //   48: aload 4
    //   50: invokeinterface 203 1 0
    //   55: ifeq +125 -> 180
    //   58: iload_2
    //   59: istore_1
    //   60: aload 4
    //   62: astore_3
    //   63: aload 4
    //   65: iconst_0
    //   66: invokeinterface 285 2 0
    //   71: astore 5
    //   73: iload_2
    //   74: istore_1
    //   75: aload 4
    //   77: astore_3
    //   78: aload 5
    //   80: ldc_w 402
    //   83: invokevirtual 406	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   86: ifne -43 -> 43
    //   89: iload_2
    //   90: istore_1
    //   91: aload 4
    //   93: astore_3
    //   94: aload 5
    //   96: ldc_w 408
    //   99: invokevirtual 411	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   102: ifne -59 -> 43
    //   105: iload_2
    //   106: istore_1
    //   107: aload 4
    //   109: astore_3
    //   110: aload_0
    //   111: new 78	java/lang/StringBuilder
    //   114: dup
    //   115: ldc_w 413
    //   118: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   121: aload 4
    //   123: iconst_0
    //   124: invokeinterface 285 2 0
    //   129: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: invokevirtual 131	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   138: goto -95 -> 43
    //   141: astore 4
    //   143: iload_1
    //   144: ifeq +7 -> 151
    //   147: aload_0
    //   148: invokevirtual 416	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   151: aload_0
    //   152: ldc_w 418
    //   155: invokevirtual 131	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   158: aload_3
    //   159: ifnull +18 -> 177
    //   162: aload_3
    //   163: invokeinterface 421 1 0
    //   168: ifne +9 -> 177
    //   171: aload_3
    //   172: invokeinterface 190 1 0
    //   177: aload 4
    //   179: athrow
    //   180: iload_2
    //   181: istore_1
    //   182: aload 4
    //   184: astore_3
    //   185: aload 4
    //   187: invokeinterface 190 1 0
    //   192: iload_2
    //   193: istore_1
    //   194: aload 4
    //   196: astore_3
    //   197: aload_0
    //   198: invokevirtual 424	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   201: aload_0
    //   202: invokevirtual 416	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   205: aload_0
    //   206: ldc_w 418
    //   209: invokevirtual 131	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   212: aload 4
    //   214: ifnull +20 -> 234
    //   217: aload 4
    //   219: invokeinterface 421 1 0
    //   224: ifne +10 -> 234
    //   227: aload 4
    //   229: invokeinterface 190 1 0
    //   234: return
    //   235: astore_0
    //   236: aload 4
    //   238: ifnull +20 -> 258
    //   241: aload 4
    //   243: invokeinterface 421 1 0
    //   248: ifne +10 -> 258
    //   251: aload 4
    //   253: invokeinterface 190 1 0
    //   258: aload_0
    //   259: athrow
    //   260: astore_0
    //   261: aload_3
    //   262: ifnull +18 -> 280
    //   265: aload_3
    //   266: invokeinterface 421 1 0
    //   271: ifne +9 -> 280
    //   274: aload_3
    //   275: invokeinterface 190 1 0
    //   280: aload_0
    //   281: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	282	0	paramSQLiteDatabase	SQLiteDatabase
    //   6	188	1	i	int
    //   4	189	2	j	int
    //   9	266	3	localObject1	Object
    //   1	121	4	localCursor	Cursor
    //   141	111	4	localObject2	Object
    //   71	24	5	str	String
    // Exception table:
    //   from	to	target	type
    //   10	17	141	finally
    //   22	26	141	finally
    //   33	43	141	finally
    //   48	58	141	finally
    //   63	73	141	finally
    //   78	89	141	finally
    //   94	105	141	finally
    //   110	138	141	finally
    //   185	192	141	finally
    //   197	201	141	finally
    //   201	212	235	finally
    //   147	151	260	finally
    //   151	158	260	finally
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
  {
    paramSQLiteDatabase.execSQL("UPDATE streams SET client_seq=0, seq=" + paramc.d + " WHERE stream_id=" + d.a(paramc.bvS) + " AND (seq < " + paramc.d + " OR seq IS NULL)");
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh)
  {
    if (!paramh.t()) {
      return;
    }
    paramSQLiteDatabase.execSQL("UPDATE streams SET client_seq=0, seq=" + paramh.d + " WHERE database_identifier=" + paramh.bwE + " AND (seq < " + paramh.d + " OR seq IS NULL)");
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("is_deleted", Integer.valueOf(i));
      if (paramSQLiteDatabase.update("streams", localContentValues, "database_identifier=?", new String[] { paramh.bwE.toString() }) == 1) {
        break;
      }
      throw new IllegalArgumentException("Could not update stream deleted!");
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.c paramc)
  {
    if (paramc == null)
    {
      paramSQLiteDatabase.execSQL("UPDATE conversations SET has_unread_messages=(CASE WHEN total_unread_message_count IS NULL then (CASE WHEN EXISTS(SELECT 1 FROM messages WHERE conversation_database_identifier=conversations.database_identifier AND is_unread=1 AND is_deleted_all_participants=0 AND is_deleted_my_devices=0) THEN 1 ELSE 0 END) WHEN total_unread_message_count=0 then 0 ELSE 1 END) " + "WHERE database_identifier=conversations.database_identifier", new Object[0]);
      return;
    }
    paramSQLiteDatabase.execSQL("UPDATE conversations SET has_unread_messages=(CASE WHEN total_unread_message_count IS NULL then (CASE WHEN EXISTS(SELECT 1 FROM messages WHERE conversation_database_identifier=conversations.database_identifier AND is_unread=1 AND is_deleted_all_participants=0 AND is_deleted_my_devices=0) THEN 1 ELSE 0 END) WHEN total_unread_message_count=0 then 0 ELSE 1 END) " + "WHERE database_identifier=?", new Object[] { paramc.g() });
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.d paramd)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramd.f()) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("is_deleted", Integer.valueOf(i));
      paramSQLiteDatabase.update("conversation_participants", localContentValues, "database_identifier=?", new String[] { paramd.b().toString() });
      return;
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, h.b paramb, Long paramLong, String paramString)
  {
    paramSQLiteDatabase.delete("local_keyed_values", "object_type=? AND object_id=? AND key=?", new String[] { paramb.a(), paramLong.toString(), paramString });
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, h.b paramb, Long paramLong, String paramString, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("is_deleted", Integer.valueOf(i));
      if (paramBoolean) {
        localContentValues.putNull("timestamp");
      }
      paramSQLiteDatabase.update("local_keyed_values", localContentValues, "object_type=? AND object_id=? AND key=?", new String[] { paramb.a(), paramLong.toString(), paramString });
      return;
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, o.b paramb, Long paramLong, long paramLong1, String paramString, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("timestamp", Long.valueOf(paramLong1));
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("is_deleted", Integer.valueOf(i));
      paramSQLiteDatabase.update("remote_keyed_values", localContentValues, "object_type=? AND object_id=? AND key=?", new String[] { paramb.a(), paramLong.toString(), paramString });
      return;
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.c paramc)
  {
    if (paramSQLiteDatabase.delete("syncable_changes", "change_identifier=?", new String[] { paramc.a().toString() }) != 1) {
      throw new IllegalArgumentException("Could not delete syncable change!");
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, d.c paramc, d.a parama, Long paramLong)
  {
    a(paramSQLiteDatabase, paramc, parama, paramLong, null);
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, d.c paramc, d.a parama, Long paramLong, d.b paramb)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("table_name", paramc.a());
    localContentValues.put("change_type", Integer.valueOf(parama.a()));
    localContentValues.put("row_identifier", paramLong);
    if (paramb != null) {
      localContentValues.put("column_name", paramb.a());
    }
    if (paramSQLiteDatabase.insert("synced_changes", null, localContentValues) == -1L) {
      throw new IllegalArgumentException("Could not insert synced change!");
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.d paramd)
  {
    if (paramSQLiteDatabase.delete("synced_changes", "change_identifier=?", new String[] { paramd.a().toString() }) != 1) {
      throw new IllegalArgumentException("Could not delete synced change!");
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation)
  {
    com.layer.sdk.internal.lsdkd.lsdka.c localc = (com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation;
    ContentValues localContentValues = new ContentValues();
    if (((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation).c())
    {
      i = 1;
      localContentValues.put("is_deleted_all_participants", Integer.valueOf(i));
      if (!((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation).d()) {
        break label108;
      }
    }
    label108:
    for (int i = 1;; i = 0)
    {
      localContentValues.put("is_deleted_my_devices", Integer.valueOf(i));
      if (paramSQLiteDatabase.update("conversations", localContentValues, "database_identifier=?", new String[] { localc.g().toString() }) == 1) {
        return;
      }
      throw new IllegalArgumentException("Could not mark conversation deleted!");
      i = 0;
      break;
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation, boolean paramBoolean)
  {
    Object localObject = (com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation;
    ContentValues localContentValues = new ContentValues();
    if (((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).isDistinct()) {
      localContentValues.put("is_distinct", Integer.valueOf(1));
    }
    while (paramSQLiteDatabase.update("conversations", localContentValues, "database_identifier=?", new String[] { ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject).g().toString() }) != 1)
    {
      throw new IllegalArgumentException("Could not update conversation distinct!");
      localContentValues.put("is_distinct", Integer.valueOf(0));
    }
    if (paramBoolean)
    {
      localObject = new ContentValues();
      ((ContentValues)localObject).put("table_name", "conversations");
      ((ContentValues)localObject).put("row_identifier", ((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation).g());
      ((ContentValues)localObject).put("change_type", Integer.valueOf(c.a.b.a()));
      paramSQLiteDatabase.insert("syncable_changes", null, (ContentValues)localObject);
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Message paramMessage)
  {
    i locali = (i)paramMessage;
    ContentValues localContentValues = new ContentValues();
    if (((i)paramMessage).c())
    {
      i = 1;
      localContentValues.put("is_deleted_all_participants", Integer.valueOf(i));
      if (!((i)paramMessage).d()) {
        break label108;
      }
    }
    label108:
    for (int i = 1;; i = 0)
    {
      localContentValues.put("is_deleted_my_devices", Integer.valueOf(i));
      if (paramSQLiteDatabase.update("messages", localContentValues, "database_identifier=?", new String[] { locali.h().toString() }) == 1) {
        return;
      }
      throw new IllegalArgumentException("Could not mark message deleted!");
      i = 0;
      break;
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Iterable<com.layer.sdk.internal.lsdke.lsdka.a> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    if (paramIterable.hasNext())
    {
      com.layer.sdk.internal.lsdke.lsdka.a locala = (com.layer.sdk.internal.lsdke.lsdka.a)paramIterable.next();
      switch (1.bqe[locala.a.ordinal()])
      {
      default: 
        throw new IllegalArgumentException("Unknown MinMaxSeq type: " + locala.a);
      case 1: 
        localContentValues = new ContentValues();
        if (locala.e == null)
        {
          localContentValues.putNull("min_synced_seq");
          label109:
          if (locala.f != null) {
            break label180;
          }
          localContentValues.putNull("max_synced_seq");
          label123:
          if (locala.g != null) {
            break label194;
          }
          localContentValues.putNull("base_sync_seq");
        }
        for (;;)
        {
          paramSQLiteDatabase.update("streams", localContentValues, "database_identifier=?", new String[] { locala.c.toString() });
          break;
          localContentValues.put("min_synced_seq", locala.e);
          break label109;
          label180:
          localContentValues.put("max_synced_seq", locala.f);
          break label123;
          label194:
          localContentValues.put("base_sync_seq", locala.g);
        }
      }
      ContentValues localContentValues = new ContentValues();
      if (locala.e == null)
      {
        localContentValues.putNull("min_synced_mutation_seq");
        label230:
        if (locala.f != null) {
          break label301;
        }
        localContentValues.putNull("max_synced_mutation_seq");
        label244:
        if (locala.g != null) {
          break label315;
        }
        localContentValues.putNull("base_sync_mutation_seq");
      }
      for (;;)
      {
        paramSQLiteDatabase.update("streams", localContentValues, "database_identifier=?", new String[] { locala.c.toString() });
        break;
        localContentValues.put("min_synced_mutation_seq", locala.e);
        break label230;
        label301:
        localContentValues.put("max_synced_mutation_seq", locala.f);
        break label244;
        label315:
        localContentValues.put("base_sync_mutation_seq", locala.g);
      }
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, int paramInt)
  {
    paramSQLiteDatabase.execSQL("UPDATE conversations SET total_message_count=" + paramInt + " WHERE database_identifier=" + paramLong.toString());
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, Integer paramInteger)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("client_seq", paramInteger);
    if (paramSQLiteDatabase.update("streams", localContentValues, "database_identifier=?", new String[] { paramLong.toString() }) != 1) {
      throw new IllegalArgumentException("Could not increment client sequence!");
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong1, Long paramLong2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("event_database_identifier", paramLong2);
    if (paramSQLiteDatabase.update("conversation_participants", localContentValues, "database_identifier=?", new String[] { paramLong1.toString() }) != 1) {
      throw new IllegalArgumentException("Could not set Conversation Participant's event reference!");
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, String paramString)
  {
    if (paramSQLiteDatabase.delete("conversation_participants", "conversation_database_identifier=? AND member_id=?", new String[] { paramLong.toString(), paramString }) != 1) {
      throw new IllegalArgumentException("Could not delete conversation participant");
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, String paramString, com.layer.sdk.internal.lsdkd.lsdka.c paramc)
  {
    if (paramc == null)
    {
      paramSQLiteDatabase.execSQL("UPDATE messages SET is_unread=(CASE WHEN (is_deleted_all_participants!=0 OR is_deleted_my_devices!=0) THEN 0 WHEN user_id=? THEN 0 WHEN EXISTS(SELECT message_database_identifier FROM message_recipient_status WHERE message_database_identifier=messages.database_identifier AND user_id=? AND status=3) THEN 0 ELSE 1 END) ", new String[] { paramString, paramString });
      return;
    }
    paramSQLiteDatabase.execSQL("UPDATE messages SET is_unread=(CASE WHEN (is_deleted_all_participants!=0 OR is_deleted_my_devices!=0) THEN 0 WHEN user_id=? THEN 0 WHEN EXISTS(SELECT message_database_identifier FROM message_recipient_status WHERE message_database_identifier=messages.database_identifier AND user_id=? AND status=3) THEN 0 ELSE 1 END) " + "WHERE conversation_database_identifier=?", new String[] { paramString, paramString, String.valueOf(paramc.g()) });
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, String paramString, Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue()) {
      paramSQLiteDatabase.delete("block_list", "user_id=?", new String[] { paramString });
    }
    while (paramSQLiteDatabase.delete("block_list", "user_id=? AND synced_at IS NULL", new String[] { paramString }) != 0) {
      return;
    }
    long l = new Date().getTime();
    paramBoolean = new ContentValues();
    paramBoolean.put("user_id", paramString);
    paramBoolean.put("unblocked_at", Long.valueOf(l));
    paramSQLiteDatabase.update("block_list", paramBoolean, "user_id=?", new String[] { paramString });
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3)
  {
    paramSQLiteDatabase.execSQL("DELETE FROM " + paramString1 + " WHERE table_name='" + paramString2 + "' AND NOT EXISTS (SELECT 1 FROM " + paramString2 + " WHERE " + paramString2 + "." + paramString3 + "=" + paramString1 + ".row_identifier)");
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Collection<com.layer.sdk.internal.lsdki.d> paramCollection)
  {
    if (paramCollection.isEmpty()) {}
    int i;
    do
    {
      return;
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        com.layer.sdk.internal.lsdki.d locald = (com.layer.sdk.internal.lsdki.d)localIterator.next();
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append(locald.a());
      }
      i = paramSQLiteDatabase.delete("synced_changes", "change_identifier IN (" + localStringBuilder.toString() + ")", null);
    } while (i == paramCollection.size());
    if (k.a(6)) {
      k.e(a, "Could not delete all synced changes! Tried " + paramCollection.size() + ". Deleted: " + i);
    }
    throw new IllegalArgumentException("Could not delete all synced changes! : " + i + ". Tried to delete : " + paramCollection.size());
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, HashMap<UUID, Integer> paramHashMap)
  {
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      UUID localUUID = (UUID)localIterator.next();
      Integer localInteger = (Integer)paramHashMap.get(localUUID);
      if (localInteger != null) {
        paramSQLiteDatabase.execSQL("UPDATE streams SET marked_to_fetch_historic_data=" + localInteger + " WHERE stream_id=" + d.a(localUUID) + ";");
      }
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
  {
    int i = paramSet.size();
    HashSet localHashSet = new HashSet();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      Long localLong = (Long)paramSet.next();
      int j = i - 1;
      localHashSet.add(localLong);
      if (localHashSet.size() < 500)
      {
        i = j;
        if (j != 0) {}
      }
      else
      {
        paramSQLiteDatabase.execSQL("DELETE FROM synced_changes WHERE table_name=\"events\" AND row_identifier IN (" + TextUtils.join(",", localHashSet) + ")");
        localHashSet.clear();
        i = j;
      }
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID, Long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("metadata_timestamp", paramLong);
    if (paramSQLiteDatabase.update("streams", localContentValues, "stream_id=" + d.a(paramUUID), null) != 1) {
      throw new IllegalArgumentException("Could not set metadata timestamp!");
    }
  }
  
  /* Error */
  public static boolean a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 733
    //   4: iconst_2
    //   5: anewarray 57	java/lang/String
    //   8: dup
    //   9: iconst_0
    //   10: iload_2
    //   11: invokestatic 35	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   14: invokevirtual 373	java/lang/Integer:toString	()Ljava/lang/String;
    //   17: aastore
    //   18: dup
    //   19: iconst_1
    //   20: aload_1
    //   21: getfield 736	com/layer/b/d/c:bvQ	Ljava/lang/Long;
    //   24: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   27: aastore
    //   28: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   31: astore_1
    //   32: aload_1
    //   33: invokeinterface 203 1 0
    //   38: istore_3
    //   39: iload_3
    //   40: ifeq +15 -> 55
    //   43: aload_1
    //   44: ifnull +9 -> 53
    //   47: aload_1
    //   48: invokeinterface 190 1 0
    //   53: iconst_1
    //   54: ireturn
    //   55: aload_1
    //   56: ifnull +9 -> 65
    //   59: aload_1
    //   60: invokeinterface 190 1 0
    //   65: iconst_0
    //   66: ireturn
    //   67: astore_0
    //   68: aconst_null
    //   69: astore_1
    //   70: aload_1
    //   71: ifnull +9 -> 80
    //   74: aload_1
    //   75: invokeinterface 190 1 0
    //   80: aload_0
    //   81: athrow
    //   82: astore_0
    //   83: goto -13 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	86	1	paramc	com.layer.b.d.c
    //   0	86	2	paramInt	int
    //   38	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   0	32	67	finally
    //   32	39	82	finally
  }
  
  public static int b(SQLiteDatabase paramSQLiteDatabase)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    int j = 0;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT COUNT(*) FROM events", null);
      int i = j;
      localSQLiteDatabase = paramSQLiteDatabase;
      if (paramSQLiteDatabase.moveToNext())
      {
        i = j;
        localSQLiteDatabase = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.isNull(0))
        {
          localSQLiteDatabase = paramSQLiteDatabase;
          i = paramSQLiteDatabase.getInt(0);
        }
      }
      return i;
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
  }
  
  public static Boolean b(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation)
  {
    Long localLong = ((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation).m();
    if (localLong == null)
    {
      if (k.a(5)) {
        k.d(a, "Ignoring call to `updateConversationToFetchFromEarliestUnreadHistoricMessage`. No stream yet for conversation: " + paramConversation);
      }
      return Boolean.valueOf(false);
    }
    paramConversation = b.a(paramSQLiteDatabase, localLong);
    if ((paramConversation.bwH != null) && (paramConversation.bwH.intValue() == q.a(paramConversation))) {
      return Boolean.valueOf(false);
    }
    int j = q.a(paramConversation);
    int i = j;
    if (paramConversation.yu())
    {
      i = j;
      if (paramConversation.bEM.f()) {
        i = paramConversation.bEM.c;
      }
    }
    paramSQLiteDatabase.execSQL("UPDATE streams SET base_sync_seq=" + i + ", marked_to_fetch_historic_data=1 WHERE database_identifier=" + localLong.toString());
    return Boolean.valueOf(true);
  }
  
  /* Error */
  public static Integer b(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: ldc_w 757
    //   6: iconst_1
    //   7: anewarray 57	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: aload_1
    //   13: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   16: aastore
    //   17: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   20: astore_0
    //   21: aload_0
    //   22: invokeinterface 203 1 0
    //   27: ifeq +32 -> 59
    //   30: aload_0
    //   31: iconst_0
    //   32: invokeinterface 210 2 0
    //   37: istore_2
    //   38: iload_2
    //   39: invokestatic 35	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   42: astore_3
    //   43: aload_3
    //   44: astore_1
    //   45: aload_0
    //   46: ifnull +11 -> 57
    //   49: aload_0
    //   50: invokeinterface 190 1 0
    //   55: aload_3
    //   56: astore_1
    //   57: aload_1
    //   58: areturn
    //   59: aload_3
    //   60: astore_1
    //   61: aload_0
    //   62: ifnull -5 -> 57
    //   65: aload_0
    //   66: invokeinterface 190 1 0
    //   71: aconst_null
    //   72: areturn
    //   73: astore_1
    //   74: aconst_null
    //   75: astore_0
    //   76: aload_0
    //   77: ifnull +9 -> 86
    //   80: aload_0
    //   81: invokeinterface 190 1 0
    //   86: aload_1
    //   87: athrow
    //   88: astore_1
    //   89: goto -13 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	92	1	paramLong	Long
    //   37	2	2	i	int
    //   1	59	3	localInteger	Integer
    // Exception table:
    //   from	to	target	type
    //   2	21	73	finally
    //   21	38	88	finally
  }
  
  public static Integer b(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
  {
    Integer localInteger = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT seq FROM streams WHERE stream_id=" + d.a(paramUUID), null);
      int i;
      if (paramSQLiteDatabase == null) {
        break label93;
      }
    }
    finally
    {
      try
      {
        if (paramSQLiteDatabase.moveToNext())
        {
          i = paramSQLiteDatabase.getInt(0);
          localInteger = Integer.valueOf(i);
          paramUUID = localInteger;
          if (paramSQLiteDatabase != null)
          {
            paramSQLiteDatabase.close();
            paramUUID = localInteger;
          }
        }
        do
        {
          return paramUUID;
          paramUUID = localInteger;
        } while (paramSQLiteDatabase == null);
        paramSQLiteDatabase.close();
        return null;
      }
      finally {}
      paramUUID = finally;
      paramSQLiteDatabase = null;
    }
    paramSQLiteDatabase.close();
    label93:
    throw paramUUID;
  }
  
  public static List<Uri> b(SQLiteDatabase paramSQLiteDatabase, String paramString, String[] paramArrayOfString)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery(paramString, paramArrayOfString);
      localSQLiteDatabase = paramSQLiteDatabase;
      paramString = new ArrayList(paramSQLiteDatabase.getCount());
      for (;;)
      {
        localSQLiteDatabase = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToNext()) {
          break;
        }
        localSQLiteDatabase = paramSQLiteDatabase;
        paramString.add(Uri.parse(paramSQLiteDatabase.getString(0)));
      }
      if (paramSQLiteDatabase == null) {
        return paramString;
      }
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
    paramSQLiteDatabase.close();
    return paramString;
  }
  
  public static List<Uri> b(SQLiteDatabase paramSQLiteDatabase, Set<String> paramSet)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      Object localObject3 = new ArrayList(paramSet);
      localObject1 = localObject2;
      Collections.sort((List)localObject3);
      localObject1 = localObject2;
      paramSet = new ArrayList(((List)localObject3).size());
      localObject1 = localObject2;
      localObject3 = ((List)localObject3).iterator();
      for (;;)
      {
        localObject1 = localObject2;
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localObject1 = localObject2;
        paramSet.add(a((String)((Iterator)localObject3).next()));
      }
      localObject1 = localObject2;
    }
    finally
    {
      if (localObject1 != null) {
        ((Cursor)localObject1).close();
      }
    }
    paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT object_identifier, (    SELECT GROUP_CONCAT(HEX(member_id), \",\") FROM (SELECT member_id FROM conversation_participants     WHERE conversation_participants.is_deleted=0 AND conversation_participants.conversation_database_identifier=conversations.database_identifier     ORDER BY member_id)) AS participants FROM conversations WHERE participants=? AND is_deleted_all_participants=0 AND is_deleted_my_devices=0", new String[] { TextUtils.join(",", paramSet) });
    localObject1 = paramSQLiteDatabase;
    paramSet = new ArrayList(paramSQLiteDatabase.getCount());
    for (;;)
    {
      localObject1 = paramSQLiteDatabase;
      if (!paramSQLiteDatabase.moveToNext()) {
        break;
      }
      localObject1 = paramSQLiteDatabase;
      paramSet.add(Uri.parse(paramSQLiteDatabase.getString(0)));
    }
    if (paramSQLiteDatabase != null) {
      paramSQLiteDatabase.close();
    }
    return paramSet;
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("type", Integer.valueOf(e.bDu.a));
    localContentValues.putNull("subtype");
    localContentValues.putNull("member_id");
    localContentValues.putNull("target_seq");
    if (paramSQLiteDatabase.update("events", localContentValues, "database_identifier=?", new String[] { paramc.bvQ.toString() }) != 1) {
      throw new IllegalArgumentException("Could not tombstone event!");
    }
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("marked_to_delete", Integer.valueOf(1));
    if (paramSQLiteDatabase.update("streams", localContentValues, "database_identifier=?", new String[] { paramh.bwE.toString() }) != 1) {
      throw new IllegalArgumentException("Could not mark stream for deletion!");
    }
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean) {
      localContentValues.put("is_distinct", Integer.valueOf(1));
    }
    while (paramSQLiteDatabase.update("streams", localContentValues, "database_identifier=?", new String[] { paramh.bwE.toString() }) != 1)
    {
      throw new IllegalArgumentException("Could not update stream is_distinct!");
      localContentValues.put("is_distinct", Integer.valueOf(0));
    }
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, Long paramLong, int paramInt)
  {
    paramSQLiteDatabase.execSQL("UPDATE conversations SET total_unread_message_count=" + paramInt + " WHERE database_identifier=" + paramLong.toString());
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, Long paramLong1, Long paramLong2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("stream_member_database_identifier", paramLong2);
    if (paramSQLiteDatabase.update("conversation_participants", localContentValues, "database_identifier=?", new String[] { paramLong1.toString() }) != 1) {
      throw new IllegalArgumentException("Could not set Conversation Participant's stream database identifier!");
    }
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    long l = new Date().getTime();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("user_id", paramString);
    localContentValues.put("synced_at", Long.valueOf(l));
    paramSQLiteDatabase.update("block_list", localContentValues, "user_id=?", new String[] { paramString });
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, HashMap<UUID, Integer> paramHashMap)
  {
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      UUID localUUID = (UUID)localIterator.next();
      paramSQLiteDatabase.execSQL("UPDATE streams SET base_sync_seq=" + paramHashMap.get(localUUID) + " WHERE stream_id=" + d.a(localUUID) + ";");
    }
  }
  
  public static Uri c(SQLiteDatabase paramSQLiteDatabase, Set<String> paramSet)
  {
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2;
    try
    {
      Object localObject2 = new ArrayList(paramSet);
      Collections.sort((List)localObject2);
      localArrayList2 = new ArrayList(((List)localObject2).size());
      localObject2 = ((List)localObject2).iterator();
      for (;;)
      {
        if (((Iterator)localObject2).hasNext())
        {
          localArrayList2.add(a((String)((Iterator)localObject2).next()));
          continue;
          if (paramSet == null) {
            break;
          }
        }
      }
    }
    finally
    {
      paramSet = localArrayList1;
    }
    for (;;)
    {
      paramSet.close();
      throw paramSQLiteDatabase;
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT object_identifier, (    SELECT GROUP_CONCAT(HEX(member_id), \",\") FROM (SELECT member_id FROM conversation_participants     WHERE conversation_participants.is_deleted=0 AND conversation_participants.conversation_database_identifier=conversations.database_identifier     ORDER BY member_id)) AS participants FROM conversations WHERE participants=? AND is_deleted_all_participants=0 AND is_distinct IS 1", new String[] { TextUtils.join(",", localArrayList2) });
      try
      {
        localArrayList1 = new ArrayList(paramSQLiteDatabase.getCount());
        while (paramSQLiteDatabase.moveToNext()) {
          localArrayList1.add(Uri.parse(paramSQLiteDatabase.getString(0)));
        }
        if (localArrayList1.size() > 1) {
          throw new IllegalStateException("More than one distinct conversation found for participants: " + paramSet.toString());
        }
        if (localArrayList1.size() > 0)
        {
          paramSet = (Uri)localArrayList1.get(0);
          if (paramSQLiteDatabase != null) {
            paramSQLiteDatabase.close();
          }
          return paramSet;
        }
        if (paramSQLiteDatabase != null) {
          paramSQLiteDatabase.close();
        }
        return null;
      }
      finally
      {
        paramSet = paramSQLiteDatabase;
        paramSQLiteDatabase = (SQLiteDatabase)localObject1;
      }
    }
  }
  
  public static Boolean c(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    boolean bool = true;
    if (paramSQLiteDatabase.delete("block_list", "user_id=?", new String[] { paramString }) != 0) {}
    for (;;)
    {
      return Boolean.valueOf(bool);
      bool = false;
    }
  }
  
  public static Integer c(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    Integer localInteger = b(paramSQLiteDatabase, paramLong);
    if (localInteger == null) {
      throw new IllegalArgumentException("Could not find stream for ID: " + paramLong);
    }
    a(paramSQLiteDatabase, paramLong, Integer.valueOf(localInteger.intValue() + 1));
    return localInteger;
  }
  
  public static void c(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.delete("synced_changes", null, null);
  }
  
  /* Error */
  public static Long d(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: ldc_w 834
    //   7: iconst_1
    //   8: anewarray 57	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: aload_1
    //   14: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   17: aastore
    //   18: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_0
    //   22: aload_0
    //   23: invokeinterface 203 1 0
    //   28: ifeq +63 -> 91
    //   31: aload_0
    //   32: iconst_0
    //   33: invokeinterface 206 2 0
    //   38: istore_2
    //   39: iload_2
    //   40: ifeq +21 -> 61
    //   43: aload 5
    //   45: astore_1
    //   46: aload_0
    //   47: ifnull +12 -> 59
    //   50: aload_0
    //   51: invokeinterface 190 1 0
    //   56: aload 5
    //   58: astore_1
    //   59: aload_1
    //   60: areturn
    //   61: aload_0
    //   62: iconst_0
    //   63: invokeinterface 217 2 0
    //   68: lstore_3
    //   69: lload_3
    //   70: invokestatic 146	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   73: astore 5
    //   75: aload 5
    //   77: astore_1
    //   78: aload_0
    //   79: ifnull -20 -> 59
    //   82: aload_0
    //   83: invokeinterface 190 1 0
    //   88: aload 5
    //   90: areturn
    //   91: aload 5
    //   93: astore_1
    //   94: aload_0
    //   95: ifnull -36 -> 59
    //   98: aload_0
    //   99: invokeinterface 190 1 0
    //   104: aconst_null
    //   105: areturn
    //   106: astore_1
    //   107: aconst_null
    //   108: astore_0
    //   109: aload_0
    //   110: ifnull +9 -> 119
    //   113: aload_0
    //   114: invokeinterface 190 1 0
    //   119: aload_1
    //   120: athrow
    //   121: astore_1
    //   122: goto -13 -> 109
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	125	1	paramLong	Long
    //   38	2	2	bool	boolean
    //   68	2	3	l	long
    //   1	91	5	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   3	22	106	finally
    //   22	39	121	finally
    //   61	69	121	finally
  }
  
  public static Long d(SQLiteDatabase paramSQLiteDatabase, Set<String> paramSet)
  {
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2;
    try
    {
      Object localObject2 = new ArrayList(paramSet);
      Collections.sort((List)localObject2);
      localArrayList2 = new ArrayList(((List)localObject2).size());
      localObject2 = ((List)localObject2).iterator();
      for (;;)
      {
        if (((Iterator)localObject2).hasNext())
        {
          localArrayList2.add(a((String)((Iterator)localObject2).next()));
          continue;
          if (paramSet == null) {
            break;
          }
        }
      }
    }
    finally
    {
      paramSet = localArrayList1;
    }
    for (;;)
    {
      paramSet.close();
      throw paramSQLiteDatabase;
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT database_identifier, (    SELECT GROUP_CONCAT(HEX(member_id), \",\") FROM (SELECT member_id FROM stream_members     WHERE stream_members.is_deleted=0 AND stream_members.stream_database_identifier=streams.database_identifier     ORDER BY member_id)) AS members FROM streams WHERE members=? AND is_errored=0 AND is_deleted=0 AND marked_to_delete=0 AND is_distinct=1", new String[] { TextUtils.join(",", localArrayList2) });
      try
      {
        localArrayList1 = new ArrayList(paramSQLiteDatabase.getCount());
        while (paramSQLiteDatabase.moveToNext()) {
          localArrayList1.add(Long.valueOf(paramSQLiteDatabase.getLong(0)));
        }
        if (localArrayList1.size() > 1) {
          throw new IllegalStateException("More than one distinct conversation found for participants: " + paramSet.toString());
        }
        if (localArrayList1.size() == 1)
        {
          paramSet = (Long)localArrayList1.get(0);
          if (paramSQLiteDatabase != null) {
            paramSQLiteDatabase.close();
          }
          return paramSet;
        }
        if (paramSQLiteDatabase != null) {
          paramSQLiteDatabase.close();
        }
        return null;
      }
      finally
      {
        paramSet = paramSQLiteDatabase;
        paramSQLiteDatabase = (SQLiteDatabase)localObject1;
      }
    }
  }
  
  public static List<a> d(SQLiteDatabase paramSQLiteDatabase)
  {
    Object localObject1 = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT m.object_identifier, p.object_identifier, p.database_identifier, p.size, p.file_path FROM messages AS m, message_parts AS p WHERE m.database_identifier=p.message_database_identifier AND p.pruned != 1 AND p.transfer_status=4 AND p.file_path IS NOT NULL ORDER BY p.access_time ASC", null);
      try
      {
        localObject1 = new ArrayList(paramSQLiteDatabase.getCount());
        while (paramSQLiteDatabase.moveToNext()) {
          ((List)localObject1).add(new a(Uri.parse(paramSQLiteDatabase.getString(0)), Uri.parse(paramSQLiteDatabase.getString(1)), Long.valueOf(paramSQLiteDatabase.getLong(2)), Long.valueOf(paramSQLiteDatabase.getLong(3)), paramSQLiteDatabase.getString(4)));
        }
        if (localObject1 == null) {
          break label113;
        }
      }
      finally
      {
        localObject1 = paramSQLiteDatabase;
        paramSQLiteDatabase = (SQLiteDatabase)localObject2;
      }
    }
    finally
    {
      for (;;) {}
    }
    ((Cursor)localObject1).close();
    label113:
    throw paramSQLiteDatabase;
    if (paramSQLiteDatabase != null) {
      paramSQLiteDatabase.close();
    }
    return (List<a>)localObject1;
  }
  
  /* Error */
  public static Uri e(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: ldc_w 848
    //   6: iconst_1
    //   7: anewarray 57	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: aload_1
    //   13: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   16: aastore
    //   17: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   20: astore_0
    //   21: aload_0
    //   22: invokeinterface 203 1 0
    //   27: ifeq +30 -> 57
    //   30: aload_0
    //   31: iconst_0
    //   32: invokeinterface 285 2 0
    //   37: invokestatic 291	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   40: astore_1
    //   41: aload_1
    //   42: astore_2
    //   43: aload_0
    //   44: ifnull +11 -> 55
    //   47: aload_0
    //   48: invokeinterface 190 1 0
    //   53: aload_1
    //   54: astore_2
    //   55: aload_2
    //   56: areturn
    //   57: aload_0
    //   58: ifnull -3 -> 55
    //   61: aload_0
    //   62: invokeinterface 190 1 0
    //   67: aconst_null
    //   68: areturn
    //   69: astore_1
    //   70: aconst_null
    //   71: astore_0
    //   72: aload_0
    //   73: ifnull +9 -> 82
    //   76: aload_0
    //   77: invokeinterface 190 1 0
    //   82: aload_1
    //   83: athrow
    //   84: astore_1
    //   85: goto -13 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	88	1	paramLong	Long
    //   1	55	2	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   2	21	69	finally
    //   21	41	84	finally
  }
  
  public static void e(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("UPDATE message_parts SET transfer_status=? WHERE transfer_status=?", new String[] { Integer.toString(MessagePart.TransferStatus.READY_FOR_DOWNLOAD.getValue()), Integer.toString(MessagePart.TransferStatus.DOWNLOADING.getValue()) });
    paramSQLiteDatabase.execSQL("UPDATE message_parts SET transfer_status=? WHERE transfer_status=?", new String[] { Integer.toString(MessagePart.TransferStatus.AWAITING_UPLOAD.getValue()), Integer.toString(MessagePart.TransferStatus.UPLOADING.getValue()) });
  }
  
  /* Error */
  static Long f(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: ldc_w 871
    //   7: iconst_1
    //   8: anewarray 57	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: aload_1
    //   14: aastore
    //   15: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   18: astore_0
    //   19: aload_0
    //   20: invokeinterface 203 1 0
    //   25: ifeq +35 -> 60
    //   28: aload_0
    //   29: iconst_0
    //   30: invokeinterface 217 2 0
    //   35: lstore_2
    //   36: lload_2
    //   37: invokestatic 146	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   40: astore 4
    //   42: aload 4
    //   44: astore_1
    //   45: aload_0
    //   46: ifnull +12 -> 58
    //   49: aload_0
    //   50: invokeinterface 190 1 0
    //   55: aload 4
    //   57: astore_1
    //   58: aload_1
    //   59: areturn
    //   60: aload 4
    //   62: astore_1
    //   63: aload_0
    //   64: ifnull -6 -> 58
    //   67: aload_0
    //   68: invokeinterface 190 1 0
    //   73: aconst_null
    //   74: areturn
    //   75: astore_1
    //   76: aconst_null
    //   77: astore_0
    //   78: aload_0
    //   79: ifnull +9 -> 88
    //   82: aload_0
    //   83: invokeinterface 190 1 0
    //   88: aload_1
    //   89: athrow
    //   90: astore_1
    //   91: goto -13 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	94	1	paramString	String
    //   35	2	2	l	long
    //   1	60	4	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   3	19	75	finally
    //   19	36	90	finally
  }
  
  public static void f(SQLiteDatabase paramSQLiteDatabase)
  {
    a(paramSQLiteDatabase, "syncable_changes", "conversations", "database_identifier");
    a(paramSQLiteDatabase, "syncable_changes", "conversation_participants", "database_identifier");
    a(paramSQLiteDatabase, "syncable_changes", "messages", "database_identifier");
    a(paramSQLiteDatabase, "syncable_changes", "message_recipient_status", "database_identifier");
    a(paramSQLiteDatabase, "syncable_changes", "local_keyed_values", "database_identifier");
  }
  
  public static void f(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("is_errored", Integer.valueOf(1));
    paramSQLiteDatabase.update("streams", localContentValues, "database_identifier=?", new String[] { paramLong.toString() });
  }
  
  public static void g(SQLiteDatabase paramSQLiteDatabase)
  {
    a(paramSQLiteDatabase, "synced_changes", "streams", "database_identifier");
    a(paramSQLiteDatabase, "synced_changes", "stream_members", "_ROWID_");
    a(paramSQLiteDatabase, "synced_changes", "events", "database_identifier");
    a(paramSQLiteDatabase, "synced_changes", "remote_keyed_values", "database_identifier");
    a(paramSQLiteDatabase, "synced_changes", "mutations", "database_identifier");
  }
  
  public static void g(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("is_errored", Integer.valueOf(1));
    paramSQLiteDatabase.update("events", localContentValues, "database_identifier=?", new String[] { paramLong.toString() });
  }
  
  public static Map<Uri, Set<String>> h(SQLiteDatabase paramSQLiteDatabase)
  {
    Object localObject = null;
    Cursor localCursor;
    HashMap localHashMap;
    try
    {
      localCursor = paramSQLiteDatabase.rawQuery("SELECT c.object_identifier, cp.member_id FROM conversations AS c INNER JOIN conversation_participants AS cp ON c.database_identifier = cp.conversation_database_identifier  AND cp.is_deleted=0 WHERE c.is_deleted_all_participants=0  AND c.is_deleted_my_devices=0  AND c.is_distinct IS 1", null);
      localObject = localCursor;
      localHashMap = new HashMap();
      for (;;)
      {
        localObject = localCursor;
        if (!localCursor.moveToNext()) {
          break;
        }
        localObject = localCursor;
        Uri localUri = Uri.parse(localCursor.getString(0));
        localObject = localCursor;
        String str = localCursor.getString(1);
        localObject = localCursor;
        Set localSet = (Set)localHashMap.get(localUri);
        paramSQLiteDatabase = localSet;
        if (localSet == null)
        {
          localObject = localCursor;
          paramSQLiteDatabase = new HashSet();
          localObject = localCursor;
          localHashMap.put(localUri, paramSQLiteDatabase);
        }
        localObject = localCursor;
        paramSQLiteDatabase.add(str);
      }
      if (localCursor == null) {
        break label139;
      }
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
    localCursor.close();
    label139:
    return localHashMap;
  }
  
  public static void h(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("is_errored", Integer.valueOf(1));
    paramSQLiteDatabase.update("mutations", localContentValues, "database_identifier=?", new String[] { paramLong.toString() });
  }
  
  public static void i(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("is_errored", Integer.valueOf(1));
    paramSQLiteDatabase.update("remote_keyed_values", localContentValues, "database_identifier=?", new String[] { paramLong.toString() });
  }
  
  public static boolean i(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase = a(paramSQLiteDatabase, "SELECT COUNT(*) FROM streams", null);
    return (paramSQLiteDatabase != null) && (paramSQLiteDatabase.longValue() <= 0L);
  }
  
  /* Error */
  public static Uri j(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: ldc_w 904
    //   6: iconst_1
    //   7: anewarray 57	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: aload_1
    //   13: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   16: aastore
    //   17: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   20: astore_0
    //   21: aload_0
    //   22: invokeinterface 203 1 0
    //   27: ifeq +30 -> 57
    //   30: aload_0
    //   31: iconst_0
    //   32: invokeinterface 285 2 0
    //   37: invokestatic 291	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   40: astore_1
    //   41: aload_1
    //   42: astore_2
    //   43: aload_0
    //   44: ifnull +11 -> 55
    //   47: aload_0
    //   48: invokeinterface 190 1 0
    //   53: aload_1
    //   54: astore_2
    //   55: aload_2
    //   56: areturn
    //   57: aload_0
    //   58: ifnull -3 -> 55
    //   61: aload_0
    //   62: invokeinterface 190 1 0
    //   67: aconst_null
    //   68: areturn
    //   69: astore_1
    //   70: aconst_null
    //   71: astore_0
    //   72: aload_0
    //   73: ifnull +9 -> 82
    //   76: aload_0
    //   77: invokeinterface 190 1 0
    //   82: aload_1
    //   83: athrow
    //   84: astore_1
    //   85: goto -13 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	88	1	paramLong	Long
    //   1	55	2	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   2	21	69	finally
    //   21	41	84	finally
  }
  
  public static List<String> j(SQLiteDatabase paramSQLiteDatabase)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    ArrayList localArrayList;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT user_id FROM block_list WHERE synced_at IS NULL AND unblocked_at IS NULL", null);
      localSQLiteDatabase = paramSQLiteDatabase;
      localArrayList = new ArrayList(paramSQLiteDatabase.getCount());
      for (;;)
      {
        localSQLiteDatabase = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToNext()) {
          break;
        }
        localSQLiteDatabase = paramSQLiteDatabase;
        localArrayList.add(paramSQLiteDatabase.getString(0));
      }
      if (paramSQLiteDatabase == null) {
        return localArrayList;
      }
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
    paramSQLiteDatabase.close();
    return localArrayList;
  }
  
  /* Error */
  public static Uri k(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: ldc_w 910
    //   6: iconst_1
    //   7: anewarray 57	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: aload_1
    //   13: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   16: aastore
    //   17: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   20: astore_0
    //   21: aload_0
    //   22: invokeinterface 203 1 0
    //   27: ifeq +30 -> 57
    //   30: aload_0
    //   31: iconst_0
    //   32: invokeinterface 285 2 0
    //   37: invokestatic 291	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   40: astore_1
    //   41: aload_1
    //   42: astore_2
    //   43: aload_0
    //   44: ifnull +11 -> 55
    //   47: aload_0
    //   48: invokeinterface 190 1 0
    //   53: aload_1
    //   54: astore_2
    //   55: aload_2
    //   56: areturn
    //   57: aload_0
    //   58: ifnull -3 -> 55
    //   61: aload_0
    //   62: invokeinterface 190 1 0
    //   67: aconst_null
    //   68: areturn
    //   69: astore_1
    //   70: aconst_null
    //   71: astore_0
    //   72: aload_0
    //   73: ifnull +9 -> 82
    //   76: aload_0
    //   77: invokeinterface 190 1 0
    //   82: aload_1
    //   83: athrow
    //   84: astore_1
    //   85: goto -13 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	88	1	paramLong	Long
    //   1	55	2	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   2	21	69	finally
    //   21	41	84	finally
  }
  
  public static List<String> k(SQLiteDatabase paramSQLiteDatabase)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    ArrayList localArrayList;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT user_id FROM block_list WHERE unblocked_at IS NOT NULL", null);
      localSQLiteDatabase = paramSQLiteDatabase;
      localArrayList = new ArrayList(paramSQLiteDatabase.getCount());
      for (;;)
      {
        localSQLiteDatabase = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToNext()) {
          break;
        }
        localSQLiteDatabase = paramSQLiteDatabase;
        localArrayList.add(paramSQLiteDatabase.getString(0));
      }
      if (paramSQLiteDatabase == null) {
        return localArrayList;
      }
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
    paramSQLiteDatabase.close();
    return localArrayList;
  }
  
  /* Error */
  public static Uri l(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: ldc_w 915
    //   6: iconst_1
    //   7: anewarray 57	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: aload_1
    //   13: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   16: aastore
    //   17: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   20: astore_0
    //   21: aload_0
    //   22: invokeinterface 203 1 0
    //   27: ifeq +30 -> 57
    //   30: aload_0
    //   31: iconst_0
    //   32: invokeinterface 285 2 0
    //   37: invokestatic 291	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   40: astore_1
    //   41: aload_1
    //   42: astore_2
    //   43: aload_0
    //   44: ifnull +11 -> 55
    //   47: aload_0
    //   48: invokeinterface 190 1 0
    //   53: aload_1
    //   54: astore_2
    //   55: aload_2
    //   56: areturn
    //   57: aload_0
    //   58: ifnull -3 -> 55
    //   61: aload_0
    //   62: invokeinterface 190 1 0
    //   67: aconst_null
    //   68: areturn
    //   69: astore_1
    //   70: aconst_null
    //   71: astore_0
    //   72: aload_0
    //   73: ifnull +9 -> 82
    //   76: aload_0
    //   77: invokeinterface 190 1 0
    //   82: aload_1
    //   83: athrow
    //   84: astore_1
    //   85: goto -13 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	88	1	paramLong	Long
    //   1	55	2	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   2	21	69	finally
    //   21	41	84	finally
  }
  
  /* Error */
  public static Uri m(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: ldc_w 917
    //   6: iconst_1
    //   7: anewarray 57	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: aload_1
    //   13: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   16: aastore
    //   17: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   20: astore_0
    //   21: aload_0
    //   22: invokeinterface 203 1 0
    //   27: ifeq +30 -> 57
    //   30: aload_0
    //   31: iconst_0
    //   32: invokeinterface 285 2 0
    //   37: invokestatic 291	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   40: astore_1
    //   41: aload_1
    //   42: astore_2
    //   43: aload_0
    //   44: ifnull +11 -> 55
    //   47: aload_0
    //   48: invokeinterface 190 1 0
    //   53: aload_1
    //   54: astore_2
    //   55: aload_2
    //   56: areturn
    //   57: aload_0
    //   58: ifnull -3 -> 55
    //   61: aload_0
    //   62: invokeinterface 190 1 0
    //   67: aconst_null
    //   68: areturn
    //   69: astore_1
    //   70: aconst_null
    //   71: astore_0
    //   72: aload_0
    //   73: ifnull +9 -> 82
    //   76: aload_0
    //   77: invokeinterface 190 1 0
    //   82: aload_1
    //   83: athrow
    //   84: astore_1
    //   85: goto -13 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	88	1	paramLong	Long
    //   1	55	2	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   2	21	69	finally
    //   21	41	84	finally
  }
  
  public static List<Uri> n(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT object_identifier FROM messages WHERE conversation_database_identifier=? AND is_deleted_all_participants=0 AND is_deleted_my_devices=0 ORDER BY message_index IS NULL, message_index, database_identifier", new String[] { paramLong.toString() });
      localSQLiteDatabase = paramSQLiteDatabase;
      paramLong = new ArrayList(paramSQLiteDatabase.getCount());
      for (;;)
      {
        localSQLiteDatabase = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToNext()) {
          break;
        }
        localSQLiteDatabase = paramSQLiteDatabase;
        paramLong.add(Uri.parse(paramSQLiteDatabase.getString(0)));
      }
      if (paramSQLiteDatabase == null) {
        return paramLong;
      }
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
    paramSQLiteDatabase.close();
    return paramLong;
  }
  
  public static Uri o(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    Uri localUri = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT object_identifier FROM messages WHERE conversation_database_identifier=? AND is_deleted_all_participants=0 AND is_deleted_my_devices=0 AND message_index=(SELECT MAX(message_index) FROM messages WHERE conversation_database_identifier=? AND is_deleted_all_participants=0 AND is_deleted_my_devices=0) ORDER BY database_identifier DESC LIMIT 1", new String[] { paramLong.toString(), paramLong.toString() });
      boolean bool;
      if (paramSQLiteDatabase == null) {
        break label117;
      }
    }
    finally
    {
      try
      {
        if (paramSQLiteDatabase.moveToNext())
        {
          bool = paramSQLiteDatabase.isNull(0);
          if (bool)
          {
            paramLong = localUri;
            if (paramSQLiteDatabase != null)
            {
              paramSQLiteDatabase.close();
              paramLong = localUri;
            }
          }
        }
        do
        {
          do
          {
            return paramLong;
            localUri = Uri.parse(paramSQLiteDatabase.getString(0));
            paramLong = localUri;
          } while (paramSQLiteDatabase == null);
          paramSQLiteDatabase.close();
          return localUri;
          paramLong = localUri;
        } while (paramSQLiteDatabase == null);
        paramSQLiteDatabase.close();
        return null;
      }
      finally
      {
        for (;;) {}
      }
      paramLong = finally;
      paramSQLiteDatabase = null;
    }
    paramSQLiteDatabase.close();
    label117:
    throw paramLong;
  }
  
  /* Error */
  public static Long p(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: ldc_w 928
    //   7: iconst_1
    //   8: anewarray 57	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: aload_1
    //   14: invokevirtual 51	java/lang/Long:toString	()Ljava/lang/String;
    //   17: aastore
    //   18: invokevirtual 199	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_0
    //   22: aload_0
    //   23: invokeinterface 203 1 0
    //   28: ifeq +35 -> 63
    //   31: aload_0
    //   32: iconst_0
    //   33: invokeinterface 217 2 0
    //   38: lstore_2
    //   39: lload_2
    //   40: invokestatic 146	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   43: astore 4
    //   45: aload 4
    //   47: astore_1
    //   48: aload_0
    //   49: ifnull +12 -> 61
    //   52: aload_0
    //   53: invokeinterface 190 1 0
    //   58: aload 4
    //   60: astore_1
    //   61: aload_1
    //   62: areturn
    //   63: aload 4
    //   65: astore_1
    //   66: aload_0
    //   67: ifnull -6 -> 61
    //   70: aload_0
    //   71: invokeinterface 190 1 0
    //   76: aconst_null
    //   77: areturn
    //   78: astore_1
    //   79: aconst_null
    //   80: astore_0
    //   81: aload_0
    //   82: ifnull +9 -> 91
    //   85: aload_0
    //   86: invokeinterface 190 1 0
    //   91: aload_1
    //   92: athrow
    //   93: astore_1
    //   94: goto -13 -> 81
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	97	1	paramLong	Long
    //   38	2	2	l	long
    //   1	63	4	localLong	Long
    // Exception table:
    //   from	to	target	type
    //   3	22	78	finally
    //   22	39	93	finally
  }
  
  public static List<Uri> q(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT object_identifier FROM message_parts WHERE message_database_identifier=? ORDER BY database_identifier ASC", new String[] { paramLong.toString() });
      localSQLiteDatabase = paramSQLiteDatabase;
      paramLong = new ArrayList(paramSQLiteDatabase.getCount());
      for (;;)
      {
        localSQLiteDatabase = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToNext()) {
          break;
        }
        localSQLiteDatabase = paramSQLiteDatabase;
        paramLong.add(Uri.parse(paramSQLiteDatabase.getString(0)));
      }
      if (paramSQLiteDatabase == null) {
        return paramLong;
      }
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
    paramSQLiteDatabase.close();
    return paramLong;
  }
  
  public static class a
  {
    private final Uri a;
    private final Uri b;
    private final Long c;
    private final Long d;
    private final String e;
    
    public a(Uri paramUri1, Uri paramUri2, Long paramLong1, Long paramLong2, String paramString)
    {
      this.a = paramUri1;
      this.b = paramUri2;
      this.c = paramLong1;
      this.d = paramLong2;
      this.e = paramString;
    }
    
    public Uri a()
    {
      return this.b;
    }
    
    public Long b()
    {
      return this.d;
    }
    
    public String c()
    {
      return this.e;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkc/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */