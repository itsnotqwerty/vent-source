package com.layer.sdk.internal.lsdkd.lsdka;

import com.layer.sdk.internal.lsdkk.m.g;
import com.layer.sdk.internal.lsdkk.m.h;
import java.util.Iterator;

public class o
{
  private Long a;
  private boolean b;
  private b c;
  private Long d;
  private a e;
  private String f;
  private String g;
  private Long h;
  
  public static m.g a(Iterable<o> paramIterable)
  {
    m.g localg = new m.g();
    if (paramIterable == null) {
      return localg;
    }
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      o localo = (o)paramIterable.next();
      localg.a(localo.f(), new m.h(localo.g(), localo.h()));
    }
    return localg;
  }
  
  public Long a()
  {
    return this.a;
  }
  
  public void a(a parama)
  {
    this.e = parama;
  }
  
  public void a(b paramb)
  {
    this.c = paramb;
  }
  
  public void a(Long paramLong)
  {
    this.a = paramLong;
  }
  
  public void a(String paramString)
  {
    this.f = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public void b(Long paramLong)
  {
    this.d = paramLong;
  }
  
  public void b(String paramString)
  {
    this.g = paramString;
  }
  
  public boolean b()
  {
    return this.b;
  }
  
  public b c()
  {
    return this.c;
  }
  
  public void c(Long paramLong)
  {
    this.h = paramLong;
  }
  
  public Long d()
  {
    return this.d;
  }
  
  public a e()
  {
    return this.e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (o)paramObject;
      if (!this.f.equals(((o)paramObject).f)) {
        return false;
      }
      if (this.d != null)
      {
        if (this.d.equals(((o)paramObject).d)) {}
      }
      else {
        while (((o)paramObject).d != null) {
          return false;
        }
      }
    } while (this.c == ((o)paramObject).c);
    return false;
  }
  
  public String f()
  {
    return this.f;
  }
  
  public String g()
  {
    return this.g;
  }
  
  public Long h()
  {
    return this.h;
  }
  
  public int hashCode()
  {
    int j = this.c.hashCode();
    if (this.d != null) {}
    for (int i = this.d.hashCode();; i = 0) {
      return (i + j * 31) * 31 + this.f.hashCode();
    }
  }
  
  public String toString()
  {
    return "RemoteKeyedValueImpl{mDatabaseId=" + this.a + ", mDeleted=" + this.b + ", mObjectType=" + this.c + ", mObjectDatabaseId=" + this.d + ", mKeyType=" + this.e + ", mKey='" + this.f + '\'' + ", mValue='" + this.g + '\'' + ", mTimestamp=" + this.h + '}';
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
        if (locala.d == paramInt) {
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
    private final String d;
    
    private b(String paramString)
    {
      this.d = paramString;
    }
    
    public static b a(String paramString)
    {
      b[] arrayOfb = values();
      int j = arrayOfb.length;
      int i = 0;
      while (i < j)
      {
        b localb = arrayOfb[i];
        if (localb.d.equals(paramString)) {
          return localb;
        }
        i += 1;
      }
      return null;
    }
    
    public final String a()
    {
      return this.d;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */