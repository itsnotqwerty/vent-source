package com.layer.b.f.c;

import c.a.a.a.e;
import c.a.a.a.f;
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
import java.util.Set;

public class n
  implements c.a.a.c<n, a>, Serializable, Cloneable, Comparable<n>
{
  private static final c.a.a.b.d bxA;
  private static final c.a.a.b.d bxB;
  public static final Map<a, c.a.a.a.b> bxE;
  private static final m bxy = new m("StreamMetadata");
  private static final c.a.a.b.d bxz = new c.a.a.b.d("updates", (byte)13, (short)1);
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> i;
  public Map<String, String> a;
  public Set<String> b;
  private a[] bFo = { a.bFp, a.bFq, a.bFr };
  private byte bzc = 0;
  public long c;
  
  static
  {
    bxA = new c.a.a.b.d("deletions", (byte)14, (short)2);
    bxB = new c.a.a.b.d("timestamp", (byte)10, (short)3);
    Object localObject = new HashMap();
    i = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    i.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bFp, new c.a.a.a.b("updates", (byte)2, new e(new c.a.a.a.c((byte)11), new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.bFq, new c.a.a.a.b("deletions", (byte)2, new f(new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.bFr, new c.a.a.a.b("timestamp", (byte)2, new c.a.a.a.c((byte)10)));
    bxE = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(n.class, bxE);
  }
  
  public static void g()
    throws g
  {}
  
  public final void a(h paramh)
    throws g
  {
    ((c.a.a.c.b)i.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final void b(h paramh)
    throws g
  {
    ((c.a.a.c.b)i.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b()
  {
    return this.a != null;
  }
  
  public final boolean c(n paramn)
  {
    if (paramn == null) {}
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
          bool2 = paramn.b();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramn.a))));
        bool1 = d();
        bool2 = paramn.d();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(paramn.b))));
      bool1 = f();
      bool2 = paramn.f();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.c != paramn.c)));
    return true;
  }
  
  public final boolean d()
  {
    return this.b != null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof n)) {
      return false;
    }
    return c((n)paramObject);
  }
  
  public final boolean f()
  {
    return c.a.a.a.aT(this.bzc, 0);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int k = 0;
    StringBuilder localStringBuilder = new StringBuilder("StreamMetadata(");
    int j = 1;
    if (b())
    {
      localStringBuilder.append("updates:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        j = 0;
      }
    }
    else
    {
      if (!d()) {
        break label165;
      }
      if (j == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("deletions:");
      if (this.b != null) {
        break label151;
      }
      localStringBuilder.append("null");
      j = k;
    }
    label151:
    label165:
    for (;;)
    {
      if (f())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("timestamp:");
        localStringBuilder.append(this.c);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      localStringBuilder.append(this.b);
      j = k;
    }
  }
  
  public final void xQ()
  {
    this.bzc = ((byte)c.a.a.a.d(this.bzc, 0, true));
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
    extends c.a.a.c.c<n>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<n>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/c/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */