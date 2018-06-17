package com.layer.sdk.internal.lsdkd.lsdka;

import com.layer.b.d.c;
import com.layer.b.f.c.d;

public final class k
{
  public static int a(long paramLong)
  {
    return (int)(paramLong >> 32 & 0xFFFFFFFFFFFFFFFF);
  }
  
  public static long a(c paramc)
  {
    if (paramc.d >= 0) {
      return a().a(paramc.f).a(paramc.c).c(paramc.g).d();
    }
    return paramc.d;
  }
  
  public static a a()
  {
    return new a();
  }
  
  public static int b(long paramLong)
  {
    return (int)(paramLong >> 0 & 0xFFFF);
  }
  
  public static class a
  {
    private int a;
    private int b;
    private int c;
    
    public static int a(byte[] paramArrayOfByte)
    {
      int j = -1;
      int k = paramArrayOfByte.length;
      int i = 0;
      while (i < k)
      {
        int m = (short)((paramArrayOfByte[i] ^ j >> 8) & 0xFF);
        m = (short)(m ^ m >> 4);
        j = (short)(j << 8 ^ m << 12 ^ m << 5 ^ m);
        i += 1;
      }
      return 0xFFFF & j;
    }
    
    public int a()
    {
      return this.a;
    }
    
    public a a(int paramInt)
    {
      this.a = paramInt;
      return this;
    }
    
    public a a(String paramString)
    {
      if (paramString == null) {}
      for (int i = 0;; i = a(paramString.getBytes())) {
        return b(i);
      }
    }
    
    public int b()
    {
      return this.b;
    }
    
    public a b(int paramInt)
    {
      this.b = paramInt;
      return this;
    }
    
    public int c()
    {
      return this.c;
    }
    
    public a c(int paramInt)
    {
      this.c = paramInt;
      return this;
    }
    
    public long d()
    {
      return (a() << 1 << 15 | b() & 0x7FFF) << 16 | c() & 0xFFFF;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */