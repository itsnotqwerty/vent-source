package io.intercom.a.a.a.c.b;

import io.intercom.a.a.a.c.h;
import java.security.MessageDigest;

final class c
  implements h
{
  private final h cIS;
  private final h cIX;
  
  c(h paramh1, h paramh2)
  {
    this.cIS = paramh1;
    this.cIX = paramh2;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof c))
    {
      paramObject = (c)paramObject;
      bool1 = bool2;
      if (this.cIS.equals(((c)paramObject).cIS))
      {
        bool1 = bool2;
        if (this.cIX.equals(((c)paramObject).cIX)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    return this.cIS.hashCode() * 31 + this.cIX.hashCode();
  }
  
  public final String toString()
  {
    return "DataCacheKey{sourceKey=" + this.cIS + ", signature=" + this.cIX + '}';
  }
  
  public final void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    this.cIS.updateDiskCacheKey(paramMessageDigest);
    this.cIX.updateDiskCacheKey(paramMessageDigest);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */