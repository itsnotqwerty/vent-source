package com.layer.b.f.a;

import c.a.a.b.h;
import c.a.a.b.m;
import c.a.a.g;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class k
  implements c.a.a.c<k, a>, Serializable, Cloneable, Comparable<k>
{
  private static final c.a.a.b.d bxz;
  private static final m bzF = new m("PresenceSync");
  private static final c.a.a.b.d bzG = new c.a.a.b.d("ids", (byte)15, (short)1);
  public static final Map<a, c.a.a.a.b> c;
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> g;
  public List<String> a;
  public int b;
  private byte bzH = 0;
  private a[] bzI = { a.bzJ, a.bzK };
  
  static
  {
    bxz = new c.a.a.b.d("page_size", (byte)8, (short)2);
    Object localObject = new HashMap();
    g = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    g.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bzJ, new c.a.a.a.b("ids", (byte)2, new c.a.a.a.d(new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.bzK, new c.a.a.a.b("page_size", (byte)2, new c.a.a.a.c((byte)8)));
    c = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(k.class, c);
  }
  
  public static void c()
    throws g
  {}
  
  public final void a(h paramh)
    throws g
  {
    ((c.a.a.c.b)g.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a()
  {
    return this.a != null;
  }
  
  public final void b(h paramh)
    throws g
  {
    ((c.a.a.c.b)g.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b()
  {
    return c.a.a.a.aT(this.bzH, 0);
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
          } while (!(paramObject instanceof k));
          paramObject = (k)paramObject;
        } while (paramObject == null);
        bool1 = a();
        bool2 = ((k)paramObject).a();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((k)paramObject).a))));
      bool1 = b();
      bool2 = ((k)paramObject).b();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.b != ((k)paramObject).b)));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PresenceSync(");
    int i = 1;
    if (a())
    {
      localStringBuilder.append("ids:");
      if (this.a != null) {
        break label88;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      i = 0;
      if (b())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("page_size:");
        localStringBuilder.append(this.b);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      label88:
      localStringBuilder.append(this.a);
    }
  }
  
  public final void xV()
  {
    this.bzH = ((byte)c.a.a.a.d(this.bzH, 0, true));
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
    extends c.a.a.c.c<k>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<k>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/a/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */