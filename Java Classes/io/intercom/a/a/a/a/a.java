package io.intercom.a.a.a.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class a
  implements Closeable
{
  private final int appVersion;
  private Writer cGH;
  final ThreadPoolExecutor cGI = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a((byte)0));
  private final Callable<Void> cGJ = new Callable()
  {
    private Void HE()
      throws Exception
    {
      synchronized (a.this)
      {
        if (a.a(a.this) == null) {
          return null;
        }
        a.b(a.this);
        if (a.c(a.this))
        {
          a.d(a.this);
          a.e(a.this);
        }
        return null;
      }
    }
  };
  private final File directory;
  private final File journalFile;
  private final File journalFileBackup;
  private final File journalFileTmp;
  private final LinkedHashMap<String, c> lruEntries = new LinkedHashMap(0, 0.75F, true);
  private long maxSize;
  private long nextSequenceNumber = 0L;
  private int redundantOpCount;
  private long size = 0L;
  private final int valueCount;
  
  private a(File paramFile, long paramLong)
  {
    this.directory = paramFile;
    this.appVersion = 1;
    this.journalFile = new File(paramFile, "journal");
    this.journalFileTmp = new File(paramFile, "journal.tmp");
    this.journalFileBackup = new File(paramFile, "journal.bkp");
    this.valueCount = 1;
    this.maxSize = paramLong;
  }
  
  public static a a(File paramFile, long paramLong)
    throws IOException
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    Object localObject = new File(paramFile, "journal.bkp");
    File localFile;
    if (((File)localObject).exists())
    {
      localFile = new File(paramFile, "journal");
      if (!localFile.exists()) {
        break label89;
      }
      ((File)localObject).delete();
    }
    for (;;)
    {
      localObject = new a(paramFile, paramLong);
      if (!((a)localObject).journalFile.exists()) {
        break label145;
      }
      try
      {
        ((a)localObject).readJournal();
        ((a)localObject).processJournal();
        return (a)localObject;
      }
      catch (IOException localIOException)
      {
        label89:
        System.out.println("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
        ((a)localObject).delete();
      }
      a((File)localObject, localFile, false);
    }
    label145:
    paramFile.mkdirs();
    paramFile = new a(paramFile, paramLong);
    paramFile.rebuildJournal();
    return paramFile;
  }
  
  private void a(b paramb, boolean paramBoolean)
    throws IOException
  {
    int k = 0;
    c localc;
    try
    {
      localc = paramb.cGL;
      if (localc.cGN != paramb) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int j = k;
    if (paramBoolean)
    {
      j = k;
      if (!localc.readable)
      {
        int i = 0;
        for (;;)
        {
          j = k;
          if (i >= this.valueCount) {
            break;
          }
          if (paramb.written[i] == 0)
          {
            paramb.abort();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i);
          }
          if (!localc.dirtyFiles[i].exists())
          {
            paramb.abort();
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
        paramb = localc.dirtyFiles[j];
        if (paramBoolean)
        {
          if (paramb.exists())
          {
            File localFile = localc.cleanFiles[j];
            paramb.renameTo(localFile);
            l1 = localc.lengths[j];
            long l2 = localFile.length();
            localc.lengths[j] = l2;
            this.size = (this.size - l1 + l2);
          }
        }
        else {
          k(paramb);
        }
      }
      else
      {
        this.redundantOpCount += 1;
        localc.cGN = null;
        if ((localc.readable | paramBoolean))
        {
          localc.readable = true;
          this.cGH.append("CLEAN");
          this.cGH.append(' ');
          this.cGH.append(localc.key);
          this.cGH.append(localc.HG());
          this.cGH.append('\n');
          if (paramBoolean)
          {
            l1 = this.nextSequenceNumber;
            this.nextSequenceNumber = (1L + l1);
            localc.sequenceNumber = l1;
          }
        }
        for (;;)
        {
          this.cGH.flush();
          if ((this.size <= this.maxSize) && (!journalRebuildRequired())) {
            break;
          }
          this.cGI.submit(this.cGJ);
          break;
          this.lruEntries.remove(localc.key);
          this.cGH.append("REMOVE");
          this.cGH.append(' ');
          this.cGH.append(localc.key);
          this.cGH.append('\n');
        }
      }
      j += 1;
    }
  }
  
  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean) {
      k(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private void checkNotClosed()
  {
    if (this.cGH == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private boolean journalRebuildRequired()
  {
    return (this.redundantOpCount >= 2000) && (this.redundantOpCount >= this.lruEntries.size());
  }
  
  private static void k(File paramFile)
    throws IOException
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private void processJournal()
    throws IOException
  {
    k(this.journalFileTmp);
    Iterator localIterator = this.lruEntries.values().iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      int i;
      if (localc.cGN == null)
      {
        i = 0;
        while (i < this.valueCount)
        {
          this.size += localc.lengths[i];
          i += 1;
        }
      }
      else
      {
        localc.cGN = null;
        i = 0;
        while (i < this.valueCount)
        {
          k(localc.cleanFiles[i]);
          k(localc.dirtyFiles[i]);
          i += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void readJournal()
    throws IOException
  {
    b localb = new b(new FileInputStream(this.journalFile), c.US_ASCII);
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
      String str1 = localb.readLine();
      localObject3 = localb.readLine();
      localObject4 = localb.readLine();
      str2 = localb.readLine();
      String str3 = localb.readLine();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(localObject3)) || (!Integer.toString(this.appVersion).equals(localObject4)) || (!Integer.toString(this.valueCount).equals(str2)) || (!"".equals(str3))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + (String)localObject3 + ", " + str2 + ", " + str3 + "]");
      }
    }
    finally
    {
      c.closeQuietly(localb);
      throw ((Throwable)localObject1);
      i = 0;
    }
  }
  
  private void rebuildJournal()
    throws IOException
  {
    for (;;)
    {
      try
      {
        if (this.cGH != null) {
          this.cGH.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), c.US_ASCII));
        c localc;
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.appVersion));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.valueCount));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = this.lruEntries.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localc = (c)localIterator.next();
          if (localc.cGN != null)
          {
            localBufferedWriter.write("DIRTY " + localc.key + '\n');
            continue;
            localObject1 = finally;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
        ((Writer)localObject1).write("CLEAN " + localc.key + localc.HG() + '\n');
      }
      finally {}
    }
    ((Writer)localObject1).close();
    if (this.journalFile.exists()) {
      a(this.journalFile, this.journalFileBackup, true);
    }
    a(this.journalFileTmp, this.journalFile, false);
    this.journalFileBackup.delete();
    this.cGH = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), c.US_ASCII));
  }
  
  private void trimToSize()
    throws IOException
  {
    while (this.size > this.maxSize) {
      remove((String)((Map.Entry)this.lruEntries.entrySet().iterator().next()).getKey());
    }
  }
  
  public final void close()
    throws IOException
  {
    for (;;)
    {
      try
      {
        Object localObject1 = this.cGH;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(this.lruEntries.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          c localc = (c)((Iterator)localObject1).next();
          if (localc.cGN == null) {
            continue;
          }
          localc.cGN.abort();
          continue;
        }
        trimToSize();
      }
      finally {}
      this.cGH.close();
      this.cGH = null;
    }
  }
  
  public final void delete()
    throws IOException
  {
    close();
    c.deleteContents(this.directory);
  }
  
  /* Error */
  public final d eU(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aconst_null
    //   3: astore 5
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: invokespecial 472	io/intercom/a/a/a/a/a:checkNotClosed	()V
    //   11: aload_0
    //   12: getfield 58	io/intercom/a/a/a/a/a:lruEntries	Ljava/util/LinkedHashMap;
    //   15: aload_1
    //   16: invokevirtual 389	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   19: checkcast 16	io/intercom/a/a/a/a/a$c
    //   22: astore 6
    //   24: aload 6
    //   26: ifnonnull +12 -> 38
    //   29: aload 5
    //   31: astore 4
    //   33: aload_0
    //   34: monitorexit
    //   35: aload 4
    //   37: areturn
    //   38: aload 5
    //   40: astore 4
    //   42: aload 6
    //   44: getfield 202	io/intercom/a/a/a/a/a$c:readable	Z
    //   47: ifeq -14 -> 33
    //   50: aload 6
    //   52: getfield 222	io/intercom/a/a/a/a/a$c:cleanFiles	[Ljava/io/File;
    //   55: astore 7
    //   57: aload 7
    //   59: arraylength
    //   60: istore_3
    //   61: iload_2
    //   62: iload_3
    //   63: if_icmpge +24 -> 87
    //   66: aload 5
    //   68: astore 4
    //   70: aload 7
    //   72: iload_2
    //   73: aaload
    //   74: invokevirtual 126	java/io/File:exists	()Z
    //   77: ifeq -44 -> 33
    //   80: iload_2
    //   81: iconst_1
    //   82: iadd
    //   83: istore_2
    //   84: goto -23 -> 61
    //   87: aload_0
    //   88: aload_0
    //   89: getfield 240	io/intercom/a/a/a/a/a:redundantOpCount	I
    //   92: iconst_1
    //   93: iadd
    //   94: putfield 240	io/intercom/a/a/a/a/a:redundantOpCount	I
    //   97: aload_0
    //   98: getfield 186	io/intercom/a/a/a/a/a:cGH	Ljava/io/Writer;
    //   101: ldc_w 413
    //   104: invokevirtual 247	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   107: pop
    //   108: aload_0
    //   109: getfield 186	io/intercom/a/a/a/a/a:cGH	Ljava/io/Writer;
    //   112: bipush 32
    //   114: invokevirtual 250	java/io/Writer:append	(C)Ljava/io/Writer;
    //   117: pop
    //   118: aload_0
    //   119: getfield 186	io/intercom/a/a/a/a/a:cGH	Ljava/io/Writer;
    //   122: aload_1
    //   123: invokevirtual 247	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   126: pop
    //   127: aload_0
    //   128: getfield 186	io/intercom/a/a/a/a/a:cGH	Ljava/io/Writer;
    //   131: bipush 10
    //   133: invokevirtual 250	java/io/Writer:append	(C)Ljava/io/Writer;
    //   136: pop
    //   137: aload_0
    //   138: invokespecial 266	io/intercom/a/a/a/a/a:journalRebuildRequired	()Z
    //   141: ifeq +15 -> 156
    //   144: aload_0
    //   145: getfield 81	io/intercom/a/a/a/a/a:cGI	Ljava/util/concurrent/ThreadPoolExecutor;
    //   148: aload_0
    //   149: getfield 86	io/intercom/a/a/a/a/a:cGJ	Ljava/util/concurrent/Callable;
    //   152: invokevirtual 270	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   155: pop
    //   156: new 19	io/intercom/a/a/a/a/a$d
    //   159: dup
    //   160: aload_0
    //   161: aload_1
    //   162: aload 6
    //   164: getfield 260	io/intercom/a/a/a/a/a$c:sequenceNumber	J
    //   167: aload 6
    //   169: getfield 222	io/intercom/a/a/a/a/a$c:cleanFiles	[Ljava/io/File;
    //   172: aload 6
    //   174: getfield 230	io/intercom/a/a/a/a/a$c:lengths	[J
    //   177: iconst_0
    //   178: invokespecial 475	io/intercom/a/a/a/a/a$d:<init>	(Lio/intercom/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[JB)V
    //   181: astore 4
    //   183: goto -150 -> 33
    //   186: astore_1
    //   187: aload_0
    //   188: monitorexit
    //   189: aload_1
    //   190: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	a
    //   0	191	1	paramString	String
    //   1	83	2	i	int
    //   60	4	3	j	int
    //   31	151	4	localObject1	Object
    //   3	64	5	localObject2	Object
    //   22	151	6	localc	c
    //   55	16	7	arrayOfFile	File[]
    // Exception table:
    //   from	to	target	type
    //   7	24	186	finally
    //   42	61	186	finally
    //   70	80	186	finally
    //   87	156	186	finally
    //   156	183	186	finally
  }
  
  public final b eV(String paramString)
    throws IOException
  {
    for (;;)
    {
      b localb;
      try
      {
        checkNotClosed();
        c localc = (c)this.lruEntries.get(paramString);
        if (-1L != -1L) {
          if (localc != null)
          {
            long l = localc.sequenceNumber;
            if (l == -1L) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if (localc == null)
        {
          localc = new c(paramString, (byte)0);
          this.lruEntries.put(paramString, localc);
          localb = new b(localc, (byte)0);
          localc.cGN = localb;
          this.cGH.append("DIRTY");
          this.cGH.append(' ');
          this.cGH.append(paramString);
          this.cGH.append('\n');
          this.cGH.flush();
          paramString = localb;
          continue;
        }
        localb = localc.cGN;
      }
      finally {}
      if (localb != null) {
        paramString = null;
      }
    }
  }
  
  /* Error */
  public final boolean isClosed()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 186	io/intercom/a/a/a/a/a:cGH	Ljava/io/Writer;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnonnull +9 -> 17
    //   11: iconst_1
    //   12: istore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_1
    //   19: goto -6 -> 13
    //   22: astore_2
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_2
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	a
    //   12	7	1	bool	boolean
    //   6	2	2	localWriter	Writer
    //   22	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  public final boolean remove(String paramString)
    throws IOException
  {
    int i = 0;
    for (;;)
    {
      try
      {
        checkNotClosed();
        c localc = (c)this.lruEntries.get(paramString);
        Object localObject;
        if (localc != null)
        {
          localObject = localc.cGN;
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
          this.size -= localc.lengths[i];
          localc.lengths[i] = 0L;
          i += 1;
        }
        if (i < this.valueCount)
        {
          localObject = localc.cleanFiles[i];
          if ((!((File)localObject).exists()) || (((File)localObject).delete())) {
            continue;
          }
          throw new IOException("failed to delete " + localObject);
        }
      }
      finally {}
      this.redundantOpCount += 1;
      this.cGH.append("REMOVE");
      this.cGH.append(' ');
      this.cGH.append(paramString);
      this.cGH.append('\n');
      this.lruEntries.remove(paramString);
      if (journalRebuildRequired()) {
        this.cGI.submit(this.cGJ);
      }
      boolean bool = true;
    }
  }
  
  private static final class a
    implements ThreadFactory
  {
    public final Thread newThread(Runnable paramRunnable)
    {
      try
      {
        paramRunnable = new Thread(paramRunnable, "glide-disk-lru-cache-thread");
        paramRunnable.setPriority(1);
        return paramRunnable;
      }
      finally
      {
        paramRunnable = finally;
        throw paramRunnable;
      }
    }
  }
  
  public final class b
  {
    final a.c cGL;
    private boolean cGM;
    final boolean[] written;
    
    private b(a.c paramc)
    {
      this.cGL = paramc;
      if (paramc.readable) {}
      for (this$1 = null;; this$1 = new boolean[a.f(a.this)])
      {
        this.written = a.this;
        return;
      }
    }
    
    public final File HF()
      throws IOException
    {
      synchronized (a.this)
      {
        if (this.cGL.cGN != this) {
          throw new IllegalStateException();
        }
      }
      if (!this.cGL.readable) {
        this.written[0] = true;
      }
      File localFile = this.cGL.dirtyFiles[0];
      if (!a.g(a.this).exists()) {
        a.g(a.this).mkdirs();
      }
      return localFile;
    }
    
    public final void abort()
      throws IOException
    {
      a.a(a.this, this, false);
    }
    
    public final void abortUnlessCommitted()
    {
      if (!this.cGM) {}
      try
      {
        abort();
        return;
      }
      catch (IOException localIOException) {}
    }
    
    public final void commit()
      throws IOException
    {
      a.a(a.this, this, true);
      this.cGM = true;
    }
  }
  
  private final class c
  {
    a.b cGN;
    File[] cleanFiles;
    File[] dirtyFiles;
    final String key;
    final long[] lengths;
    boolean readable;
    long sequenceNumber;
    
    private c(String paramString)
    {
      this.key = paramString;
      this.lengths = new long[a.f(a.this)];
      this.cleanFiles = new File[a.f(a.this)];
      this.dirtyFiles = new File[a.f(a.this)];
      paramString = new StringBuilder(paramString).append('.');
      int j = paramString.length();
      int i = 0;
      while (i < a.f(a.this))
      {
        paramString.append(i);
        this.cleanFiles[i] = new File(a.g(a.this), paramString.toString());
        paramString.append(".tmp");
        this.dirtyFiles[i] = new File(a.g(a.this), paramString.toString());
        paramString.setLength(j);
        i += 1;
      }
    }
    
    private static IOException invalidLengths(String[] paramArrayOfString)
      throws IOException
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
    
    public final String HG()
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      long[] arrayOfLong = this.lengths;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        localStringBuilder.append(' ').append(l);
        i += 1;
      }
      return localStringBuilder.toString();
    }
    
    final void setLengths(String[] paramArrayOfString)
      throws IOException
    {
      if (paramArrayOfString.length != a.f(a.this)) {
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
  
  public final class d
  {
    public final File[] cGO;
    private final String key;
    private final long[] lengths;
    private final long sequenceNumber;
    
    private d(String paramString, long paramLong, File[] paramArrayOfFile, long[] paramArrayOfLong)
    {
      this.key = paramString;
      this.sequenceNumber = paramLong;
      this.cGO = paramArrayOfFile;
      this.lengths = paramArrayOfLong;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */