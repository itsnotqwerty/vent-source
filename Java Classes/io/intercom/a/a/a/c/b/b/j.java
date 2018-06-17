package io.intercom.a.a.a.c.b.b;

import android.support.v4.g.k.a;
import io.intercom.a.a.a.i.a.a;
import io.intercom.a.a.a.i.a.a.a;
import io.intercom.a.a.a.i.a.a.c;
import io.intercom.a.a.a.i.a.b;
import io.intercom.a.a.a.i.a.b.a;
import io.intercom.a.a.a.i.e;
import io.intercom.a.a.a.i.i;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class j
{
  private final k.a<a> cMe = a.a(10, new a.a()
  {
    private static j.a IH()
    {
      try
      {
        j.a locala = new j.a(MessageDigest.getInstance("SHA-256"));
        return locala;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        throw new RuntimeException(localNoSuchAlgorithmException);
      }
    }
  });
  private final e<io.intercom.a.a.a.c.h, String> loadIdToSafeHash = new e(1000L);
  
  private String d(io.intercom.a.a.a.c.h paramh)
  {
    a locala = (a)io.intercom.a.a.a.i.h.checkNotNull(this.cMe.as(), "Argument must not be null");
    try
    {
      paramh.updateDiskCacheKey(locala.cMg);
      paramh = i.D(locala.cMg.digest());
      return paramh;
    }
    finally
    {
      this.cMe.j(locala);
    }
  }
  
  public final String c(io.intercom.a.a.a.c.h paramh)
  {
    synchronized (this.loadIdToSafeHash)
    {
      ??? = (String)this.loadIdToSafeHash.get(paramh);
      ??? = ???;
      if (??? == null) {
        ??? = d(paramh);
      }
    }
    synchronized (this.loadIdToSafeHash)
    {
      this.loadIdToSafeHash.put(paramh, ???);
      return (String)???;
      paramh = finally;
      throw paramh;
    }
  }
  
  private static final class a
    implements a.c
  {
    private final b cJl = new b.a();
    final MessageDigest cMg;
    
    a(MessageDigest paramMessageDigest)
    {
      this.cMg = paramMessageDigest;
    }
    
    public final b Ij()
    {
      return this.cJl;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/b/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */