package com.layer.b.f.b;

import c.a.a.a.e;
import c.a.a.b.h;
import c.a.a.b.m;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class c
  implements c.a.a.c<c, a>, Serializable, Cloneable, Comparable<c>
{
  private static final c.a.a.b.d bxz;
  private static final m bzF = new m("Response");
  private static final c.a.a.b.d bzG = new c.a.a.b.d("error", (byte)12, (short)1);
  public static final Map<a, c.a.a.a.b> c;
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> g;
  public Map<String, Long> b;
  private a[] bAA = { a.bAB, a.bAC };
  public a bAz;
  
  static
  {
    bxz = new c.a.a.b.d("user_ids_with_timestamps", (byte)13, (short)2);
    Object localObject = new HashMap();
    g = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    g.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bAB, new c.a.a.a.b("error", (byte)2, new c.a.a.a.g(a.class)));
    ((Map)localObject).put(a.bAC, new c.a.a.a.b("user_ids_with_timestamps", (byte)2, new e(new c.a.a.a.c("ProviderUserId"), new c.a.a.a.c((byte)10))));
    c = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(c.class, c);
  }
  
  public final void a(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)g.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a()
  {
    return this.bAz != null;
  }
  
  public final void b(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)g.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean c()
  {
    return this.b != null;
  }
  
  public final void d()
    throws c.a.a.g
  {
    if (this.bAz != null) {
      a.g();
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      do
      {
        do
        {
          do
          {
            return false;
          } while (!(paramObject instanceof c));
          paramObject = (c)paramObject;
        } while (paramObject == null);
        bool1 = a();
        bool2 = ((c)paramObject).a();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bAz.a(((c)paramObject).bAz))));
      bool1 = c();
      bool2 = ((c)paramObject).c();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(((c)paramObject).b))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Response(");
    int i = 1;
    if (a())
    {
      localStringBuilder.append("error:");
      if (this.bAz == null)
      {
        localStringBuilder.append("null");
        i = 0;
      }
    }
    else if (c())
    {
      if (i == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("user_ids_with_timestamps:");
      if (this.b != null) {
        break label105;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.bAz);
      break;
      label105:
      localStringBuilder.append(this.b);
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
    extends c.a.a.c.c<c>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<c>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */