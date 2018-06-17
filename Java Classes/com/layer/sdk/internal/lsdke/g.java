package com.layer.sdk.internal.lsdke;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.net.Uri;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkd.lsdka.e;
import com.layer.sdk.internal.lsdkd.lsdka.h.a;
import com.layer.sdk.internal.lsdkd.lsdka.h.b;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import com.layer.sdk.internal.lsdkd.lsdka.l;
import com.layer.sdk.internal.lsdkd.lsdka.n;
import com.layer.sdk.internal.lsdkd.lsdka.o.a;
import com.layer.sdk.internal.lsdkd.lsdka.o.b;
import com.layer.sdk.internal.lsdke.lsdkc.c.a;
import com.layer.sdk.internal.lsdki.d.a;
import com.layer.sdk.internal.lsdki.lsdka.b.b;
import com.layer.sdk.internal.lsdki.lsdkb.b.a;
import com.layer.sdk.internal.lsdki.lsdkc.c.b;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart.TransferStatus;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;

public class g
  implements com.layer.sdk.internal.lsdkc.a.b, b, com.layer.sdk.internal.lsdki.lsdka.a.b, b.b, com.layer.sdk.internal.lsdki.lsdkb.a.a, b.a, c.b
{
  private static final k.a h = k.a(g.class);
  protected final Context a;
  protected final String b;
  protected final ReentrantLock c = new ReentrantLock();
  protected final boolean d;
  protected d e;
  protected final UUID f;
  protected final String g;
  private final ReentrantLock i = new ReentrantLock();
  private final AtomicBoolean j = new AtomicBoolean(false);
  private final AtomicLong k = new AtomicLong(0L);
  
  public g(Context paramContext, String paramString1, boolean paramBoolean, UUID paramUUID, String paramString2)
  {
    if (k.d()) {
      k.c("Creating persistence for sync");
    }
    this.a = paramContext;
    this.b = paramString1;
    this.d = paramBoolean;
    this.f = paramUUID;
    this.g = paramString2;
    f();
    if (k.d()) {
      k.c("Created persistence for sync");
    }
  }
  
  private <T> T a(a<T> parama)
  {
    if ((this.e == null) || (this.e.e())) {
      throw new LayerException(LayerException.Type.PERSISTENCE_CLOSED, "Cannot perform read operation while persistence is closed.");
    }
    this.k.incrementAndGet();
    SQLiteDatabase localSQLiteDatabase;
    try
    {
      localSQLiteDatabase = this.e.c();
      if (localSQLiteDatabase == null) {
        throw new IllegalStateException("Could not open database");
      }
    }
    finally
    {
      this.k.decrementAndGet();
    }
    parama = parama.t(localSQLiteDatabase);
    this.k.decrementAndGet();
    return parama;
  }
  
  /* Error */
  private <T> T a(b<T> paramb)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   7: invokevirtual 295	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   10: aload_0
    //   11: getfield 250	com/layer/sdk/internal/lsdke/g:e	Lcom/layer/sdk/internal/lsdke/d;
    //   14: ifnull +13 -> 27
    //   17: aload_0
    //   18: getfield 250	com/layer/sdk/internal/lsdke/g:e	Lcom/layer/sdk/internal/lsdke/d;
    //   21: invokevirtual 254	com/layer/sdk/internal/lsdke/d:e	()Z
    //   24: ifeq +27 -> 51
    //   27: new 256	com/layer/sdk/exceptions/LayerException
    //   30: dup
    //   31: getstatic 262	com/layer/sdk/exceptions/LayerException$Type:PERSISTENCE_CLOSED	Lcom/layer/sdk/exceptions/LayerException$Type;
    //   34: ldc_w 297
    //   37: invokespecial 267	com/layer/sdk/exceptions/LayerException:<init>	(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V
    //   40: athrow
    //   41: astore_1
    //   42: aload_0
    //   43: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   46: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   49: aload_1
    //   50: athrow
    //   51: aload_0
    //   52: getfield 225	com/layer/sdk/internal/lsdke/g:k	Ljava/util/concurrent/atomic/AtomicLong;
    //   55: invokevirtual 271	java/util/concurrent/atomic/AtomicLong:incrementAndGet	()J
    //   58: pop2
    //   59: iconst_0
    //   60: istore_2
    //   61: iconst_0
    //   62: istore 4
    //   64: iconst_0
    //   65: istore_3
    //   66: aload_0
    //   67: getfield 250	com/layer/sdk/internal/lsdke/g:e	Lcom/layer/sdk/internal/lsdke/d;
    //   70: invokevirtual 302	com/layer/sdk/internal/lsdke/d:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   73: astore 5
    //   75: aload 5
    //   77: ifnonnull +44 -> 121
    //   80: iload_3
    //   81: istore_2
    //   82: new 276	java/lang/IllegalStateException
    //   85: dup
    //   86: ldc_w 278
    //   89: invokespecial 280	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   92: athrow
    //   93: astore_1
    //   94: aload 5
    //   96: ifnull +12 -> 108
    //   99: iload_2
    //   100: ifeq +8 -> 108
    //   103: aload 5
    //   105: invokevirtual 307	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   108: aload_1
    //   109: athrow
    //   110: astore_1
    //   111: aload_0
    //   112: getfield 225	com/layer/sdk/internal/lsdke/g:k	Ljava/util/concurrent/atomic/AtomicLong;
    //   115: invokevirtual 283	java/util/concurrent/atomic/AtomicLong:decrementAndGet	()J
    //   118: pop2
    //   119: aload_1
    //   120: athrow
    //   121: iload_3
    //   122: istore_2
    //   123: aload 5
    //   125: invokevirtual 310	android/database/sqlite/SQLiteDatabase:isReadOnly	()Z
    //   128: ifeq +16 -> 144
    //   131: iload_3
    //   132: istore_2
    //   133: new 276	java/lang/IllegalStateException
    //   136: dup
    //   137: ldc_w 312
    //   140: invokespecial 280	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   143: athrow
    //   144: iload_3
    //   145: istore_2
    //   146: iload 4
    //   148: istore_3
    //   149: aload_0
    //   150: aload 5
    //   152: invokespecial 316	com/layer/sdk/internal/lsdke/g:l	(Landroid/database/sqlite/SQLiteDatabase;)Z
    //   155: ifeq +30 -> 185
    //   158: iconst_1
    //   159: istore 4
    //   161: iconst_1
    //   162: istore_3
    //   163: iload_3
    //   164: istore_2
    //   165: aload_1
    //   166: aload 5
    //   168: invokeinterface 317 2 0
    //   173: astore 6
    //   175: iload_3
    //   176: istore_2
    //   177: aload 5
    //   179: invokevirtual 320	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   182: iload 4
    //   184: istore_3
    //   185: aload 5
    //   187: ifnull +12 -> 199
    //   190: iload_3
    //   191: ifeq +8 -> 199
    //   194: aload 5
    //   196: invokevirtual 307	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   199: aload_0
    //   200: getfield 225	com/layer/sdk/internal/lsdke/g:k	Ljava/util/concurrent/atomic/AtomicLong;
    //   203: invokevirtual 283	java/util/concurrent/atomic/AtomicLong:decrementAndGet	()J
    //   206: pop2
    //   207: aload_0
    //   208: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   211: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   214: aload 6
    //   216: areturn
    //   217: astore_1
    //   218: bipush 6
    //   220: invokestatic 323	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   223: ifeq -24 -> 199
    //   226: getstatic 199	com/layer/sdk/internal/lsdke/g:h	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   229: ldc_w 325
    //   232: aload_1
    //   233: invokestatic 328	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   236: goto -37 -> 199
    //   239: astore 5
    //   241: bipush 6
    //   243: invokestatic 323	com/layer/sdk/internal/lsdkk/k:a	(I)Z
    //   246: ifeq -138 -> 108
    //   249: getstatic 199	com/layer/sdk/internal/lsdke/g:h	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   252: ldc_w 325
    //   255: aload 5
    //   257: invokestatic 328	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   260: goto -152 -> 108
    //   263: astore_1
    //   264: aconst_null
    //   265: astore 5
    //   267: goto -173 -> 94
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	270	0	this	g
    //   0	270	1	paramb	b<T>
    //   60	117	2	m	int
    //   65	126	3	n	int
    //   62	121	4	i1	int
    //   73	122	5	localSQLiteDatabase	SQLiteDatabase
    //   239	17	5	localSQLiteException	android.database.sqlite.SQLiteException
    //   265	1	5	localObject1	Object
    //   1	214	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   10	27	41	finally
    //   27	41	41	finally
    //   51	59	41	finally
    //   111	121	41	finally
    //   199	207	41	finally
    //   82	93	93	finally
    //   123	131	93	finally
    //   133	144	93	finally
    //   149	158	93	finally
    //   165	175	93	finally
    //   177	182	93	finally
    //   103	108	110	finally
    //   108	110	110	finally
    //   194	199	110	finally
    //   218	236	110	finally
    //   241	260	110	finally
    //   194	199	217	android/database/sqlite/SQLiteException
    //   103	108	239	android/database/sqlite/SQLiteException
    //   66	75	263	finally
  }
  
  private boolean l(SQLiteDatabase paramSQLiteDatabase)
    throws SQLiteDatabaseLockedException
  {
    int m = 100;
    int n = 0;
    Object localObject = null;
    for (;;)
    {
      if ((n == 0) && (m > 0))
      {
        try
        {
          if (this.d) {
            paramSQLiteDatabase.beginTransactionNonExclusive();
          } else {
            paramSQLiteDatabase.beginTransaction();
          }
        }
        catch (SQLiteDatabaseLockedException localSQLiteDatabaseLockedException)
        {
          m -= 1;
          try
          {
            TimeUnit.MILLISECONDS.sleep(10L);
          }
          catch (InterruptedException localInterruptedException) {}
        }
      }
      else
      {
        if (n == 0) {
          throw localSQLiteDatabaseLockedException;
        }
        return true;
        n = 1;
      }
    }
  }
  
  private void w()
  {
    this.c.lock();
    try
    {
      for (;;)
      {
        Long localLong2 = Long.valueOf(this.k.get());
        Long localLong1 = localLong2;
        if (localLong2.longValue() < 0L)
        {
          if (k.a(2)) {
            k.a(h, "WaitForClose : Resetting persistence connection counter to zero");
          }
          this.k.set(0L);
          localLong1 = Long.valueOf(0L);
        }
        if (localLong1.longValue() == 0L) {
          break;
        }
        if (k.a(2)) {
          k.a(h, "WaitForClose. Connection counter:  " + localLong1);
        }
        try
        {
          TimeUnit.MILLISECONDS.sleep(50L);
        }
        catch (InterruptedException localInterruptedException) {}
        if (k.a(6)) {
          k.d(h, "Sleep interrupted ", localInterruptedException);
        }
      }
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public long a()
  {
    ((Long)a(new a() {})).longValue();
  }
  
  public com.layer.b.d.c a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID, Integer paramInteger)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.b(paramSQLiteDatabase, paramUUID, paramInteger.intValue());
  }
  
  public com.layer.b.d.h a(SQLiteDatabase paramSQLiteDatabase, UUID paramUUID)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.a(paramSQLiteDatabase, paramUUID);
  }
  
  public com.layer.b.d.h a(final UUID paramUUID)
  {
    (com.layer.b.d.h)a(new a() {});
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.c a(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation, boolean paramBoolean)
  {
    this.c.lock();
    try
    {
      paramSQLiteDatabase = com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, (com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation, paramBoolean, null);
      return paramSQLiteDatabase;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.i a(final Uri paramUri)
  {
    (com.layer.sdk.internal.lsdkd.lsdka.i)a(new a() {});
  }
  
  public File a(File paramFile, String paramString, Context paramContext)
    throws IOException
  {
    int m = 1;
    if (k.a(2)) {
      k.a(h, "SyncPersistence::createCompressedCopy:Enter");
    }
    String str1 = paramContext.getDatabasePath(g()).getAbsolutePath();
    String str2 = str1 + com.layer.sdk.internal.lsdkk.h.a(g(), ".db") + ".db-wal";
    String str3 = str1 + com.layer.sdk.internal.lsdkk.h.a(g(), ".db") + ".db-shm";
    String str4 = paramFile.getAbsolutePath() + paramString + ".db";
    String str5 = paramFile.getAbsolutePath() + paramString + ".db-wal";
    String str6 = paramFile.getAbsolutePath() + paramString + ".db-shm";
    paramContext = new String[3];
    this.i.lock();
    this.c.lock();
    this.j.set(true);
    for (;;)
    {
      try
      {
        w();
        if (!com.layer.sdk.internal.lsdkk.h.b(str1, str4)) {
          break label351;
        }
        paramContext[0] = str4;
        if (com.layer.sdk.internal.lsdkk.h.b(str2, str5))
        {
          int n = m + 1;
          paramContext[m] = str5;
          m = n;
          if (com.layer.sdk.internal.lsdkk.h.b(str3, str6)) {
            paramContext[m] = str6;
          }
          this.i.unlock();
          this.c.unlock();
          paramFile = com.layer.sdk.internal.lsdkk.h.a(paramContext, paramFile.getAbsolutePath() + paramString + ".zip");
          com.layer.sdk.internal.lsdkk.h.a(paramContext);
          return paramFile;
        }
      }
      finally
      {
        this.i.unlock();
        this.c.unlock();
      }
      continue;
      label351:
      m = 0;
    }
  }
  
  public Boolean a(final Conversation paramConversation)
  {
    (Boolean)a(new b() {});
  }
  
  public Boolean a(final Conversation paramConversation, final Integer paramInteger)
  {
    (Boolean)a(new b() {});
  }
  
  public Boolean a(final String paramString, final Boolean paramBoolean)
  {
    (Boolean)a(new b() {});
  }
  
  public Integer a(final com.layer.sdk.internal.lsdkd.lsdka.c paramc)
  {
    (Integer)a(new a() {});
  }
  
  public Integer a(final f paramf)
  {
    (Integer)a(new a() {});
  }
  
  public Integer a(final com.layer.sdk.internal.lsdke.lsdka.a parama)
  {
    (Integer)a(new a() {});
  }
  
  public Long a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramh, paramString);
  }
  
  public Long a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString, Integer paramInteger)
  {
    this.c.lock();
    try
    {
      paramSQLiteDatabase = com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramh, paramString, paramInteger);
      return paramSQLiteDatabase;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public Long a(final String paramString)
  {
    (Long)a(new a() {});
  }
  
  public String a(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.f(paramSQLiteDatabase, paramLong);
  }
  
  public LinkedHashSet<com.layer.b.d.c> a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, int paramInt)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.a(paramSQLiteDatabase, paramLong.longValue(), paramInt);
  }
  
  public List<com.layer.b.d.h> a(final int paramInt)
  {
    (List)a(new a() {});
  }
  
  public List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.i(paramSQLiteDatabase);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.b(paramSQLiteDatabase, paramInt);
  }
  
  public List<com.layer.b.d.i> a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.f.c.f paramf, UUID paramUUID)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.a(paramSQLiteDatabase, paramf, paramUUID);
  }
  
  public List<com.layer.b.d.i> a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.f.c.f paramf, UUID paramUUID, Integer paramInteger)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.a(paramSQLiteDatabase, paramf, paramUUID, paramInteger);
  }
  
  public List<com.layer.sdk.internal.lsdkd.lsdka.h> a(SQLiteDatabase paramSQLiteDatabase, h.b paramb, Long paramLong, h.a parama)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.a(paramSQLiteDatabase, paramb, paramLong, parama);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> a(SQLiteDatabase paramSQLiteDatabase, d.a parama)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.a(paramSQLiteDatabase, parama);
  }
  
  public List<com.layer.b.d.c> a(SQLiteDatabase paramSQLiteDatabase, List<Long> paramList)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.a(paramSQLiteDatabase, paramList);
  }
  
  public List<e> a(SQLiteDatabase paramSQLiteDatabase, final Set<Long> paramSet)
  {
    (List)a(new a() {});
  }
  
  public List<Uri> a(final com.layer.sdk.internal.lsdkd.lsdka.c paramc, final String paramString, final long paramLong)
  {
    (List)a(new a() {});
  }
  
  public List<com.layer.sdk.internal.lsdkd.lsdka.o> a(final o.b paramb, final Long paramLong, final o.a parama)
  {
    (List)a(new a() {});
  }
  
  public List<com.layer.sdk.internal.lsdke.lsdka.a> a(final com.layer.sdk.internal.lsdke.lsdka.a.a parama, final Iterable<UUID> paramIterable)
  {
    (List)a(new a() {});
  }
  
  public List<com.layer.b.d.h> a(final Iterable<com.layer.b.d.h> paramIterable, final c.a parama)
  {
    (List)a(new b() {});
  }
  
  public List<Uri> a(final Long paramLong)
  {
    (List)a(new a() {});
  }
  
  public List<Uri> a(final Set<String> paramSet)
  {
    (List)a(new a() {});
  }
  
  public List<Uri> a(final com.layer.b.f.c.o... paramVarArgs)
  {
    (List)a(new a() {});
  }
  
  public List<j> a(final MessagePart.TransferStatus... paramVarArgs)
  {
    (List)a(new a() {});
  }
  
  public Map<Uri, com.layer.sdk.internal.lsdkd.lsdka.c> a(SQLiteDatabase paramSQLiteDatabase, Collection<com.layer.sdk.internal.lsdkd.lsdka.c> paramCollection, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.c.lock();
    if (paramBoolean2) {}
    for (;;)
    {
      HashMap localHashMap;
      try
      {
        localMap = com.layer.sdk.internal.lsdke.lsdkc.a.h(paramSQLiteDatabase);
        localHashMap = new HashMap();
        paramCollection = paramCollection.iterator();
        if (paramCollection.hasNext())
        {
          com.layer.sdk.internal.lsdkd.lsdka.c localc1 = (com.layer.sdk.internal.lsdkd.lsdka.c)paramCollection.next();
          com.layer.sdk.internal.lsdkd.lsdka.c localc2 = com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, localc1, paramBoolean1, localMap);
          if (localc2 == null) {
            continue;
          }
          localHashMap.put(localc2.getId(), localc1);
          continue;
        }
      }
      finally
      {
        this.c.unlock();
      }
      return localHashMap;
      Map localMap = null;
    }
  }
  
  public Set<Integer> a(final com.layer.sdk.internal.lsdke.lsdka.a.a parama, final UUID paramUUID, final Integer paramInteger1, final Integer paramInteger2)
  {
    (Set)a(new a() {});
  }
  
  public void a(final int paramInt, final List<com.layer.b.f.a.d> paramList)
  {
    a(new b() {});
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.b(paramSQLiteDatabase, paramc);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.b(paramSQLiteDatabase, paramh);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, c.a parama)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, paramh, parama);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, boolean paramBoolean)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.b(paramSQLiteDatabase, paramh, paramBoolean);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.c paramc)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramc);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdkd.lsdka.o paramo)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, paramo);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.c paramc)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramc);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.d paramd)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramd);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramConversation);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Message paramMessage)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramMessage);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Iterable<com.layer.b.d.i> paramIterable)
  {
    this.c.lock();
    try
    {
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext()) {
        com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, (com.layer.b.d.i)paramIterable.next());
      }
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Iterable<com.layer.sdk.internal.lsdkd.d> paramIterable, boolean paramBoolean)
  {
    this.c.lock();
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    ArrayList localArrayList3;
    ArrayList localArrayList4;
    com.layer.sdk.internal.lsdkd.d locald;
    for (;;)
    {
      try
      {
        localArrayList1 = new ArrayList();
        localArrayList2 = new ArrayList();
        localArrayList3 = new ArrayList();
        localArrayList4 = new ArrayList();
        paramIterable = paramIterable.iterator();
        if (!paramIterable.hasNext()) {
          break label300;
        }
        locald = (com.layer.sdk.internal.lsdkd.d)paramIterable.next();
        if ((locald instanceof com.layer.sdk.internal.lsdkd.lsdka.c)) {
          if (((com.layer.sdk.internal.lsdkd.lsdka.c)locald).isDistinct())
          {
            if (k.a(6)) {
              k.e(h, "Use persistDistinctConversationChangeable to persist distinct conversation. changeable: " + locald);
            }
            throw new IllegalArgumentException("Use persistDistinctConversationChangeable to persist distinct conversation");
          }
        }
      }
      catch (IOException paramSQLiteDatabase)
      {
        if (k.a(6)) {
          k.d(h, "persistChangables failed", paramSQLiteDatabase);
        }
        return;
        localArrayList1.add((com.layer.sdk.internal.lsdkd.lsdka.c)locald);
        continue;
      }
      finally
      {
        this.c.unlock();
      }
      if ((locald instanceof com.layer.sdk.internal.lsdkd.lsdka.i))
      {
        localArrayList2.add((com.layer.sdk.internal.lsdkd.lsdka.i)locald);
      }
      else if ((locald instanceof j))
      {
        localArrayList3.add((j)locald);
      }
      else
      {
        if (!(locald instanceof e)) {
          break;
        }
        localArrayList4.add((e)locald);
      }
    }
    if (k.a(6)) {
      k.e(h, "Unknown Changeable: " + locald);
    }
    throw new IllegalArgumentException("Unknown Changeable");
    label300:
    if (!localArrayList1.isEmpty()) {
      com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, localArrayList1, paramBoolean);
    }
    if (!localArrayList2.isEmpty()) {
      com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, localArrayList2);
    }
    if (!localArrayList3.isEmpty()) {
      com.layer.sdk.internal.lsdke.lsdkc.c.b(paramSQLiteDatabase, localArrayList3);
    }
    if (!localArrayList4.isEmpty()) {
      com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, localArrayList4);
    }
    this.c.unlock();
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong1, Long paramLong2)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.b(paramSQLiteDatabase, paramLong1, paramLong2);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Long paramLong, String paramString)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramLong, paramString);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, String paramString, com.layer.sdk.internal.lsdkd.lsdka.c paramc)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramString, paramc);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, Collection<com.layer.sdk.internal.lsdki.d> paramCollection)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramCollection);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.i... paramVarArgs)
  {
    this.c.lock();
    try
    {
      int n = paramVarArgs.length;
      int m = 0;
      while (m < n)
      {
        com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, paramVarArgs[m]);
        m += 1;
      }
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.c... paramVarArgs)
  {
    this.c.lock();
    try
    {
      int n = paramVarArgs.length;
      int m = 0;
      while (m < n)
      {
        com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, paramVarArgs[m]);
        m += 1;
      }
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void a(final com.layer.b.d.c paramc)
  {
    a(new b() {});
  }
  
  public void a(final com.layer.b.d.h paramh, final c.a parama)
  {
    a(new b() {});
  }
  
  public void a(final com.layer.b.d.h paramh, final boolean paramBoolean)
  {
    a(new b() {});
  }
  
  public void a(final com.layer.sdk.internal.lsdkd.lsdka.d paramd)
  {
    a(new b() {});
  }
  
  public void a(final o.b paramb, final Long paramLong, final long paramLong1, String paramString, final boolean paramBoolean)
  {
    a(new b() {});
  }
  
  public void a(final Conversation paramConversation, final int paramInt)
  {
    a(new b() {});
  }
  
  public void a(final Conversation paramConversation, final boolean paramBoolean)
  {
    a(new b() {});
  }
  
  public void a(final Iterable<com.layer.sdk.internal.lsdke.lsdka.a> paramIterable)
  {
    a(new b() {});
  }
  
  public void a(final Collection<e> paramCollection)
  {
    a(new b() {});
  }
  
  public void a(final HashMap<UUID, Integer> paramHashMap)
  {
    a(new b() {});
  }
  
  public void a(final List<n> paramList, final c.a parama)
  {
    a(new b() {});
  }
  
  public void a(final UUID paramUUID, final Long paramLong)
  {
    a(new b()
    {
      public final Object t(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        com.layer.sdk.internal.lsdke.lsdkc.a.a(paramAnonymousSQLiteDatabase, paramUUID, paramLong);
        return null;
      }
    });
  }
  
  public Uri b(final Set<String> paramSet)
  {
    (Uri)a(new a() {});
  }
  
  public com.layer.b.d.h b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, c.a parama)
  {
    this.c.lock();
    try
    {
      paramSQLiteDatabase = com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, paramh, parama, false);
      return paramSQLiteDatabase;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public com.layer.b.d.h b(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.c(paramSQLiteDatabase, paramLong);
  }
  
  public com.layer.b.d.h b(final com.layer.b.d.h paramh, final c.a parama)
  {
    (com.layer.b.d.h)a(new b() {});
  }
  
  public com.layer.b.d.h b(final Long paramLong)
  {
    (com.layer.b.d.h)a(new a() {});
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.c b(final UUID paramUUID)
  {
    (com.layer.sdk.internal.lsdkd.lsdka.c)a(new a() {});
  }
  
  public j b(final Uri paramUri)
  {
    (j)a(new a() {});
  }
  
  public List<com.layer.sdk.internal.lsdke.lsdkc.a.a> b()
  {
    (List)a(new a() {});
  }
  
  public List<com.layer.sdk.internal.lsdki.d> b(SQLiteDatabase paramSQLiteDatabase)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.j(paramSQLiteDatabase);
  }
  
  public List<e> b(SQLiteDatabase paramSQLiteDatabase, final Set<String> paramSet)
  {
    (List)a(new a() {});
  }
  
  public List<Uri> b(final String paramString)
  {
    (List)a(new a() {});
  }
  
  public void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.c.a(paramSQLiteDatabase, paramc);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, String paramString)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramh, paramString, true);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void b(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.h paramh, boolean paramBoolean)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramh, paramBoolean);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void b(SQLiteDatabase paramSQLiteDatabase, Long paramLong1, Long paramLong2)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramLong1, paramLong2);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void b(final Conversation paramConversation, final int paramInt)
  {
    a(new b() {});
  }
  
  public void b(final Iterable<com.layer.b.d.c> paramIterable)
  {
    a(new b() {});
  }
  
  public void b(final String paramString, final Boolean paramBoolean)
  {
    a(new b() {});
  }
  
  public void b(final Collection<e> paramCollection)
  {
    a(new b() {});
  }
  
  public void b(final HashMap<UUID, Integer> paramHashMap)
  {
    a(new b() {});
  }
  
  public Uri c(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.a.j(paramSQLiteDatabase, paramLong);
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.c c(final Uri paramUri)
  {
    (com.layer.sdk.internal.lsdkd.lsdka.c)a(new a() {});
  }
  
  public Long c(final Long paramLong)
  {
    (Long)a(new a() {});
  }
  
  public LinkedHashSet<n> c(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.c(paramSQLiteDatabase, paramSet);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> c(SQLiteDatabase paramSQLiteDatabase)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.k(paramSQLiteDatabase);
  }
  
  public void c()
  {
    a(new b() {});
  }
  
  public void c(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.c paramc)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramc);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void c(final Iterable<com.layer.b.d.i> paramIterable)
  {
    a(new b() {});
  }
  
  public void c(final String paramString)
  {
    a(new b() {});
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.d d(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.m(paramSQLiteDatabase, paramLong);
  }
  
  public e d(final Uri paramUri)
  {
    (e)a(new a() {});
  }
  
  public Boolean d(final String paramString)
  {
    (Boolean)a(new b() {});
  }
  
  public List<com.layer.sdk.internal.lsdki.d> d(SQLiteDatabase paramSQLiteDatabase)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.l(paramSQLiteDatabase);
  }
  
  public void d(SQLiteDatabase paramSQLiteDatabase, Set<Long> paramSet)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.a(paramSQLiteDatabase, paramSet);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void d(final Iterable<com.layer.sdk.internal.lsdkd.lsdka.o> paramIterable)
  {
    a(new b() {});
  }
  
  public void d(final Long paramLong)
  {
    a(new b() {});
  }
  
  /* Error */
  public boolean d()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 295	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 250	com/layer/sdk/internal/lsdke/g:e	Lcom/layer/sdk/internal/lsdke/d;
    //   11: astore_2
    //   12: aload_2
    //   13: ifnonnull +14 -> 27
    //   16: iconst_1
    //   17: istore_1
    //   18: aload_0
    //   19: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   22: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   25: iload_1
    //   26: ireturn
    //   27: iconst_0
    //   28: istore_1
    //   29: goto -11 -> 18
    //   32: astore_2
    //   33: aload_0
    //   34: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   37: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   40: aload_2
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	g
    //   17	12	1	bool	boolean
    //   11	2	2	locald	d
    //   32	9	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   7	12	32	finally
  }
  
  public SQLiteDatabase e()
  {
    this.c.lock();
    SQLiteDatabase localSQLiteDatabase;
    boolean bool;
    try
    {
      if ((this.e == null) || (this.e.e())) {
        throw new LayerException(LayerException.Type.PERSISTENCE_CLOSED, "Cannot begin write operation while persistence is closed.");
      }
    }
    finally
    {
      this.c.unlock();
      throw ((Throwable)localObject1);
    }
    return null;
  }
  
  public Uri e(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.a.k(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.sdk.internal.lsdki.d> e(SQLiteDatabase paramSQLiteDatabase)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.n(paramSQLiteDatabase);
  }
  
  public void e(final Long paramLong)
  {
    a(new b() {});
  }
  
  public Uri f(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.a.e(paramSQLiteDatabase, paramLong);
  }
  
  /* Error */
  public void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 295	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 250	com/layer/sdk/internal/lsdke/g:e	Lcom/layer/sdk/internal/lsdke/d;
    //   11: ifnonnull +30 -> 41
    //   14: aload_0
    //   15: new 252	com/layer/sdk/internal/lsdke/d
    //   18: dup
    //   19: new 20	com/layer/sdk/internal/lsdke/g$1
    //   22: dup
    //   23: aload_0
    //   24: invokespecial 899	com/layer/sdk/internal/lsdke/g$1:<init>	(Lcom/layer/sdk/internal/lsdke/g;)V
    //   27: invokespecial 902	com/layer/sdk/internal/lsdke/d:<init>	(Lcom/layer/sdk/internal/lsdke/d$b;)V
    //   30: putfield 250	com/layer/sdk/internal/lsdke/g:e	Lcom/layer/sdk/internal/lsdke/d;
    //   33: aload_0
    //   34: getfield 250	com/layer/sdk/internal/lsdke/g:e	Lcom/layer/sdk/internal/lsdke/d;
    //   37: invokevirtual 905	com/layer/sdk/internal/lsdke/d:a	()Lcom/layer/sdk/internal/lsdke/d;
    //   40: pop
    //   41: aload_0
    //   42: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   45: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   48: return
    //   49: astore_1
    //   50: new 256	com/layer/sdk/exceptions/LayerException
    //   53: dup
    //   54: getstatic 908	com/layer/sdk/exceptions/LayerException$Type:PERSISTENCE_CREATION_FAILED	Lcom/layer/sdk/exceptions/LayerException$Type;
    //   57: new 374	java/lang/StringBuilder
    //   60: dup
    //   61: ldc_w 910
    //   64: invokespecial 377	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   67: aload_1
    //   68: invokevirtual 913	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   71: invokevirtual 451	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 385	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: aload_1
    //   78: invokespecial 916	com/layer/sdk/exceptions/LayerException:<init>	(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   81: athrow
    //   82: astore_1
    //   83: aload_0
    //   84: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   87: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   90: aload_1
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	g
    //   49	29	1	localException	Exception
    //   82	9	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   33	41	49	java/lang/Exception
    //   7	33	82	finally
    //   33	41	82	finally
    //   50	82	82	finally
  }
  
  public void f(SQLiteDatabase paramSQLiteDatabase)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.c(paramSQLiteDatabase);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void f(final Long paramLong)
  {
    a(new b() {});
  }
  
  protected void finalize()
    throws Throwable
  {
    if (!d()) {
      throw new IllegalStateException("SyncPersistence was not closed");
    }
    super.finalize();
  }
  
  public Uri g(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.a.l(paramSQLiteDatabase, paramLong);
  }
  
  public String g()
  {
    return this.b;
  }
  
  public List<com.layer.sdk.internal.lsdki.d> g(SQLiteDatabase paramSQLiteDatabase)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.m(paramSQLiteDatabase);
  }
  
  public void g(final Long paramLong)
  {
    a(new b() {});
  }
  
  public com.layer.b.d.i h(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.b(paramSQLiteDatabase, paramLong);
  }
  
  public g h()
  {
    if (k.a(2)) {
      k.a(h, "Closing SyncPersistence");
    }
    this.c.lock();
    try
    {
      if (k.a(2)) {
        k.a(h, "Waiting current database connections to finish");
      }
      w();
      if (k.a(2)) {
        k.a(h, "Closing database connection pool");
      }
      if (this.e != null)
      {
        this.e.d();
        this.e = null;
      }
      return this;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void h(SQLiteDatabase paramSQLiteDatabase)
  {
    this.c.lock();
    try
    {
      com.layer.sdk.internal.lsdke.lsdkc.a.g(paramSQLiteDatabase);
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.o i(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.q(paramSQLiteDatabase, paramLong);
  }
  
  /* Error */
  public void i(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 307	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   4: aload_0
    //   5: getfield 225	com/layer/sdk/internal/lsdke/g:k	Ljava/util/concurrent/atomic/AtomicLong;
    //   8: invokevirtual 283	java/util/concurrent/atomic/AtomicLong:decrementAndGet	()J
    //   11: pop2
    //   12: aload_0
    //   13: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   16: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   19: return
    //   20: astore_1
    //   21: aload_0
    //   22: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   25: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   28: aload_1
    //   29: athrow
    //   30: astore_1
    //   31: aload_0
    //   32: getfield 225	com/layer/sdk/internal/lsdke/g:k	Ljava/util/concurrent/atomic/AtomicLong;
    //   35: invokevirtual 283	java/util/concurrent/atomic/AtomicLong:decrementAndGet	()J
    //   38: pop2
    //   39: aload_0
    //   40: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   43: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   46: aload_1
    //   47: athrow
    //   48: astore_1
    //   49: aload_0
    //   50: getfield 209	com/layer/sdk/internal/lsdke/g:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   53: invokevirtual 300	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   56: aload_1
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	this	g
    //   0	58	1	paramSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   4	12	20	finally
    //   0	4	30	finally
    //   31	39	48	finally
  }
  
  public boolean i()
  {
    ((Boolean)a(new a() {})).booleanValue();
  }
  
  public com.layer.b.d.h j(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.a(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.b.d.i> j()
  {
    (List)a(new a() {});
  }
  
  public List<com.layer.b.d.i> j(SQLiteDatabase paramSQLiteDatabase)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.d(paramSQLiteDatabase);
  }
  
  public int k()
  {
    ((Integer)a(new a() {})).intValue();
  }
  
  public Uri k(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.a.o(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.b.d.i> k(SQLiteDatabase paramSQLiteDatabase)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.e(paramSQLiteDatabase);
  }
  
  public com.layer.b.d.c l(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.g(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.b.d.c> l()
  {
    (List)a(new a() {});
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.d m(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.l(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.sdk.internal.lsdkd.lsdka.o> m()
  {
    (List)a(new a() {});
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.h n(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.p(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.b.d.h> n()
  {
    (List)a(new a() {});
  }
  
  public Integer o(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    this.c.lock();
    try
    {
      paramSQLiteDatabase = com.layer.sdk.internal.lsdke.lsdkc.a.c(paramSQLiteDatabase, paramLong);
      return paramSQLiteDatabase;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public List<com.layer.b.d.h> o()
  {
    (List)a(new a() {});
  }
  
  public l p(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.b.n(paramSQLiteDatabase, paramLong);
  }
  
  public List<com.layer.b.d.h> p()
  {
    (List)a(new a() {});
  }
  
  public Uri q(SQLiteDatabase paramSQLiteDatabase, Long paramLong)
  {
    return com.layer.sdk.internal.lsdke.lsdkc.a.m(paramSQLiteDatabase, paramLong);
  }
  
  public List<e> q()
  {
    (List)a(new a() {});
  }
  
  public LinkedHashSet<n> r()
  {
    (LinkedHashSet)a(new a() {});
  }
  
  public List<com.layer.sdk.internal.lsdki.c> s()
  {
    (List)a(new a() {});
  }
  
  public List<String> t()
  {
    (List)a(new a() {});
  }
  
  public List<String> u()
  {
    (List)a(new a() {});
  }
  
  public void v()
  {
    a(new b() {});
  }
  
  private static abstract interface a<T>
  {
    public abstract T t(SQLiteDatabase paramSQLiteDatabase);
  }
  
  private static abstract interface b<T>
  {
    public abstract T t(SQLiteDatabase paramSQLiteDatabase);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */