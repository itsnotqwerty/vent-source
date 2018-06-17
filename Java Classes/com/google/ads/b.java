package com.google.ads;

import com.google.android.gms.ads.d;

@Deprecated
public final class b
{
  public static final b ayu = new b(-1, -2);
  public static final b ayv = new b(320, 50);
  public static final b ayw = new b(300, 250);
  public static final b ayx = new b(468, 60);
  public static final b ayy = new b(728, 90);
  public static final b ayz = new b(160, 600);
  public final d ayt;
  
  private b(int paramInt1, int paramInt2)
  {
    this(new d(paramInt1, paramInt2));
  }
  
  public b(d paramd)
  {
    this.ayt = paramd;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {
      return false;
    }
    paramObject = (b)paramObject;
    return this.ayt.equals(((b)paramObject).ayt);
  }
  
  public final int hashCode()
  {
    return this.ayt.hashCode();
  }
  
  public final String toString()
  {
    return this.ayt.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */