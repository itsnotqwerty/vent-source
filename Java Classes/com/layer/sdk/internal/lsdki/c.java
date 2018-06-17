package com.layer.sdk.internal.lsdki;

import java.util.HashMap;
import java.util.Map;

public class c
{
  Long a;
  b b;
  a bsu;
  Long c;
  
  public Long a()
  {
    return this.a;
  }
  
  public void a(a parama)
  {
    this.bsu = parama;
  }
  
  public void a(b paramb)
  {
    this.b = paramb;
  }
  
  public void a(Long paramLong)
  {
    this.a = paramLong;
  }
  
  public void a(String paramString)
  {
    a(b.a(paramString));
  }
  
  public b b()
  {
    return this.b;
  }
  
  public void b(Long paramLong)
  {
    this.c = paramLong;
  }
  
  public Long c()
  {
    return this.c;
  }
  
  public a d()
  {
    return this.bsu;
  }
  
  public String toString()
  {
    return "SyncableChange: (" + a() + "): " + d() + " " + b().g + "." + c();
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
    static final Map<String, b> bsv = new HashMap();
    final String g;
    
    private b(String paramString)
    {
      this.g = paramString;
    }
    
    public static b a(String paramString)
    {
      if (bsv.isEmpty())
      {
        b[] arrayOfb = values();
        int k = arrayOfb.length;
        int j = 0;
        while (j < k)
        {
          b localb = arrayOfb[j];
          bsv.put(localb.g, localb);
          j += 1;
        }
      }
      return (b)bsv.get(paramString);
    }
    
    public final String a()
    {
      return this.g;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */