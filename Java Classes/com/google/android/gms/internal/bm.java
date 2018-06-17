package com.google.android.gms.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.analytics.n;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import com.google.android.gms.common.util.j;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class bm
  extends bb
  implements Closeable
{
  private static final String aMW = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[] { "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id" });
  private static final String aMX = String.format("SELECT MAX(%s) FROM %s WHERE 1;", new Object[] { "hit_time", "hits2" });
  private final bn aMY;
  private final dh aMZ = new dh(this.aMq.aBm);
  private final dh aNa = new dh(this.aMq.aBm);
  
  bm(bd parambd)
  {
    super(parambd);
    this.aMY = new bn(this, parambd.mContext, "google_analytics_v4.db");
  }
  
  /* Error */
  private final long a(String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 91	com/google/android/gms/internal/bm:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 5
    //   9: aconst_null
    //   10: astore 6
    //   12: aload 7
    //   14: aload_1
    //   15: aload_2
    //   16: invokevirtual 97	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_2
    //   20: aload_2
    //   21: invokeinterface 103 1 0
    //   26: ifeq +23 -> 49
    //   29: aload_2
    //   30: iconst_0
    //   31: invokeinterface 107 2 0
    //   36: lstore_3
    //   37: aload_2
    //   38: ifnull +9 -> 47
    //   41: aload_2
    //   42: invokeinterface 110 1 0
    //   47: lload_3
    //   48: lreturn
    //   49: aload_2
    //   50: ifnull +9 -> 59
    //   53: aload_2
    //   54: invokeinterface 110 1 0
    //   59: lconst_0
    //   60: lreturn
    //   61: astore 5
    //   63: aload 6
    //   65: astore_2
    //   66: aload 5
    //   68: astore 6
    //   70: aload_2
    //   71: astore 5
    //   73: aload_0
    //   74: ldc 112
    //   76: aload_1
    //   77: aload 6
    //   79: invokevirtual 116	com/google/android/gms/internal/ba:d	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   82: aload_2
    //   83: astore 5
    //   85: aload 6
    //   87: athrow
    //   88: astore_1
    //   89: aload 5
    //   91: ifnull +10 -> 101
    //   94: aload 5
    //   96: invokeinterface 110 1 0
    //   101: aload_1
    //   102: athrow
    //   103: astore_1
    //   104: aload_2
    //   105: astore 5
    //   107: goto -18 -> 89
    //   110: astore 6
    //   112: goto -42 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	bm
    //   0	115	1	paramString	String
    //   0	115	2	paramArrayOfString	String[]
    //   36	12	3	l	long
    //   7	1	5	localObject	Object
    //   61	6	5	localSQLiteException1	SQLiteException
    //   71	35	5	arrayOfString	String[]
    //   10	76	6	localSQLiteException2	SQLiteException
    //   110	1	6	localSQLiteException3	SQLiteException
    //   4	9	7	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   12	20	61	android/database/sqlite/SQLiteException
    //   12	20	88	finally
    //   73	82	88	finally
    //   85	88	88	finally
    //   20	37	103	finally
    //   20	37	110	android/database/sqlite/SQLiteException
  }
  
  private final long bB(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    Object localObject3 = getWritableDatabase();
    try
    {
      localObject3 = ((SQLiteDatabase)localObject3).rawQuery(paramString, null);
      localObject1 = localObject3;
      localObject2 = localObject3;
      if (((Cursor)localObject3).moveToFirst())
      {
        localObject1 = localObject3;
        localObject2 = localObject3;
        long l = ((Cursor)localObject3).getLong(0);
        return l;
      }
      localObject1 = localObject3;
      localObject2 = localObject3;
      throw new SQLiteException("Database returned empty set");
    }
    catch (SQLiteException localSQLiteException)
    {
      localObject2 = localObject1;
      d("Database error", paramString, localSQLiteException);
      localObject2 = localObject1;
      throw localSQLiteException;
    }
    finally
    {
      if (localObject2 != null) {
        ((Cursor)localObject2).close();
      }
    }
  }
  
  private final Map<String, String> bC(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return new HashMap(0);
    }
    try
    {
      if (paramString.startsWith("?")) {}
      for (;;)
      {
        return j.a(new URI(paramString), "UTF-8");
        paramString = String.valueOf(paramString);
        if (paramString.length() != 0) {
          paramString = "?".concat(paramString);
        } else {
          paramString = new String("?");
        }
      }
      return new HashMap(0);
    }
    catch (URISyntaxException paramString)
    {
      h("Error parsing hit parameters", paramString);
    }
  }
  
  private final Map<String, String> bD(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return new HashMap(0);
    }
    try
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "?".concat(paramString);; paramString = new String("?")) {
        return j.a(new URI(paramString), "UTF-8");
      }
      return new HashMap(0);
    }
    catch (URISyntaxException paramString)
    {
      h("Error parsing property parameters", paramString);
    }
  }
  
  /* Error */
  private final List<Long> k(long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: invokestatic 186	com/google/android/gms/analytics/n:mN	()V
    //   6: aload_0
    //   7: invokevirtual 189	com/google/android/gms/internal/bb:pf	()V
    //   10: lload_1
    //   11: lconst_0
    //   12: lcmp
    //   13: ifgt +7 -> 20
    //   16: invokestatic 195	java/util/Collections:emptyList	()Ljava/util/List;
    //   19: areturn
    //   20: aload_0
    //   21: invokevirtual 91	com/google/android/gms/internal/bm:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   24: astore 4
    //   26: new 197	java/util/ArrayList
    //   29: dup
    //   30: invokespecial 199	java/util/ArrayList:<init>	()V
    //   33: astore 7
    //   35: ldc -55
    //   37: iconst_1
    //   38: anewarray 20	java/lang/Object
    //   41: dup
    //   42: iconst_0
    //   43: ldc 24
    //   45: aastore
    //   46: invokestatic 38	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   49: astore 6
    //   51: lload_1
    //   52: invokestatic 207	java/lang/Long:toString	(J)Ljava/lang/String;
    //   55: astore 8
    //   57: aload 4
    //   59: ldc 22
    //   61: iconst_1
    //   62: anewarray 34	java/lang/String
    //   65: dup
    //   66: iconst_0
    //   67: ldc 24
    //   69: aastore
    //   70: aconst_null
    //   71: aconst_null
    //   72: aconst_null
    //   73: aconst_null
    //   74: aload 6
    //   76: aload 8
    //   78: invokevirtual 211	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   81: astore 4
    //   83: aload 4
    //   85: astore 5
    //   87: aload 5
    //   89: astore 4
    //   91: aload 5
    //   93: invokeinterface 103 1 0
    //   98: ifeq +42 -> 140
    //   101: aload 5
    //   103: astore 4
    //   105: aload 7
    //   107: aload 5
    //   109: iconst_0
    //   110: invokeinterface 107 2 0
    //   115: invokestatic 214	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   118: invokeinterface 220 2 0
    //   123: pop
    //   124: aload 5
    //   126: astore 4
    //   128: aload 5
    //   130: invokeinterface 223 1 0
    //   135: istore_3
    //   136: iload_3
    //   137: ifne -36 -> 101
    //   140: aload 5
    //   142: ifnull +10 -> 152
    //   145: aload 5
    //   147: invokeinterface 110 1 0
    //   152: aload 7
    //   154: areturn
    //   155: astore 6
    //   157: aconst_null
    //   158: astore 5
    //   160: aload 5
    //   162: astore 4
    //   164: aload_0
    //   165: ldc -31
    //   167: aload 6
    //   169: invokevirtual 228	com/google/android/gms/internal/ba:g	(Ljava/lang/String;Ljava/lang/Object;)V
    //   172: aload 5
    //   174: ifnull -22 -> 152
    //   177: aload 5
    //   179: invokeinterface 110 1 0
    //   184: goto -32 -> 152
    //   187: astore 4
    //   189: aload 5
    //   191: ifnull +10 -> 201
    //   194: aload 5
    //   196: invokeinterface 110 1 0
    //   201: aload 4
    //   203: athrow
    //   204: astore 6
    //   206: aload 4
    //   208: astore 5
    //   210: aload 6
    //   212: astore 4
    //   214: goto -25 -> 189
    //   217: astore 6
    //   219: goto -59 -> 160
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	222	0	this	bm
    //   0	222	1	paramLong	long
    //   135	2	3	bool	boolean
    //   24	139	4	localObject1	Object
    //   187	20	4	localObject2	Object
    //   212	1	4	localObject3	Object
    //   1	208	5	localObject4	Object
    //   49	26	6	str1	String
    //   155	13	6	localSQLiteException1	SQLiteException
    //   204	7	6	localObject5	Object
    //   217	1	6	localSQLiteException2	SQLiteException
    //   33	120	7	localArrayList	ArrayList
    //   55	22	8	str2	String
    // Exception table:
    //   from	to	target	type
    //   35	83	155	android/database/sqlite/SQLiteException
    //   35	83	187	finally
    //   91	101	204	finally
    //   105	124	204	finally
    //   128	136	204	finally
    //   164	172	204	finally
    //   91	101	217	android/database/sqlite/SQLiteException
    //   105	124	217	android/database/sqlite/SQLiteException
    //   128	136	217	android/database/sqlite/SQLiteException
  }
  
  private final long pq()
  {
    n.mN();
    pf();
    return bB("SELECT COUNT(*) FROM hits2");
  }
  
  public final long a(long paramLong, String paramString1, String paramString2)
  {
    ae.bf(paramString1);
    ae.bf(paramString2);
    pf();
    n.mN();
    return a("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[] { String.valueOf(paramLong), paramString1, paramString2 });
  }
  
  public final void beginTransaction()
  {
    pf();
    getWritableDatabase().beginTransaction();
  }
  
  public final void c(cr paramcr)
  {
    ae.E(paramcr);
    n.mN();
    pf();
    ae.E(paramcr);
    Object localObject1 = new Uri.Builder();
    Object localObject2 = paramcr.aAV.entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Map.Entry)((Iterator)localObject2).next();
      String str = (String)((Map.Entry)localObject3).getKey();
      if ((!"ht".equals(str)) && (!"qt".equals(str)) && (!"AppUID".equals(str))) {
        ((Uri.Builder)localObject1).appendQueryParameter(str, (String)((Map.Entry)localObject3).getValue());
      }
    }
    localObject1 = ((Uri.Builder)localObject1).build().getEncodedQuery();
    if (localObject1 == null) {
      localObject1 = "";
    }
    while (((String)localObject1).length() > 8192)
    {
      this.aMq.pg().a(paramcr, "Hit length exceeds the maximum allowed size");
      return;
    }
    int i = ((Integer)cm.aNS.aOE).intValue();
    long l = pq();
    if (l > i - 1)
    {
      localObject2 = k(l - i + 1L);
      g("Store full, deleting hits to make room, count", Integer.valueOf(((List)localObject2).size()));
      p((List)localObject2);
    }
    localObject2 = getWritableDatabase();
    Object localObject3 = new ContentValues();
    ((ContentValues)localObject3).put("hit_string", (String)localObject1);
    ((ContentValues)localObject3).put("hit_time", Long.valueOf(paramcr.aOM));
    ((ContentValues)localObject3).put("hit_app_id", Integer.valueOf(paramcr.aON));
    if (paramcr.aOO) {}
    for (localObject1 = ce.pR();; localObject1 = ce.pS())
    {
      ((ContentValues)localObject3).put("hit_url", (String)localObject1);
      try
      {
        l = ((SQLiteDatabase)localObject2).insert("hits2", null, (ContentValues)localObject3);
        if (l != -1L) {
          break;
        }
        bA("Failed to insert a hit (got -1)");
        return;
      }
      catch (SQLiteException paramcr)
      {
        h("Error storing a hit", paramcr);
        return;
      }
    }
    b("Hit saved to database. db-id, hit", Long.valueOf(l), paramcr);
  }
  
  public final void close()
  {
    try
    {
      this.aMY.close();
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      h("Sql error closing database", localSQLiteException);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      h("Error closing database", localIllegalStateException);
    }
  }
  
  public final void endTransaction()
  {
    pf();
    getWritableDatabase().endTransaction();
  }
  
  final SQLiteDatabase getWritableDatabase()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.aMY.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      g("Error opening database", localSQLiteException);
      throw localSQLiteException;
    }
  }
  
  final boolean isEmpty()
  {
    return pq() == 0L;
  }
  
  public final List<cr> l(long paramLong)
  {
    boolean bool = true;
    Cursor localCursor = null;
    if (paramLong >= 0L) {}
    for (;;)
    {
      ae.au(bool);
      n.mN();
      pf();
      Object localObject5 = getWritableDatabase();
      localObject1 = localCursor;
      for (;;)
      {
        try
        {
          str1 = String.format("%s ASC", new Object[] { "hit_id" });
          localObject1 = localCursor;
          str2 = Long.toString(paramLong);
          localObject1 = localCursor;
          localCursor = ((SQLiteDatabase)localObject5).query("hits2", new String[] { "hit_id", "hit_time", "hit_string", "hit_url", "hit_app_id" }, null, null, null, null, str1, str2);
          localObject1 = localCursor;
        }
        catch (SQLiteException localSQLiteException1)
        {
          String str1;
          String str2;
          localObject1 = null;
          try
          {
            h("Error loading hits from the database", localSQLiteException1);
            throw localSQLiteException1;
          }
          finally
          {
            if (localObject1 != null) {
              ((Cursor)localObject1).close();
            }
          }
        }
        finally
        {
          continue;
        }
        try
        {
          localObject5 = new ArrayList();
          localObject1 = localCursor;
          if (localCursor.moveToFirst())
          {
            localObject1 = localCursor;
            paramLong = localCursor.getLong(0);
            localObject1 = localCursor;
            long l = localCursor.getLong(1);
            localObject1 = localCursor;
            str1 = localCursor.getString(2);
            localObject1 = localCursor;
            str2 = localCursor.getString(3);
            localObject1 = localCursor;
            int i = localCursor.getInt(4);
            localObject1 = localCursor;
            ((List)localObject5).add(new cr(this, bC(str1), l, di.bM(str2), paramLong, i));
            localObject1 = localCursor;
            bool = localCursor.moveToNext();
            if (bool) {
              continue;
            }
          }
          if (localCursor != null) {
            localCursor.close();
          }
          return (List<cr>)localObject5;
        }
        catch (SQLiteException localSQLiteException2)
        {
          localObject1 = localObject3;
          Object localObject4 = localSQLiteException2;
        }
      }
      bool = false;
    }
  }
  
  public final void m(long paramLong)
  {
    n.mN();
    pf();
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(Long.valueOf(paramLong));
    d("Deleting hit, id", Long.valueOf(paramLong));
    p(localArrayList);
  }
  
  protected final void mG() {}
  
  public final void p(List<Long> paramList)
  {
    ae.E(paramList);
    n.mN();
    pf();
    if (paramList.isEmpty()) {}
    for (;;)
    {
      return;
      Object localObject1 = new StringBuilder("hit_id");
      ((StringBuilder)localObject1).append(" in (");
      int i = 0;
      Object localObject2;
      while (i < paramList.size())
      {
        localObject2 = (Long)paramList.get(i);
        if ((localObject2 == null) || (((Long)localObject2).longValue() == 0L)) {
          throw new SQLiteException("Invalid hit id");
        }
        if (i > 0) {
          ((StringBuilder)localObject1).append(",");
        }
        ((StringBuilder)localObject1).append(localObject2);
        i += 1;
      }
      ((StringBuilder)localObject1).append(")");
      localObject1 = ((StringBuilder)localObject1).toString();
      try
      {
        localObject2 = getWritableDatabase();
        d("Deleting dispatched hits. count", Integer.valueOf(paramList.size()));
        i = ((SQLiteDatabase)localObject2).delete("hits2", (String)localObject1, null);
        if (i == paramList.size()) {
          continue;
        }
        b("Deleted fewer hits then expected", Integer.valueOf(paramList.size()), Integer.valueOf(i), localObject1);
        return;
      }
      catch (SQLiteException paramList)
      {
        h("Error deleting hits", paramList);
        throw paramList;
      }
    }
  }
  
  public final int pr()
  {
    n.mN();
    pf();
    if (!this.aMZ.o(86400000L)) {
      return 0;
    }
    this.aMZ.start();
    bw("Deleting stale hits (if any)");
    int i = getWritableDatabase().delete("hits2", "hit_time < ?", new String[] { Long.toString(this.aMq.aBm.currentTimeMillis() - 2592000000L) });
    d("Deleted stale hits, count", Integer.valueOf(i));
    return i;
  }
  
  public final long ps()
  {
    n.mN();
    pf();
    return a(aMX, null);
  }
  
  /* Error */
  public final List<bg> pt()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: invokevirtual 189	com/google/android/gms/internal/bb:pf	()V
    //   7: invokestatic 186	com/google/android/gms/analytics/n:mN	()V
    //   10: aload_0
    //   11: invokevirtual 91	com/google/android/gms/internal/bm:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   14: astore 5
    //   16: getstatic 537	com/google/android/gms/internal/cm:aNU	Lcom/google/android/gms/internal/cn;
    //   19: getfield 344	com/google/android/gms/internal/cn:aOE	Ljava/lang/Object;
    //   22: checkcast 346	java/lang/Integer
    //   25: invokevirtual 349	java/lang/Integer:intValue	()I
    //   28: istore_1
    //   29: aload 5
    //   31: ldc_w 539
    //   34: iconst_5
    //   35: anewarray 34	java/lang/String
    //   38: dup
    //   39: iconst_0
    //   40: ldc_w 541
    //   43: aastore
    //   44: dup
    //   45: iconst_1
    //   46: ldc_w 543
    //   49: aastore
    //   50: dup
    //   51: iconst_2
    //   52: ldc_w 545
    //   55: aastore
    //   56: dup
    //   57: iconst_3
    //   58: ldc_w 547
    //   61: aastore
    //   62: dup
    //   63: iconst_4
    //   64: ldc_w 549
    //   67: aastore
    //   68: ldc_w 551
    //   71: iconst_1
    //   72: anewarray 34	java/lang/String
    //   75: dup
    //   76: iconst_0
    //   77: ldc_w 553
    //   80: aastore
    //   81: aconst_null
    //   82: aconst_null
    //   83: aconst_null
    //   84: iload_1
    //   85: invokestatic 555	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   88: invokevirtual 211	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   91: astore 5
    //   93: new 197	java/util/ArrayList
    //   96: dup
    //   97: invokespecial 199	java/util/ArrayList:<init>	()V
    //   100: astore 6
    //   102: aload 5
    //   104: invokeinterface 103 1 0
    //   109: ifeq +97 -> 206
    //   112: aload 5
    //   114: iconst_0
    //   115: invokeinterface 438 2 0
    //   120: astore 7
    //   122: aload 5
    //   124: iconst_1
    //   125: invokeinterface 438 2 0
    //   130: astore 8
    //   132: aload 5
    //   134: iconst_2
    //   135: invokeinterface 442 2 0
    //   140: ifeq +99 -> 239
    //   143: iconst_1
    //   144: istore_2
    //   145: aload 5
    //   147: iconst_3
    //   148: invokeinterface 442 2 0
    //   153: i2l
    //   154: lstore_3
    //   155: aload_0
    //   156: aload 5
    //   158: iconst_4
    //   159: invokeinterface 438 2 0
    //   164: invokespecial 557	com/google/android/gms/internal/bm:bD	(Ljava/lang/String;)Ljava/util/Map;
    //   167: astore 9
    //   169: aload 7
    //   171: invokestatic 134	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   174: ifne +11 -> 185
    //   177: aload 8
    //   179: invokestatic 134	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   182: ifeq +62 -> 244
    //   185: aload_0
    //   186: ldc_w 559
    //   189: aload 7
    //   191: aload 8
    //   193: invokevirtual 561	com/google/android/gms/internal/ba:c	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   196: aload 5
    //   198: invokeinterface 223 1 0
    //   203: ifne -91 -> 112
    //   206: aload 6
    //   208: invokeinterface 358 1 0
    //   213: iload_1
    //   214: if_icmplt +10 -> 224
    //   217: aload_0
    //   218: ldc_w 563
    //   221: invokevirtual 566	com/google/android/gms/internal/ba:bz	(Ljava/lang/String;)V
    //   224: aload 5
    //   226: ifnull +10 -> 236
    //   229: aload 5
    //   231: invokeinterface 110 1 0
    //   236: aload 6
    //   238: areturn
    //   239: iconst_0
    //   240: istore_2
    //   241: goto -96 -> 145
    //   244: aload 6
    //   246: new 568	com/google/android/gms/internal/bg
    //   249: dup
    //   250: aload 7
    //   252: aload 8
    //   254: iload_2
    //   255: lload_3
    //   256: aload 9
    //   258: invokespecial 571	com/google/android/gms/internal/bg:<init>	(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    //   261: invokeinterface 220 2 0
    //   266: pop
    //   267: goto -71 -> 196
    //   270: astore 6
    //   272: aload_0
    //   273: ldc_w 454
    //   276: aload 6
    //   278: invokevirtual 174	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   281: aload 6
    //   283: athrow
    //   284: astore 7
    //   286: aload 5
    //   288: astore 6
    //   290: aload 7
    //   292: astore 5
    //   294: aload 6
    //   296: ifnull +10 -> 306
    //   299: aload 6
    //   301: invokeinterface 110 1 0
    //   306: aload 5
    //   308: athrow
    //   309: astore 5
    //   311: goto -17 -> 294
    //   314: astore 7
    //   316: aload 5
    //   318: astore 6
    //   320: aload 7
    //   322: astore 5
    //   324: goto -30 -> 294
    //   327: astore 6
    //   329: aconst_null
    //   330: astore 5
    //   332: goto -60 -> 272
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	335	0	this	bm
    //   28	187	1	i	int
    //   144	111	2	bool	boolean
    //   154	102	3	l	long
    //   14	293	5	localObject1	Object
    //   309	8	5	localObject2	Object
    //   322	9	5	localObject3	Object
    //   1	244	6	localArrayList	ArrayList
    //   270	12	6	localSQLiteException1	SQLiteException
    //   288	31	6	localObject4	Object
    //   327	1	6	localSQLiteException2	SQLiteException
    //   120	131	7	str1	String
    //   284	7	7	localObject5	Object
    //   314	7	7	localObject6	Object
    //   130	123	8	str2	String
    //   167	90	9	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   93	112	270	android/database/sqlite/SQLiteException
    //   112	143	270	android/database/sqlite/SQLiteException
    //   145	185	270	android/database/sqlite/SQLiteException
    //   185	196	270	android/database/sqlite/SQLiteException
    //   196	206	270	android/database/sqlite/SQLiteException
    //   206	224	270	android/database/sqlite/SQLiteException
    //   244	267	270	android/database/sqlite/SQLiteException
    //   272	284	284	finally
    //   16	93	309	finally
    //   93	112	314	finally
    //   112	143	314	finally
    //   145	185	314	finally
    //   185	196	314	finally
    //   196	206	314	finally
    //   206	224	314	finally
    //   244	267	314	finally
    //   16	93	327	android/database/sqlite/SQLiteException
  }
  
  public final void setTransactionSuccessful()
  {
    pf();
    getWritableDatabase().setTransactionSuccessful();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */