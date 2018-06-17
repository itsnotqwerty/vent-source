package com.layer.b.f.b;

import c.a.a.a.e;
import c.a.a.b.h;
import c.a.a.b.m;
import c.a.a.g;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class a
  implements c.a.a.c<a, a>, Serializable, Cloneable, Comparable<a>
{
  private static final c.a.a.b.d bxA;
  private static final c.a.a.b.d bxB;
  public static final Map<a, c.a.a.a.b> bxE;
  private static final m bxy = new m("Error");
  private static final c.a.a.b.d bxz = new c.a.a.b.d("code", (byte)8, (short)1);
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> i;
  public String b;
  public b bAo;
  private a[] bAp = { a.bAq, a.bAr, a.bAs };
  public Map<String, String> c;
  
  static
  {
    bxA = new c.a.a.b.d("message", (byte)11, (short)2);
    bxB = new c.a.a.b.d("details", (byte)13, (short)3);
    Object localObject = new HashMap();
    i = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    i.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bAq, new c.a.a.a.b("code", (byte)2, new c.a.a.a.a(b.class)));
    ((Map)localObject).put(a.bAr, new c.a.a.a.b("message", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bAs, new c.a.a.a.b("details", (byte)2, new e(new c.a.a.a.c((byte)11), new c.a.a.a.c((byte)11))));
    bxE = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(a.class, bxE);
  }
  
  public static void g()
    throws g
  {}
  
  public final void a(h paramh)
    throws g
  {
    ((c.a.a.c.b)i.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a(a parama)
  {
    if (parama == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      do
      {
        do
        {
          return false;
          bool1 = b();
          bool2 = parama.b();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bAo.equals(parama.bAo))));
        bool1 = d();
        bool2 = parama.d();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(parama.b))));
      bool1 = f();
      bool2 = parama.f();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(parama.c))));
    return true;
  }
  
  public final void b(h paramh)
    throws g
  {
    ((c.a.a.c.b)i.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b()
  {
    return this.bAo != null;
  }
  
  public final boolean d()
  {
    return this.b != null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof a)) {
      return false;
    }
    return a((a)paramObject);
  }
  
  public final boolean f()
  {
    return this.c != null;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int k = 0;
    StringBuilder localStringBuilder = new StringBuilder("Error(");
    int j = 1;
    if (b())
    {
      localStringBuilder.append("code:");
      if (this.bAo == null)
      {
        localStringBuilder.append("null");
        j = 0;
      }
    }
    else
    {
      if (!d()) {
        break label177;
      }
      if (j == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("message:");
      if (this.b != null) {
        break label151;
      }
      localStringBuilder.append("null");
      j = k;
    }
    label86:
    label151:
    label165:
    label177:
    for (;;)
    {
      if (f())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("details:");
        if (this.c != null) {
          break label165;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.bAo);
        break;
        localStringBuilder.append(this.b);
        j = k;
        break label86;
        localStringBuilder.append(this.c);
      }
    }
  }
  
  public static enum a
  {
    private static final Map<String, a> a;
    private final short bxI;
    private final String c;
    
    static
    {
      a = new HashMap();
      Iterator localIterator = EnumSet.allOf(a.class).iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        a.put(locala.c, locala);
      }
    }
    
    private a(short paramShort, String paramString)
    {
      this.bxI = paramShort;
      this.c = paramString;
    }
  }
  
  private static final class b
    extends c.a.a.c.c<a>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<a>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */