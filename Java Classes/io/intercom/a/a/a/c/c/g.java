package io.intercom.a.a.a.c.c;

import java.net.URL;
import java.security.MessageDigest;

public class g
  implements io.intercom.a.a.a.c.h
{
  private int bkc;
  public final h cMG;
  public final String cMH;
  public String cMI;
  public URL cMJ;
  private volatile byte[] cMK;
  public final URL url;
  
  public g(String paramString)
  {
    this(paramString, h.cMM);
  }
  
  private g(String paramString, h paramh)
  {
    this.url = null;
    this.cMH = io.intercom.a.a.a.i.h.fc(paramString);
    this.cMG = ((h)io.intercom.a.a.a.i.h.checkNotNull(paramh, "Argument must not be null"));
  }
  
  public g(URL paramURL)
  {
    this(paramURL, h.cMM);
  }
  
  private g(URL paramURL, h paramh)
  {
    this.url = ((URL)io.intercom.a.a.a.i.h.checkNotNull(paramURL, "Argument must not be null"));
    this.cMH = null;
    this.cMG = ((h)io.intercom.a.a.a.i.h.checkNotNull(paramh, "Argument must not be null"));
  }
  
  private String IO()
  {
    if (this.cMH != null) {
      return this.cMH;
    }
    return ((URL)io.intercom.a.a.a.i.h.checkNotNull(this.url, "Argument must not be null")).toString();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof g))
    {
      paramObject = (g)paramObject;
      bool1 = bool2;
      if (IO().equals(((g)paramObject).IO()))
      {
        bool1 = bool2;
        if (this.cMG.equals(((g)paramObject).cMG)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    if (this.bkc == 0)
    {
      this.bkc = IO().hashCode();
      this.bkc = (this.bkc * 31 + this.cMG.hashCode());
    }
    return this.bkc;
  }
  
  public String toString()
  {
    return IO();
  }
  
  public void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    if (this.cMK == null) {
      this.cMK = IO().getBytes(cIb);
    }
    paramMessageDigest.update(this.cMK);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */