package com.layer.b.f.a;

import c.a.a.a.e;
import c.a.a.b.h;
import c.a.a.b.i;
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
  public b bxC = b.bxK;
  private a[] bxD = { a.bxG, a.bxH };
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
    ((Map)localObject).put(a.bxF, new c.a.a.a.b("code", (byte)1, new c.a.a.a.a(b.class)));
    ((Map)localObject).put(a.bxG, new c.a.a.a.b("message", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bxH, new c.a.a.a.b("details", (byte)2, new e(new c.a.a.a.c((byte)11), new c.a.a.a.c((byte)11))));
    bxE = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(a.class, bxE);
  }
  
  private boolean b()
  {
    return this.bxC != null;
  }
  
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
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bxC.equals(parama.bxC))));
        bool1 = d();
        bool2 = parama.d();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(parama.b))));
      bool1 = e();
      bool2 = parama.e();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(parama.c))));
    return true;
  }
  
  public final void b(h paramh)
    throws g
  {
    ((c.a.a.c.b)i.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean d()
  {
    return this.b != null;
  }
  
  public final boolean e()
  {
    return this.c != null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof a)) {
      return false;
    }
    return a((a)paramObject);
  }
  
  public final void f()
    throws g
  {
    if (this.bxC == null) {
      throw new i("Required field 'code' was not present! Struct: " + toString());
    }
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Error(");
    localStringBuilder.append("code:");
    if (this.bxC == null)
    {
      localStringBuilder.append("null");
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("message:");
        if (this.b != null) {
          break label135;
        }
        localStringBuilder.append("null");
      }
      label72:
      if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("details:");
        if (this.c != null) {
          break label147;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.bxC);
      break;
      label135:
      localStringBuilder.append(this.b);
      break label72;
      label147:
      localStringBuilder.append(this.c);
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */