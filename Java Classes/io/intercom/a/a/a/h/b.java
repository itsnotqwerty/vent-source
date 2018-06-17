package io.intercom.a.a.a.h;

import java.security.MessageDigest;

public final class b
  implements io.intercom.a.a.a.c.h
{
  private final Object Hi;
  
  public b(Object paramObject)
  {
    this.Hi = io.intercom.a.a.a.i.h.checkNotNull(paramObject, "Argument must not be null");
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof b))
    {
      paramObject = (b)paramObject;
      return this.Hi.equals(((b)paramObject).Hi);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return this.Hi.hashCode();
  }
  
  public final String toString()
  {
    return "ObjectKey{object=" + this.Hi + '}';
  }
  
  public final void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(this.Hi.toString().getBytes(cIb));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/h/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */