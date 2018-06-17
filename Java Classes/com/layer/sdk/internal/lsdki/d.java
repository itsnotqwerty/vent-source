package com.layer.sdk.internal.lsdki;

import java.util.HashMap;
import java.util.Map;

public class d
{
  private Long a;
  private c b;
  private Long c;
  private a d;
  private b e;
  
  public Long a()
  {
    return this.a;
  }
  
  public void a(a parama)
  {
    this.d = parama;
  }
  
  public void a(b paramb)
  {
    this.e = paramb;
  }
  
  public void a(c paramc)
  {
    this.b = paramc;
  }
  
  public void a(Long paramLong)
  {
    this.a = paramLong;
  }
  
  public void a(String paramString)
  {
    a(c.a(paramString));
  }
  
  public c b()
  {
    return this.b;
  }
  
  public void b(Long paramLong)
  {
    this.c = paramLong;
  }
  
  public void b(String paramString)
  {
    a(b.a(paramString));
  }
  
  public Long c()
  {
    return this.c;
  }
  
  public a d()
  {
    return this.d;
  }
  
  public b e()
  {
    return this.e;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("SyncedChange: (").append(a()).append("): ").append(d()).append(" ").append(c.b(b()));
    if (this.e == null) {}
    for (String str = ".";; str = "." + this.e + ".") {
      return str + c();
    }
  }
  
  public static enum a
  {
    private final int d;
    
    private a(int paramInt)
    {
      this.d = paramInt;
    }
    
    public static a a(int paramInt)
    {
      a[] arrayOfa = values();
      int j = arrayOfa.length;
      int i = 0;
      while (i < j)
      {
        a locala = arrayOfa[i];
        if (locala.a() == paramInt) {
          return locala;
        }
        i += 1;
      }
      return null;
    }
    
    public final int a()
    {
      return this.d;
    }
  }
  
  public static enum b
  {
    private static final Map<String, b> l = new HashMap();
    private final String k;
    
    private b(String paramString)
    {
      this.k = paramString;
    }
    
    public static b a(String paramString)
    {
      if (l.isEmpty())
      {
        b[] arrayOfb = values();
        int i1 = arrayOfb.length;
        int n = 0;
        while (n < i1)
        {
          b localb = arrayOfb[n];
          l.put(localb.k, localb);
          n += 1;
        }
      }
      return (b)l.get(paramString);
    }
    
    public final String a()
    {
      return this.k;
    }
  }
  
  public static enum c
  {
    private static final Map<String, c> i = new HashMap();
    private final String h;
    
    private c(String paramString)
    {
      this.h = paramString;
    }
    
    public static c a(String paramString)
    {
      if (i.isEmpty())
      {
        c[] arrayOfc = values();
        int m = arrayOfc.length;
        int k = 0;
        while (k < m)
        {
          c localc = arrayOfc[k];
          i.put(localc.h, localc);
          k += 1;
        }
      }
      return (c)i.get(paramString);
    }
    
    public final String a()
    {
      return this.h;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */