package com.google.a;

import com.google.a.b.h;

public final class n
  extends k
{
  public final h<String, k> bgU = new h();
  
  public final void a(String paramString, k paramk)
  {
    Object localObject = paramk;
    if (paramk == null) {
      localObject = m.bgT;
    }
    this.bgU.put(paramString, localObject);
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof n)) && (((n)paramObject).bgU.equals(this.bgU)));
  }
  
  public final int hashCode()
  {
    return this.bgU.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */