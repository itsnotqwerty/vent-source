package okhttp3.internal.a;

import d.l;
import d.r;
import d.s;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.c;
import okhttp3.internal.f.a;

public final class d
  implements Closeable, Flushable
{
  static final Pattern LEGAL_KEY_PATTERN;
  private final int appVersion;
  final a cZU;
  d.d cZV;
  private final Runnable cleanupRunnable = new Runnable()
  {
    public final void run()
    {
      int i = 1;
      synchronized (d.this)
      {
        if (!d.this.initialized)
        {
          if ((i | d.this.closed) == 0) {}
        }
        else {
          i = 0;
        }
      }
      try
      {
        d.this.trimToSize();
      }
      catch (IOException localIOException1)
      {
        try
        {
          for (;;)
          {
            if (d.this.journalRebuildRequired())
            {
              d.this.rebuildJournal();
              d.this.redundantOpCount = 0;
            }
            return;
            localObject = finally;
            throw ((Throwable)localObject);
            localIOException1 = localIOException1;
            d.this.mostRecentTrimFailed = true;
          }
        }
        catch (IOException localIOException2)
        {
          for (;;)
          {
            d.this.mostRecentRebuildFailed = true;
            d.this.cZV = l.a(l.Nr());
          }
        }
      }
    }
  };
  boolean closed;
  final File directory;
  private final Executor executor;
  boolean hasJournalErrors;
  boolean initialized;
  private final File journalFile;
  private final File journalFileBackup;
  private final File journalFileTmp;
  final LinkedHashMap<String, b> lruEntries = new LinkedHashMap(0, 0.75F, true);
  private long maxSize;
  boolean mostRecentRebuildFailed;
  boolean mostRecentTrimFailed;
  private long nextSequenceNumber = 0L;
  int redundantOpCount;
  private long size = 0L;
  final int valueCount;
  
  static
  {
    if (!d.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,120}");
      return;
    }
  }
  
  private d(a parama, File paramFile, Executor paramExecutor)
  {
    this.cZU = parama;
    this.directory = paramFile;
    this.appVersion = 201105;
    this.journalFile = new File(paramFile, "journal");
    this.journalFileTmp = new File(paramFile, "journal.tmp");
    this.journalFileBackup = new File(paramFile, "journal.bkp");
    this.valueCount = 2;
    this.maxSize = 10485760L;
    this.executor = paramExecutor;
  }
  
  private d.d ML()
    throws FileNotFoundException
  {
    l.a(new e(this.cZU.r(this.journalFile))
    {
      static
      {
        if (!d.class.desiredAssertionStatus()) {}
        for (boolean bool = true;; bool = false)
        {
          $assertionsDisabled = bool;
          return;
        }
      }
      
      protected final void MM()
      {
        assert (Thread.holdsLock(d.this));
        d.this.hasJournalErrors = true;
      }
    });
  }
  
  public static d a(a parama, File paramFile)
  {
    if (10485760L <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    return new d(parama, paramFile, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), c.threadFactory("OkHttp DiskLruCache", true)));
  }
  
  private void checkNotClosed()
  {
    try
    {
      if (isClosed()) {
        throw new IllegalStateException("cache is closed");
      }
    }
    finally {}
  }
  
  /* Error */
  private void initialize()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 66	okhttp3/internal/a/d:$assertionsDisabled	Z
    //   5: ifne +23 -> 28
    //   8: aload_0
    //   9: invokestatic 201	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   12: ifne +16 -> 28
    //   15: new 203	java/lang/AssertionError
    //   18: dup
    //   19: invokespecial 204	java/lang/AssertionError:<init>	()V
    //   22: athrow
    //   23: astore_2
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_2
    //   27: athrow
    //   28: aload_0
    //   29: getfield 206	okhttp3/internal/a/d:initialized	Z
    //   32: istore_1
    //   33: iload_1
    //   34: ifeq +6 -> 40
    //   37: aload_0
    //   38: monitorexit
    //   39: return
    //   40: aload_0
    //   41: getfield 100	okhttp3/internal/a/d:cZU	Lokhttp3/internal/f/a;
    //   44: aload_0
    //   45: getfield 122	okhttp3/internal/a/d:journalFileBackup	Ljava/io/File;
    //   48: invokeinterface 210 2 0
    //   53: ifeq +32 -> 85
    //   56: aload_0
    //   57: getfield 100	okhttp3/internal/a/d:cZU	Lokhttp3/internal/f/a;
    //   60: aload_0
    //   61: getfield 114	okhttp3/internal/a/d:journalFile	Ljava/io/File;
    //   64: invokeinterface 210 2 0
    //   69: ifeq +129 -> 198
    //   72: aload_0
    //   73: getfield 100	okhttp3/internal/a/d:cZU	Lokhttp3/internal/f/a;
    //   76: aload_0
    //   77: getfield 122	okhttp3/internal/a/d:journalFileBackup	Ljava/io/File;
    //   80: invokeinterface 214 2 0
    //   85: aload_0
    //   86: getfield 100	okhttp3/internal/a/d:cZU	Lokhttp3/internal/f/a;
    //   89: aload_0
    //   90: getfield 114	okhttp3/internal/a/d:journalFile	Ljava/io/File;
    //   93: invokeinterface 210 2 0
    //   98: istore_1
    //   99: iload_1
    //   100: ifeq +86 -> 186
    //   103: aload_0
    //   104: invokespecial 217	okhttp3/internal/a/d:readJournal	()V
    //   107: aload_0
    //   108: invokespecial 220	okhttp3/internal/a/d:processJournal	()V
    //   111: aload_0
    //   112: iconst_1
    //   113: putfield 206	okhttp3/internal/a/d:initialized	Z
    //   116: goto -79 -> 37
    //   119: astore_2
    //   120: invokestatic 226	okhttp3/internal/g/f:Ng	()Lokhttp3/internal/g/f;
    //   123: iconst_5
    //   124: new 228	java/lang/StringBuilder
    //   127: dup
    //   128: ldc -26
    //   130: invokespecial 231	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   133: aload_0
    //   134: getfield 102	okhttp3/internal/a/d:directory	Ljava/io/File;
    //   137: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   140: ldc -19
    //   142: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload_2
    //   146: invokevirtual 244	java/io/IOException:getMessage	()Ljava/lang/String;
    //   149: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: ldc -10
    //   154: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 249	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: aload_2
    //   161: invokevirtual 253	okhttp3/internal/g/f:log	(ILjava/lang/String;Ljava/lang/Throwable;)V
    //   164: aload_0
    //   165: invokevirtual 256	okhttp3/internal/a/d:close	()V
    //   168: aload_0
    //   169: getfield 100	okhttp3/internal/a/d:cZU	Lokhttp3/internal/f/a;
    //   172: aload_0
    //   173: getfield 102	okhttp3/internal/a/d:directory	Ljava/io/File;
    //   176: invokeinterface 259 2 0
    //   181: aload_0
    //   182: iconst_0
    //   183: putfield 261	okhttp3/internal/a/d:closed	Z
    //   186: aload_0
    //   187: invokevirtual 264	okhttp3/internal/a/d:rebuildJournal	()V
    //   190: aload_0
    //   191: iconst_1
    //   192: putfield 206	okhttp3/internal/a/d:initialized	Z
    //   195: goto -158 -> 37
    //   198: aload_0
    //   199: getfield 100	okhttp3/internal/a/d:cZU	Lokhttp3/internal/f/a;
    //   202: aload_0
    //   203: getfield 122	okhttp3/internal/a/d:journalFileBackup	Ljava/io/File;
    //   206: aload_0
    //   207: getfield 114	okhttp3/internal/a/d:journalFile	Ljava/io/File;
    //   210: invokeinterface 268 3 0
    //   215: goto -130 -> 85
    //   218: astore_2
    //   219: aload_0
    //   220: iconst_0
    //   221: putfield 261	okhttp3/internal/a/d:closed	Z
    //   224: aload_2
    //   225: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	226	0	this	d
    //   32	68	1	bool	boolean
    //   23	4	2	localObject1	Object
    //   119	42	2	localIOException	IOException
    //   218	7	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	23	23	finally
    //   28	33	23	finally
    //   40	85	23	finally
    //   85	99	23	finally
    //   103	116	23	finally
    //   120	164	23	finally
    //   181	186	23	finally
    //   186	195	23	finally
    //   198	215	23	finally
    //   219	226	23	finally
    //   103	116	119	java/io/IOException
    //   164	181	218	finally
  }
  
  private boolean isClosed()
  {
    try
    {
      boolean bool = this.closed;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void processJournal()
    throws IOException
  {
    this.cZU.delete(this.journalFileTmp);
    Iterator localIterator = this.lruEntries.values().iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      int i;
      if (localb.cZZ == null)
      {
        i = 0;
        while (i < this.valueCount)
        {
          this.size += localb.lengths[i];
          i += 1;
        }
      }
      else
      {
        localb.cZZ = null;
        i = 0;
        while (i < this.valueCount)
        {
          this.cZU.delete(localb.cleanFiles[i]);
          this.cZU.delete(localb.dirtyFiles[i]);
          i += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void readJournal()
    throws IOException
  {
    d.e locale = l.b(this.cZU.p(this.journalFile));
    Object localObject3;
    Object localObject4;
    String str2;
    int i;
    int j;
    int k;
    int m;
    Object localObject2;
    try
    {
      String str1 = locale.Kz();
      localObject3 = locale.Kz();
      localObject4 = locale.Kz();
      str2 = locale.Kz();
      String str3 = locale.Kz();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(localObject3)) || (!Integer.toString(this.appVersion).equals(localObject4)) || (!Integer.toString(this.valueCount).equals(str2)) || (!"".equals(str3))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + (String)localObject3 + ", " + str2 + ", " + str3 + "]");
      }
    }
    finally
    {
      c.closeQuietly(locale);
      throw ((Throwable)localObject1);
      i = 0;
    }
  }
  
  private static void validateKey(String paramString)
  {
    if (!LEGAL_KEY_PATTERN.matcher(paramString).matches()) {
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + paramString + "\"");
    }
  }
  
  final void a(a parama, boolean paramBoolean)
    throws IOException
  {
    int k = 0;
    b localb;
    try
    {
      localb = parama.cZX;
      if (localb.cZZ != parama) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int j = k;
    if (paramBoolean)
    {
      j = k;
      if (!localb.readable)
      {
        int i = 0;
        for (;;)
        {
          j = k;
          if (i >= this.valueCount) {
            break;
          }
          if (parama.written[i] == 0)
          {
            parama.abort();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i);
          }
          if (!this.cZU.exists(localb.dirtyFiles[i]))
          {
            parama.abort();
            return;
          }
          i += 1;
        }
      }
    }
    for (;;)
    {
      long l1;
      if (j < this.valueCount)
      {
        parama = localb.dirtyFiles[j];
        if (paramBoolean)
        {
          if (this.cZU.exists(parama))
          {
            File localFile = localb.cleanFiles[j];
            this.cZU.rename(parama, localFile);
            l1 = localb.lengths[j];
            long l2 = this.cZU.size(localFile);
            localb.lengths[j] = l2;
            this.size = (this.size - l1 + l2);
          }
        }
        else {
          this.cZU.delete(parama);
        }
      }
      else
      {
        this.redundantOpCount += 1;
        localb.cZZ = null;
        if ((localb.readable | paramBoolean))
        {
          localb.readable = true;
          this.cZV.fF("CLEAN").gb(32);
          this.cZV.fF(localb.key);
          localb.b(this.cZV);
          this.cZV.gb(10);
          if (paramBoolean)
          {
            l1 = this.nextSequenceNumber;
            this.nextSequenceNumber = (1L + l1);
            localb.sequenceNumber = l1;
          }
        }
        for (;;)
        {
          this.cZV.flush();
          if ((this.size <= this.maxSize) && (!journalRebuildRequired())) {
            break;
          }
          this.executor.execute(this.cleanupRunnable);
          break;
          this.lruEntries.remove(localb.key);
          this.cZV.fF("REMOVE").gb(32);
          this.cZV.fF(localb.key);
          this.cZV.gb(10);
        }
      }
      j += 1;
    }
  }
  
  final boolean a(b paramb)
    throws IOException
  {
    if (paramb.cZZ != null) {
      paramb.cZZ.detach();
    }
    int i = 0;
    while (i < this.valueCount)
    {
      this.cZU.delete(paramb.cleanFiles[i]);
      this.size -= paramb.lengths[i];
      paramb.lengths[i] = 0L;
      i += 1;
    }
    this.redundantOpCount += 1;
    this.cZV.fF("REMOVE").gb(32).fF(paramb.key).gb(10);
    this.lruEntries.remove(paramb.key);
    if (journalRebuildRequired()) {
      this.executor.execute(this.cleanupRunnable);
    }
    return true;
  }
  
  public final a c(String paramString, long paramLong)
    throws IOException
  {
    for (;;)
    {
      try
      {
        initialize();
        checkNotClosed();
        validateKey(paramString);
        Object localObject = (b)this.lruEntries.get(paramString);
        if (paramLong != -1L) {
          if (localObject != null)
          {
            long l = ((b)localObject).sequenceNumber;
            if (l == paramLong) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if ((localObject != null) && (((b)localObject).cZZ != null))
        {
          paramString = null;
        }
        else if ((this.mostRecentTrimFailed) || (this.mostRecentRebuildFailed))
        {
          this.executor.execute(this.cleanupRunnable);
          paramString = null;
        }
        else
        {
          this.cZV.fF("DIRTY").gb(32).fF(paramString).gb(10);
          this.cZV.flush();
          if (this.hasJournalErrors)
          {
            paramString = null;
          }
          else if (localObject == null)
          {
            localObject = new b(paramString);
            this.lruEntries.put(paramString, localObject);
            paramString = (String)localObject;
            localObject = new a(paramString);
            paramString.cZZ = ((a)localObject);
            paramString = (String)localObject;
          }
          else
          {
            paramString = (String)localObject;
          }
        }
      }
      finally {}
    }
  }
  
  public final void close()
    throws IOException
  {
    for (;;)
    {
      try
      {
        if ((!this.initialized) || (this.closed))
        {
          this.closed = true;
          return;
        }
        b[] arrayOfb = (b[])this.lruEntries.values().toArray(new b[this.lruEntries.size()]);
        int j = arrayOfb.length;
        int i = 0;
        if (i < j)
        {
          b localb = arrayOfb[i];
          if (localb.cZZ != null) {
            localb.cZZ.abort();
          }
        }
        else
        {
          trimToSize();
          this.cZV.close();
          this.cZV = null;
          this.closed = true;
          continue;
        }
        i += 1;
      }
      finally {}
    }
  }
  
  public final void evictAll()
    throws IOException
  {
    int i = 0;
    try
    {
      initialize();
      b[] arrayOfb = (b[])this.lruEntries.values().toArray(new b[this.lruEntries.size()]);
      int j = arrayOfb.length;
      while (i < j)
      {
        a(arrayOfb[i]);
        i += 1;
      }
      this.mostRecentTrimFailed = false;
      return;
    }
    finally {}
  }
  
  /* Error */
  public final c fC(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 488	okhttp3/internal/a/d:initialize	()V
    //   6: aload_0
    //   7: invokespecial 490	okhttp3/internal/a/d:checkNotClosed	()V
    //   10: aload_1
    //   11: invokestatic 492	okhttp3/internal/a/d:validateKey	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 91	okhttp3/internal/a/d:lruEntries	Ljava/util/LinkedHashMap;
    //   18: aload_1
    //   19: invokevirtual 381	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: checkcast 19	okhttp3/internal/a/d$b
    //   25: astore_3
    //   26: aload_3
    //   27: ifnull +12 -> 39
    //   30: aload_3
    //   31: getfield 399	okhttp3/internal/a/d$b:readable	Z
    //   34: istore_2
    //   35: iload_2
    //   36: ifne +9 -> 45
    //   39: aconst_null
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: areturn
    //   45: aload_3
    //   46: invokevirtual 519	okhttp3/internal/a/d$b:MN	()Lokhttp3/internal/a/d$c;
    //   49: astore_3
    //   50: aload_3
    //   51: ifnonnull +8 -> 59
    //   54: aconst_null
    //   55: astore_1
    //   56: goto -15 -> 41
    //   59: aload_0
    //   60: aload_0
    //   61: getfield 357	okhttp3/internal/a/d:redundantOpCount	I
    //   64: iconst_1
    //   65: iadd
    //   66: putfield 357	okhttp3/internal/a/d:redundantOpCount	I
    //   69: aload_0
    //   70: getfield 414	okhttp3/internal/a/d:cZV	Ld/d;
    //   73: ldc_w 410
    //   76: invokeinterface 455 2 0
    //   81: bipush 32
    //   83: invokeinterface 459 2 0
    //   88: aload_1
    //   89: invokeinterface 455 2 0
    //   94: bipush 10
    //   96: invokeinterface 459 2 0
    //   101: pop
    //   102: aload_3
    //   103: astore_1
    //   104: aload_0
    //   105: invokevirtual 475	okhttp3/internal/a/d:journalRebuildRequired	()Z
    //   108: ifeq -67 -> 41
    //   111: aload_0
    //   112: getfield 130	okhttp3/internal/a/d:executor	Ljava/util/concurrent/Executor;
    //   115: aload_0
    //   116: getfield 98	okhttp3/internal/a/d:cleanupRunnable	Ljava/lang/Runnable;
    //   119: invokeinterface 481 2 0
    //   124: aload_3
    //   125: astore_1
    //   126: goto -85 -> 41
    //   129: astore_1
    //   130: aload_0
    //   131: monitorexit
    //   132: aload_1
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	d
    //   0	134	1	paramString	String
    //   34	2	2	bool	boolean
    //   25	100	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	129	finally
    //   30	35	129	finally
    //   45	50	129	finally
    //   59	102	129	finally
    //   104	124	129	finally
  }
  
  /* Error */
  public final void flush()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 206	okhttp3/internal/a/d:initialized	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokespecial 490	okhttp3/internal/a/d:checkNotClosed	()V
    //   18: aload_0
    //   19: invokevirtual 509	okhttp3/internal/a/d:trimToSize	()V
    //   22: aload_0
    //   23: getfield 414	okhttp3/internal/a/d:cZV	Ld/d;
    //   26: invokeinterface 472 1 0
    //   31: goto -20 -> 11
    //   34: astore_2
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_2
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	d
    //   6	2	1	bool	boolean
    //   34	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	34	finally
    //   14	31	34	finally
  }
  
  final boolean journalRebuildRequired()
  {
    return (this.redundantOpCount >= 2000) && (this.redundantOpCount >= this.lruEntries.size());
  }
  
  final void rebuildJournal()
    throws IOException
  {
    for (;;)
    {
      b localb;
      try
      {
        if (this.cZV != null) {
          this.cZV.close();
        }
        d.d locald1 = l.a(this.cZU.q(this.journalFileTmp));
        try
        {
          locald1.fF("libcore.io.DiskLruCache").gb(10);
          locald1.fF("1").gb(10);
          locald1.aD(this.appVersion).gb(10);
          locald1.aD(this.valueCount).gb(10);
          locald1.gb(10);
          Iterator localIterator = this.lruEntries.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localb = (b)localIterator.next();
          if (localb.cZZ != null)
          {
            locald1.fF("DIRTY").gb(32);
            locald1.fF(localb.key);
            locald1.gb(10);
            continue;
            locald2 = finally;
          }
        }
        finally
        {
          locald1.close();
        }
        locald2.fF("CLEAN").gb(32);
      }
      finally {}
      locald2.fF(localb.key);
      localb.b(locald2);
      locald2.gb(10);
    }
    locald2.close();
    if (this.cZU.exists(this.journalFile)) {
      this.cZU.rename(this.journalFile, this.journalFileBackup);
    }
    this.cZU.rename(this.journalFileTmp, this.journalFile);
    this.cZU.delete(this.journalFileBackup);
    this.cZV = ML();
    this.hasJournalErrors = false;
    this.mostRecentRebuildFailed = false;
  }
  
  /* Error */
  public final boolean remove(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 488	okhttp3/internal/a/d:initialize	()V
    //   6: aload_0
    //   7: invokespecial 490	okhttp3/internal/a/d:checkNotClosed	()V
    //   10: aload_1
    //   11: invokestatic 492	okhttp3/internal/a/d:validateKey	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 91	okhttp3/internal/a/d:lruEntries	Ljava/util/LinkedHashMap;
    //   18: aload_1
    //   19: invokevirtual 381	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: checkcast 19	okhttp3/internal/a/d$b
    //   25: astore_1
    //   26: aload_1
    //   27: ifnonnull +9 -> 36
    //   30: iconst_0
    //   31: istore_2
    //   32: aload_0
    //   33: monitorexit
    //   34: iload_2
    //   35: ireturn
    //   36: aload_0
    //   37: aload_1
    //   38: invokevirtual 513	okhttp3/internal/a/d:a	(Lokhttp3/internal/a/d$b;)Z
    //   41: pop
    //   42: aload_0
    //   43: getfield 83	okhttp3/internal/a/d:size	J
    //   46: aload_0
    //   47: getfield 128	okhttp3/internal/a/d:maxSize	J
    //   50: lcmp
    //   51: ifgt +8 -> 59
    //   54: aload_0
    //   55: iconst_0
    //   56: putfield 496	okhttp3/internal/a/d:mostRecentTrimFailed	Z
    //   59: iconst_1
    //   60: istore_2
    //   61: goto -29 -> 32
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	d
    //   0	69	1	paramString	String
    //   31	30	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	26	64	finally
    //   36	59	64	finally
  }
  
  final void trimToSize()
    throws IOException
  {
    while (this.size > this.maxSize) {
      a((b)this.lruEntries.values().iterator().next());
    }
    this.mostRecentTrimFailed = false;
  }
  
  public final class a
  {
    final d.b cZX;
    private boolean done;
    final boolean[] written;
    
    a(d.b paramb)
    {
      this.cZX = paramb;
      if (paramb.readable) {}
      for (this$1 = null;; this$1 = new boolean[d.this.valueCount])
      {
        this.written = d.this;
        return;
      }
    }
    
    public final void abort()
      throws IOException
    {
      synchronized (d.this)
      {
        if (this.done) {
          throw new IllegalStateException();
        }
      }
      if (this.cZX.cZZ == this) {
        d.this.a(this, false);
      }
      this.done = true;
    }
    
    public final void commit()
      throws IOException
    {
      synchronized (d.this)
      {
        if (this.done) {
          throw new IllegalStateException();
        }
      }
      if (this.cZX.cZZ == this) {
        d.this.a(this, true);
      }
      this.done = true;
    }
    
    final void detach()
    {
      int i;
      if (this.cZX.cZZ == this) {
        i = 0;
      }
      for (;;)
      {
        if (i < d.this.valueCount) {}
        try
        {
          d.this.cZU.delete(this.cZX.dirtyFiles[i]);
          i += 1;
          continue;
          this.cZX.cZZ = null;
          return;
        }
        catch (IOException localIOException)
        {
          for (;;) {}
        }
      }
    }
    
    public final r fP(int paramInt)
    {
      synchronized (d.this)
      {
        if (this.done) {
          throw new IllegalStateException();
        }
      }
      if (this.cZX.cZZ != this)
      {
        localObject2 = l.Nr();
        return (r)localObject2;
      }
      if (!this.cZX.readable) {
        this.written[paramInt] = true;
      }
      Object localObject2 = this.cZX.dirtyFiles[paramInt];
      try
      {
        localObject2 = d.this.cZU.q((File)localObject2);
        localObject2 = new e((r)localObject2)
        {
          protected final void MM()
          {
            synchronized (d.this)
            {
              d.a.this.detach();
              return;
            }
          }
        };
        return (r)localObject2;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        r localr = l.Nr();
        return localr;
      }
    }
  }
  
  private final class b
  {
    d.a cZZ;
    final File[] cleanFiles;
    final File[] dirtyFiles;
    final String key;
    final long[] lengths;
    boolean readable;
    long sequenceNumber;
    
    b(String paramString)
    {
      this.key = paramString;
      this.lengths = new long[d.this.valueCount];
      this.cleanFiles = new File[d.this.valueCount];
      this.dirtyFiles = new File[d.this.valueCount];
      paramString = new StringBuilder(paramString).append('.');
      int j = paramString.length();
      int i = 0;
      while (i < d.this.valueCount)
      {
        paramString.append(i);
        this.cleanFiles[i] = new File(d.this.directory, paramString.toString());
        paramString.append(".tmp");
        this.dirtyFiles[i] = new File(d.this.directory, paramString.toString());
        paramString.setLength(j);
        i += 1;
      }
    }
    
    private static IOException invalidLengths(String[] paramArrayOfString)
      throws IOException
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
    
    final d.c MN()
    {
      j = 0;
      if (!Thread.holdsLock(d.this)) {
        throw new AssertionError();
      }
      s[] arrayOfs = new s[d.this.valueCount];
      Object localObject = (long[])this.lengths.clone();
      i = 0;
      for (;;)
      {
        try
        {
          if (i < d.this.valueCount)
          {
            arrayOfs[i] = d.this.cZU.p(this.cleanFiles[i]);
            i += 1;
            continue;
          }
          localObject = new d.c(d.this, this.key, this.sequenceNumber, arrayOfs, (long[])localObject);
          return (d.c)localObject;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          i = j;
          continue;
        }
        if ((i >= d.this.valueCount) || (arrayOfs[i] == null)) {
          continue;
        }
        c.closeQuietly(arrayOfs[i]);
        i += 1;
      }
      try
      {
        d.this.a(this);
        return null;
      }
      catch (IOException localIOException)
      {
        for (;;) {}
      }
    }
    
    final void b(d.d paramd)
      throws IOException
    {
      long[] arrayOfLong = this.lengths;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        paramd.gb(32).aD(l);
        i += 1;
      }
    }
    
    final void setLengths(String[] paramArrayOfString)
      throws IOException
    {
      if (paramArrayOfString.length != d.this.valueCount) {
        throw invalidLengths(paramArrayOfString);
      }
      int i = 0;
      try
      {
        while (i < paramArrayOfString.length)
        {
          this.lengths[i] = Long.parseLong(paramArrayOfString[i]);
          i += 1;
        }
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw invalidLengths(paramArrayOfString);
      }
    }
  }
  
  public final class c
    implements Closeable
  {
    public final s[] daa;
    public final String key;
    private final long[] lengths;
    public final long sequenceNumber;
    
    c(String paramString, long paramLong, s[] paramArrayOfs, long[] paramArrayOfLong)
    {
      this.key = paramString;
      this.sequenceNumber = paramLong;
      this.daa = paramArrayOfs;
      this.lengths = paramArrayOfLong;
    }
    
    public final void close()
    {
      s[] arrayOfs = this.daa;
      int j = arrayOfs.length;
      int i = 0;
      while (i < j)
      {
        c.closeQuietly(arrayOfs[i]);
        i += 1;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */