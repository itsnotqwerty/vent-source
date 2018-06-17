package com.b.a.a.b;

import b.f;

public final class d
{
  public static final f bKo = f.fn(":status");
  public static final f bKp = f.fn(":method");
  public static final f bKq = f.fn(":path");
  public static final f bKr = f.fn(":scheme");
  public static final f bKs = f.fn(":authority");
  public static final f bKt = f.fn(":host");
  public static final f bKu = f.fn(":version");
  public final f bKv;
  public final f bKw;
  final int bKx;
  
  public d(f paramf1, f paramf2)
  {
    this.bKv = paramf1;
    this.bKw = paramf2;
    this.bKx = (paramf1.bMw.length + 32 + paramf2.bMw.length);
  }
  
  public d(f paramf, String paramString)
  {
    this(paramf, f.fn(paramString));
  }
  
  public d(String paramString1, String paramString2)
  {
    this(f.fn(paramString1), f.fn(paramString2));
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof d))
    {
      paramObject = (d)paramObject;
      bool1 = bool2;
      if (this.bKv.equals(((d)paramObject).bKv))
      {
        bool1 = bool2;
        if (this.bKw.equals(((d)paramObject).bKw)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    return (this.bKv.hashCode() + 527) * 31 + this.bKw.hashCode();
  }
  
  public final String toString()
  {
    return String.format("%s: %s", new Object[] { this.bKv.a(), this.bKw.a() });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */