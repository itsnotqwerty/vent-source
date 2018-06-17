package io.intercom.android.sdk.imageloader;

import android.graphics.Bitmap;
import io.intercom.a.a.a.a.a;
import io.intercom.a.a.a.a.a.b;
import io.intercom.a.a.a.a.a.d;
import io.intercom.a.a.a.i.e;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class LongTermImageDiskCache
  implements Closeable
{
  private static final int APP_VERSION = 1;
  private static final int VALUE_COUNT = 1;
  private final File directory;
  private a diskLruCache;
  private final int maxSize;
  private final SafeKeyGenerator safeKeyGenerator;
  private final Twig twig = LumberMill.getLogger();
  private final DiskCacheWriteLocker writeLocker = new DiskCacheWriteLocker();
  
  public LongTermImageDiskCache(File paramFile, int paramInt)
  {
    this.directory = paramFile;
    this.maxSize = paramInt;
    this.safeKeyGenerator = new SafeKeyGenerator();
  }
  
  private a getDiskCache()
    throws IOException
  {
    try
    {
      if (this.diskLruCache == null) {
        this.diskLruCache = a.a(this.directory, this.maxSize);
      }
      a locala = this.diskLruCache;
      return locala;
    }
    finally {}
  }
  
  private void resetDiskCache()
  {
    try
    {
      this.diskLruCache = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void clear()
  {
    try
    {
      getDiskCache().delete();
      resetDiskCache();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        this.twig.e(localIOException.getMessage(), new Object[0]);
      }
    }
    finally {}
  }
  
  public void close()
    throws IOException
  {
    if (this.diskLruCache != null) {
      this.diskLruCache.close();
    }
  }
  
  public void delete(String paramString)
  {
    paramString = this.safeKeyGenerator.getSafeKey(paramString);
    try
    {
      getDiskCache().remove(paramString);
      return;
    }
    catch (IOException paramString)
    {
      this.twig.e(paramString.getMessage(), new Object[0]);
    }
  }
  
  public File get(String paramString)
  {
    Object localObject = this.safeKeyGenerator.getSafeKey(paramString);
    paramString = null;
    try
    {
      localObject = getDiskCache().eU((String)localObject);
      if (localObject != null) {
        paramString = localObject.cGO[0];
      }
      return paramString;
    }
    catch (IOException paramString)
    {
      this.twig.e(paramString.getMessage(), new Object[0]);
    }
    return null;
  }
  
  public boolean isClosed()
  {
    return (this.diskLruCache == null) || (this.diskLruCache.isClosed());
  }
  
  public void put(String paramString, Bitmap paramBitmap)
  {
    this.writeLocker.acquire(paramString);
    for (;;)
    {
      try
      {
        str = this.safeKeyGenerator.getSafeKey(paramString);
      }
      finally
      {
        try
        {
          String str;
          a.d locald;
          write(((a.b)localObject).HF(), paramBitmap);
          ((a.b)localObject).commit();
          ((a.b)localObject).abortUnlessCommitted();
          continue;
        }
        finally
        {
          Object localObject;
          ((a.b)localObject).abortUnlessCommitted();
        }
        paramBitmap = finally;
        this.writeLocker.release(paramString);
      }
      try
      {
        localObject = getDiskCache();
        locald = ((a)localObject).eU(str);
        if (locald != null)
        {
          this.writeLocker.release(paramString);
          return;
        }
        localObject = ((a)localObject).eV(str);
        if (localObject == null) {
          throw new IllegalStateException("Had two simultaneous puts for: " + str);
        }
      }
      catch (IOException paramBitmap)
      {
        this.twig.e(paramBitmap.getMessage(), new Object[0]);
        this.writeLocker.release(paramString);
        return;
      }
    }
  }
  
  /* Error */
  public void write(File paramFile, Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 165	java/io/BufferedOutputStream
    //   3: dup
    //   4: new 167	java/io/FileOutputStream
    //   7: dup
    //   8: aload_1
    //   9: invokespecial 170	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   12: invokespecial 173	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   15: astore_3
    //   16: aload_3
    //   17: astore_1
    //   18: aload_2
    //   19: invokevirtual 178	android/graphics/Bitmap:hasAlpha	()Z
    //   22: ifeq +27 -> 49
    //   25: aload_3
    //   26: astore_1
    //   27: getstatic 184	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   30: astore 4
    //   32: aload_3
    //   33: astore_1
    //   34: aload_2
    //   35: aload 4
    //   37: bipush 100
    //   39: aload_3
    //   40: invokevirtual 188	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 191	java/io/OutputStream:close	()V
    //   48: return
    //   49: aload_3
    //   50: astore_1
    //   51: getstatic 194	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   54: astore 4
    //   56: goto -24 -> 32
    //   59: astore 4
    //   61: aconst_null
    //   62: astore_2
    //   63: aload_2
    //   64: astore_1
    //   65: aload_0
    //   66: getfield 49	io/intercom/android/sdk/imageloader/LongTermImageDiskCache:twig	Lio/intercom/android/sdk/twig/Twig;
    //   69: aload 4
    //   71: invokevirtual 195	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   74: iconst_0
    //   75: anewarray 4	java/lang/Object
    //   78: invokevirtual 89	io/intercom/android/sdk/twig/Twig:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   81: aload_2
    //   82: ifnull -34 -> 48
    //   85: aload_2
    //   86: invokevirtual 191	java/io/OutputStream:close	()V
    //   89: return
    //   90: astore_1
    //   91: return
    //   92: astore_2
    //   93: aconst_null
    //   94: astore_1
    //   95: aload_1
    //   96: ifnull +7 -> 103
    //   99: aload_1
    //   100: invokevirtual 191	java/io/OutputStream:close	()V
    //   103: aload_2
    //   104: athrow
    //   105: astore_1
    //   106: return
    //   107: astore_1
    //   108: goto -5 -> 103
    //   111: astore_2
    //   112: goto -17 -> 95
    //   115: astore 4
    //   117: aload_3
    //   118: astore_2
    //   119: goto -56 -> 63
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	LongTermImageDiskCache
    //   0	122	1	paramFile	File
    //   0	122	2	paramBitmap	Bitmap
    //   15	103	3	localBufferedOutputStream	java.io.BufferedOutputStream
    //   30	25	4	localCompressFormat	android.graphics.Bitmap.CompressFormat
    //   59	11	4	localFileNotFoundException1	java.io.FileNotFoundException
    //   115	1	4	localFileNotFoundException2	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   0	16	59	java/io/FileNotFoundException
    //   85	89	90	java/io/IOException
    //   0	16	92	finally
    //   44	48	105	java/io/IOException
    //   99	103	107	java/io/IOException
    //   18	25	111	finally
    //   27	32	111	finally
    //   34	44	111	finally
    //   51	56	111	finally
    //   65	81	111	finally
    //   18	25	115	java/io/FileNotFoundException
    //   27	32	115	java/io/FileNotFoundException
    //   34	44	115	java/io/FileNotFoundException
    //   51	56	115	java/io/FileNotFoundException
  }
  
  private static class DiskCacheWriteLocker
  {
    private final Map<String, WriteLock> locks = new HashMap();
    private final WriteLockPool writeLockPool = new WriteLockPool();
    
    void acquire(String paramString)
    {
      try
      {
        WriteLock localWriteLock2 = (WriteLock)this.locks.get(paramString);
        WriteLock localWriteLock1 = localWriteLock2;
        if (localWriteLock2 == null)
        {
          localWriteLock1 = this.writeLockPool.obtain();
          this.locks.put(paramString, localWriteLock1);
        }
        localWriteLock1.interestedThreads += 1;
        localWriteLock1.lock.lock();
        return;
      }
      finally {}
    }
    
    void release(String paramString)
    {
      WriteLock localWriteLock1;
      for (;;)
      {
        try
        {
          localWriteLock1 = (WriteLock)this.locks.get(paramString);
          if ((localWriteLock1 != null) && (localWriteLock1.interestedThreads > 0)) {
            break;
          }
          paramString = new StringBuilder("Cannot release a lock that is not held, key: ").append(paramString).append(", interestedThreads: ");
          if (localWriteLock1 == null)
          {
            i = 0;
            throw new IllegalArgumentException(i);
          }
        }
        finally {}
        i = localWriteLock1.interestedThreads;
      }
      int i = localWriteLock1.interestedThreads - 1;
      localWriteLock1.interestedThreads = i;
      if (i == 0)
      {
        WriteLock localWriteLock2 = (WriteLock)this.locks.remove(paramString);
        if (!localWriteLock2.equals(localWriteLock1)) {
          throw new IllegalStateException("Removed the wrong lock, expected to remove: " + localWriteLock1 + ", but actually removed: " + localWriteLock2 + ", key: " + paramString);
        }
        this.writeLockPool.offer(localWriteLock2);
      }
      localWriteLock1.lock.unlock();
    }
    
    private class WriteLock
    {
      int interestedThreads;
      final Lock lock = new ReentrantLock();
      
      WriteLock() {}
    }
    
    private class WriteLockPool
    {
      private static final int MAX_POOL_SIZE = 10;
      private final Queue<LongTermImageDiskCache.DiskCacheWriteLocker.WriteLock> pool = new ArrayDeque();
      
      WriteLockPool() {}
      
      LongTermImageDiskCache.DiskCacheWriteLocker.WriteLock obtain()
      {
        synchronized (this.pool)
        {
          LongTermImageDiskCache.DiskCacheWriteLocker.WriteLock localWriteLock = (LongTermImageDiskCache.DiskCacheWriteLocker.WriteLock)this.pool.poll();
          ??? = localWriteLock;
          if (localWriteLock == null) {
            ??? = new LongTermImageDiskCache.DiskCacheWriteLocker.WriteLock(LongTermImageDiskCache.DiskCacheWriteLocker.this);
          }
          return (LongTermImageDiskCache.DiskCacheWriteLocker.WriteLock)???;
        }
      }
      
      void offer(LongTermImageDiskCache.DiskCacheWriteLocker.WriteLock paramWriteLock)
      {
        synchronized (this.pool)
        {
          if (this.pool.size() < 10) {
            this.pool.offer(paramWriteLock);
          }
          return;
        }
      }
    }
  }
  
  private static class SafeKeyGenerator
  {
    private final e<String, String> loadIdToSafeHash = new e(1000L);
    
    /* Error */
    public String getSafeKey(String paramString)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 23	io/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator:loadIdToSafeHash	Lio/intercom/a/a/a/i/e;
      //   4: astore_3
      //   5: aload_3
      //   6: monitorenter
      //   7: aload_0
      //   8: getfield 23	io/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator:loadIdToSafeHash	Lio/intercom/a/a/a/i/e;
      //   11: aload_1
      //   12: invokevirtual 34	io/intercom/a/a/a/i/e:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   15: checkcast 36	java/lang/String
      //   18: astore_2
      //   19: aload_3
      //   20: monitorexit
      //   21: aload_2
      //   22: astore_3
      //   23: aload_2
      //   24: ifnonnull +50 -> 74
      //   27: ldc 38
      //   29: invokestatic 44	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
      //   32: astore_3
      //   33: aload_3
      //   34: aload_1
      //   35: ldc 46
      //   37: invokevirtual 50	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   40: invokevirtual 54	java/security/MessageDigest:update	([B)V
      //   43: aload_3
      //   44: invokevirtual 58	java/security/MessageDigest:digest	()[B
      //   47: invokestatic 64	io/intercom/a/a/a/i/i:D	([B)Ljava/lang/String;
      //   50: astore_3
      //   51: aload_3
      //   52: astore_2
      //   53: aload_0
      //   54: getfield 23	io/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator:loadIdToSafeHash	Lio/intercom/a/a/a/i/e;
      //   57: astore_3
      //   58: aload_3
      //   59: monitorenter
      //   60: aload_0
      //   61: getfield 23	io/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator:loadIdToSafeHash	Lio/intercom/a/a/a/i/e;
      //   64: aload_1
      //   65: aload_2
      //   66: invokevirtual 68	io/intercom/a/a/a/i/e:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      //   69: pop
      //   70: aload_3
      //   71: monitorexit
      //   72: aload_2
      //   73: astore_3
      //   74: aload_3
      //   75: areturn
      //   76: astore_1
      //   77: aload_3
      //   78: monitorexit
      //   79: aload_1
      //   80: athrow
      //   81: astore_3
      //   82: aload_3
      //   83: invokevirtual 71	java/io/UnsupportedEncodingException:printStackTrace	()V
      //   86: goto -33 -> 53
      //   89: astore_3
      //   90: aload_3
      //   91: invokevirtual 72	java/security/NoSuchAlgorithmException:printStackTrace	()V
      //   94: goto -41 -> 53
      //   97: astore_1
      //   98: aload_3
      //   99: monitorexit
      //   100: aload_1
      //   101: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	102	0	this	SafeKeyGenerator
      //   0	102	1	paramString	String
      //   18	55	2	localObject1	Object
      //   81	2	3	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
      //   89	10	3	localNoSuchAlgorithmException	java.security.NoSuchAlgorithmException
      // Exception table:
      //   from	to	target	type
      //   7	21	76	finally
      //   77	79	76	finally
      //   27	51	81	java/io/UnsupportedEncodingException
      //   27	51	89	java/security/NoSuchAlgorithmException
      //   60	72	97	finally
      //   98	100	97	finally
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/imageloader/LongTermImageDiskCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */