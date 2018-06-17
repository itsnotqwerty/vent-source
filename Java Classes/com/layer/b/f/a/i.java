package com.layer.b.f.a;

import c.a.a.b.h;
import c.a.a.g;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class i
  implements c.a.a.c<i, a>, Serializable, Cloneable, Comparable<i>
{
  private static final c.a.a.b.d bxA;
  private static final c.a.a.b.d bxB;
  public static final Map<a, c.a.a.a.b> bxE;
  private static final c.a.a.b.m bxy = new c.a.a.b.m("Presence");
  private static final c.a.a.b.d bxz = new c.a.a.b.d("provider_user_id", (byte)11, (short)1);
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> i;
  public String a;
  public m bxp;
  private byte bzc = 0;
  private a[] bzs = { a.bzv };
  public long c;
  
  static
  {
    bxA = new c.a.a.b.d("status", (byte)8, (short)2);
    bxB = new c.a.a.b.d("timestamp", (byte)10, (short)3);
    Object localObject = new HashMap();
    i = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    i.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bzt, new c.a.a.a.b("provider_user_id", (byte)1, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bzu, new c.a.a.a.b("status", (byte)1, new c.a.a.a.a(m.class)));
    ((Map)localObject).put(a.bzv, new c.a.a.a.b("timestamp", (byte)2, new c.a.a.a.c((byte)10)));
    bxE = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(i.class, bxE);
  }
  
  public i() {}
  
  public i(i parami)
  {
    this.bzc = parami.bzc;
    if (parami.b()) {
      this.a = parami.a;
    }
    if (parami.d()) {
      this.bxp = parami.bxp;
    }
    this.c = parami.c;
  }
  
  public i(String paramString, m paramm)
  {
    this();
    this.a = paramString;
    this.bxp = paramm;
  }
  
  private boolean b()
  {
    return this.a != null;
  }
  
  private boolean d()
  {
    return this.bxp != null;
  }
  
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
  
  public final boolean b(i parami)
  {
    if (parami == null) {}
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
          bool2 = parami.b();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(parami.a))));
        bool1 = d();
        bool2 = parami.d();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bxp.equals(parami.bxp))));
      bool1 = f();
      bool2 = parami.f();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.c != parami.c)));
    return true;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof i)) {
      return false;
    }
    return b((i)paramObject);
  }
  
  public final boolean f()
  {
    return c.a.a.a.aT(this.bzc, 0);
  }
  
  public final void g()
    throws g
  {
    if (this.a == null) {
      throw new c.a.a.b.i("Required field 'provider_user_id' was not present! Struct: " + toString());
    }
    if (this.bxp == null) {
      throw new c.a.a.b.i("Required field 'status' was not present! Struct: " + toString());
    }
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Presence(");
    localStringBuilder.append("provider_user_id:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("status:");
      if (this.bxp != null) {
        break label122;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("timestamp:");
        localStringBuilder.append(this.c);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label122:
      localStringBuilder.append(this.bxp);
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
    extends c.a.a.c.c<i>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<i>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */