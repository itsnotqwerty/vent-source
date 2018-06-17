package io.intercom.a.a.a.c;

import android.support.v4.g.a;
import java.security.MessageDigest;

public final class j
  implements h
{
  private final a<i<?>, Object> cIg = new a();
  
  public final <T> j a(i<T> parami, T paramT)
  {
    this.cIg.put(parami, paramT);
    return this;
  }
  
  public final <T> T a(i<T> parami)
  {
    if (this.cIg.containsKey(parami)) {
      return (T)this.cIg.get(parami);
    }
    return (T)parami.cId;
  }
  
  public final void a(j paramj)
  {
    this.cIg.a(paramj.cIg);
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof j))
    {
      paramObject = (j)paramObject;
      return this.cIg.equals(((j)paramObject).cIg);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return this.cIg.hashCode();
  }
  
  public final String toString()
  {
    return "Options{values=" + this.cIg + '}';
  }
  
  public final void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    int i = 0;
    while (i < this.cIg.size())
    {
      i locali = (i)this.cIg.keyAt(i);
      Object localObject = this.cIg.valueAt(i);
      i.a locala = locali.cIe;
      if (locali.cIf == null) {
        locali.cIf = locali.key.getBytes(h.cIb);
      }
      locala.a(locali.cIf, localObject, paramMessageDigest);
      i += 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */