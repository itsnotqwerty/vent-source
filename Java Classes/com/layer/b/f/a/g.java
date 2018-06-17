package com.layer.b.f.a;

import c.a.a.b.h;
import c.a.a.b.i;
import c.a.a.b.m;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class g
  implements c.a.a.c<g, a>, Serializable, Cloneable, Comparable<g>
{
  private static final c.a.a.b.d bxA;
  private static final c.a.a.b.d bxB;
  public static final Map<a, c.a.a.a.b> bxE;
  private static final m bxy = new m("IdentityUpdatesResponse");
  private static final c.a.a.b.d bxz = new c.a.a.b.d("sequence", (byte)8, (short)1);
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> i;
  public int a;
  public List<d> b;
  private byte bzc = 0;
  private a[] bzd = { a.bzg };
  public int c;
  
  static
  {
    bxA = new c.a.a.b.d("patches", (byte)15, (short)2);
    bxB = new c.a.a.b.d("since_sequence", (byte)8, (short)3);
    Object localObject = new HashMap();
    i = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    i.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bze, new c.a.a.a.b("sequence", (byte)1, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bzf, new c.a.a.a.b("patches", (byte)1, new c.a.a.a.d(new c.a.a.a.g(d.class))));
    ((Map)localObject).put(a.bzg, new c.a.a.a.b("since_sequence", (byte)2, new c.a.a.a.c((byte)8)));
    bxE = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(g.class, bxE);
  }
  
  public g() {}
  
  public g(g paramg)
  {
    this.bzc = paramg.bzc;
    this.a = paramg.a;
    if (paramg.e())
    {
      ArrayList localArrayList = new ArrayList(paramg.b.size());
      Iterator localIterator = paramg.b.iterator();
      while (localIterator.hasNext()) {
        localArrayList.add(new d((d)localIterator.next()));
      }
      this.b = localArrayList;
    }
    this.c = paramg.c;
  }
  
  private boolean e()
  {
    return this.b != null;
  }
  
  public final void a(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)i.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final void b(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)i.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b()
  {
    return c.a.a.a.aT(this.bzc, 0);
  }
  
  public final boolean c(g paramg)
  {
    if (paramg == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      do
      {
        do
        {
          return false;
        } while (this.a != paramg.a);
        bool1 = e();
        bool2 = paramg.e();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(paramg.b))));
      bool1 = f();
      bool2 = paramg.f();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.c != paramg.c)));
    return true;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof g)) {
      return false;
    }
    return c((g)paramObject);
  }
  
  public final boolean f()
  {
    return c.a.a.a.aT(this.bzc, 1);
  }
  
  public final void g()
    throws c.a.a.g
  {
    if (this.b == null) {
      throw new i("Required field 'patches' was not present! Struct: " + toString());
    }
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdentityUpdatesResponse(");
    localStringBuilder.append("sequence:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("patches:");
    if (this.b == null) {
      localStringBuilder.append("null");
    }
    for (;;)
    {
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("since_sequence:");
        localStringBuilder.append(this.c);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.b);
    }
  }
  
  public final void xP()
  {
    this.bzc = ((byte)c.a.a.a.d(this.bzc, 0, true));
  }
  
  public final void xQ()
  {
    this.bzc = ((byte)c.a.a.a.d(this.bzc, 1, true));
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
    extends c.a.a.c.c<g>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<g>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */