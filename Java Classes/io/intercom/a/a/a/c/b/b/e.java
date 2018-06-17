package io.intercom.a.a.a.c.b.b;

import android.util.Log;
import io.intercom.a.a.a.c.h;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.locks.Lock;

public final class e
  implements a
{
  private static e cLN = null;
  private final j cLO;
  private final c cLP = new c();
  private final File directory;
  private io.intercom.a.a.a.a.a diskLruCache;
  private final long maxSize;
  
  @Deprecated
  private e(File paramFile, long paramLong)
  {
    this.directory = paramFile;
    this.maxSize = paramLong;
    this.cLO = new j();
  }
  
  public static a b(File paramFile, long paramLong)
  {
    return new e(paramFile, paramLong);
  }
  
  private io.intercom.a.a.a.a.a getDiskCache()
    throws IOException
  {
    try
    {
      if (this.diskLruCache == null) {
        this.diskLruCache = io.intercom.a.a.a.a.a.a(this.directory, this.maxSize);
      }
      io.intercom.a.a.a.a.a locala = this.diskLruCache;
      return locala;
    }
    finally {}
  }
  
  public final File a(h paramh)
  {
    Object localObject2 = this.cLO.c(paramh);
    if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
      Log.v("DiskLruCacheWrapper", "Get: Obtained: " + (String)localObject2 + " for for Key: " + paramh);
    }
    Object localObject1 = null;
    try
    {
      localObject2 = getDiskCache().eU((String)localObject2);
      paramh = (h)localObject1;
      if (localObject2 != null) {
        paramh = localObject2.cGO[0];
      }
    }
    catch (IOException localIOException)
    {
      do
      {
        paramh = (h)localObject1;
      } while (!Log.isLoggable("DiskLruCacheWrapper", 5));
      Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", localIOException);
    }
    return paramh;
    return null;
  }
  
  public final void a(h paramh, a.b paramb)
  {
    str = this.cLO.c(paramh);
    Object localObject;
    synchronized (this.cLP)
    {
      c.a locala = (c.a)???.locks.get(str);
      localObject = locala;
      if (locala == null)
      {
        localObject = ???.cLK.ID();
        ???.locks.put(str, localObject);
      }
      ((c.a)localObject).interestedThreads += 1;
      ((c.a)localObject).lock.lock();
    }
    for (;;)
    {
      try
      {
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
          Log.v("DiskLruCacheWrapper", "Put: Obtained: " + str + " for for Key: " + paramh);
        }
      }
      finally
      {
        try
        {
          if (paramb.l(paramh.HF())) {
            paramh.commit();
          }
          paramh.abortUnlessCommitted();
          continue;
        }
        finally
        {
          paramh.abortUnlessCommitted();
        }
        paramh = finally;
        this.cLP.release(str);
      }
      try
      {
        paramh = getDiskCache();
        localObject = paramh.eU(str);
        if (localObject != null)
        {
          this.cLP.release(str);
          return;
          paramh = finally;
          throw paramh;
        }
        paramh = paramh.eV(str);
        if (paramh == null) {
          throw new IllegalStateException("Had two simultaneous puts for: " + str);
        }
      }
      catch (IOException paramh)
      {
        if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
          Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", paramh);
        }
        this.cLP.release(str);
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */