package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class gd
  extends iy
{
  private static final String[] aRl = { "last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;" };
  private static final String[] aRm = { "origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;" };
  private static final String[] aRn = { "app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;" };
  private static final String[] aRo = { "realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;" };
  private static final String[] aRp = { "has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;" };
  private static final String[] aRq = { "previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;" };
  private final gg aRr = new gg(this, getContext(), "google_app_measurement.db");
  private final ky aRs = new ky(qH());
  
  gd(hz paramhz)
  {
    super(paramhz);
  }
  
  private static void a(ContentValues paramContentValues, String paramString, Object paramObject)
  {
    ae.bf(paramString);
    ae.E(paramObject);
    if ((paramObject instanceof String))
    {
      paramContentValues.put(paramString, (String)paramObject);
      return;
    }
    if ((paramObject instanceof Long))
    {
      paramContentValues.put(paramString, (Long)paramObject);
      return;
    }
    if ((paramObject instanceof Double))
    {
      paramContentValues.put(paramString, (Double)paramObject);
      return;
    }
    throw new IllegalArgumentException("Invalid value type");
  }
  
  static void a(hb paramhb, SQLiteDatabase paramSQLiteDatabase)
  {
    if (paramhb == null) {
      throw new IllegalArgumentException("Monitor must not be null");
    }
    paramSQLiteDatabase = new File(paramSQLiteDatabase.getPath());
    if (!paramSQLiteDatabase.setReadable(false, false)) {
      paramhb.aTd.bq("Failed to turn off database read permission");
    }
    if (!paramSQLiteDatabase.setWritable(false, false)) {
      paramhb.aTd.bq("Failed to turn off database write permission");
    }
    if (!paramSQLiteDatabase.setReadable(true, true)) {
      paramhb.aTd.bq("Failed to turn on database read permission for owner");
    }
    if (!paramSQLiteDatabase.setWritable(true, true)) {
      paramhb.aTd.bq("Failed to turn on database write permission for owner");
    }
  }
  
  static void a(hb paramhb, SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
    throws SQLiteException
  {
    if (paramhb == null) {
      throw new IllegalArgumentException("Monitor must not be null");
    }
    if (!a(paramhb, paramSQLiteDatabase, paramString1)) {
      paramSQLiteDatabase.execSQL(paramString2);
    }
    try
    {
      a(paramhb, paramSQLiteDatabase, paramString1, paramString3, paramArrayOfString);
      return;
    }
    catch (SQLiteException paramSQLiteDatabase)
    {
      paramhb.aTa.j("Failed to verify columns on table that was just created", paramString1);
      throw paramSQLiteDatabase;
    }
  }
  
  private static void a(hb paramhb, SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String[] paramArrayOfString)
    throws SQLiteException
  {
    int j = 0;
    if (paramhb == null) {
      throw new IllegalArgumentException("Monitor must not be null");
    }
    Set localSet = e(paramSQLiteDatabase, paramString1);
    paramString2 = paramString2.split(",");
    int k = paramString2.length;
    int i = 0;
    while (i < k)
    {
      Object localObject = paramString2[i];
      if (!localSet.remove(localObject)) {
        throw new SQLiteException(String.valueOf(paramString1).length() + 35 + String.valueOf(localObject).length() + "Table " + paramString1 + " is missing required column: " + (String)localObject);
      }
      i += 1;
    }
    if (paramArrayOfString != null)
    {
      i = j;
      while (i < paramArrayOfString.length)
      {
        if (!localSet.remove(paramArrayOfString[i])) {
          paramSQLiteDatabase.execSQL(paramArrayOfString[(i + 1)]);
        }
        i += 2;
      }
    }
    if (!localSet.isEmpty()) {
      paramhb.aTd.e("Table has extra columns. table, columns", paramString1, TextUtils.join(", ", localSet));
    }
  }
  
  /* Error */
  private static boolean a(hb paramhb, SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: ifnonnull +13 -> 17
    //   7: new 205	java/lang/IllegalArgumentException
    //   10: dup
    //   11: ldc -43
    //   13: invokespecial 210	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: aload_1
    //   18: ldc_w 330
    //   21: iconst_1
    //   22: anewarray 19	java/lang/String
    //   25: dup
    //   26: iconst_0
    //   27: ldc_w 332
    //   30: aastore
    //   31: ldc_w 334
    //   34: iconst_1
    //   35: anewarray 19	java/lang/String
    //   38: dup
    //   39: iconst_0
    //   40: aload_2
    //   41: aastore
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore_1
    //   49: aload_1
    //   50: astore 4
    //   52: aload 4
    //   54: astore_1
    //   55: aload 4
    //   57: invokeinterface 343 1 0
    //   62: istore_3
    //   63: aload 4
    //   65: ifnull +10 -> 75
    //   68: aload 4
    //   70: invokeinterface 346 1 0
    //   75: iload_3
    //   76: ireturn
    //   77: astore 5
    //   79: aconst_null
    //   80: astore 4
    //   82: aload 4
    //   84: astore_1
    //   85: aload_0
    //   86: getfield 232	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   89: ldc_w 348
    //   92: aload_2
    //   93: aload 5
    //   95: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   98: aload 4
    //   100: ifnull +10 -> 110
    //   103: aload 4
    //   105: invokeinterface 346 1 0
    //   110: iconst_0
    //   111: ireturn
    //   112: astore_0
    //   113: aload 4
    //   115: astore_1
    //   116: aload_1
    //   117: ifnull +9 -> 126
    //   120: aload_1
    //   121: invokeinterface 346 1 0
    //   126: aload_0
    //   127: athrow
    //   128: astore_0
    //   129: goto -13 -> 116
    //   132: astore 5
    //   134: goto -52 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	paramhb	hb
    //   0	137	1	paramSQLiteDatabase	SQLiteDatabase
    //   0	137	2	paramString	String
    //   62	14	3	bool	boolean
    //   1	113	4	localSQLiteDatabase	SQLiteDatabase
    //   77	17	5	localSQLiteException1	SQLiteException
    //   132	1	5	localSQLiteException2	SQLiteException
    // Exception table:
    //   from	to	target	type
    //   17	49	77	android/database/sqlite/SQLiteException
    //   17	49	112	finally
    //   55	63	128	finally
    //   85	98	128	finally
    //   55	63	132	android/database/sqlite/SQLiteException
  }
  
  private final boolean a(String paramString, int paramInt, li paramli)
  {
    pf();
    mN();
    ae.bf(paramString);
    ae.E(paramli);
    if (TextUtils.isEmpty(paramli.aXx))
    {
      qP().aTd.d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", hb.ck(paramString), Integer.valueOf(paramInt), String.valueOf(paramli.aXw));
      return false;
    }
    try
    {
      byte[] arrayOfByte = new byte[paramli.sZ()];
      Object localObject = mv.b(arrayOfByte, arrayOfByte.length);
      paramli.a((mv)localObject);
      ((mv)localObject).sR();
      localObject = new ContentValues();
      ((ContentValues)localObject).put("app_id", paramString);
      ((ContentValues)localObject).put("audience_id", Integer.valueOf(paramInt));
      ((ContentValues)localObject).put("filter_id", paramli.aXw);
      ((ContentValues)localObject).put("event_name", paramli.aXx);
      ((ContentValues)localObject).put("data", arrayOfByte);
      return false;
    }
    catch (IOException paramli)
    {
      try
      {
        if (getWritableDatabase().insertWithOnConflict("event_filters", null, (ContentValues)localObject, 5) == -1L) {
          qP().aTa.j("Failed to insert event filter (got -1). appId", hb.ck(paramString));
        }
        return true;
      }
      catch (SQLiteException paramli)
      {
        qP().aTa.e("Error storing event filter. appId", hb.ck(paramString), paramli);
      }
      paramli = paramli;
      qP().aTa.e("Configuration loss. Failed to serialize event filter. appId", hb.ck(paramString), paramli);
      return false;
    }
  }
  
  private final boolean a(String paramString, int paramInt, ll paramll)
  {
    pf();
    mN();
    ae.bf(paramString);
    ae.E(paramll);
    if (TextUtils.isEmpty(paramll.aXM))
    {
      qP().aTd.d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", hb.ck(paramString), Integer.valueOf(paramInt), String.valueOf(paramll.aXw));
      return false;
    }
    try
    {
      byte[] arrayOfByte = new byte[paramll.sZ()];
      Object localObject = mv.b(arrayOfByte, arrayOfByte.length);
      paramll.a((mv)localObject);
      ((mv)localObject).sR();
      localObject = new ContentValues();
      ((ContentValues)localObject).put("app_id", paramString);
      ((ContentValues)localObject).put("audience_id", Integer.valueOf(paramInt));
      ((ContentValues)localObject).put("filter_id", paramll.aXw);
      ((ContentValues)localObject).put("property_name", paramll.aXM);
      ((ContentValues)localObject).put("data", arrayOfByte);
      try
      {
        if (getWritableDatabase().insertWithOnConflict("property_filters", null, (ContentValues)localObject, 5) == -1L)
        {
          qP().aTa.j("Failed to insert property filter (got -1). appId", hb.ck(paramString));
          return false;
        }
      }
      catch (SQLiteException paramll)
      {
        qP().aTa.e("Error storing property filter. appId", hb.ck(paramString), paramll);
        return false;
      }
      return true;
    }
    catch (IOException paramll)
    {
      qP().aTa.e("Configuration loss. Failed to serialize property filter. appId", hb.ck(paramString), paramll);
      return false;
    }
  }
  
  private final Object b(Cursor paramCursor, int paramInt)
  {
    int i = paramCursor.getType(paramInt);
    switch (i)
    {
    default: 
      qP().aTa.j("Loaded invalid unknown value type, ignoring it", Integer.valueOf(i));
      return null;
    case 0: 
      qP().aTa.bq("Loaded invalid null value from database");
      return null;
    case 1: 
      return Long.valueOf(paramCursor.getLong(paramInt));
    case 2: 
      return Double.valueOf(paramCursor.getDouble(paramInt));
    case 3: 
      return paramCursor.getString(paramInt);
    }
    qP().aTa.bq("Loaded invalid blob type value, ignoring it");
    return null;
  }
  
  private final boolean b(String paramString, List<Integer> paramList)
  {
    ae.bf(paramString);
    pf();
    mN();
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    int j;
    label160:
    do
    {
      try
      {
        long l = b("select count(1) from audience_filter_values where app_id=?", new String[] { paramString });
        j = Math.max(0, Math.min(2000, qR().b(paramString, gr.aSJ)));
        if (l <= j) {
          return false;
        }
      }
      catch (SQLiteException paramList)
      {
        qP().aTa.e("Database error querying filters. appId", hb.ck(paramString), paramList);
        return false;
      }
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      for (;;)
      {
        if (i >= paramList.size()) {
          break label160;
        }
        Integer localInteger = (Integer)paramList.get(i);
        if ((localInteger == null) || (!(localInteger instanceof Integer))) {
          break;
        }
        localArrayList.add(Integer.toString(localInteger.intValue()));
        i += 1;
      }
      paramList = TextUtils.join(",", localArrayList);
      paramList = String.valueOf(paramList).length() + 2 + "(" + paramList + ")";
    } while (localSQLiteDatabase.delete("audience_filter_values", String.valueOf(paramList).length() + 140 + "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in " + paramList + " order by rowid desc limit -1 offset ?)", new String[] { paramString, Integer.toString(j) }) <= 0);
    return true;
  }
  
  private static Set<String> e(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    HashSet localHashSet = new HashSet();
    paramSQLiteDatabase = paramSQLiteDatabase.rawQuery(String.valueOf(paramString).length() + 22 + "SELECT * FROM " + paramString + " LIMIT 0", null);
    try
    {
      Collections.addAll(localHashSet, paramSQLiteDatabase.getColumnNames());
      return localHashSet;
    }
    finally
    {
      paramSQLiteDatabase.close();
    }
  }
  
  private final boolean rr()
  {
    return getContext().getDatabasePath("google_app_measurement.db").exists();
  }
  
  /* Error */
  protected final long A(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_2
    //   6: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   9: pop
    //   10: aload_0
    //   11: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   14: aload_0
    //   15: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   18: aload_0
    //   19: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   22: astore 8
    //   24: aload 8
    //   26: invokevirtual 601	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   29: aload_0
    //   30: new 288	java/lang/StringBuilder
    //   33: dup
    //   34: aload_2
    //   35: invokestatic 292	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   38: invokevirtual 296	java/lang/String:length	()I
    //   41: bipush 32
    //   43: iadd
    //   44: invokespecial 299	java/lang/StringBuilder:<init>	(I)V
    //   47: ldc_w 603
    //   50: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: aload_2
    //   54: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: ldc_w 605
    //   60: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 310	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: iconst_1
    //   67: anewarray 19	java/lang/String
    //   70: dup
    //   71: iconst_0
    //   72: aload_1
    //   73: aastore
    //   74: ldc2_w 435
    //   77: invokevirtual 608	com/google/android/gms/internal/gd:a	(Ljava/lang/String;[Ljava/lang/String;J)J
    //   80: lstore 5
    //   82: lload 5
    //   84: lstore_3
    //   85: lload 5
    //   87: ldc2_w 435
    //   90: lcmp
    //   91: ifne +92 -> 183
    //   94: new 189	android/content/ContentValues
    //   97: dup
    //   98: invokespecial 408	android/content/ContentValues:<init>	()V
    //   101: astore 7
    //   103: aload 7
    //   105: ldc_w 410
    //   108: aload_1
    //   109: invokevirtual 193	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   112: aload 7
    //   114: ldc_w 610
    //   117: iconst_0
    //   118: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   121: invokevirtual 415	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   124: aload 7
    //   126: ldc -117
    //   128: iconst_0
    //   129: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   132: invokevirtual 415	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   135: aload 8
    //   137: ldc_w 612
    //   140: aconst_null
    //   141: aload 7
    //   143: iconst_5
    //   144: invokevirtual 434	android/database/sqlite/SQLiteDatabase:insertWithOnConflict	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    //   147: ldc2_w 435
    //   150: lcmp
    //   151: ifne +30 -> 181
    //   154: aload_0
    //   155: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   158: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   161: ldc_w 614
    //   164: aload_1
    //   165: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   168: aload_2
    //   169: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   172: aload 8
    //   174: invokevirtual 617	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   177: ldc2_w 435
    //   180: lreturn
    //   181: lconst_0
    //   182: lstore_3
    //   183: new 189	android/content/ContentValues
    //   186: dup
    //   187: invokespecial 408	android/content/ContentValues:<init>	()V
    //   190: astore 7
    //   192: aload 7
    //   194: ldc_w 410
    //   197: aload_1
    //   198: invokevirtual 193	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   201: aload 7
    //   203: aload_2
    //   204: lconst_1
    //   205: lload_3
    //   206: ladd
    //   207: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   210: invokevirtual 198	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   213: aload 8
    //   215: ldc_w 612
    //   218: aload 7
    //   220: ldc_w 619
    //   223: iconst_1
    //   224: anewarray 19	java/lang/String
    //   227: dup
    //   228: iconst_0
    //   229: aload_1
    //   230: aastore
    //   231: invokevirtual 623	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   234: i2l
    //   235: lconst_0
    //   236: lcmp
    //   237: ifne +30 -> 267
    //   240: aload_0
    //   241: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   244: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   247: ldc_w 625
    //   250: aload_1
    //   251: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   254: aload_2
    //   255: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   258: aload 8
    //   260: invokevirtual 617	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   263: ldc2_w 435
    //   266: lreturn
    //   267: aload 8
    //   269: invokevirtual 628	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   272: aload 8
    //   274: invokevirtual 617	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   277: lload_3
    //   278: lreturn
    //   279: astore 7
    //   281: lconst_0
    //   282: lstore_3
    //   283: aload_0
    //   284: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   287: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   290: ldc_w 630
    //   293: aload_1
    //   294: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   297: aload_2
    //   298: aload 7
    //   300: invokevirtual 389	com/google/android/gms/internal/hd:d	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   303: aload 8
    //   305: invokevirtual 617	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   308: lload_3
    //   309: lreturn
    //   310: astore_1
    //   311: aload 8
    //   313: invokevirtual 617	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   316: aload_1
    //   317: athrow
    //   318: astore 7
    //   320: goto -37 -> 283
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	323	0	this	gd
    //   0	323	1	paramString1	String
    //   0	323	2	paramString2	String
    //   84	225	3	l1	long
    //   80	6	5	l2	long
    //   101	118	7	localContentValues	ContentValues
    //   279	20	7	localSQLiteException1	SQLiteException
    //   318	1	7	localSQLiteException2	SQLiteException
    //   22	290	8	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   29	82	279	android/database/sqlite/SQLiteException
    //   94	172	279	android/database/sqlite/SQLiteException
    //   29	82	310	finally
    //   94	172	310	finally
    //   183	258	310	finally
    //   267	272	310	finally
    //   283	303	310	finally
    //   183	258	318	android/database/sqlite/SQLiteException
    //   267	272	318	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  public final String A(long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   7: aload_0
    //   8: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   11: aload_0
    //   12: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   15: ldc_w 633
    //   18: iconst_1
    //   19: anewarray 19	java/lang/String
    //   22: dup
    //   23: iconst_0
    //   24: lload_1
    //   25: invokestatic 635	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   28: aastore
    //   29: invokevirtual 569	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   32: astore 4
    //   34: aload 4
    //   36: astore_3
    //   37: aload 4
    //   39: invokeinterface 343 1 0
    //   44: ifne +39 -> 83
    //   47: aload 4
    //   49: astore_3
    //   50: aload_0
    //   51: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   54: getfield 638	com/google/android/gms/internal/hb:aTi	Lcom/google/android/gms/internal/hd;
    //   57: ldc_w 640
    //   60: invokevirtual 239	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   63: aload 6
    //   65: astore_3
    //   66: aload 4
    //   68: ifnull +13 -> 81
    //   71: aload 4
    //   73: invokeinterface 346 1 0
    //   78: aload 6
    //   80: astore_3
    //   81: aload_3
    //   82: areturn
    //   83: aload 4
    //   85: astore_3
    //   86: aload 4
    //   88: iconst_0
    //   89: invokeinterface 488 2 0
    //   94: astore 5
    //   96: aload 5
    //   98: astore_3
    //   99: aload 4
    //   101: ifnull -20 -> 81
    //   104: aload 4
    //   106: invokeinterface 346 1 0
    //   111: aload 5
    //   113: areturn
    //   114: astore 5
    //   116: aconst_null
    //   117: astore 4
    //   119: aload 4
    //   121: astore_3
    //   122: aload_0
    //   123: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   126: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   129: ldc_w 642
    //   132: aload 5
    //   134: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   137: aload 6
    //   139: astore_3
    //   140: aload 4
    //   142: ifnull -61 -> 81
    //   145: aload 4
    //   147: invokeinterface 346 1 0
    //   152: aconst_null
    //   153: areturn
    //   154: astore 4
    //   156: aconst_null
    //   157: astore_3
    //   158: aload_3
    //   159: ifnull +9 -> 168
    //   162: aload_3
    //   163: invokeinterface 346 1 0
    //   168: aload 4
    //   170: athrow
    //   171: astore 4
    //   173: goto -15 -> 158
    //   176: astore 5
    //   178: goto -59 -> 119
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	181	0	this	gd
    //   0	181	1	paramLong	long
    //   36	127	3	localObject1	Object
    //   32	114	4	localCursor	Cursor
    //   154	15	4	localObject2	Object
    //   171	1	4	localObject3	Object
    //   94	18	5	str	String
    //   114	19	5	localSQLiteException1	SQLiteException
    //   176	1	5	localSQLiteException2	SQLiteException
    //   1	137	6	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   11	34	114	android/database/sqlite/SQLiteException
    //   11	34	154	finally
    //   37	47	171	finally
    //   50	63	171	finally
    //   86	96	171	finally
    //   122	137	171	finally
    //   37	47	176	android/database/sqlite/SQLiteException
    //   50	63	176	android/database/sqlite/SQLiteException
    //   86	96	176	android/database/sqlite/SQLiteException
  }
  
  public final long a(lu paramlu)
    throws IOException
  {
    mN();
    pf();
    ae.E(paramlu);
    ae.bf(paramlu.aQx);
    for (;;)
    {
      try
      {
        byte[] arrayOfByte = new byte[paramlu.sZ()];
        Object localObject = mv.b(arrayOfByte, arrayOfByte.length);
        paramlu.a((mv)localObject);
        ((mv)localObject).sR();
        localObject = qL();
        ae.E(arrayOfByte);
        ((ix)localObject).mN();
        MessageDigest localMessageDigest = le.bi("MD5");
        if (localMessageDigest == null)
        {
          ((ix)localObject).qP().aTa.bq("Failed to get MD5");
          l = 0L;
          localObject = new ContentValues();
          ((ContentValues)localObject).put("app_id", paramlu.aQx);
          ((ContentValues)localObject).put("metadata_fingerprint", Long.valueOf(l));
          ((ContentValues)localObject).put("metadata", arrayOfByte);
        }
        long l = le.p(localMessageDigest.digest(localIOException));
      }
      catch (IOException localIOException)
      {
        try
        {
          getWritableDatabase().insertWithOnConflict("raw_events_metadata", null, (ContentValues)localObject, 4);
          return l;
        }
        catch (SQLiteException localSQLiteException)
        {
          qP().aTa.e("Error storing raw event metadata. appId", hb.ck(paramlu.aQx), localSQLiteException);
          throw localSQLiteException;
        }
        localIOException = localIOException;
        qP().aTa.e("Data loss. Failed to serialize event metadata. appId", hb.ck(paramlu.aQx), localIOException);
        throw localIOException;
      }
    }
  }
  
  final long a(String paramString, String[] paramArrayOfString, long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    Object localObject = null;
    String[] arrayOfString = null;
    try
    {
      paramArrayOfString = localSQLiteDatabase.rawQuery(paramString, paramArrayOfString);
      arrayOfString = paramArrayOfString;
      localObject = paramArrayOfString;
      long l;
      if (paramArrayOfString.moveToFirst())
      {
        arrayOfString = paramArrayOfString;
        localObject = paramArrayOfString;
        paramLong = paramArrayOfString.getLong(0);
        l = paramLong;
        if (paramArrayOfString != null)
        {
          paramArrayOfString.close();
          l = paramLong;
        }
      }
      do
      {
        return l;
        l = paramLong;
      } while (paramArrayOfString == null);
      paramArrayOfString.close();
      return paramLong;
    }
    catch (SQLiteException paramArrayOfString)
    {
      localObject = arrayOfString;
      qP().aTa.e("Database error", paramString, paramArrayOfString);
      localObject = arrayOfString;
      throw paramArrayOfString;
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
  }
  
  /* Error */
  public final ge a(long paramLong, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   9: aload_0
    //   10: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   13: new 687	com/google/android/gms/internal/ge
    //   16: dup
    //   17: invokespecial 688	com/google/android/gms/internal/ge:<init>	()V
    //   20: astore 12
    //   22: aload_0
    //   23: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   26: astore 11
    //   28: aload 11
    //   30: ldc_w 690
    //   33: bipush 6
    //   35: anewarray 19	java/lang/String
    //   38: dup
    //   39: iconst_0
    //   40: ldc 69
    //   42: aastore
    //   43: dup
    //   44: iconst_1
    //   45: ldc 77
    //   47: aastore
    //   48: dup
    //   49: iconst_2
    //   50: ldc 73
    //   52: aastore
    //   53: dup
    //   54: iconst_3
    //   55: ldc 81
    //   57: aastore
    //   58: dup
    //   59: iconst_4
    //   60: ldc 105
    //   62: aastore
    //   63: dup
    //   64: iconst_5
    //   65: ldc 109
    //   67: aastore
    //   68: ldc_w 692
    //   71: iconst_1
    //   72: anewarray 19	java/lang/String
    //   75: dup
    //   76: iconst_0
    //   77: aload_3
    //   78: aastore
    //   79: aconst_null
    //   80: aconst_null
    //   81: aconst_null
    //   82: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   85: astore 10
    //   87: aload 10
    //   89: astore 9
    //   91: aload 10
    //   93: invokeinterface 343 1 0
    //   98: ifne +39 -> 137
    //   101: aload 10
    //   103: astore 9
    //   105: aload_0
    //   106: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   109: getfield 232	com/google/android/gms/internal/hb:aTd	Lcom/google/android/gms/internal/hd;
    //   112: ldc_w 694
    //   115: aload_3
    //   116: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   119: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   122: aload 10
    //   124: ifnull +10 -> 134
    //   127: aload 10
    //   129: invokeinterface 346 1 0
    //   134: aload 12
    //   136: areturn
    //   137: aload 10
    //   139: astore 9
    //   141: aload 10
    //   143: iconst_0
    //   144: invokeinterface 474 2 0
    //   149: lload_1
    //   150: lcmp
    //   151: ifne +88 -> 239
    //   154: aload 10
    //   156: astore 9
    //   158: aload 12
    //   160: aload 10
    //   162: iconst_1
    //   163: invokeinterface 474 2 0
    //   168: putfield 698	com/google/android/gms/internal/ge:aRu	J
    //   171: aload 10
    //   173: astore 9
    //   175: aload 12
    //   177: aload 10
    //   179: iconst_2
    //   180: invokeinterface 474 2 0
    //   185: putfield 701	com/google/android/gms/internal/ge:aRt	J
    //   188: aload 10
    //   190: astore 9
    //   192: aload 12
    //   194: aload 10
    //   196: iconst_3
    //   197: invokeinterface 474 2 0
    //   202: putfield 704	com/google/android/gms/internal/ge:aRv	J
    //   205: aload 10
    //   207: astore 9
    //   209: aload 12
    //   211: aload 10
    //   213: iconst_4
    //   214: invokeinterface 474 2 0
    //   219: putfield 707	com/google/android/gms/internal/ge:aRw	J
    //   222: aload 10
    //   224: astore 9
    //   226: aload 12
    //   228: aload 10
    //   230: iconst_5
    //   231: invokeinterface 474 2 0
    //   236: putfield 710	com/google/android/gms/internal/ge:aRx	J
    //   239: iload 4
    //   241: ifeq +19 -> 260
    //   244: aload 10
    //   246: astore 9
    //   248: aload 12
    //   250: aload 12
    //   252: getfield 698	com/google/android/gms/internal/ge:aRu	J
    //   255: lconst_1
    //   256: ladd
    //   257: putfield 698	com/google/android/gms/internal/ge:aRu	J
    //   260: iload 5
    //   262: ifeq +19 -> 281
    //   265: aload 10
    //   267: astore 9
    //   269: aload 12
    //   271: aload 12
    //   273: getfield 701	com/google/android/gms/internal/ge:aRt	J
    //   276: lconst_1
    //   277: ladd
    //   278: putfield 701	com/google/android/gms/internal/ge:aRt	J
    //   281: iload 6
    //   283: ifeq +19 -> 302
    //   286: aload 10
    //   288: astore 9
    //   290: aload 12
    //   292: aload 12
    //   294: getfield 704	com/google/android/gms/internal/ge:aRv	J
    //   297: lconst_1
    //   298: ladd
    //   299: putfield 704	com/google/android/gms/internal/ge:aRv	J
    //   302: iload 7
    //   304: ifeq +19 -> 323
    //   307: aload 10
    //   309: astore 9
    //   311: aload 12
    //   313: aload 12
    //   315: getfield 707	com/google/android/gms/internal/ge:aRw	J
    //   318: lconst_1
    //   319: ladd
    //   320: putfield 707	com/google/android/gms/internal/ge:aRw	J
    //   323: iload 8
    //   325: ifeq +19 -> 344
    //   328: aload 10
    //   330: astore 9
    //   332: aload 12
    //   334: aload 12
    //   336: getfield 710	com/google/android/gms/internal/ge:aRx	J
    //   339: lconst_1
    //   340: ladd
    //   341: putfield 710	com/google/android/gms/internal/ge:aRx	J
    //   344: aload 10
    //   346: astore 9
    //   348: new 189	android/content/ContentValues
    //   351: dup
    //   352: invokespecial 408	android/content/ContentValues:<init>	()V
    //   355: astore 13
    //   357: aload 10
    //   359: astore 9
    //   361: aload 13
    //   363: ldc 69
    //   365: lload_1
    //   366: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   369: invokevirtual 198	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   372: aload 10
    //   374: astore 9
    //   376: aload 13
    //   378: ldc 73
    //   380: aload 12
    //   382: getfield 701	com/google/android/gms/internal/ge:aRt	J
    //   385: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   388: invokevirtual 198	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   391: aload 10
    //   393: astore 9
    //   395: aload 13
    //   397: ldc 77
    //   399: aload 12
    //   401: getfield 698	com/google/android/gms/internal/ge:aRu	J
    //   404: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   407: invokevirtual 198	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   410: aload 10
    //   412: astore 9
    //   414: aload 13
    //   416: ldc 81
    //   418: aload 12
    //   420: getfield 704	com/google/android/gms/internal/ge:aRv	J
    //   423: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   426: invokevirtual 198	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   429: aload 10
    //   431: astore 9
    //   433: aload 13
    //   435: ldc 105
    //   437: aload 12
    //   439: getfield 707	com/google/android/gms/internal/ge:aRw	J
    //   442: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   445: invokevirtual 198	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   448: aload 10
    //   450: astore 9
    //   452: aload 13
    //   454: ldc 109
    //   456: aload 12
    //   458: getfield 710	com/google/android/gms/internal/ge:aRx	J
    //   461: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   464: invokevirtual 198	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   467: aload 10
    //   469: astore 9
    //   471: aload 11
    //   473: ldc_w 690
    //   476: aload 13
    //   478: ldc_w 692
    //   481: iconst_1
    //   482: anewarray 19	java/lang/String
    //   485: dup
    //   486: iconst_0
    //   487: aload_3
    //   488: aastore
    //   489: invokevirtual 623	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   492: pop
    //   493: aload 10
    //   495: ifnull +10 -> 505
    //   498: aload 10
    //   500: invokeinterface 346 1 0
    //   505: aload 12
    //   507: areturn
    //   508: astore 11
    //   510: aconst_null
    //   511: astore 10
    //   513: aload 10
    //   515: astore 9
    //   517: aload_0
    //   518: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   521: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   524: ldc_w 712
    //   527: aload_3
    //   528: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   531: aload 11
    //   533: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   536: aload 10
    //   538: ifnull +10 -> 548
    //   541: aload 10
    //   543: invokeinterface 346 1 0
    //   548: aload 12
    //   550: areturn
    //   551: astore_3
    //   552: aconst_null
    //   553: astore 9
    //   555: aload 9
    //   557: ifnull +10 -> 567
    //   560: aload 9
    //   562: invokeinterface 346 1 0
    //   567: aload_3
    //   568: athrow
    //   569: astore_3
    //   570: goto -15 -> 555
    //   573: astore 11
    //   575: goto -62 -> 513
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	578	0	this	gd
    //   0	578	1	paramLong	long
    //   0	578	3	paramString	String
    //   0	578	4	paramBoolean1	boolean
    //   0	578	5	paramBoolean2	boolean
    //   0	578	6	paramBoolean3	boolean
    //   0	578	7	paramBoolean4	boolean
    //   0	578	8	paramBoolean5	boolean
    //   89	472	9	localCursor1	Cursor
    //   85	457	10	localCursor2	Cursor
    //   26	446	11	localSQLiteDatabase	SQLiteDatabase
    //   508	24	11	localSQLiteException1	SQLiteException
    //   573	1	11	localSQLiteException2	SQLiteException
    //   20	529	12	localge	ge
    //   355	122	13	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   22	87	508	android/database/sqlite/SQLiteException
    //   22	87	551	finally
    //   91	101	569	finally
    //   105	122	569	finally
    //   141	154	569	finally
    //   158	171	569	finally
    //   175	188	569	finally
    //   192	205	569	finally
    //   209	222	569	finally
    //   226	239	569	finally
    //   248	260	569	finally
    //   269	281	569	finally
    //   290	302	569	finally
    //   311	323	569	finally
    //   332	344	569	finally
    //   348	357	569	finally
    //   361	372	569	finally
    //   376	391	569	finally
    //   395	410	569	finally
    //   414	429	569	finally
    //   433	448	569	finally
    //   452	467	569	finally
    //   471	493	569	finally
    //   517	536	569	finally
    //   91	101	573	android/database/sqlite/SQLiteException
    //   105	122	573	android/database/sqlite/SQLiteException
    //   141	154	573	android/database/sqlite/SQLiteException
    //   158	171	573	android/database/sqlite/SQLiteException
    //   175	188	573	android/database/sqlite/SQLiteException
    //   192	205	573	android/database/sqlite/SQLiteException
    //   209	222	573	android/database/sqlite/SQLiteException
    //   226	239	573	android/database/sqlite/SQLiteException
    //   248	260	573	android/database/sqlite/SQLiteException
    //   269	281	573	android/database/sqlite/SQLiteException
    //   290	302	573	android/database/sqlite/SQLiteException
    //   311	323	573	android/database/sqlite/SQLiteException
    //   332	344	573	android/database/sqlite/SQLiteException
    //   348	357	573	android/database/sqlite/SQLiteException
    //   361	372	573	android/database/sqlite/SQLiteException
    //   376	391	573	android/database/sqlite/SQLiteException
    //   395	410	573	android/database/sqlite/SQLiteException
    //   414	429	573	android/database/sqlite/SQLiteException
    //   433	448	573	android/database/sqlite/SQLiteException
    //   452	467	573	android/database/sqlite/SQLiteException
    //   471	493	573	android/database/sqlite/SQLiteException
  }
  
  public final void a(fw paramfw)
  {
    ae.E(paramfw);
    mN();
    pf();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("app_id", paramfw.getAppId());
    localContentValues.put("app_instance_id", paramfw.getAppInstanceId());
    localContentValues.put("gmp_app_id", paramfw.getGmpAppId());
    localContentValues.put("resettable_device_id_hash", paramfw.qS());
    localContentValues.put("last_bundle_index", Long.valueOf(paramfw.rb()));
    localContentValues.put("last_bundle_start_timestamp", Long.valueOf(paramfw.qU()));
    localContentValues.put("last_bundle_end_timestamp", Long.valueOf(paramfw.qV()));
    localContentValues.put("app_version", paramfw.qq());
    localContentValues.put("app_store", paramfw.qX());
    localContentValues.put("gmp_version", Long.valueOf(paramfw.qY()));
    localContentValues.put("dev_cert_hash", Long.valueOf(paramfw.qZ()));
    localContentValues.put("measurement_enabled", Boolean.valueOf(paramfw.ra()));
    paramfw.zzjev.qO().mN();
    localContentValues.put("day", Long.valueOf(paramfw.aQN));
    paramfw.zzjev.qO().mN();
    localContentValues.put("daily_public_events_count", Long.valueOf(paramfw.aQO));
    paramfw.zzjev.qO().mN();
    localContentValues.put("daily_events_count", Long.valueOf(paramfw.aQP));
    paramfw.zzjev.qO().mN();
    localContentValues.put("daily_conversions_count", Long.valueOf(paramfw.aQQ));
    localContentValues.put("config_fetched_time", Long.valueOf(paramfw.rc()));
    localContentValues.put("failed_config_fetch_time", Long.valueOf(paramfw.rd()));
    localContentValues.put("app_version_int", Long.valueOf(paramfw.qW()));
    localContentValues.put("firebase_instance_id", paramfw.qT());
    paramfw.zzjev.qO().mN();
    localContentValues.put("daily_error_events_count", Long.valueOf(paramfw.aQR));
    paramfw.zzjev.qO().mN();
    localContentValues.put("daily_realtime_events_count", Long.valueOf(paramfw.aQS));
    localContentValues.put("health_monitor_sample", paramfw.rf());
    localContentValues.put("android_id", Long.valueOf(paramfw.rg()));
    localContentValues.put("adid_reporting_enabled", Boolean.valueOf(paramfw.rh()));
    try
    {
      SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
      if ((localSQLiteDatabase.update("apps", localContentValues, "app_id = ?", new String[] { paramfw.getAppId() }) == 0L) && (localSQLiteDatabase.insertWithOnConflict("apps", null, localContentValues, 5) == -1L)) {
        qP().aTa.j("Failed to insert/update app (got -1). appId", hb.ck(paramfw.getAppId()));
      }
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      qP().aTa.e("Error storing app. appId", hb.ck(paramfw.getAppId()), localSQLiteException);
    }
  }
  
  public final void a(gl paramgl)
  {
    Object localObject2 = null;
    ae.E(paramgl);
    mN();
    pf();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("app_id", paramgl.aQx);
    localContentValues.put("name", paramgl.name);
    localContentValues.put("lifetime_count", Long.valueOf(paramgl.aRI));
    localContentValues.put("current_bundle_count", Long.valueOf(paramgl.aRJ));
    localContentValues.put("last_fire_timestamp", Long.valueOf(paramgl.aRK));
    localContentValues.put("last_bundled_timestamp", Long.valueOf(paramgl.aRL));
    localContentValues.put("last_sampled_complex_event_id", paramgl.aRM);
    localContentValues.put("last_sampling_rate", paramgl.aRN);
    Object localObject1 = localObject2;
    if (paramgl.aRO != null)
    {
      localObject1 = localObject2;
      if (paramgl.aRO.booleanValue()) {
        localObject1 = Long.valueOf(1L);
      }
    }
    localContentValues.put("last_exempt_from_sampling", (Long)localObject1);
    try
    {
      if (getWritableDatabase().insertWithOnConflict("events", null, localContentValues, 5) == -1L) {
        qP().aTa.j("Failed to insert/update event aggregates (got -1). appId", hb.ck(paramgl.aQx));
      }
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      qP().aTa.e("Error storing event aggregates. appId", hb.ck(paramgl.aQx), localSQLiteException);
    }
  }
  
  final void a(String paramString, lh[] paramArrayOflh)
  {
    int n = 0;
    pf();
    mN();
    ae.bf(paramString);
    ae.E(paramArrayOflh);
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    Object localObject1;
    int j;
    int i2;
    for (;;)
    {
      try
      {
        pf();
        mN();
        ae.bf(paramString);
        localObject1 = getWritableDatabase();
        ((SQLiteDatabase)localObject1).delete("property_filters", "app_id=?", new String[] { paramString });
        ((SQLiteDatabase)localObject1).delete("event_filters", "app_id=?", new String[] { paramString });
        int i1 = paramArrayOflh.length;
        j = 0;
        if (j >= i1) {
          break label480;
        }
        localObject1 = paramArrayOflh[j];
        pf();
        mN();
        ae.bf(paramString);
        ae.E(localObject1);
        ae.E(((lh)localObject1).aXu);
        ae.E(((lh)localObject1).aXt);
        if (((lh)localObject1).aXs == null)
        {
          qP().aTd.j("Audience with no ID. appId", hb.ck(paramString));
        }
        else
        {
          i2 = ((lh)localObject1).aXs.intValue();
          localObject2 = ((lh)localObject1).aXu;
          k = localObject2.length;
          i = 0;
          if (i < k) {
            if (localObject2[i].aXw == null) {
              qP().aTd.e("Event filter with no ID. Audience definition ignored. appId, audienceId", hb.ck(paramString), ((lh)localObject1).aXs);
            }
          }
        }
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
      i += 1;
    }
    Object localObject2 = ((lh)localObject1).aXt;
    int k = localObject2.length;
    int i = 0;
    label270:
    label325:
    label347:
    int m;
    int i3;
    if (i < k)
    {
      if (localObject2[i].aXw != null) {
        break label556;
      }
      qP().aTd.e("Property filter with no ID. Audience definition ignored. appId, audienceId", hb.ck(paramString), ((lh)localObject1).aXs);
    }
    else
    {
      localObject2 = ((lh)localObject1).aXu;
      k = localObject2.length;
      i = 0;
      if (i < k)
      {
        if (a(paramString, i2, localObject2[i])) {
          break label563;
        }
        i = 0;
        m = i;
        if (i != 0)
        {
          localObject1 = ((lh)localObject1).aXt;
          i3 = localObject1.length;
          k = 0;
        }
      }
    }
    for (;;)
    {
      m = i;
      if (k < i3)
      {
        if (!a(paramString, i2, localObject1[k])) {
          m = 0;
        }
      }
      else
      {
        if (m == 0)
        {
          pf();
          mN();
          ae.bf(paramString);
          localObject1 = getWritableDatabase();
          ((SQLiteDatabase)localObject1).delete("property_filters", "app_id=? and audience_id=?", new String[] { paramString, String.valueOf(i2) });
          ((SQLiteDatabase)localObject1).delete("event_filters", "app_id=? and audience_id=?", new String[] { paramString, String.valueOf(i2) });
          break label547;
          label480:
          localObject1 = new ArrayList();
          j = paramArrayOflh.length;
          i = n;
          while (i < j)
          {
            ((List)localObject1).add(paramArrayOflh[i].aXs);
            i += 1;
          }
          b(paramString, (List)localObject1);
          localSQLiteDatabase.setTransactionSuccessful();
          localSQLiteDatabase.endTransaction();
          return;
          i = 1;
          break label347;
        }
        label547:
        j += 1;
        break;
        label556:
        i += 1;
        break label270;
        label563:
        i += 1;
        break label325;
      }
      k += 1;
    }
  }
  
  public final boolean a(ga paramga)
  {
    ae.E(paramga);
    mN();
    pf();
    if (v(paramga.packageName, paramga.aRc.name) == null) {
      if (b("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[] { paramga.packageName }) >= 1000L) {
        return false;
      }
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("app_id", paramga.packageName);
    localContentValues.put("origin", paramga.aRb);
    localContentValues.put("name", paramga.aRc.name);
    a(localContentValues, "value", paramga.aRc.getValue());
    localContentValues.put("active", Boolean.valueOf(paramga.aRe));
    localContentValues.put("trigger_event_name", paramga.aRf);
    localContentValues.put("trigger_timeout", Long.valueOf(paramga.aRh));
    qL();
    localContentValues.put("timed_out_event", le.a(paramga.aRg));
    localContentValues.put("creation_timestamp", Long.valueOf(paramga.aRd));
    qL();
    localContentValues.put("triggered_event", le.a(paramga.aRi));
    localContentValues.put("triggered_timestamp", Long.valueOf(paramga.aRc.aXh));
    localContentValues.put("time_to_live", Long.valueOf(paramga.aRj));
    qL();
    localContentValues.put("expired_event", le.a(paramga.aRk));
    try
    {
      if (getWritableDatabase().insertWithOnConflict("conditional_properties", null, localContentValues, 5) == -1L) {
        qP().aTa.j("Failed to insert/update conditional user property (got -1)", hb.ck(paramga.packageName));
      }
      return true;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        qP().aTa.e("Error storing conditional user property", hb.ck(paramga.packageName), localSQLiteException);
      }
    }
  }
  
  public final boolean a(gk paramgk, long paramLong, boolean paramBoolean)
  {
    mN();
    pf();
    ae.E(paramgk);
    ae.bf(paramgk.aQx);
    Object localObject1 = new lr();
    ((lr)localObject1).aYj = Long.valueOf(paramgk.aRG);
    ((lr)localObject1).aYh = new ls[paramgk.aRH.aRP.size()];
    Object localObject2 = paramgk.aRH.iterator();
    int i = 0;
    Object localObject3;
    while (((Iterator)localObject2).hasNext())
    {
      Object localObject4 = (String)((Iterator)localObject2).next();
      localObject3 = new ls();
      ((lr)localObject1).aYh[i] = localObject3;
      ((ls)localObject3).name = ((String)localObject4);
      localObject4 = paramgk.aRH.get((String)localObject4);
      qL().a((ls)localObject3, localObject4);
      i += 1;
    }
    for (;;)
    {
      try
      {
        localObject2 = new byte[((nd)localObject1).sZ()];
        localObject3 = mv.b((byte[])localObject2, localObject2.length);
        ((nd)localObject1).a((mv)localObject3);
        ((mv)localObject3).sR();
        qP().aTi.e("Saving event, name, data size", qK().ch(paramgk.name), Integer.valueOf(localObject2.length));
        localObject1 = new ContentValues();
        ((ContentValues)localObject1).put("app_id", paramgk.aQx);
        ((ContentValues)localObject1).put("name", paramgk.name);
        ((ContentValues)localObject1).put("timestamp", Long.valueOf(paramgk.timestamp));
        ((ContentValues)localObject1).put("metadata_fingerprint", Long.valueOf(paramLong));
        ((ContentValues)localObject1).put("data", (byte[])localObject2);
        if (paramBoolean)
        {
          i = 1;
          ((ContentValues)localObject1).put("realtime", Integer.valueOf(i));
        }
        i = 0;
      }
      catch (IOException localIOException)
      {
        try
        {
          if (getWritableDatabase().insert("raw_events", null, (ContentValues)localObject1) != -1L) {
            break;
          }
          qP().aTa.j("Failed to insert raw event (got -1). appId", hb.ck(paramgk.aQx));
          return false;
        }
        catch (SQLiteException localSQLiteException)
        {
          qP().aTa.e("Error storing raw event. appId", hb.ck(paramgk.aQx), localSQLiteException);
          return false;
        }
        localIOException = localIOException;
        qP().aTa.e("Data loss. Failed to serialize event params/data. appId", hb.ck(paramgk.aQx), localIOException);
        return false;
      }
    }
    return true;
  }
  
  public final boolean a(ld paramld)
  {
    ae.E(paramld);
    mN();
    pf();
    if (v(paramld.aQx, paramld.name) == null) {
      if (le.cw(paramld.name))
      {
        if (b("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[] { paramld.aQx }) < 25L) {}
      }
      else {
        while (b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[] { paramld.aQx, paramld.aRb }) >= 25L) {
          return false;
        }
      }
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("app_id", paramld.aQx);
    localContentValues.put("origin", paramld.aRb);
    localContentValues.put("name", paramld.name);
    localContentValues.put("set_timestamp", Long.valueOf(paramld.aXh));
    a(localContentValues, "value", paramld.value);
    try
    {
      if (getWritableDatabase().insertWithOnConflict("user_attributes", null, localContentValues, 5) == -1L) {
        qP().aTa.j("Failed to insert/update user property (got -1). appId", hb.ck(paramld.aQx));
      }
      return true;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        qP().aTa.e("Error storing user property. appId", hb.ck(paramld.aQx), localSQLiteException);
      }
    }
  }
  
  public final boolean a(lu paramlu, boolean paramBoolean)
  {
    mN();
    pf();
    ae.E(paramlu);
    ae.bf(paramlu.aQx);
    ae.E(paramlu.aYt);
    rp();
    long l = qH().currentTimeMillis();
    if ((paramlu.aYt.longValue() < l - gc.rk()) || (paramlu.aYt.longValue() > gc.rk() + l)) {
      qP().aTd.d("Storing bundle outside of the max uploading time span. appId, now, timestamp", hb.ck(paramlu.aQx), Long.valueOf(l), paramlu.aYt);
    }
    for (;;)
    {
      try
      {
        byte[] arrayOfByte = new byte[paramlu.sZ()];
        Object localObject = mv.b(arrayOfByte, arrayOfByte.length);
        paramlu.a((mv)localObject);
        ((mv)localObject).sR();
        arrayOfByte = qL().n(arrayOfByte);
        qP().aTi.j("Saving bundle, size", Integer.valueOf(arrayOfByte.length));
        localObject = new ContentValues();
        ((ContentValues)localObject).put("app_id", paramlu.aQx);
        ((ContentValues)localObject).put("bundle_end_timestamp", paramlu.aYt);
        ((ContentValues)localObject).put("data", arrayOfByte);
        if (paramBoolean)
        {
          i = 1;
          ((ContentValues)localObject).put("has_realtime", Integer.valueOf(i));
        }
        int i = 0;
      }
      catch (IOException localIOException)
      {
        try
        {
          if (getWritableDatabase().insert("queue", null, (ContentValues)localObject) != -1L) {
            break;
          }
          qP().aTa.j("Failed to insert bundle (got -1). appId", hb.ck(paramlu.aQx));
          return false;
        }
        catch (SQLiteException localSQLiteException)
        {
          qP().aTa.e("Error storing bundle. appId", hb.ck(paramlu.aQx), localSQLiteException);
          return false;
        }
        localIOException = localIOException;
        qP().aTa.e("Data loss. Failed to serialize bundle. appId", hb.ck(paramlu.aQx), localIOException);
        return false;
      }
    }
    return true;
  }
  
  public final boolean a(String paramString, Long paramLong, long paramLong1, lr paramlr)
  {
    mN();
    pf();
    ae.E(paramlr);
    ae.bf(paramString);
    ae.E(paramLong);
    try
    {
      byte[] arrayOfByte = new byte[paramlr.sZ()];
      mv localmv = mv.b(arrayOfByte, arrayOfByte.length);
      paramlr.a(localmv);
      localmv.sR();
      qP().aTi.e("Saving complex main event, appId, data size", qK().ch(paramString), Integer.valueOf(arrayOfByte.length));
      paramlr = new ContentValues();
      paramlr.put("app_id", paramString);
      paramlr.put("event_id", paramLong);
      paramlr.put("children_to_process", Long.valueOf(paramLong1));
      paramlr.put("main_event", arrayOfByte);
      return true;
    }
    catch (IOException paramlr)
    {
      try
      {
        if (getWritableDatabase().insertWithOnConflict("main_event_params", null, paramlr, 5) != -1L) {
          break label216;
        }
        qP().aTa.j("Failed to insert complex main event (got -1). appId", hb.ck(paramString));
        return false;
      }
      catch (SQLiteException paramLong)
      {
        qP().aTa.e("Error storing complex main event. appId", hb.ck(paramString), paramLong);
        return false;
      }
      paramlr = paramlr;
      qP().aTa.d("Data loss. Failed to serialize event params/data. appId, eventId", hb.ck(paramString), paramLong, paramlr);
      return false;
    }
  }
  
  final long b(String paramString, String[] paramArrayOfString)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    Object localObject = null;
    String[] arrayOfString = null;
    try
    {
      paramArrayOfString = localSQLiteDatabase.rawQuery(paramString, paramArrayOfString);
      arrayOfString = paramArrayOfString;
      localObject = paramArrayOfString;
      if (paramArrayOfString.moveToFirst())
      {
        arrayOfString = paramArrayOfString;
        localObject = paramArrayOfString;
        long l = paramArrayOfString.getLong(0);
        if (paramArrayOfString != null) {
          paramArrayOfString.close();
        }
        return l;
      }
      arrayOfString = paramArrayOfString;
      localObject = paramArrayOfString;
      throw new SQLiteException("Database returned empty set");
    }
    catch (SQLiteException paramArrayOfString)
    {
      localObject = arrayOfString;
      qP().aTa.e("Database error", paramString, paramArrayOfString);
      localObject = arrayOfString;
      throw paramArrayOfString;
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
  }
  
  /* Error */
  public final List<android.util.Pair<lu, Long>> b(String paramString, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: aload_0
    //   4: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   7: aload_0
    //   8: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   11: iload_2
    //   12: ifle +112 -> 124
    //   15: iconst_1
    //   16: istore 4
    //   18: iload 4
    //   20: invokestatic 1151	com/google/android/gms/common/internal/ae:au	(Z)V
    //   23: iload_3
    //   24: ifle +106 -> 130
    //   27: iload 5
    //   29: istore 4
    //   31: iload 4
    //   33: invokestatic 1151	com/google/android/gms/common/internal/ae:au	(Z)V
    //   36: aload_1
    //   37: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   40: pop
    //   41: aload_0
    //   42: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   45: ldc_w 1121
    //   48: iconst_2
    //   49: anewarray 19	java/lang/String
    //   52: dup
    //   53: iconst_0
    //   54: ldc_w 1153
    //   57: aastore
    //   58: dup
    //   59: iconst_1
    //   60: ldc_w 421
    //   63: aastore
    //   64: ldc_w 692
    //   67: iconst_1
    //   68: anewarray 19	java/lang/String
    //   71: dup
    //   72: iconst_0
    //   73: aload_1
    //   74: aastore
    //   75: aconst_null
    //   76: aconst_null
    //   77: ldc_w 1153
    //   80: iload_2
    //   81: invokestatic 895	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   84: invokevirtual 1156	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   87: astore 8
    //   89: aload 8
    //   91: invokeinterface 343 1 0
    //   96: ifne +40 -> 136
    //   99: invokestatic 1160	java/util/Collections:emptyList	()Ljava/util/List;
    //   102: astore 9
    //   104: aload 9
    //   106: astore_1
    //   107: aload 8
    //   109: ifnull +13 -> 122
    //   112: aload 8
    //   114: invokeinterface 346 1 0
    //   119: aload 9
    //   121: astore_1
    //   122: aload_1
    //   123: areturn
    //   124: iconst_0
    //   125: istore 4
    //   127: goto -109 -> 18
    //   130: iconst_0
    //   131: istore 4
    //   133: goto -102 -> 31
    //   136: new 524	java/util/ArrayList
    //   139: dup
    //   140: invokespecial 525	java/util/ArrayList:<init>	()V
    //   143: astore 9
    //   145: iconst_0
    //   146: istore_2
    //   147: aload 8
    //   149: iconst_0
    //   150: invokeinterface 474 2 0
    //   155: lstore 6
    //   157: aload 8
    //   159: iconst_1
    //   160: invokeinterface 1164 2 0
    //   165: astore 10
    //   167: aload_0
    //   168: invokevirtual 652	com/google/android/gms/internal/ix:qL	()Lcom/google/android/gms/internal/le;
    //   171: aload 10
    //   173: invokevirtual 1167	com/google/android/gms/internal/le:o	([B)[B
    //   176: astore 10
    //   178: aload 9
    //   180: invokeinterface 1168 1 0
    //   185: ifne +12 -> 197
    //   188: aload 10
    //   190: arraylength
    //   191: iload_2
    //   192: iadd
    //   193: iload_3
    //   194: if_icmpgt +73 -> 267
    //   197: aload 10
    //   199: aload 10
    //   201: arraylength
    //   202: invokestatic 1173	com/google/android/gms/internal/mu:a	([BI)Lcom/google/android/gms/internal/mu;
    //   205: astore 11
    //   207: new 645	com/google/android/gms/internal/lu
    //   210: dup
    //   211: invokespecial 1174	com/google/android/gms/internal/lu:<init>	()V
    //   214: astore 12
    //   216: aload 12
    //   218: aload 11
    //   220: invokevirtual 1177	com/google/android/gms/internal/nd:a	(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    //   223: pop
    //   224: aload 10
    //   226: arraylength
    //   227: iload_2
    //   228: iadd
    //   229: istore_2
    //   230: aload 9
    //   232: aload 12
    //   234: lload 6
    //   236: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   239: invokestatic 1183	android/util/Pair:create	(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    //   242: invokeinterface 542 2 0
    //   247: pop
    //   248: aload 8
    //   250: invokeinterface 1186 1 0
    //   255: istore 4
    //   257: iload 4
    //   259: ifeq +8 -> 267
    //   262: iload_2
    //   263: iload_3
    //   264: if_icmple +147 -> 411
    //   267: aload 9
    //   269: astore_1
    //   270: aload 8
    //   272: ifnull -150 -> 122
    //   275: aload 8
    //   277: invokeinterface 346 1 0
    //   282: aload 9
    //   284: areturn
    //   285: astore 10
    //   287: aload_0
    //   288: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   291: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   294: ldc_w 1188
    //   297: aload_1
    //   298: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   301: aload 10
    //   303: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   306: goto -58 -> 248
    //   309: astore 10
    //   311: aload_0
    //   312: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   315: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   318: ldc_w 1190
    //   321: aload_1
    //   322: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   325: aload 10
    //   327: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   330: goto -82 -> 248
    //   333: astore 9
    //   335: aconst_null
    //   336: astore 8
    //   338: aload_0
    //   339: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   342: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   345: ldc_w 1192
    //   348: aload_1
    //   349: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   352: aload 9
    //   354: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   357: invokestatic 1160	java/util/Collections:emptyList	()Ljava/util/List;
    //   360: astore 9
    //   362: aload 9
    //   364: astore_1
    //   365: aload 8
    //   367: ifnull -245 -> 122
    //   370: aload 8
    //   372: invokeinterface 346 1 0
    //   377: aload 9
    //   379: areturn
    //   380: astore_1
    //   381: aconst_null
    //   382: astore 8
    //   384: aload 8
    //   386: ifnull +10 -> 396
    //   389: aload 8
    //   391: invokeinterface 346 1 0
    //   396: aload_1
    //   397: athrow
    //   398: astore_1
    //   399: goto -15 -> 384
    //   402: astore_1
    //   403: goto -19 -> 384
    //   406: astore 9
    //   408: goto -70 -> 338
    //   411: goto -264 -> 147
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	414	0	this	gd
    //   0	414	1	paramString	String
    //   0	414	2	paramInt1	int
    //   0	414	3	paramInt2	int
    //   16	242	4	bool1	boolean
    //   1	27	5	bool2	boolean
    //   155	80	6	l	long
    //   87	303	8	localCursor	Cursor
    //   102	181	9	localObject	Object
    //   333	20	9	localSQLiteException1	SQLiteException
    //   360	18	9	localList	List
    //   406	1	9	localSQLiteException2	SQLiteException
    //   165	60	10	arrayOfByte	byte[]
    //   285	17	10	localIOException1	IOException
    //   309	17	10	localIOException2	IOException
    //   205	14	11	localmu	mu
    //   214	19	12	locallu	lu
    // Exception table:
    //   from	to	target	type
    //   157	178	285	java/io/IOException
    //   216	224	309	java/io/IOException
    //   41	89	333	android/database/sqlite/SQLiteException
    //   41	89	380	finally
    //   89	104	398	finally
    //   136	145	398	finally
    //   147	157	398	finally
    //   157	178	398	finally
    //   178	197	398	finally
    //   197	216	398	finally
    //   216	224	398	finally
    //   224	248	398	finally
    //   248	257	398	finally
    //   287	306	398	finally
    //   311	330	398	finally
    //   338	362	402	finally
    //   89	104	406	android/database/sqlite/SQLiteException
    //   136	145	406	android/database/sqlite/SQLiteException
    //   147	157	406	android/database/sqlite/SQLiteException
    //   157	178	406	android/database/sqlite/SQLiteException
    //   178	197	406	android/database/sqlite/SQLiteException
    //   197	216	406	android/database/sqlite/SQLiteException
    //   216	224	406	android/database/sqlite/SQLiteException
    //   224	248	406	android/database/sqlite/SQLiteException
    //   248	257	406	android/database/sqlite/SQLiteException
    //   287	306	406	android/database/sqlite/SQLiteException
    //   311	330	406	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  public final List<ld> b(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_1
    //   4: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   7: pop
    //   8: aload_0
    //   9: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   12: aload_0
    //   13: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   16: new 524	java/util/ArrayList
    //   19: dup
    //   20: invokespecial 525	java/util/ArrayList:<init>	()V
    //   23: astore 9
    //   25: new 524	java/util/ArrayList
    //   28: dup
    //   29: iconst_3
    //   30: invokespecial 1195	java/util/ArrayList:<init>	(I)V
    //   33: astore 10
    //   35: aload 10
    //   37: aload_1
    //   38: invokeinterface 542 2 0
    //   43: pop
    //   44: new 288	java/lang/StringBuilder
    //   47: dup
    //   48: ldc_w 692
    //   51: invokespecial 1196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   54: astore 7
    //   56: aload_2
    //   57: invokestatic 366	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   60: ifne +21 -> 81
    //   63: aload 10
    //   65: aload_2
    //   66: invokeinterface 542 2 0
    //   71: pop
    //   72: aload 7
    //   74: ldc_w 1198
    //   77: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload_3
    //   82: invokestatic 366	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   85: ifne +30 -> 115
    //   88: aload 10
    //   90: aload_3
    //   91: invokestatic 292	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   94: ldc_w 1200
    //   97: invokevirtual 1203	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   100: invokeinterface 542 2 0
    //   105: pop
    //   106: aload 7
    //   108: ldc_w 1205
    //   111: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: pop
    //   115: aload 10
    //   117: aload 10
    //   119: invokeinterface 530 1 0
    //   124: anewarray 19	java/lang/String
    //   127: invokeinterface 1209 2 0
    //   132: checkcast 1210	[Ljava/lang/String;
    //   135: astore 10
    //   137: aload_0
    //   138: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   141: astore 11
    //   143: aload 7
    //   145: invokevirtual 310	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: astore 7
    //   150: aload 11
    //   152: ldc_w 1088
    //   155: iconst_4
    //   156: anewarray 19	java/lang/String
    //   159: dup
    //   160: iconst_0
    //   161: ldc_w 332
    //   164: aastore
    //   165: dup
    //   166: iconst_1
    //   167: ldc_w 1082
    //   170: aastore
    //   171: dup
    //   172: iconst_2
    //   173: ldc_w 923
    //   176: aastore
    //   177: dup
    //   178: iconst_3
    //   179: ldc 39
    //   181: aastore
    //   182: aload 7
    //   184: aload 10
    //   186: aconst_null
    //   187: aconst_null
    //   188: ldc_w 1153
    //   191: ldc_w 1212
    //   194: invokevirtual 1156	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   197: astore 7
    //   199: aload_2
    //   200: astore 8
    //   202: aload 7
    //   204: invokeinterface 343 1 0
    //   209: istore 4
    //   211: iload 4
    //   213: ifne +18 -> 231
    //   216: aload 7
    //   218: ifnull +10 -> 228
    //   221: aload 7
    //   223: invokeinterface 346 1 0
    //   228: aload 9
    //   230: areturn
    //   231: aload_2
    //   232: astore 8
    //   234: aload 9
    //   236: invokeinterface 530 1 0
    //   241: sipush 1000
    //   244: if_icmplt +40 -> 284
    //   247: aload_2
    //   248: astore 8
    //   250: aload_0
    //   251: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   254: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   257: ldc_w 1214
    //   260: sipush 1000
    //   263: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   266: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   269: aload 7
    //   271: ifnull +10 -> 281
    //   274: aload 7
    //   276: invokeinterface 346 1 0
    //   281: aload 9
    //   283: areturn
    //   284: aload_2
    //   285: astore 8
    //   287: aload 7
    //   289: iconst_0
    //   290: invokeinterface 488 2 0
    //   295: astore 10
    //   297: aload_2
    //   298: astore 8
    //   300: aload 7
    //   302: iconst_1
    //   303: invokeinterface 474 2 0
    //   308: lstore 5
    //   310: aload_2
    //   311: astore 8
    //   313: aload_0
    //   314: aload 7
    //   316: iconst_2
    //   317: invokespecial 1216	com/google/android/gms/internal/gd:b	(Landroid/database/Cursor;I)Ljava/lang/Object;
    //   320: astore 11
    //   322: aload_2
    //   323: astore 8
    //   325: aload 7
    //   327: iconst_3
    //   328: invokeinterface 488 2 0
    //   333: astore_2
    //   334: aload 11
    //   336: ifnonnull +35 -> 371
    //   339: aload_0
    //   340: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   343: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   346: ldc_w 1218
    //   349: aload_1
    //   350: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   353: aload_2
    //   354: aload_3
    //   355: invokevirtual 389	com/google/android/gms/internal/hd:d	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   358: aload 7
    //   360: invokeinterface 1186 1 0
    //   365: ifne -134 -> 231
    //   368: goto -99 -> 269
    //   371: aload 9
    //   373: new 1067	com/google/android/gms/internal/ld
    //   376: dup
    //   377: aload_1
    //   378: aload_2
    //   379: aload 10
    //   381: lload 5
    //   383: aload 11
    //   385: invokespecial 1221	com/google/android/gms/internal/ld:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   388: invokeinterface 542 2 0
    //   393: pop
    //   394: goto -36 -> 358
    //   397: astore 8
    //   399: aload 7
    //   401: astore_3
    //   402: aload 8
    //   404: astore 7
    //   406: aload_0
    //   407: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   410: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   413: ldc_w 1223
    //   416: aload_1
    //   417: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   420: aload_2
    //   421: aload 7
    //   423: invokevirtual 389	com/google/android/gms/internal/hd:d	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   426: aload_3
    //   427: ifnull +9 -> 436
    //   430: aload_3
    //   431: invokeinterface 346 1 0
    //   436: aconst_null
    //   437: areturn
    //   438: astore_1
    //   439: aload 8
    //   441: astore_2
    //   442: aload_2
    //   443: ifnull +9 -> 452
    //   446: aload_2
    //   447: invokeinterface 346 1 0
    //   452: aload_1
    //   453: athrow
    //   454: astore_1
    //   455: aload 7
    //   457: astore_2
    //   458: goto -16 -> 442
    //   461: astore_1
    //   462: aload_3
    //   463: astore_2
    //   464: goto -22 -> 442
    //   467: astore 7
    //   469: aconst_null
    //   470: astore_3
    //   471: goto -65 -> 406
    //   474: astore_2
    //   475: aload 7
    //   477: astore_3
    //   478: aload_2
    //   479: astore 7
    //   481: aload 8
    //   483: astore_2
    //   484: goto -78 -> 406
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	487	0	this	gd
    //   0	487	1	paramString1	String
    //   0	487	2	paramString2	String
    //   0	487	3	paramString3	String
    //   209	3	4	bool	boolean
    //   308	74	5	l	long
    //   54	402	7	localObject1	Object
    //   467	9	7	localSQLiteException1	SQLiteException
    //   479	1	7	str1	String
    //   1	323	8	str2	String
    //   397	85	8	localSQLiteException2	SQLiteException
    //   23	349	9	localArrayList	ArrayList
    //   33	347	10	localObject2	Object
    //   141	243	11	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   339	358	397	android/database/sqlite/SQLiteException
    //   358	368	397	android/database/sqlite/SQLiteException
    //   371	394	397	android/database/sqlite/SQLiteException
    //   25	81	438	finally
    //   81	115	438	finally
    //   115	199	438	finally
    //   202	211	454	finally
    //   234	247	454	finally
    //   250	269	454	finally
    //   287	297	454	finally
    //   300	310	454	finally
    //   313	322	454	finally
    //   325	334	454	finally
    //   339	358	454	finally
    //   358	368	454	finally
    //   371	394	454	finally
    //   406	426	461	finally
    //   25	81	467	android/database/sqlite/SQLiteException
    //   81	115	467	android/database/sqlite/SQLiteException
    //   115	199	467	android/database/sqlite/SQLiteException
    //   202	211	474	android/database/sqlite/SQLiteException
    //   234	247	474	android/database/sqlite/SQLiteException
    //   250	269	474	android/database/sqlite/SQLiteException
    //   287	297	474	android/database/sqlite/SQLiteException
    //   300	310	474	android/database/sqlite/SQLiteException
    //   313	322	474	android/database/sqlite/SQLiteException
    //   325	334	474	android/database/sqlite/SQLiteException
  }
  
  public final void beginTransaction()
  {
    pf();
    getWritableDatabase().beginTransaction();
  }
  
  /* Error */
  public final android.util.Pair<lr, Long> c(String paramString, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_0
    //   4: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   7: aload_0
    //   8: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   11: aload_0
    //   12: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   15: ldc_w 1228
    //   18: iconst_2
    //   19: anewarray 19	java/lang/String
    //   22: dup
    //   23: iconst_0
    //   24: aload_1
    //   25: aastore
    //   26: dup
    //   27: iconst_1
    //   28: aload_2
    //   29: invokestatic 292	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   32: aastore
    //   33: invokevirtual 569	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   36: astore 6
    //   38: aload 6
    //   40: astore 5
    //   42: aload 6
    //   44: invokeinterface 343 1 0
    //   49: ifne +40 -> 89
    //   52: aload 6
    //   54: astore 5
    //   56: aload_0
    //   57: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   60: getfield 638	com/google/android/gms/internal/hb:aTi	Lcom/google/android/gms/internal/hd;
    //   63: ldc_w 1230
    //   66: invokevirtual 239	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   69: aload 7
    //   71: astore_1
    //   72: aload 6
    //   74: ifnull +13 -> 87
    //   77: aload 6
    //   79: invokeinterface 346 1 0
    //   84: aload 7
    //   86: astore_1
    //   87: aload_1
    //   88: areturn
    //   89: aload 6
    //   91: astore 5
    //   93: aload 6
    //   95: iconst_0
    //   96: invokeinterface 1164 2 0
    //   101: astore 8
    //   103: aload 6
    //   105: astore 5
    //   107: aload 6
    //   109: iconst_1
    //   110: invokeinterface 474 2 0
    //   115: lstore_3
    //   116: aload 6
    //   118: astore 5
    //   120: aload 8
    //   122: aload 8
    //   124: arraylength
    //   125: invokestatic 1173	com/google/android/gms/internal/mu:a	([BI)Lcom/google/android/gms/internal/mu;
    //   128: astore 8
    //   130: aload 6
    //   132: astore 5
    //   134: new 991	com/google/android/gms/internal/lr
    //   137: dup
    //   138: invokespecial 992	com/google/android/gms/internal/lr:<init>	()V
    //   141: astore 9
    //   143: aload 6
    //   145: astore 5
    //   147: aload 9
    //   149: aload 8
    //   151: invokevirtual 1177	com/google/android/gms/internal/nd:a	(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    //   154: pop
    //   155: aload 6
    //   157: astore 5
    //   159: aload 9
    //   161: lload_3
    //   162: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   165: invokestatic 1183	android/util/Pair:create	(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    //   168: astore_2
    //   169: aload_2
    //   170: astore_1
    //   171: aload 6
    //   173: ifnull -86 -> 87
    //   176: aload 6
    //   178: invokeinterface 346 1 0
    //   183: aload_2
    //   184: areturn
    //   185: astore 8
    //   187: aload 6
    //   189: astore 5
    //   191: aload_0
    //   192: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   195: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   198: ldc_w 1232
    //   201: aload_1
    //   202: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   205: aload_2
    //   206: aload 8
    //   208: invokevirtual 389	com/google/android/gms/internal/hd:d	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   211: aload 7
    //   213: astore_1
    //   214: aload 6
    //   216: ifnull -129 -> 87
    //   219: aload 6
    //   221: invokeinterface 346 1 0
    //   226: aconst_null
    //   227: areturn
    //   228: astore_1
    //   229: aconst_null
    //   230: astore 6
    //   232: aload 6
    //   234: astore 5
    //   236: aload_0
    //   237: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   240: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   243: ldc_w 1234
    //   246: aload_1
    //   247: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   250: aload 7
    //   252: astore_1
    //   253: aload 6
    //   255: ifnull -168 -> 87
    //   258: aload 6
    //   260: invokeinterface 346 1 0
    //   265: aconst_null
    //   266: areturn
    //   267: astore_1
    //   268: aconst_null
    //   269: astore 5
    //   271: aload 5
    //   273: ifnull +10 -> 283
    //   276: aload 5
    //   278: invokeinterface 346 1 0
    //   283: aload_1
    //   284: athrow
    //   285: astore_1
    //   286: goto -15 -> 271
    //   289: astore_1
    //   290: goto -58 -> 232
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	293	0	this	gd
    //   0	293	1	paramString	String
    //   0	293	2	paramLong	Long
    //   115	47	3	l	long
    //   40	237	5	localCursor1	Cursor
    //   36	223	6	localCursor2	Cursor
    //   1	250	7	localObject1	Object
    //   101	49	8	localObject2	Object
    //   185	22	8	localIOException	IOException
    //   141	19	9	locallr	lr
    // Exception table:
    //   from	to	target	type
    //   147	155	185	java/io/IOException
    //   11	38	228	android/database/sqlite/SQLiteException
    //   11	38	267	finally
    //   42	52	285	finally
    //   56	69	285	finally
    //   93	103	285	finally
    //   107	116	285	finally
    //   120	130	285	finally
    //   134	143	285	finally
    //   147	155	285	finally
    //   159	169	285	finally
    //   191	211	285	finally
    //   236	250	285	finally
    //   42	52	289	android/database/sqlite/SQLiteException
    //   56	69	289	android/database/sqlite/SQLiteException
    //   93	103	289	android/database/sqlite/SQLiteException
    //   107	116	289	android/database/sqlite/SQLiteException
    //   120	130	289	android/database/sqlite/SQLiteException
    //   134	143	289	android/database/sqlite/SQLiteException
    //   147	155	289	android/database/sqlite/SQLiteException
    //   159	169	289	android/database/sqlite/SQLiteException
    //   191	211	289	android/database/sqlite/SQLiteException
  }
  
  public final List<ga> c(String paramString1, String paramString2, String paramString3)
  {
    ae.bf(paramString1);
    mN();
    pf();
    ArrayList localArrayList = new ArrayList(3);
    localArrayList.add(paramString1);
    paramString1 = new StringBuilder("app_id=?");
    if (!TextUtils.isEmpty(paramString2))
    {
      localArrayList.add(paramString2);
      paramString1.append(" and origin=?");
    }
    if (!TextUtils.isEmpty(paramString3))
    {
      localArrayList.add(String.valueOf(paramString3).concat("*"));
      paramString1.append(" and name glob ?");
    }
    paramString2 = (String[])localArrayList.toArray(new String[localArrayList.size()]);
    return c(paramString1.toString(), paramString2);
  }
  
  /* Error */
  public final List<ga> c(String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   4: aload_0
    //   5: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   8: new 524	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 525	java/util/ArrayList:<init>	()V
    //   15: astore 12
    //   17: aload_0
    //   18: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   21: ldc_w 981
    //   24: bipush 13
    //   26: anewarray 19	java/lang/String
    //   29: dup
    //   30: iconst_0
    //   31: ldc_w 410
    //   34: aastore
    //   35: dup
    //   36: iconst_1
    //   37: ldc 39
    //   39: aastore
    //   40: dup
    //   41: iconst_2
    //   42: ldc_w 332
    //   45: aastore
    //   46: dup
    //   47: iconst_3
    //   48: ldc_w 923
    //   51: aastore
    //   52: dup
    //   53: iconst_4
    //   54: ldc_w 931
    //   57: aastore
    //   58: dup
    //   59: iconst_5
    //   60: ldc_w 937
    //   63: aastore
    //   64: dup
    //   65: bipush 6
    //   67: ldc_w 942
    //   70: aastore
    //   71: dup
    //   72: bipush 7
    //   74: ldc_w 947
    //   77: aastore
    //   78: dup
    //   79: bipush 8
    //   81: ldc_w 956
    //   84: aastore
    //   85: dup
    //   86: bipush 9
    //   88: ldc_w 961
    //   91: aastore
    //   92: dup
    //   93: bipush 10
    //   95: ldc_w 966
    //   98: aastore
    //   99: dup
    //   100: bipush 11
    //   102: ldc_w 971
    //   105: aastore
    //   106: dup
    //   107: bipush 12
    //   109: ldc_w 976
    //   112: aastore
    //   113: aload_1
    //   114: aload_2
    //   115: aconst_null
    //   116: aconst_null
    //   117: ldc_w 1153
    //   120: ldc_w 1212
    //   123: invokevirtual 1156	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   126: astore_1
    //   127: aload_1
    //   128: invokeinterface 343 1 0
    //   133: istore_3
    //   134: iload_3
    //   135: ifne +18 -> 153
    //   138: aload_1
    //   139: ifnull +9 -> 148
    //   142: aload_1
    //   143: invokeinterface 346 1 0
    //   148: aload 12
    //   150: astore_2
    //   151: aload_2
    //   152: areturn
    //   153: aload 12
    //   155: invokeinterface 530 1 0
    //   160: sipush 1000
    //   163: if_icmplt +35 -> 198
    //   166: aload_0
    //   167: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   170: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   173: ldc_w 1241
    //   176: sipush 1000
    //   179: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   182: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   185: aload_1
    //   186: ifnull +9 -> 195
    //   189: aload_1
    //   190: invokeinterface 346 1 0
    //   195: aload 12
    //   197: areturn
    //   198: aload_1
    //   199: iconst_0
    //   200: invokeinterface 488 2 0
    //   205: astore_2
    //   206: aload_1
    //   207: iconst_1
    //   208: invokeinterface 488 2 0
    //   213: astore 13
    //   215: aload_1
    //   216: iconst_2
    //   217: invokeinterface 488 2 0
    //   222: astore 14
    //   224: aload_0
    //   225: aload_1
    //   226: iconst_3
    //   227: invokespecial 1216	com/google/android/gms/internal/gd:b	(Landroid/database/Cursor;I)Ljava/lang/Object;
    //   230: astore 15
    //   232: aload_1
    //   233: iconst_4
    //   234: invokeinterface 1244 2 0
    //   239: ifeq +185 -> 424
    //   242: iconst_1
    //   243: istore_3
    //   244: aload_1
    //   245: iconst_5
    //   246: invokeinterface 488 2 0
    //   251: astore 16
    //   253: aload_1
    //   254: bipush 6
    //   256: invokeinterface 474 2 0
    //   261: lstore 4
    //   263: aload_0
    //   264: invokevirtual 652	com/google/android/gms/internal/ix:qL	()Lcom/google/android/gms/internal/le;
    //   267: aload_1
    //   268: bipush 7
    //   270: invokeinterface 1164 2 0
    //   275: getstatic 1250	com/google/android/gms/internal/gp:CREATOR	Landroid/os/Parcelable$Creator;
    //   278: invokevirtual 1253	com/google/android/gms/internal/le:a	([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   281: checkcast 1246	com/google/android/gms/internal/gp
    //   284: astore 17
    //   286: aload_1
    //   287: bipush 8
    //   289: invokeinterface 474 2 0
    //   294: lstore 6
    //   296: aload_0
    //   297: invokevirtual 652	com/google/android/gms/internal/ix:qL	()Lcom/google/android/gms/internal/le;
    //   300: aload_1
    //   301: bipush 9
    //   303: invokeinterface 1164 2 0
    //   308: getstatic 1250	com/google/android/gms/internal/gp:CREATOR	Landroid/os/Parcelable$Creator;
    //   311: invokevirtual 1253	com/google/android/gms/internal/le:a	([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   314: checkcast 1246	com/google/android/gms/internal/gp
    //   317: astore 18
    //   319: aload_1
    //   320: bipush 10
    //   322: invokeinterface 474 2 0
    //   327: lstore 8
    //   329: aload_1
    //   330: bipush 11
    //   332: invokeinterface 474 2 0
    //   337: lstore 10
    //   339: aload_0
    //   340: invokevirtual 652	com/google/android/gms/internal/ix:qL	()Lcom/google/android/gms/internal/le;
    //   343: aload_1
    //   344: bipush 12
    //   346: invokeinterface 1164 2 0
    //   351: getstatic 1250	com/google/android/gms/internal/gp:CREATOR	Landroid/os/Parcelable$Creator;
    //   354: invokevirtual 1253	com/google/android/gms/internal/le:a	([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   357: checkcast 1246	com/google/android/gms/internal/gp
    //   360: astore 19
    //   362: aload 12
    //   364: new 900	com/google/android/gms/internal/ga
    //   367: dup
    //   368: aload_2
    //   369: aload 13
    //   371: new 909	com/google/android/gms/internal/lb
    //   374: dup
    //   375: aload 14
    //   377: lload 8
    //   379: aload 15
    //   381: aload 13
    //   383: invokespecial 1256	com/google/android/gms/internal/lb:<init>	(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    //   386: lload 6
    //   388: iload_3
    //   389: aload 16
    //   391: aload 17
    //   393: lload 4
    //   395: aload 18
    //   397: lload 10
    //   399: aload 19
    //   401: invokespecial 1259	com/google/android/gms/internal/ga:<init>	(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/lb;JZLjava/lang/String;Lcom/google/android/gms/internal/gp;JLcom/google/android/gms/internal/gp;JLcom/google/android/gms/internal/gp;)V
    //   404: invokeinterface 542 2 0
    //   409: pop
    //   410: aload_1
    //   411: invokeinterface 1186 1 0
    //   416: istore_3
    //   417: iload_3
    //   418: ifne -265 -> 153
    //   421: goto -236 -> 185
    //   424: iconst_0
    //   425: istore_3
    //   426: goto -182 -> 244
    //   429: astore_2
    //   430: aconst_null
    //   431: astore_1
    //   432: aload_0
    //   433: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   436: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   439: ldc_w 1261
    //   442: aload_2
    //   443: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   446: invokestatic 1160	java/util/Collections:emptyList	()Ljava/util/List;
    //   449: astore 12
    //   451: aload 12
    //   453: astore_2
    //   454: aload_1
    //   455: ifnull -304 -> 151
    //   458: aload_1
    //   459: invokeinterface 346 1 0
    //   464: aload 12
    //   466: areturn
    //   467: astore_2
    //   468: aconst_null
    //   469: astore_1
    //   470: aload_1
    //   471: ifnull +9 -> 480
    //   474: aload_1
    //   475: invokeinterface 346 1 0
    //   480: aload_2
    //   481: athrow
    //   482: astore_2
    //   483: goto -13 -> 470
    //   486: astore_2
    //   487: goto -17 -> 470
    //   490: astore_2
    //   491: goto -59 -> 432
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	494	0	this	gd
    //   0	494	1	paramString	String
    //   0	494	2	paramArrayOfString	String[]
    //   133	293	3	bool	boolean
    //   261	133	4	l1	long
    //   294	93	6	l2	long
    //   327	51	8	l3	long
    //   337	61	10	l4	long
    //   15	450	12	localObject1	Object
    //   213	169	13	str1	String
    //   222	154	14	str2	String
    //   230	150	15	localObject2	Object
    //   251	139	16	str3	String
    //   284	108	17	localgp1	gp
    //   317	79	18	localgp2	gp
    //   360	40	19	localgp3	gp
    // Exception table:
    //   from	to	target	type
    //   17	127	429	android/database/sqlite/SQLiteException
    //   17	127	467	finally
    //   127	134	482	finally
    //   153	185	482	finally
    //   198	242	482	finally
    //   244	417	482	finally
    //   432	451	486	finally
    //   127	134	490	android/database/sqlite/SQLiteException
    //   153	185	490	android/database/sqlite/SQLiteException
    //   198	242	490	android/database/sqlite/SQLiteException
    //   244	417	490	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  public final List<ld> ca(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_1
    //   4: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   7: pop
    //   8: aload_0
    //   9: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   12: aload_0
    //   13: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   16: new 524	java/util/ArrayList
    //   19: dup
    //   20: invokespecial 525	java/util/ArrayList:<init>	()V
    //   23: astore 8
    //   25: aload_0
    //   26: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   29: ldc_w 1088
    //   32: iconst_4
    //   33: anewarray 19	java/lang/String
    //   36: dup
    //   37: iconst_0
    //   38: ldc_w 332
    //   41: aastore
    //   42: dup
    //   43: iconst_1
    //   44: ldc 39
    //   46: aastore
    //   47: dup
    //   48: iconst_2
    //   49: ldc_w 1082
    //   52: aastore
    //   53: dup
    //   54: iconst_3
    //   55: ldc_w 923
    //   58: aastore
    //   59: ldc_w 692
    //   62: iconst_1
    //   63: anewarray 19	java/lang/String
    //   66: dup
    //   67: iconst_0
    //   68: aload_1
    //   69: aastore
    //   70: aconst_null
    //   71: aconst_null
    //   72: ldc_w 1153
    //   75: ldc_w 1266
    //   78: invokevirtual 1156	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   81: astore 5
    //   83: aload 5
    //   85: invokeinterface 343 1 0
    //   90: istore_2
    //   91: iload_2
    //   92: ifne +18 -> 110
    //   95: aload 5
    //   97: ifnull +10 -> 107
    //   100: aload 5
    //   102: invokeinterface 346 1 0
    //   107: aload 8
    //   109: areturn
    //   110: aload 5
    //   112: iconst_0
    //   113: invokeinterface 488 2 0
    //   118: astore 9
    //   120: aload 5
    //   122: iconst_1
    //   123: invokeinterface 488 2 0
    //   128: astore 7
    //   130: aload 7
    //   132: astore 6
    //   134: aload 7
    //   136: ifnonnull +8 -> 144
    //   139: ldc_w 1268
    //   142: astore 6
    //   144: aload 5
    //   146: iconst_2
    //   147: invokeinterface 474 2 0
    //   152: lstore_3
    //   153: aload_0
    //   154: aload 5
    //   156: iconst_3
    //   157: invokespecial 1216	com/google/android/gms/internal/gd:b	(Landroid/database/Cursor;I)Ljava/lang/Object;
    //   160: astore 7
    //   162: aload 7
    //   164: ifnonnull +47 -> 211
    //   167: aload_0
    //   168: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   171: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   174: ldc_w 1270
    //   177: aload_1
    //   178: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   181: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   184: aload 5
    //   186: invokeinterface 1186 1 0
    //   191: istore_2
    //   192: iload_2
    //   193: ifne -83 -> 110
    //   196: aload 5
    //   198: ifnull +10 -> 208
    //   201: aload 5
    //   203: invokeinterface 346 1 0
    //   208: aload 8
    //   210: areturn
    //   211: aload 8
    //   213: new 1067	com/google/android/gms/internal/ld
    //   216: dup
    //   217: aload_1
    //   218: aload 6
    //   220: aload 9
    //   222: lload_3
    //   223: aload 7
    //   225: invokespecial 1221	com/google/android/gms/internal/ld:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   228: invokeinterface 542 2 0
    //   233: pop
    //   234: goto -50 -> 184
    //   237: astore 6
    //   239: aload_0
    //   240: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   243: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   246: ldc_w 1272
    //   249: aload_1
    //   250: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   253: aload 6
    //   255: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   258: aload 5
    //   260: ifnull +10 -> 270
    //   263: aload 5
    //   265: invokeinterface 346 1 0
    //   270: aconst_null
    //   271: areturn
    //   272: astore_1
    //   273: aload 6
    //   275: astore 5
    //   277: aload 5
    //   279: ifnull +10 -> 289
    //   282: aload 5
    //   284: invokeinterface 346 1 0
    //   289: aload_1
    //   290: athrow
    //   291: astore_1
    //   292: goto -15 -> 277
    //   295: astore_1
    //   296: goto -19 -> 277
    //   299: astore 6
    //   301: aconst_null
    //   302: astore 5
    //   304: goto -65 -> 239
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	307	0	this	gd
    //   0	307	1	paramString	String
    //   90	103	2	bool	boolean
    //   152	71	3	l	long
    //   81	222	5	localObject1	Object
    //   1	218	6	localObject2	Object
    //   237	37	6	localSQLiteException1	SQLiteException
    //   299	1	6	localSQLiteException2	SQLiteException
    //   128	96	7	localObject3	Object
    //   23	189	8	localArrayList	ArrayList
    //   118	103	9	str	String
    // Exception table:
    //   from	to	target	type
    //   83	91	237	android/database/sqlite/SQLiteException
    //   110	130	237	android/database/sqlite/SQLiteException
    //   144	162	237	android/database/sqlite/SQLiteException
    //   167	184	237	android/database/sqlite/SQLiteException
    //   184	192	237	android/database/sqlite/SQLiteException
    //   211	234	237	android/database/sqlite/SQLiteException
    //   25	83	272	finally
    //   83	91	291	finally
    //   110	130	291	finally
    //   144	162	291	finally
    //   167	184	291	finally
    //   184	192	291	finally
    //   211	234	291	finally
    //   239	258	295	finally
    //   25	83	299	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  public final fw cb(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   9: aload_0
    //   10: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   13: aload_0
    //   14: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   17: ldc_w 690
    //   20: bipush 24
    //   22: anewarray 19	java/lang/String
    //   25: dup
    //   26: iconst_0
    //   27: ldc_w 720
    //   30: aastore
    //   31: dup
    //   32: iconst_1
    //   33: ldc_w 725
    //   36: aastore
    //   37: dup
    //   38: iconst_2
    //   39: ldc_w 730
    //   42: aastore
    //   43: dup
    //   44: iconst_3
    //   45: ldc_w 735
    //   48: aastore
    //   49: dup
    //   50: iconst_4
    //   51: ldc 65
    //   53: aastore
    //   54: dup
    //   55: iconst_5
    //   56: ldc_w 744
    //   59: aastore
    //   60: dup
    //   61: bipush 6
    //   63: ldc 45
    //   65: aastore
    //   66: dup
    //   67: bipush 7
    //   69: ldc 49
    //   71: aastore
    //   72: dup
    //   73: bipush 8
    //   75: ldc 53
    //   77: aastore
    //   78: dup
    //   79: bipush 9
    //   81: ldc 57
    //   83: aastore
    //   84: dup
    //   85: bipush 10
    //   87: ldc 61
    //   89: aastore
    //   90: dup
    //   91: bipush 11
    //   93: ldc 69
    //   95: aastore
    //   96: dup
    //   97: bipush 12
    //   99: ldc 73
    //   101: aastore
    //   102: dup
    //   103: bipush 13
    //   105: ldc 77
    //   107: aastore
    //   108: dup
    //   109: bipush 14
    //   111: ldc 81
    //   113: aastore
    //   114: dup
    //   115: bipush 15
    //   117: ldc 89
    //   119: aastore
    //   120: dup
    //   121: bipush 16
    //   123: ldc 93
    //   125: aastore
    //   126: dup
    //   127: bipush 17
    //   129: ldc 97
    //   131: aastore
    //   132: dup
    //   133: bipush 18
    //   135: ldc 101
    //   137: aastore
    //   138: dup
    //   139: bipush 19
    //   141: ldc 105
    //   143: aastore
    //   144: dup
    //   145: bipush 20
    //   147: ldc 109
    //   149: aastore
    //   150: dup
    //   151: bipush 21
    //   153: ldc 113
    //   155: aastore
    //   156: dup
    //   157: bipush 22
    //   159: ldc 117
    //   161: aastore
    //   162: dup
    //   163: bipush 23
    //   165: ldc 121
    //   167: aastore
    //   168: ldc_w 692
    //   171: iconst_1
    //   172: anewarray 19	java/lang/String
    //   175: dup
    //   176: iconst_0
    //   177: aload_1
    //   178: aastore
    //   179: aconst_null
    //   180: aconst_null
    //   181: aconst_null
    //   182: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   185: astore 7
    //   187: aload 7
    //   189: astore 6
    //   191: aload 7
    //   193: invokeinterface 343 1 0
    //   198: istore_3
    //   199: iload_3
    //   200: ifne +19 -> 219
    //   203: aload 7
    //   205: ifnull +10 -> 215
    //   208: aload 7
    //   210: invokeinterface 346 1 0
    //   215: aconst_null
    //   216: astore_1
    //   217: aload_1
    //   218: areturn
    //   219: aload 7
    //   221: astore 6
    //   223: new 715	com/google/android/gms/internal/fw
    //   226: dup
    //   227: aload_0
    //   228: getfield 1276	com/google/android/gms/internal/gd:zzjev	Lcom/google/android/gms/internal/hz;
    //   231: aload_1
    //   232: invokespecial 1279	com/google/android/gms/internal/fw:<init>	(Lcom/google/android/gms/internal/hz;Ljava/lang/String;)V
    //   235: astore 8
    //   237: aload 7
    //   239: astore 6
    //   241: aload 8
    //   243: aload 7
    //   245: iconst_0
    //   246: invokeinterface 488 2 0
    //   251: invokevirtual 1282	com/google/android/gms/internal/fw:bP	(Ljava/lang/String;)V
    //   254: aload 7
    //   256: astore 6
    //   258: aload 8
    //   260: aload 7
    //   262: iconst_1
    //   263: invokeinterface 488 2 0
    //   268: invokevirtual 1285	com/google/android/gms/internal/fw:bQ	(Ljava/lang/String;)V
    //   271: aload 7
    //   273: astore 6
    //   275: aload 8
    //   277: aload 7
    //   279: iconst_2
    //   280: invokeinterface 488 2 0
    //   285: invokevirtual 1288	com/google/android/gms/internal/fw:bR	(Ljava/lang/String;)V
    //   288: aload 7
    //   290: astore 6
    //   292: aload 8
    //   294: aload 7
    //   296: iconst_3
    //   297: invokeinterface 474 2 0
    //   302: invokevirtual 1292	com/google/android/gms/internal/fw:w	(J)V
    //   305: aload 7
    //   307: astore 6
    //   309: aload 8
    //   311: aload 7
    //   313: iconst_4
    //   314: invokeinterface 474 2 0
    //   319: invokevirtual 1295	com/google/android/gms/internal/fw:r	(J)V
    //   322: aload 7
    //   324: astore 6
    //   326: aload 8
    //   328: aload 7
    //   330: iconst_5
    //   331: invokeinterface 474 2 0
    //   336: invokevirtual 1298	com/google/android/gms/internal/fw:s	(J)V
    //   339: aload 7
    //   341: astore 6
    //   343: aload 8
    //   345: aload 7
    //   347: bipush 6
    //   349: invokeinterface 488 2 0
    //   354: invokevirtual 1301	com/google/android/gms/internal/fw:bT	(Ljava/lang/String;)V
    //   357: aload 7
    //   359: astore 6
    //   361: aload 8
    //   363: aload 7
    //   365: bipush 7
    //   367: invokeinterface 488 2 0
    //   372: invokevirtual 1304	com/google/android/gms/internal/fw:bU	(Ljava/lang/String;)V
    //   375: aload 7
    //   377: astore 6
    //   379: aload 8
    //   381: aload 7
    //   383: bipush 8
    //   385: invokeinterface 474 2 0
    //   390: invokevirtual 1307	com/google/android/gms/internal/fw:u	(J)V
    //   393: aload 7
    //   395: astore 6
    //   397: aload 8
    //   399: aload 7
    //   401: bipush 9
    //   403: invokeinterface 474 2 0
    //   408: invokevirtual 1309	com/google/android/gms/internal/fw:v	(J)V
    //   411: aload 7
    //   413: astore 6
    //   415: aload 7
    //   417: bipush 10
    //   419: invokeinterface 1313 2 0
    //   424: ifne +905 -> 1329
    //   427: aload 7
    //   429: astore 6
    //   431: aload 7
    //   433: bipush 10
    //   435: invokeinterface 1244 2 0
    //   440: ifeq +753 -> 1193
    //   443: goto +886 -> 1329
    //   446: aload 7
    //   448: astore 6
    //   450: aload 8
    //   452: iload_3
    //   453: invokevirtual 1316	com/google/android/gms/internal/fw:setMeasurementEnabled	(Z)V
    //   456: aload 7
    //   458: astore 6
    //   460: aload 7
    //   462: bipush 11
    //   464: invokeinterface 474 2 0
    //   469: lstore 4
    //   471: aload 7
    //   473: astore 6
    //   475: aload 8
    //   477: getfield 774	com/google/android/gms/internal/fw:zzjev	Lcom/google/android/gms/internal/hz;
    //   480: invokevirtual 780	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   483: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   486: aload 7
    //   488: astore 6
    //   490: aload 8
    //   492: getfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   495: istore_3
    //   496: aload 7
    //   498: astore 6
    //   500: aload 8
    //   502: getfield 783	com/google/android/gms/internal/fw:aQN	J
    //   505: lload 4
    //   507: lcmp
    //   508: ifeq +690 -> 1198
    //   511: iconst_1
    //   512: istore_2
    //   513: aload 7
    //   515: astore 6
    //   517: aload 8
    //   519: iload_2
    //   520: iload_3
    //   521: ior
    //   522: putfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   525: aload 7
    //   527: astore 6
    //   529: aload 8
    //   531: lload 4
    //   533: putfield 783	com/google/android/gms/internal/fw:aQN	J
    //   536: aload 7
    //   538: astore 6
    //   540: aload 7
    //   542: bipush 12
    //   544: invokeinterface 474 2 0
    //   549: lstore 4
    //   551: aload 7
    //   553: astore 6
    //   555: aload 8
    //   557: getfield 774	com/google/android/gms/internal/fw:zzjev	Lcom/google/android/gms/internal/hz;
    //   560: invokevirtual 780	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   563: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   566: aload 7
    //   568: astore 6
    //   570: aload 8
    //   572: getfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   575: istore_3
    //   576: aload 7
    //   578: astore 6
    //   580: aload 8
    //   582: getfield 786	com/google/android/gms/internal/fw:aQO	J
    //   585: lload 4
    //   587: lcmp
    //   588: ifeq +615 -> 1203
    //   591: iconst_1
    //   592: istore_2
    //   593: aload 7
    //   595: astore 6
    //   597: aload 8
    //   599: iload_2
    //   600: iload_3
    //   601: ior
    //   602: putfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   605: aload 7
    //   607: astore 6
    //   609: aload 8
    //   611: lload 4
    //   613: putfield 786	com/google/android/gms/internal/fw:aQO	J
    //   616: aload 7
    //   618: astore 6
    //   620: aload 7
    //   622: bipush 13
    //   624: invokeinterface 474 2 0
    //   629: lstore 4
    //   631: aload 7
    //   633: astore 6
    //   635: aload 8
    //   637: getfield 774	com/google/android/gms/internal/fw:zzjev	Lcom/google/android/gms/internal/hz;
    //   640: invokevirtual 780	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   643: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   646: aload 7
    //   648: astore 6
    //   650: aload 8
    //   652: getfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   655: istore_3
    //   656: aload 7
    //   658: astore 6
    //   660: aload 8
    //   662: getfield 789	com/google/android/gms/internal/fw:aQP	J
    //   665: lload 4
    //   667: lcmp
    //   668: ifeq +540 -> 1208
    //   671: iconst_1
    //   672: istore_2
    //   673: aload 7
    //   675: astore 6
    //   677: aload 8
    //   679: iload_2
    //   680: iload_3
    //   681: ior
    //   682: putfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   685: aload 7
    //   687: astore 6
    //   689: aload 8
    //   691: lload 4
    //   693: putfield 789	com/google/android/gms/internal/fw:aQP	J
    //   696: aload 7
    //   698: astore 6
    //   700: aload 7
    //   702: bipush 14
    //   704: invokeinterface 474 2 0
    //   709: lstore 4
    //   711: aload 7
    //   713: astore 6
    //   715: aload 8
    //   717: getfield 774	com/google/android/gms/internal/fw:zzjev	Lcom/google/android/gms/internal/hz;
    //   720: invokevirtual 780	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   723: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   726: aload 7
    //   728: astore 6
    //   730: aload 8
    //   732: getfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   735: istore_3
    //   736: aload 7
    //   738: astore 6
    //   740: aload 8
    //   742: getfield 792	com/google/android/gms/internal/fw:aQQ	J
    //   745: lload 4
    //   747: lcmp
    //   748: ifeq +465 -> 1213
    //   751: iconst_1
    //   752: istore_2
    //   753: aload 7
    //   755: astore 6
    //   757: aload 8
    //   759: iload_2
    //   760: iload_3
    //   761: ior
    //   762: putfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   765: aload 7
    //   767: astore 6
    //   769: aload 8
    //   771: lload 4
    //   773: putfield 792	com/google/android/gms/internal/fw:aQQ	J
    //   776: aload 7
    //   778: astore 6
    //   780: aload 8
    //   782: aload 7
    //   784: bipush 15
    //   786: invokeinterface 474 2 0
    //   791: invokevirtual 1322	com/google/android/gms/internal/fw:x	(J)V
    //   794: aload 7
    //   796: astore 6
    //   798: aload 8
    //   800: aload 7
    //   802: bipush 16
    //   804: invokeinterface 474 2 0
    //   809: invokevirtual 1325	com/google/android/gms/internal/fw:y	(J)V
    //   812: aload 7
    //   814: astore 6
    //   816: aload 7
    //   818: bipush 17
    //   820: invokeinterface 1313 2 0
    //   825: ifeq +393 -> 1218
    //   828: ldc2_w 1326
    //   831: lstore 4
    //   833: aload 7
    //   835: astore 6
    //   837: aload 8
    //   839: lload 4
    //   841: invokevirtual 1330	com/google/android/gms/internal/fw:t	(J)V
    //   844: aload 7
    //   846: astore 6
    //   848: aload 8
    //   850: aload 7
    //   852: bipush 18
    //   854: invokeinterface 488 2 0
    //   859: invokevirtual 1333	com/google/android/gms/internal/fw:bS	(Ljava/lang/String;)V
    //   862: aload 7
    //   864: astore 6
    //   866: aload 7
    //   868: bipush 19
    //   870: invokeinterface 474 2 0
    //   875: lstore 4
    //   877: aload 7
    //   879: astore 6
    //   881: aload 8
    //   883: getfield 774	com/google/android/gms/internal/fw:zzjev	Lcom/google/android/gms/internal/hz;
    //   886: invokevirtual 780	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   889: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   892: aload 7
    //   894: astore 6
    //   896: aload 8
    //   898: getfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   901: istore_3
    //   902: aload 7
    //   904: astore 6
    //   906: aload 8
    //   908: getfield 807	com/google/android/gms/internal/fw:aQR	J
    //   911: lload 4
    //   913: lcmp
    //   914: ifeq +425 -> 1339
    //   917: iconst_1
    //   918: istore_2
    //   919: aload 7
    //   921: astore 6
    //   923: aload 8
    //   925: iload_2
    //   926: iload_3
    //   927: ior
    //   928: putfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   931: aload 7
    //   933: astore 6
    //   935: aload 8
    //   937: lload 4
    //   939: putfield 807	com/google/android/gms/internal/fw:aQR	J
    //   942: aload 7
    //   944: astore 6
    //   946: aload 7
    //   948: bipush 20
    //   950: invokeinterface 474 2 0
    //   955: lstore 4
    //   957: aload 7
    //   959: astore 6
    //   961: aload 8
    //   963: getfield 774	com/google/android/gms/internal/fw:zzjev	Lcom/google/android/gms/internal/hz;
    //   966: invokevirtual 780	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   969: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   972: aload 7
    //   974: astore 6
    //   976: aload 8
    //   978: getfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   981: istore_3
    //   982: aload 7
    //   984: astore 6
    //   986: aload 8
    //   988: getfield 810	com/google/android/gms/internal/fw:aQS	J
    //   991: lload 4
    //   993: lcmp
    //   994: ifeq +350 -> 1344
    //   997: iconst_1
    //   998: istore_2
    //   999: aload 7
    //   1001: astore 6
    //   1003: aload 8
    //   1005: iload_2
    //   1006: iload_3
    //   1007: ior
    //   1008: putfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   1011: aload 7
    //   1013: astore 6
    //   1015: aload 8
    //   1017: lload 4
    //   1019: putfield 810	com/google/android/gms/internal/fw:aQS	J
    //   1022: aload 7
    //   1024: astore 6
    //   1026: aload 8
    //   1028: aload 7
    //   1030: bipush 21
    //   1032: invokeinterface 488 2 0
    //   1037: invokevirtual 1336	com/google/android/gms/internal/fw:bV	(Ljava/lang/String;)V
    //   1040: aload 7
    //   1042: astore 6
    //   1044: aload 7
    //   1046: bipush 22
    //   1048: invokeinterface 1313 2 0
    //   1053: ifeq +184 -> 1237
    //   1056: lconst_0
    //   1057: lstore 4
    //   1059: aload 7
    //   1061: astore 6
    //   1063: aload 8
    //   1065: lload 4
    //   1067: invokevirtual 1339	com/google/android/gms/internal/fw:z	(J)V
    //   1070: aload 7
    //   1072: astore 6
    //   1074: aload 7
    //   1076: bipush 23
    //   1078: invokeinterface 1313 2 0
    //   1083: ifne +251 -> 1334
    //   1086: aload 7
    //   1088: astore 6
    //   1090: aload 7
    //   1092: bipush 23
    //   1094: invokeinterface 1244 2 0
    //   1099: ifeq +156 -> 1255
    //   1102: goto +232 -> 1334
    //   1105: aload 7
    //   1107: astore 6
    //   1109: aload 8
    //   1111: iload_3
    //   1112: invokevirtual 1342	com/google/android/gms/internal/fw:av	(Z)V
    //   1115: aload 7
    //   1117: astore 6
    //   1119: aload 8
    //   1121: getfield 774	com/google/android/gms/internal/fw:zzjev	Lcom/google/android/gms/internal/hz;
    //   1124: invokevirtual 780	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   1127: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   1130: aload 7
    //   1132: astore 6
    //   1134: aload 8
    //   1136: iconst_0
    //   1137: putfield 1319	com/google/android/gms/internal/fw:aQU	Z
    //   1140: aload 7
    //   1142: astore 6
    //   1144: aload 7
    //   1146: invokeinterface 1186 1 0
    //   1151: ifeq +24 -> 1175
    //   1154: aload 7
    //   1156: astore 6
    //   1158: aload_0
    //   1159: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   1162: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   1165: ldc_w 1344
    //   1168: aload_1
    //   1169: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   1172: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   1175: aload 8
    //   1177: astore_1
    //   1178: aload 7
    //   1180: ifnull -963 -> 217
    //   1183: aload 7
    //   1185: invokeinterface 346 1 0
    //   1190: aload 8
    //   1192: areturn
    //   1193: iconst_0
    //   1194: istore_3
    //   1195: goto -749 -> 446
    //   1198: iconst_0
    //   1199: istore_2
    //   1200: goto -687 -> 513
    //   1203: iconst_0
    //   1204: istore_2
    //   1205: goto -612 -> 593
    //   1208: iconst_0
    //   1209: istore_2
    //   1210: goto -537 -> 673
    //   1213: iconst_0
    //   1214: istore_2
    //   1215: goto -462 -> 753
    //   1218: aload 7
    //   1220: astore 6
    //   1222: aload 7
    //   1224: bipush 17
    //   1226: invokeinterface 1244 2 0
    //   1231: i2l
    //   1232: lstore 4
    //   1234: goto -401 -> 833
    //   1237: aload 7
    //   1239: astore 6
    //   1241: aload 7
    //   1243: bipush 22
    //   1245: invokeinterface 474 2 0
    //   1250: lstore 4
    //   1252: goto -193 -> 1059
    //   1255: iconst_0
    //   1256: istore_3
    //   1257: goto -152 -> 1105
    //   1260: astore 8
    //   1262: aconst_null
    //   1263: astore 7
    //   1265: aload 7
    //   1267: astore 6
    //   1269: aload_0
    //   1270: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   1273: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   1276: ldc_w 1346
    //   1279: aload_1
    //   1280: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   1283: aload 8
    //   1285: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   1288: aload 7
    //   1290: ifnull +10 -> 1300
    //   1293: aload 7
    //   1295: invokeinterface 346 1 0
    //   1300: aconst_null
    //   1301: areturn
    //   1302: astore_1
    //   1303: aconst_null
    //   1304: astore 6
    //   1306: aload 6
    //   1308: ifnull +10 -> 1318
    //   1311: aload 6
    //   1313: invokeinterface 346 1 0
    //   1318: aload_1
    //   1319: athrow
    //   1320: astore_1
    //   1321: goto -15 -> 1306
    //   1324: astore 8
    //   1326: goto -61 -> 1265
    //   1329: iconst_1
    //   1330: istore_3
    //   1331: goto -885 -> 446
    //   1334: iconst_1
    //   1335: istore_3
    //   1336: goto -231 -> 1105
    //   1339: iconst_0
    //   1340: istore_2
    //   1341: goto -422 -> 919
    //   1344: iconst_0
    //   1345: istore_2
    //   1346: goto -347 -> 999
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1349	0	this	gd
    //   0	1349	1	paramString	String
    //   512	834	2	bool1	boolean
    //   198	1138	3	bool2	boolean
    //   469	782	4	l	long
    //   189	1123	6	localCursor1	Cursor
    //   185	1109	7	localCursor2	Cursor
    //   235	956	8	localfw	fw
    //   1260	24	8	localSQLiteException1	SQLiteException
    //   1324	1	8	localSQLiteException2	SQLiteException
    // Exception table:
    //   from	to	target	type
    //   13	187	1260	android/database/sqlite/SQLiteException
    //   13	187	1302	finally
    //   191	199	1320	finally
    //   223	237	1320	finally
    //   241	254	1320	finally
    //   258	271	1320	finally
    //   275	288	1320	finally
    //   292	305	1320	finally
    //   309	322	1320	finally
    //   326	339	1320	finally
    //   343	357	1320	finally
    //   361	375	1320	finally
    //   379	393	1320	finally
    //   397	411	1320	finally
    //   415	427	1320	finally
    //   431	443	1320	finally
    //   450	456	1320	finally
    //   460	471	1320	finally
    //   475	486	1320	finally
    //   490	496	1320	finally
    //   500	511	1320	finally
    //   517	525	1320	finally
    //   529	536	1320	finally
    //   540	551	1320	finally
    //   555	566	1320	finally
    //   570	576	1320	finally
    //   580	591	1320	finally
    //   597	605	1320	finally
    //   609	616	1320	finally
    //   620	631	1320	finally
    //   635	646	1320	finally
    //   650	656	1320	finally
    //   660	671	1320	finally
    //   677	685	1320	finally
    //   689	696	1320	finally
    //   700	711	1320	finally
    //   715	726	1320	finally
    //   730	736	1320	finally
    //   740	751	1320	finally
    //   757	765	1320	finally
    //   769	776	1320	finally
    //   780	794	1320	finally
    //   798	812	1320	finally
    //   816	828	1320	finally
    //   837	844	1320	finally
    //   848	862	1320	finally
    //   866	877	1320	finally
    //   881	892	1320	finally
    //   896	902	1320	finally
    //   906	917	1320	finally
    //   923	931	1320	finally
    //   935	942	1320	finally
    //   946	957	1320	finally
    //   961	972	1320	finally
    //   976	982	1320	finally
    //   986	997	1320	finally
    //   1003	1011	1320	finally
    //   1015	1022	1320	finally
    //   1026	1040	1320	finally
    //   1044	1056	1320	finally
    //   1063	1070	1320	finally
    //   1074	1086	1320	finally
    //   1090	1102	1320	finally
    //   1109	1115	1320	finally
    //   1119	1130	1320	finally
    //   1134	1140	1320	finally
    //   1144	1154	1320	finally
    //   1158	1175	1320	finally
    //   1222	1234	1320	finally
    //   1241	1252	1320	finally
    //   1269	1288	1320	finally
    //   191	199	1324	android/database/sqlite/SQLiteException
    //   223	237	1324	android/database/sqlite/SQLiteException
    //   241	254	1324	android/database/sqlite/SQLiteException
    //   258	271	1324	android/database/sqlite/SQLiteException
    //   275	288	1324	android/database/sqlite/SQLiteException
    //   292	305	1324	android/database/sqlite/SQLiteException
    //   309	322	1324	android/database/sqlite/SQLiteException
    //   326	339	1324	android/database/sqlite/SQLiteException
    //   343	357	1324	android/database/sqlite/SQLiteException
    //   361	375	1324	android/database/sqlite/SQLiteException
    //   379	393	1324	android/database/sqlite/SQLiteException
    //   397	411	1324	android/database/sqlite/SQLiteException
    //   415	427	1324	android/database/sqlite/SQLiteException
    //   431	443	1324	android/database/sqlite/SQLiteException
    //   450	456	1324	android/database/sqlite/SQLiteException
    //   460	471	1324	android/database/sqlite/SQLiteException
    //   475	486	1324	android/database/sqlite/SQLiteException
    //   490	496	1324	android/database/sqlite/SQLiteException
    //   500	511	1324	android/database/sqlite/SQLiteException
    //   517	525	1324	android/database/sqlite/SQLiteException
    //   529	536	1324	android/database/sqlite/SQLiteException
    //   540	551	1324	android/database/sqlite/SQLiteException
    //   555	566	1324	android/database/sqlite/SQLiteException
    //   570	576	1324	android/database/sqlite/SQLiteException
    //   580	591	1324	android/database/sqlite/SQLiteException
    //   597	605	1324	android/database/sqlite/SQLiteException
    //   609	616	1324	android/database/sqlite/SQLiteException
    //   620	631	1324	android/database/sqlite/SQLiteException
    //   635	646	1324	android/database/sqlite/SQLiteException
    //   650	656	1324	android/database/sqlite/SQLiteException
    //   660	671	1324	android/database/sqlite/SQLiteException
    //   677	685	1324	android/database/sqlite/SQLiteException
    //   689	696	1324	android/database/sqlite/SQLiteException
    //   700	711	1324	android/database/sqlite/SQLiteException
    //   715	726	1324	android/database/sqlite/SQLiteException
    //   730	736	1324	android/database/sqlite/SQLiteException
    //   740	751	1324	android/database/sqlite/SQLiteException
    //   757	765	1324	android/database/sqlite/SQLiteException
    //   769	776	1324	android/database/sqlite/SQLiteException
    //   780	794	1324	android/database/sqlite/SQLiteException
    //   798	812	1324	android/database/sqlite/SQLiteException
    //   816	828	1324	android/database/sqlite/SQLiteException
    //   837	844	1324	android/database/sqlite/SQLiteException
    //   848	862	1324	android/database/sqlite/SQLiteException
    //   866	877	1324	android/database/sqlite/SQLiteException
    //   881	892	1324	android/database/sqlite/SQLiteException
    //   896	902	1324	android/database/sqlite/SQLiteException
    //   906	917	1324	android/database/sqlite/SQLiteException
    //   923	931	1324	android/database/sqlite/SQLiteException
    //   935	942	1324	android/database/sqlite/SQLiteException
    //   946	957	1324	android/database/sqlite/SQLiteException
    //   961	972	1324	android/database/sqlite/SQLiteException
    //   976	982	1324	android/database/sqlite/SQLiteException
    //   986	997	1324	android/database/sqlite/SQLiteException
    //   1003	1011	1324	android/database/sqlite/SQLiteException
    //   1015	1022	1324	android/database/sqlite/SQLiteException
    //   1026	1040	1324	android/database/sqlite/SQLiteException
    //   1044	1056	1324	android/database/sqlite/SQLiteException
    //   1063	1070	1324	android/database/sqlite/SQLiteException
    //   1074	1086	1324	android/database/sqlite/SQLiteException
    //   1090	1102	1324	android/database/sqlite/SQLiteException
    //   1109	1115	1324	android/database/sqlite/SQLiteException
    //   1119	1130	1324	android/database/sqlite/SQLiteException
    //   1134	1140	1324	android/database/sqlite/SQLiteException
    //   1144	1154	1324	android/database/sqlite/SQLiteException
    //   1158	1175	1324	android/database/sqlite/SQLiteException
    //   1222	1234	1324	android/database/sqlite/SQLiteException
    //   1241	1252	1324	android/database/sqlite/SQLiteException
  }
  
  public final long cc(String paramString)
  {
    ae.bf(paramString);
    mN();
    pf();
    try
    {
      int i = getWritableDatabase().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[] { paramString, String.valueOf(Math.max(0, Math.min(1000000, qR().b(paramString, gr.aSt)))) });
      return i;
    }
    catch (SQLiteException localSQLiteException)
    {
      qP().aTa.e("Error deleting over the limit events. appId", hb.ck(paramString), localSQLiteException);
    }
    return 0L;
  }
  
  /* Error */
  public final byte[] cd(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   9: aload_0
    //   10: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   13: aload_0
    //   14: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   17: ldc_w 690
    //   20: iconst_1
    //   21: anewarray 19	java/lang/String
    //   24: dup
    //   25: iconst_0
    //   26: ldc 85
    //   28: aastore
    //   29: ldc_w 692
    //   32: iconst_1
    //   33: anewarray 19	java/lang/String
    //   36: dup
    //   37: iconst_0
    //   38: aload_1
    //   39: aastore
    //   40: aconst_null
    //   41: aconst_null
    //   42: aconst_null
    //   43: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   46: astore 4
    //   48: aload 4
    //   50: astore_3
    //   51: aload 4
    //   53: invokeinterface 343 1 0
    //   58: istore_2
    //   59: iload_2
    //   60: ifne +19 -> 79
    //   63: aload 4
    //   65: ifnull +10 -> 75
    //   68: aload 4
    //   70: invokeinterface 346 1 0
    //   75: aconst_null
    //   76: astore_1
    //   77: aload_1
    //   78: areturn
    //   79: aload 4
    //   81: astore_3
    //   82: aload 4
    //   84: iconst_0
    //   85: invokeinterface 1164 2 0
    //   90: astore 5
    //   92: aload 4
    //   94: astore_3
    //   95: aload 4
    //   97: invokeinterface 1186 1 0
    //   102: ifeq +23 -> 125
    //   105: aload 4
    //   107: astore_3
    //   108: aload_0
    //   109: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   112: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   115: ldc_w 1360
    //   118: aload_1
    //   119: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   122: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   125: aload 5
    //   127: astore_1
    //   128: aload 4
    //   130: ifnull -53 -> 77
    //   133: aload 4
    //   135: invokeinterface 346 1 0
    //   140: aload 5
    //   142: areturn
    //   143: astore 5
    //   145: aconst_null
    //   146: astore 4
    //   148: aload 4
    //   150: astore_3
    //   151: aload_0
    //   152: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   155: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   158: ldc_w 1362
    //   161: aload_1
    //   162: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   165: aload 5
    //   167: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   170: aload 4
    //   172: ifnull +10 -> 182
    //   175: aload 4
    //   177: invokeinterface 346 1 0
    //   182: aconst_null
    //   183: areturn
    //   184: astore_1
    //   185: aconst_null
    //   186: astore_3
    //   187: aload_3
    //   188: ifnull +9 -> 197
    //   191: aload_3
    //   192: invokeinterface 346 1 0
    //   197: aload_1
    //   198: athrow
    //   199: astore_1
    //   200: goto -13 -> 187
    //   203: astore 5
    //   205: goto -57 -> 148
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	208	0	this	gd
    //   0	208	1	paramString	String
    //   58	2	2	bool	boolean
    //   50	142	3	localCursor1	Cursor
    //   46	130	4	localCursor2	Cursor
    //   90	51	5	arrayOfByte	byte[]
    //   143	23	5	localSQLiteException1	SQLiteException
    //   203	1	5	localSQLiteException2	SQLiteException
    // Exception table:
    //   from	to	target	type
    //   13	48	143	android/database/sqlite/SQLiteException
    //   13	48	184	finally
    //   51	59	199	finally
    //   82	92	199	finally
    //   95	105	199	finally
    //   108	125	199	finally
    //   151	170	199	finally
    //   51	59	203	android/database/sqlite/SQLiteException
    //   82	92	203	android/database/sqlite/SQLiteException
    //   95	105	203	android/database/sqlite/SQLiteException
    //   108	125	203	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  final java.util.Map<Integer, lv> ce(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   4: aload_0
    //   5: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   8: aload_1
    //   9: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_0
    //   14: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   17: astore 4
    //   19: aload 4
    //   21: ldc_w 548
    //   24: iconst_2
    //   25: anewarray 19	java/lang/String
    //   28: dup
    //   29: iconst_0
    //   30: ldc_w 412
    //   33: aastore
    //   34: dup
    //   35: iconst_1
    //   36: ldc_w 1366
    //   39: aastore
    //   40: ldc_w 692
    //   43: iconst_1
    //   44: anewarray 19	java/lang/String
    //   47: dup
    //   48: iconst_0
    //   49: aload_1
    //   50: aastore
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   57: astore 5
    //   59: aload 5
    //   61: astore 4
    //   63: aload 5
    //   65: invokeinterface 343 1 0
    //   70: istore_3
    //   71: iload_3
    //   72: ifne +19 -> 91
    //   75: aload 5
    //   77: ifnull +10 -> 87
    //   80: aload 5
    //   82: invokeinterface 346 1 0
    //   87: aconst_null
    //   88: astore_1
    //   89: aload_1
    //   90: areturn
    //   91: aload 5
    //   93: astore 4
    //   95: new 1368	android/support/v4/g/a
    //   98: dup
    //   99: invokespecial 1369	android/support/v4/g/a:<init>	()V
    //   102: astore 6
    //   104: aload 5
    //   106: astore 4
    //   108: aload 5
    //   110: iconst_0
    //   111: invokeinterface 1244 2 0
    //   116: istore_2
    //   117: aload 5
    //   119: astore 4
    //   121: aload 5
    //   123: iconst_1
    //   124: invokeinterface 1164 2 0
    //   129: astore 7
    //   131: aload 5
    //   133: astore 4
    //   135: aload 7
    //   137: aload 7
    //   139: arraylength
    //   140: invokestatic 1173	com/google/android/gms/internal/mu:a	([BI)Lcom/google/android/gms/internal/mu;
    //   143: astore 7
    //   145: aload 5
    //   147: astore 4
    //   149: new 1371	com/google/android/gms/internal/lv
    //   152: dup
    //   153: invokespecial 1372	com/google/android/gms/internal/lv:<init>	()V
    //   156: astore 8
    //   158: aload 5
    //   160: astore 4
    //   162: aload 8
    //   164: aload 7
    //   166: invokevirtual 1177	com/google/android/gms/internal/nd:a	(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    //   169: pop
    //   170: aload 5
    //   172: astore 4
    //   174: aload 6
    //   176: iload_2
    //   177: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   180: aload 8
    //   182: invokeinterface 1377 3 0
    //   187: pop
    //   188: aload 5
    //   190: astore 4
    //   192: aload 5
    //   194: invokeinterface 1186 1 0
    //   199: istore_3
    //   200: iload_3
    //   201: ifne -97 -> 104
    //   204: aload 6
    //   206: astore_1
    //   207: aload 5
    //   209: ifnull -120 -> 89
    //   212: aload 5
    //   214: invokeinterface 346 1 0
    //   219: aload 6
    //   221: areturn
    //   222: astore 7
    //   224: aload 5
    //   226: astore 4
    //   228: aload_0
    //   229: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   232: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   235: ldc_w 1379
    //   238: aload_1
    //   239: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   242: iload_2
    //   243: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   246: aload 7
    //   248: invokevirtual 389	com/google/android/gms/internal/hd:d	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   251: goto -63 -> 188
    //   254: astore 6
    //   256: aload 5
    //   258: astore 4
    //   260: aload_0
    //   261: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   264: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   267: ldc_w 1381
    //   270: aload_1
    //   271: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   274: aload 6
    //   276: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   279: aload 5
    //   281: ifnull +10 -> 291
    //   284: aload 5
    //   286: invokeinterface 346 1 0
    //   291: aconst_null
    //   292: areturn
    //   293: astore_1
    //   294: aconst_null
    //   295: astore 4
    //   297: aload 4
    //   299: ifnull +10 -> 309
    //   302: aload 4
    //   304: invokeinterface 346 1 0
    //   309: aload_1
    //   310: athrow
    //   311: astore_1
    //   312: goto -15 -> 297
    //   315: astore 6
    //   317: aconst_null
    //   318: astore 5
    //   320: goto -64 -> 256
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	323	0	this	gd
    //   0	323	1	paramString	String
    //   116	127	2	i	int
    //   70	131	3	bool	boolean
    //   17	286	4	localObject1	Object
    //   57	262	5	localCursor	Cursor
    //   102	118	6	locala	android.support.v4.g.a
    //   254	21	6	localSQLiteException1	SQLiteException
    //   315	1	6	localSQLiteException2	SQLiteException
    //   129	36	7	localObject2	Object
    //   222	25	7	localIOException	IOException
    //   156	25	8	locallv	lv
    // Exception table:
    //   from	to	target	type
    //   162	170	222	java/io/IOException
    //   63	71	254	android/database/sqlite/SQLiteException
    //   95	104	254	android/database/sqlite/SQLiteException
    //   108	117	254	android/database/sqlite/SQLiteException
    //   121	131	254	android/database/sqlite/SQLiteException
    //   135	145	254	android/database/sqlite/SQLiteException
    //   149	158	254	android/database/sqlite/SQLiteException
    //   162	170	254	android/database/sqlite/SQLiteException
    //   174	188	254	android/database/sqlite/SQLiteException
    //   192	200	254	android/database/sqlite/SQLiteException
    //   228	251	254	android/database/sqlite/SQLiteException
    //   19	59	293	finally
    //   63	71	311	finally
    //   95	104	311	finally
    //   108	117	311	finally
    //   121	131	311	finally
    //   135	145	311	finally
    //   149	158	311	finally
    //   162	170	311	finally
    //   174	188	311	finally
    //   192	200	311	finally
    //   228	251	311	finally
    //   260	279	311	finally
    //   19	59	315	android/database/sqlite/SQLiteException
  }
  
  public final void endTransaction()
  {
    pf();
    getWritableDatabase().endTransaction();
  }
  
  final SQLiteDatabase getWritableDatabase()
  {
    mN();
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.aRr.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      qP().aTd.j("Error opening database", localSQLiteException);
      throw localSQLiteException;
    }
  }
  
  protected final boolean ri()
  {
    return false;
  }
  
  /* Error */
  public final String ro()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore_1
    //   8: aload_1
    //   9: ldc_w 1389
    //   12: aconst_null
    //   13: invokevirtual 569	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   16: astore_2
    //   17: aload_2
    //   18: astore_1
    //   19: aload_2
    //   20: invokeinterface 343 1 0
    //   25: ifeq +29 -> 54
    //   28: aload_2
    //   29: astore_1
    //   30: aload_2
    //   31: iconst_0
    //   32: invokeinterface 488 2 0
    //   37: astore_3
    //   38: aload_3
    //   39: astore_1
    //   40: aload_2
    //   41: ifnull +11 -> 52
    //   44: aload_2
    //   45: invokeinterface 346 1 0
    //   50: aload_3
    //   51: astore_1
    //   52: aload_1
    //   53: areturn
    //   54: aload 4
    //   56: astore_1
    //   57: aload_2
    //   58: ifnull -6 -> 52
    //   61: aload_2
    //   62: invokeinterface 346 1 0
    //   67: aconst_null
    //   68: areturn
    //   69: astore_3
    //   70: aconst_null
    //   71: astore_2
    //   72: aload_2
    //   73: astore_1
    //   74: aload_0
    //   75: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   78: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   81: ldc_w 1391
    //   84: aload_3
    //   85: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   88: aload 4
    //   90: astore_1
    //   91: aload_2
    //   92: ifnull -40 -> 52
    //   95: aload_2
    //   96: invokeinterface 346 1 0
    //   101: aconst_null
    //   102: areturn
    //   103: astore_2
    //   104: aconst_null
    //   105: astore_1
    //   106: aload_1
    //   107: ifnull +9 -> 116
    //   110: aload_1
    //   111: invokeinterface 346 1 0
    //   116: aload_2
    //   117: athrow
    //   118: astore_2
    //   119: goto -13 -> 106
    //   122: astore_3
    //   123: goto -51 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	gd
    //   7	104	1	localObject1	Object
    //   16	80	2	localCursor	Cursor
    //   103	14	2	localObject2	Object
    //   118	1	2	localObject3	Object
    //   37	14	3	str	String
    //   69	16	3	localSQLiteException1	SQLiteException
    //   122	1	3	localSQLiteException2	SQLiteException
    //   1	88	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   8	17	69	android/database/sqlite/SQLiteException
    //   8	17	103	finally
    //   19	28	118	finally
    //   30	38	118	finally
    //   74	88	118	finally
    //   19	28	122	android/database/sqlite/SQLiteException
    //   30	38	122	android/database/sqlite/SQLiteException
  }
  
  final void rp()
  {
    mN();
    pf();
    if (!rr()) {}
    int i;
    do
    {
      do
      {
        long l1;
        long l2;
        do
        {
          return;
          l1 = qQ().aTK.get();
          l2 = qH().elapsedRealtime();
        } while (Math.abs(l2 - l1) <= ((Long)gr.aSC.aSN).longValue());
        qQ().aTK.set(l2);
        mN();
        pf();
      } while (!rr());
      i = getWritableDatabase().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[] { String.valueOf(qH().currentTimeMillis()), String.valueOf(gc.rk()) });
    } while (i <= 0);
    qP().aTi.j("Deleted stale rows. rowsDeleted", Integer.valueOf(i));
  }
  
  public final long rq()
  {
    l2 = -1L;
    localObject3 = null;
    localObject1 = null;
    label63:
    do
    {
      try
      {
        localCursor = getWritableDatabase().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
        localObject1 = localCursor;
        localObject3 = localCursor;
        boolean bool = localCursor.moveToFirst();
        if (bool) {
          break label63;
        }
        l1 = l2;
        if (localCursor != null)
        {
          localCursor.close();
          l1 = l2;
        }
      }
      catch (SQLiteException localSQLiteException)
      {
        Cursor localCursor;
        localObject3 = localObject1;
        qP().aTa.j("Error querying raw events", localSQLiteException);
        long l1 = l2;
        return -1L;
      }
      finally
      {
        if (localObject3 == null) {
          break;
        }
        ((Cursor)localObject3).close();
      }
      return l1;
      localObject1 = localCursor;
      localObject3 = localCursor;
      l1 = localCursor.getLong(0);
      l2 = l1;
      l1 = l2;
    } while (localCursor == null);
    localCursor.close();
    return l2;
  }
  
  public final void setTransactionSuccessful()
  {
    pf();
    getWritableDatabase().setTransactionSuccessful();
  }
  
  /* Error */
  public final gl t(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_2
    //   6: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   9: pop
    //   10: aload_0
    //   11: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   14: aload_0
    //   15: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   18: aload_0
    //   19: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   22: ldc_w 863
    //   25: bipush 7
    //   27: anewarray 19	java/lang/String
    //   30: dup
    //   31: iconst_0
    //   32: ldc_w 831
    //   35: aastore
    //   36: dup
    //   37: iconst_1
    //   38: ldc_w 836
    //   41: aastore
    //   42: dup
    //   43: iconst_2
    //   44: ldc_w 841
    //   47: aastore
    //   48: dup
    //   49: iconst_3
    //   50: ldc 21
    //   52: aastore
    //   53: dup
    //   54: iconst_4
    //   55: ldc 25
    //   57: aastore
    //   58: dup
    //   59: iconst_5
    //   60: ldc 29
    //   62: aastore
    //   63: dup
    //   64: bipush 6
    //   66: ldc 33
    //   68: aastore
    //   69: ldc_w 1437
    //   72: iconst_2
    //   73: anewarray 19	java/lang/String
    //   76: dup
    //   77: iconst_0
    //   78: aload_1
    //   79: aastore
    //   80: dup
    //   81: iconst_1
    //   82: aload_2
    //   83: aastore
    //   84: aconst_null
    //   85: aconst_null
    //   86: aconst_null
    //   87: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   90: astore 14
    //   92: aload 14
    //   94: invokeinterface 343 1 0
    //   99: istore_3
    //   100: iload_3
    //   101: ifne +19 -> 120
    //   104: aload 14
    //   106: ifnull +10 -> 116
    //   109: aload 14
    //   111: invokeinterface 346 1 0
    //   116: aconst_null
    //   117: astore_1
    //   118: aload_1
    //   119: areturn
    //   120: aload 14
    //   122: iconst_0
    //   123: invokeinterface 474 2 0
    //   128: lstore 6
    //   130: aload 14
    //   132: iconst_1
    //   133: invokeinterface 474 2 0
    //   138: lstore 8
    //   140: aload 14
    //   142: iconst_2
    //   143: invokeinterface 474 2 0
    //   148: lstore 10
    //   150: aload 14
    //   152: iconst_3
    //   153: invokeinterface 1313 2 0
    //   158: ifeq +141 -> 299
    //   161: lconst_0
    //   162: lstore 4
    //   164: aload 14
    //   166: iconst_4
    //   167: invokeinterface 1313 2 0
    //   172: ifeq +140 -> 312
    //   175: aconst_null
    //   176: astore 15
    //   178: aload 14
    //   180: iconst_5
    //   181: invokeinterface 1313 2 0
    //   186: ifeq +142 -> 328
    //   189: aconst_null
    //   190: astore 16
    //   192: aconst_null
    //   193: astore 17
    //   195: aload 14
    //   197: bipush 6
    //   199: invokeinterface 1313 2 0
    //   204: ifne +25 -> 229
    //   207: aload 14
    //   209: bipush 6
    //   211: invokeinterface 474 2 0
    //   216: lconst_1
    //   217: lcmp
    //   218: ifne +130 -> 348
    //   221: iconst_1
    //   222: istore_3
    //   223: iload_3
    //   224: invokestatic 767	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   227: astore 17
    //   229: new 826	com/google/android/gms/internal/gl
    //   232: dup
    //   233: aload_1
    //   234: aload_2
    //   235: lload 6
    //   237: lload 8
    //   239: lload 10
    //   241: lload 4
    //   243: aload 15
    //   245: aload 16
    //   247: aload 17
    //   249: invokespecial 1440	com/google/android/gms/internal/gl:<init>	(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    //   252: astore 15
    //   254: aload 14
    //   256: invokeinterface 1186 1 0
    //   261: ifeq +20 -> 281
    //   264: aload_0
    //   265: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   268: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   271: ldc_w 1442
    //   274: aload_1
    //   275: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   278: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   281: aload 15
    //   283: astore_1
    //   284: aload 14
    //   286: ifnull -168 -> 118
    //   289: aload 14
    //   291: invokeinterface 346 1 0
    //   296: aload 15
    //   298: areturn
    //   299: aload 14
    //   301: iconst_3
    //   302: invokeinterface 474 2 0
    //   307: lstore 4
    //   309: goto -145 -> 164
    //   312: aload 14
    //   314: iconst_4
    //   315: invokeinterface 474 2 0
    //   320: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   323: astore 15
    //   325: goto -147 -> 178
    //   328: aload 14
    //   330: iconst_5
    //   331: invokeinterface 474 2 0
    //   336: lstore 12
    //   338: lload 12
    //   340: invokestatic 477	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   343: astore 16
    //   345: goto -153 -> 192
    //   348: iconst_0
    //   349: istore_3
    //   350: goto -127 -> 223
    //   353: astore 15
    //   355: aconst_null
    //   356: astore 14
    //   358: aload_0
    //   359: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   362: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   365: ldc_w 1444
    //   368: aload_1
    //   369: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   372: aload_0
    //   373: invokevirtual 1042	com/google/android/gms/internal/ix:qK	()Lcom/google/android/gms/internal/gz;
    //   376: aload_2
    //   377: invokevirtual 1048	com/google/android/gms/internal/gz:ch	(Ljava/lang/String;)Ljava/lang/String;
    //   380: aload 15
    //   382: invokevirtual 389	com/google/android/gms/internal/hd:d	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   385: aload 14
    //   387: ifnull +10 -> 397
    //   390: aload 14
    //   392: invokeinterface 346 1 0
    //   397: aconst_null
    //   398: areturn
    //   399: astore_1
    //   400: aconst_null
    //   401: astore 14
    //   403: aload 14
    //   405: ifnull +10 -> 415
    //   408: aload 14
    //   410: invokeinterface 346 1 0
    //   415: aload_1
    //   416: athrow
    //   417: astore_1
    //   418: goto -15 -> 403
    //   421: astore_1
    //   422: goto -19 -> 403
    //   425: astore 15
    //   427: goto -69 -> 358
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	430	0	this	gd
    //   0	430	1	paramString1	String
    //   0	430	2	paramString2	String
    //   99	251	3	bool	boolean
    //   162	146	4	l1	long
    //   128	108	6	l2	long
    //   138	100	8	l3	long
    //   148	92	10	l4	long
    //   336	3	12	l5	long
    //   90	319	14	localCursor	Cursor
    //   176	148	15	localObject	Object
    //   353	28	15	localSQLiteException1	SQLiteException
    //   425	1	15	localSQLiteException2	SQLiteException
    //   190	154	16	localLong	Long
    //   193	55	17	localBoolean	Boolean
    // Exception table:
    //   from	to	target	type
    //   18	92	353	android/database/sqlite/SQLiteException
    //   18	92	399	finally
    //   92	100	417	finally
    //   120	161	417	finally
    //   164	175	417	finally
    //   178	189	417	finally
    //   195	221	417	finally
    //   223	229	417	finally
    //   229	281	417	finally
    //   299	309	417	finally
    //   312	325	417	finally
    //   328	338	417	finally
    //   358	385	421	finally
    //   92	100	425	android/database/sqlite/SQLiteException
    //   120	161	425	android/database/sqlite/SQLiteException
    //   164	175	425	android/database/sqlite/SQLiteException
    //   178	189	425	android/database/sqlite/SQLiteException
    //   195	221	425	android/database/sqlite/SQLiteException
    //   223	229	425	android/database/sqlite/SQLiteException
    //   229	281	425	android/database/sqlite/SQLiteException
    //   299	309	425	android/database/sqlite/SQLiteException
    //   312	325	425	android/database/sqlite/SQLiteException
    //   328	338	425	android/database/sqlite/SQLiteException
  }
  
  public final void t(List<Long> paramList)
  {
    ae.E(paramList);
    mN();
    pf();
    StringBuilder localStringBuilder = new StringBuilder("rowid in (");
    int i = 0;
    while (i < paramList.size())
    {
      if (i != 0) {
        localStringBuilder.append(",");
      }
      localStringBuilder.append(((Long)paramList.get(i)).longValue());
      i += 1;
    }
    localStringBuilder.append(")");
    i = getWritableDatabase().delete("raw_events", localStringBuilder.toString(), null);
    if (i != paramList.size()) {
      qP().aTa.e("Deleted fewer rows from raw events table than expected", Integer.valueOf(i), Integer.valueOf(paramList.size()));
    }
  }
  
  public final void u(String paramString1, String paramString2)
  {
    ae.bf(paramString1);
    ae.bf(paramString2);
    mN();
    pf();
    try
    {
      int i = getWritableDatabase().delete("user_attributes", "app_id=? and name=?", new String[] { paramString1, paramString2 });
      qP().aTi.j("Deleted user attribute rows", Integer.valueOf(i));
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      qP().aTa.d("Error deleting user attribute. appId", hb.ck(paramString1), qK().cj(paramString2), localSQLiteException);
    }
  }
  
  /* Error */
  public final ld v(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_1
    //   4: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   7: pop
    //   8: aload_2
    //   9: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_0
    //   14: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   17: aload_0
    //   18: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   21: aload_0
    //   22: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   25: ldc_w 1088
    //   28: iconst_3
    //   29: anewarray 19	java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: ldc_w 1082
    //   37: aastore
    //   38: dup
    //   39: iconst_1
    //   40: ldc_w 923
    //   43: aastore
    //   44: dup
    //   45: iconst_2
    //   46: ldc 39
    //   48: aastore
    //   49: ldc_w 1437
    //   52: iconst_2
    //   53: anewarray 19	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: aload_1
    //   59: aastore
    //   60: dup
    //   61: iconst_1
    //   62: aload_2
    //   63: aastore
    //   64: aconst_null
    //   65: aconst_null
    //   66: aconst_null
    //   67: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   70: astore 6
    //   72: aload 6
    //   74: invokeinterface 343 1 0
    //   79: istore_3
    //   80: iload_3
    //   81: ifne +19 -> 100
    //   84: aload 6
    //   86: ifnull +10 -> 96
    //   89: aload 6
    //   91: invokeinterface 346 1 0
    //   96: aconst_null
    //   97: astore_1
    //   98: aload_1
    //   99: areturn
    //   100: aload 6
    //   102: iconst_0
    //   103: invokeinterface 474 2 0
    //   108: lstore 4
    //   110: aload_0
    //   111: aload 6
    //   113: iconst_1
    //   114: invokespecial 1216	com/google/android/gms/internal/gd:b	(Landroid/database/Cursor;I)Ljava/lang/Object;
    //   117: astore 7
    //   119: new 1067	com/google/android/gms/internal/ld
    //   122: dup
    //   123: aload_1
    //   124: aload 6
    //   126: iconst_2
    //   127: invokeinterface 488 2 0
    //   132: aload_2
    //   133: lload 4
    //   135: aload 7
    //   137: invokespecial 1221	com/google/android/gms/internal/ld:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   140: astore 7
    //   142: aload 6
    //   144: invokeinterface 1186 1 0
    //   149: ifeq +20 -> 169
    //   152: aload_0
    //   153: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   156: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   159: ldc_w 1462
    //   162: aload_1
    //   163: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   166: invokevirtual 269	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   169: aload 7
    //   171: astore_1
    //   172: aload 6
    //   174: ifnull -76 -> 98
    //   177: aload 6
    //   179: invokeinterface 346 1 0
    //   184: aload 7
    //   186: areturn
    //   187: astore 7
    //   189: aconst_null
    //   190: astore 6
    //   192: aload_0
    //   193: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   196: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   199: ldc_w 1464
    //   202: aload_1
    //   203: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   206: aload_0
    //   207: invokevirtual 1042	com/google/android/gms/internal/ix:qK	()Lcom/google/android/gms/internal/gz;
    //   210: aload_2
    //   211: invokevirtual 1460	com/google/android/gms/internal/gz:cj	(Ljava/lang/String;)Ljava/lang/String;
    //   214: aload 7
    //   216: invokevirtual 389	com/google/android/gms/internal/hd:d	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   219: aload 6
    //   221: ifnull +10 -> 231
    //   224: aload 6
    //   226: invokeinterface 346 1 0
    //   231: aconst_null
    //   232: areturn
    //   233: astore_1
    //   234: aload 7
    //   236: astore_2
    //   237: aload_2
    //   238: ifnull +9 -> 247
    //   241: aload_2
    //   242: invokeinterface 346 1 0
    //   247: aload_1
    //   248: athrow
    //   249: astore_1
    //   250: aload 6
    //   252: astore_2
    //   253: goto -16 -> 237
    //   256: astore_1
    //   257: aload 6
    //   259: astore_2
    //   260: goto -23 -> 237
    //   263: astore 7
    //   265: goto -73 -> 192
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	268	0	this	gd
    //   0	268	1	paramString1	String
    //   0	268	2	paramString2	String
    //   79	2	3	bool	boolean
    //   108	26	4	l	long
    //   70	188	6	localCursor	Cursor
    //   1	184	7	localObject	Object
    //   187	48	7	localSQLiteException1	SQLiteException
    //   263	1	7	localSQLiteException2	SQLiteException
    // Exception table:
    //   from	to	target	type
    //   21	72	187	android/database/sqlite/SQLiteException
    //   21	72	233	finally
    //   72	80	249	finally
    //   100	169	249	finally
    //   192	219	256	finally
    //   72	80	263	android/database/sqlite/SQLiteException
    //   100	169	263	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  public final ga w(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_2
    //   6: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   9: pop
    //   10: aload_0
    //   11: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   14: aload_0
    //   15: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   18: aload_0
    //   19: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   22: ldc_w 981
    //   25: bipush 11
    //   27: anewarray 19	java/lang/String
    //   30: dup
    //   31: iconst_0
    //   32: ldc 39
    //   34: aastore
    //   35: dup
    //   36: iconst_1
    //   37: ldc_w 923
    //   40: aastore
    //   41: dup
    //   42: iconst_2
    //   43: ldc_w 931
    //   46: aastore
    //   47: dup
    //   48: iconst_3
    //   49: ldc_w 937
    //   52: aastore
    //   53: dup
    //   54: iconst_4
    //   55: ldc_w 942
    //   58: aastore
    //   59: dup
    //   60: iconst_5
    //   61: ldc_w 947
    //   64: aastore
    //   65: dup
    //   66: bipush 6
    //   68: ldc_w 956
    //   71: aastore
    //   72: dup
    //   73: bipush 7
    //   75: ldc_w 961
    //   78: aastore
    //   79: dup
    //   80: bipush 8
    //   82: ldc_w 966
    //   85: aastore
    //   86: dup
    //   87: bipush 9
    //   89: ldc_w 971
    //   92: aastore
    //   93: dup
    //   94: bipush 10
    //   96: ldc_w 976
    //   99: aastore
    //   100: ldc_w 1437
    //   103: iconst_2
    //   104: anewarray 19	java/lang/String
    //   107: dup
    //   108: iconst_0
    //   109: aload_1
    //   110: aastore
    //   111: dup
    //   112: iconst_1
    //   113: aload_2
    //   114: aastore
    //   115: aconst_null
    //   116: aconst_null
    //   117: aconst_null
    //   118: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   121: astore 12
    //   123: aload 12
    //   125: invokeinterface 343 1 0
    //   130: istore_3
    //   131: iload_3
    //   132: ifne +19 -> 151
    //   135: aload 12
    //   137: ifnull +10 -> 147
    //   140: aload 12
    //   142: invokeinterface 346 1 0
    //   147: aconst_null
    //   148: astore_1
    //   149: aload_1
    //   150: areturn
    //   151: aload 12
    //   153: iconst_0
    //   154: invokeinterface 488 2 0
    //   159: astore 13
    //   161: aload_0
    //   162: aload 12
    //   164: iconst_1
    //   165: invokespecial 1216	com/google/android/gms/internal/gd:b	(Landroid/database/Cursor;I)Ljava/lang/Object;
    //   168: astore 14
    //   170: aload 12
    //   172: iconst_2
    //   173: invokeinterface 1244 2 0
    //   178: ifeq +223 -> 401
    //   181: iconst_1
    //   182: istore_3
    //   183: aload 12
    //   185: iconst_3
    //   186: invokeinterface 488 2 0
    //   191: astore 15
    //   193: aload 12
    //   195: iconst_4
    //   196: invokeinterface 474 2 0
    //   201: lstore 4
    //   203: aload_0
    //   204: invokevirtual 652	com/google/android/gms/internal/ix:qL	()Lcom/google/android/gms/internal/le;
    //   207: aload 12
    //   209: iconst_5
    //   210: invokeinterface 1164 2 0
    //   215: getstatic 1250	com/google/android/gms/internal/gp:CREATOR	Landroid/os/Parcelable$Creator;
    //   218: invokevirtual 1253	com/google/android/gms/internal/le:a	([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   221: checkcast 1246	com/google/android/gms/internal/gp
    //   224: astore 16
    //   226: aload 12
    //   228: bipush 6
    //   230: invokeinterface 474 2 0
    //   235: lstore 6
    //   237: aload_0
    //   238: invokevirtual 652	com/google/android/gms/internal/ix:qL	()Lcom/google/android/gms/internal/le;
    //   241: aload 12
    //   243: bipush 7
    //   245: invokeinterface 1164 2 0
    //   250: getstatic 1250	com/google/android/gms/internal/gp:CREATOR	Landroid/os/Parcelable$Creator;
    //   253: invokevirtual 1253	com/google/android/gms/internal/le:a	([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   256: checkcast 1246	com/google/android/gms/internal/gp
    //   259: astore 17
    //   261: aload 12
    //   263: bipush 8
    //   265: invokeinterface 474 2 0
    //   270: lstore 8
    //   272: aload 12
    //   274: bipush 9
    //   276: invokeinterface 474 2 0
    //   281: lstore 10
    //   283: aload_0
    //   284: invokevirtual 652	com/google/android/gms/internal/ix:qL	()Lcom/google/android/gms/internal/le;
    //   287: aload 12
    //   289: bipush 10
    //   291: invokeinterface 1164 2 0
    //   296: getstatic 1250	com/google/android/gms/internal/gp:CREATOR	Landroid/os/Parcelable$Creator;
    //   299: invokevirtual 1253	com/google/android/gms/internal/le:a	([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   302: checkcast 1246	com/google/android/gms/internal/gp
    //   305: astore 18
    //   307: new 900	com/google/android/gms/internal/ga
    //   310: dup
    //   311: aload_1
    //   312: aload 13
    //   314: new 909	com/google/android/gms/internal/lb
    //   317: dup
    //   318: aload_2
    //   319: lload 8
    //   321: aload 14
    //   323: aload 13
    //   325: invokespecial 1256	com/google/android/gms/internal/lb:<init>	(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    //   328: lload 6
    //   330: iload_3
    //   331: aload 15
    //   333: aload 16
    //   335: lload 4
    //   337: aload 17
    //   339: lload 10
    //   341: aload 18
    //   343: invokespecial 1259	com/google/android/gms/internal/ga:<init>	(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/lb;JZLjava/lang/String;Lcom/google/android/gms/internal/gp;JLcom/google/android/gms/internal/gp;JLcom/google/android/gms/internal/gp;)V
    //   346: astore 13
    //   348: aload 12
    //   350: invokeinterface 1186 1 0
    //   355: ifeq +28 -> 383
    //   358: aload_0
    //   359: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   362: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   365: ldc_w 1467
    //   368: aload_1
    //   369: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   372: aload_0
    //   373: invokevirtual 1042	com/google/android/gms/internal/ix:qK	()Lcom/google/android/gms/internal/gz;
    //   376: aload_2
    //   377: invokevirtual 1460	com/google/android/gms/internal/gz:cj	(Ljava/lang/String;)Ljava/lang/String;
    //   380: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   383: aload 13
    //   385: astore_1
    //   386: aload 12
    //   388: ifnull -239 -> 149
    //   391: aload 12
    //   393: invokeinterface 346 1 0
    //   398: aload 13
    //   400: areturn
    //   401: iconst_0
    //   402: istore_3
    //   403: goto -220 -> 183
    //   406: astore 13
    //   408: aconst_null
    //   409: astore 12
    //   411: aload_0
    //   412: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   415: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   418: ldc_w 1469
    //   421: aload_1
    //   422: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   425: aload_0
    //   426: invokevirtual 1042	com/google/android/gms/internal/ix:qK	()Lcom/google/android/gms/internal/gz;
    //   429: aload_2
    //   430: invokevirtual 1460	com/google/android/gms/internal/gz:cj	(Ljava/lang/String;)Ljava/lang/String;
    //   433: aload 13
    //   435: invokevirtual 389	com/google/android/gms/internal/hd:d	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   438: aload 12
    //   440: ifnull +10 -> 450
    //   443: aload 12
    //   445: invokeinterface 346 1 0
    //   450: aconst_null
    //   451: areturn
    //   452: astore_1
    //   453: aconst_null
    //   454: astore 12
    //   456: aload 12
    //   458: ifnull +10 -> 468
    //   461: aload 12
    //   463: invokeinterface 346 1 0
    //   468: aload_1
    //   469: athrow
    //   470: astore_1
    //   471: goto -15 -> 456
    //   474: astore_1
    //   475: goto -19 -> 456
    //   478: astore 13
    //   480: goto -69 -> 411
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	483	0	this	gd
    //   0	483	1	paramString1	String
    //   0	483	2	paramString2	String
    //   130	273	3	bool	boolean
    //   201	135	4	l1	long
    //   235	94	6	l2	long
    //   270	50	8	l3	long
    //   281	59	10	l4	long
    //   121	341	12	localCursor	Cursor
    //   159	240	13	localObject1	Object
    //   406	28	13	localSQLiteException1	SQLiteException
    //   478	1	13	localSQLiteException2	SQLiteException
    //   168	154	14	localObject2	Object
    //   191	141	15	str	String
    //   224	110	16	localgp1	gp
    //   259	79	17	localgp2	gp
    //   305	37	18	localgp3	gp
    // Exception table:
    //   from	to	target	type
    //   18	123	406	android/database/sqlite/SQLiteException
    //   18	123	452	finally
    //   123	131	470	finally
    //   151	181	470	finally
    //   183	383	470	finally
    //   411	438	474	finally
    //   123	131	478	android/database/sqlite/SQLiteException
    //   151	181	478	android/database/sqlite/SQLiteException
    //   183	383	478	android/database/sqlite/SQLiteException
  }
  
  public final int x(String paramString1, String paramString2)
  {
    ae.bf(paramString1);
    ae.bf(paramString2);
    mN();
    pf();
    try
    {
      int i = getWritableDatabase().delete("conditional_properties", "app_id=? and name=?", new String[] { paramString1, paramString2 });
      return i;
    }
    catch (SQLiteException localSQLiteException)
    {
      qP().aTa.d("Error deleting conditional property", hb.ck(paramString1), qK().cj(paramString2), localSQLiteException);
    }
    return 0;
  }
  
  /* Error */
  final java.util.Map<Integer, List<li>> y(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   4: aload_0
    //   5: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   8: aload_1
    //   9: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_2
    //   14: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   17: pop
    //   18: new 1368	android/support/v4/g/a
    //   21: dup
    //   22: invokespecial 1369	android/support/v4/g/a:<init>	()V
    //   25: astore 8
    //   27: aload_0
    //   28: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   31: astore 5
    //   33: aload 5
    //   35: ldc_w 430
    //   38: iconst_2
    //   39: anewarray 19	java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc_w 412
    //   47: aastore
    //   48: dup
    //   49: iconst_1
    //   50: ldc_w 421
    //   53: aastore
    //   54: ldc_w 1475
    //   57: iconst_2
    //   58: anewarray 19	java/lang/String
    //   61: dup
    //   62: iconst_0
    //   63: aload_1
    //   64: aastore
    //   65: dup
    //   66: iconst_1
    //   67: aload_2
    //   68: aastore
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   75: astore 5
    //   77: aload 5
    //   79: astore_2
    //   80: aload 5
    //   82: invokeinterface 343 1 0
    //   87: ifne +26 -> 113
    //   90: aload 5
    //   92: astore_2
    //   93: invokestatic 1479	java/util/Collections:emptyMap	()Ljava/util/Map;
    //   96: astore 6
    //   98: aload 5
    //   100: ifnull +10 -> 110
    //   103: aload 5
    //   105: invokeinterface 346 1 0
    //   110: aload 6
    //   112: areturn
    //   113: aload 5
    //   115: astore_2
    //   116: aload 5
    //   118: iconst_1
    //   119: invokeinterface 1164 2 0
    //   124: astore 6
    //   126: aload 5
    //   128: astore_2
    //   129: aload 6
    //   131: aload 6
    //   133: arraylength
    //   134: invokestatic 1173	com/google/android/gms/internal/mu:a	([BI)Lcom/google/android/gms/internal/mu;
    //   137: astore 6
    //   139: aload 5
    //   141: astore_2
    //   142: new 359	com/google/android/gms/internal/li
    //   145: dup
    //   146: invokespecial 1480	com/google/android/gms/internal/li:<init>	()V
    //   149: astore 9
    //   151: aload 5
    //   153: astore_2
    //   154: aload 9
    //   156: aload 6
    //   158: invokevirtual 1177	com/google/android/gms/internal/nd:a	(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    //   161: pop
    //   162: aload 5
    //   164: astore_2
    //   165: aload 5
    //   167: iconst_0
    //   168: invokeinterface 1244 2 0
    //   173: istore_3
    //   174: aload 5
    //   176: astore_2
    //   177: aload 8
    //   179: iload_3
    //   180: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   183: invokeinterface 1482 2 0
    //   188: checkcast 527	java/util/List
    //   191: astore 7
    //   193: aload 7
    //   195: astore 6
    //   197: aload 7
    //   199: ifnonnull +32 -> 231
    //   202: aload 5
    //   204: astore_2
    //   205: new 524	java/util/ArrayList
    //   208: dup
    //   209: invokespecial 525	java/util/ArrayList:<init>	()V
    //   212: astore 6
    //   214: aload 5
    //   216: astore_2
    //   217: aload 8
    //   219: iload_3
    //   220: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   223: aload 6
    //   225: invokeinterface 1377 3 0
    //   230: pop
    //   231: aload 5
    //   233: astore_2
    //   234: aload 6
    //   236: aload 9
    //   238: invokeinterface 542 2 0
    //   243: pop
    //   244: aload 5
    //   246: astore_2
    //   247: aload 5
    //   249: invokeinterface 1186 1 0
    //   254: istore 4
    //   256: iload 4
    //   258: ifne -145 -> 113
    //   261: aload 5
    //   263: ifnull +10 -> 273
    //   266: aload 5
    //   268: invokeinterface 346 1 0
    //   273: aload 8
    //   275: areturn
    //   276: astore 6
    //   278: aload 5
    //   280: astore_2
    //   281: aload_0
    //   282: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   285: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   288: ldc_w 1484
    //   291: aload_1
    //   292: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   295: aload 6
    //   297: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   300: goto -56 -> 244
    //   303: astore 6
    //   305: aload 5
    //   307: astore_2
    //   308: aload_0
    //   309: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   312: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   315: ldc_w 522
    //   318: aload_1
    //   319: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   322: aload 6
    //   324: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   327: aload 5
    //   329: ifnull +10 -> 339
    //   332: aload 5
    //   334: invokeinterface 346 1 0
    //   339: aconst_null
    //   340: areturn
    //   341: astore_1
    //   342: aconst_null
    //   343: astore_2
    //   344: aload_2
    //   345: ifnull +9 -> 354
    //   348: aload_2
    //   349: invokeinterface 346 1 0
    //   354: aload_1
    //   355: athrow
    //   356: astore_1
    //   357: goto -13 -> 344
    //   360: astore 6
    //   362: aconst_null
    //   363: astore 5
    //   365: goto -60 -> 305
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	368	0	this	gd
    //   0	368	1	paramString1	String
    //   0	368	2	paramString2	String
    //   173	47	3	i	int
    //   254	3	4	bool	boolean
    //   31	333	5	localObject1	Object
    //   96	139	6	localObject2	Object
    //   276	20	6	localIOException	IOException
    //   303	20	6	localSQLiteException1	SQLiteException
    //   360	1	6	localSQLiteException2	SQLiteException
    //   191	7	7	localList	List
    //   25	249	8	locala	android.support.v4.g.a
    //   149	88	9	localli	li
    // Exception table:
    //   from	to	target	type
    //   154	162	276	java/io/IOException
    //   80	90	303	android/database/sqlite/SQLiteException
    //   93	98	303	android/database/sqlite/SQLiteException
    //   116	126	303	android/database/sqlite/SQLiteException
    //   129	139	303	android/database/sqlite/SQLiteException
    //   142	151	303	android/database/sqlite/SQLiteException
    //   154	162	303	android/database/sqlite/SQLiteException
    //   165	174	303	android/database/sqlite/SQLiteException
    //   177	193	303	android/database/sqlite/SQLiteException
    //   205	214	303	android/database/sqlite/SQLiteException
    //   217	231	303	android/database/sqlite/SQLiteException
    //   234	244	303	android/database/sqlite/SQLiteException
    //   247	256	303	android/database/sqlite/SQLiteException
    //   281	300	303	android/database/sqlite/SQLiteException
    //   33	77	341	finally
    //   80	90	356	finally
    //   93	98	356	finally
    //   116	126	356	finally
    //   129	139	356	finally
    //   142	151	356	finally
    //   154	162	356	finally
    //   165	174	356	finally
    //   177	193	356	finally
    //   205	214	356	finally
    //   217	231	356	finally
    //   234	244	356	finally
    //   247	256	356	finally
    //   281	300	356	finally
    //   308	327	356	finally
    //   33	77	360	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  final java.util.Map<Integer, List<ll>> z(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 354	com/google/android/gms/internal/iy:pf	()V
    //   4: aload_0
    //   5: invokevirtual 357	com/google/android/gms/internal/ix:mN	()V
    //   8: aload_1
    //   9: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_2
    //   14: invokestatic 183	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   17: pop
    //   18: new 1368	android/support/v4/g/a
    //   21: dup
    //   22: invokespecial 1369	android/support/v4/g/a:<init>	()V
    //   25: astore 8
    //   27: aload_0
    //   28: invokevirtual 428	com/google/android/gms/internal/gd:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   31: astore 5
    //   33: aload 5
    //   35: ldc_w 455
    //   38: iconst_2
    //   39: anewarray 19	java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc_w 412
    //   47: aastore
    //   48: dup
    //   49: iconst_1
    //   50: ldc_w 421
    //   53: aastore
    //   54: ldc_w 1487
    //   57: iconst_2
    //   58: anewarray 19	java/lang/String
    //   61: dup
    //   62: iconst_0
    //   63: aload_1
    //   64: aastore
    //   65: dup
    //   66: iconst_1
    //   67: aload_2
    //   68: aastore
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: invokevirtual 338	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   75: astore 5
    //   77: aload 5
    //   79: astore_2
    //   80: aload 5
    //   82: invokeinterface 343 1 0
    //   87: ifne +26 -> 113
    //   90: aload 5
    //   92: astore_2
    //   93: invokestatic 1479	java/util/Collections:emptyMap	()Ljava/util/Map;
    //   96: astore 6
    //   98: aload 5
    //   100: ifnull +10 -> 110
    //   103: aload 5
    //   105: invokeinterface 346 1 0
    //   110: aload 6
    //   112: areturn
    //   113: aload 5
    //   115: astore_2
    //   116: aload 5
    //   118: iconst_1
    //   119: invokeinterface 1164 2 0
    //   124: astore 6
    //   126: aload 5
    //   128: astore_2
    //   129: aload 6
    //   131: aload 6
    //   133: arraylength
    //   134: invokestatic 1173	com/google/android/gms/internal/mu:a	([BI)Lcom/google/android/gms/internal/mu;
    //   137: astore 6
    //   139: aload 5
    //   141: astore_2
    //   142: new 445	com/google/android/gms/internal/ll
    //   145: dup
    //   146: invokespecial 1488	com/google/android/gms/internal/ll:<init>	()V
    //   149: astore 9
    //   151: aload 5
    //   153: astore_2
    //   154: aload 9
    //   156: aload 6
    //   158: invokevirtual 1177	com/google/android/gms/internal/nd:a	(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    //   161: pop
    //   162: aload 5
    //   164: astore_2
    //   165: aload 5
    //   167: iconst_0
    //   168: invokeinterface 1244 2 0
    //   173: istore_3
    //   174: aload 5
    //   176: astore_2
    //   177: aload 8
    //   179: iload_3
    //   180: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   183: invokeinterface 1482 2 0
    //   188: checkcast 527	java/util/List
    //   191: astore 7
    //   193: aload 7
    //   195: astore 6
    //   197: aload 7
    //   199: ifnonnull +32 -> 231
    //   202: aload 5
    //   204: astore_2
    //   205: new 524	java/util/ArrayList
    //   208: dup
    //   209: invokespecial 525	java/util/ArrayList:<init>	()V
    //   212: astore 6
    //   214: aload 5
    //   216: astore_2
    //   217: aload 8
    //   219: iload_3
    //   220: invokestatic 381	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   223: aload 6
    //   225: invokeinterface 1377 3 0
    //   230: pop
    //   231: aload 5
    //   233: astore_2
    //   234: aload 6
    //   236: aload 9
    //   238: invokeinterface 542 2 0
    //   243: pop
    //   244: aload 5
    //   246: astore_2
    //   247: aload 5
    //   249: invokeinterface 1186 1 0
    //   254: istore 4
    //   256: iload 4
    //   258: ifne -145 -> 113
    //   261: aload 5
    //   263: ifnull +10 -> 273
    //   266: aload 5
    //   268: invokeinterface 346 1 0
    //   273: aload 8
    //   275: areturn
    //   276: astore 6
    //   278: aload 5
    //   280: astore_2
    //   281: aload_0
    //   282: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   285: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   288: ldc_w 1490
    //   291: aload_1
    //   292: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   295: aload 6
    //   297: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   300: goto -56 -> 244
    //   303: astore 6
    //   305: aload 5
    //   307: astore_2
    //   308: aload_0
    //   309: invokevirtual 370	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   312: getfield 263	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   315: ldc_w 522
    //   318: aload_1
    //   319: invokestatic 376	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   322: aload 6
    //   324: invokevirtual 328	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   327: aload 5
    //   329: ifnull +10 -> 339
    //   332: aload 5
    //   334: invokeinterface 346 1 0
    //   339: aconst_null
    //   340: areturn
    //   341: astore_1
    //   342: aconst_null
    //   343: astore_2
    //   344: aload_2
    //   345: ifnull +9 -> 354
    //   348: aload_2
    //   349: invokeinterface 346 1 0
    //   354: aload_1
    //   355: athrow
    //   356: astore_1
    //   357: goto -13 -> 344
    //   360: astore 6
    //   362: aconst_null
    //   363: astore 5
    //   365: goto -60 -> 305
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	368	0	this	gd
    //   0	368	1	paramString1	String
    //   0	368	2	paramString2	String
    //   173	47	3	i	int
    //   254	3	4	bool	boolean
    //   31	333	5	localObject1	Object
    //   96	139	6	localObject2	Object
    //   276	20	6	localIOException	IOException
    //   303	20	6	localSQLiteException1	SQLiteException
    //   360	1	6	localSQLiteException2	SQLiteException
    //   191	7	7	localList	List
    //   25	249	8	locala	android.support.v4.g.a
    //   149	88	9	localll	ll
    // Exception table:
    //   from	to	target	type
    //   154	162	276	java/io/IOException
    //   80	90	303	android/database/sqlite/SQLiteException
    //   93	98	303	android/database/sqlite/SQLiteException
    //   116	126	303	android/database/sqlite/SQLiteException
    //   129	139	303	android/database/sqlite/SQLiteException
    //   142	151	303	android/database/sqlite/SQLiteException
    //   154	162	303	android/database/sqlite/SQLiteException
    //   165	174	303	android/database/sqlite/SQLiteException
    //   177	193	303	android/database/sqlite/SQLiteException
    //   205	214	303	android/database/sqlite/SQLiteException
    //   217	231	303	android/database/sqlite/SQLiteException
    //   234	244	303	android/database/sqlite/SQLiteException
    //   247	256	303	android/database/sqlite/SQLiteException
    //   281	300	303	android/database/sqlite/SQLiteException
    //   33	77	341	finally
    //   80	90	356	finally
    //   93	98	356	finally
    //   116	126	356	finally
    //   129	139	356	finally
    //   142	151	356	finally
    //   154	162	356	finally
    //   165	174	356	finally
    //   177	193	356	finally
    //   205	214	356	finally
    //   217	231	356	finally
    //   234	244	356	finally
    //   247	256	356	finally
    //   281	300	356	finally
    //   308	327	356	finally
    //   33	77	360	android/database/sqlite/SQLiteException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */