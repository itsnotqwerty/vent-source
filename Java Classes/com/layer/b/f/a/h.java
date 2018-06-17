package com.layer.b.f.a;

import c.a.a.b.m;
import c.a.a.c.a;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class h
  implements c.a.a.c<h, a>, Serializable, Cloneable, Comparable<h>
{
  private static final c.a.a.b.d bxA;
  private static final c.a.a.b.d bxB;
  private static final c.a.a.b.d byB;
  private static final m bzi = new m("IdentityUpdatesResponseBatched");
  private static final c.a.a.b.d bzj;
  public static final Map<a, c.a.a.a.b> e;
  private static final Map<Class<? extends a>, c.a.a.c.b> k;
  public String b;
  public g bpX;
  public ByteBuffer bzk;
  public ByteBuffer bzl;
  private a[] bzm = { a.bzn, a.bzo, a.bzp, a.bzq };
  
  static
  {
    bxA = new c.a.a.b.d("identity_updates", (byte)12, (short)1);
    bxB = new c.a.a.b.d("provider_user_id", (byte)11, (short)2);
    bzj = new c.a.a.b.d("user_id", (byte)11, (short)3);
    byB = new c.a.a.b.d("app_id", (byte)11, (short)4);
    Object localObject = new HashMap();
    k = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    k.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bzn, new c.a.a.a.b("identity_updates", (byte)2, new c.a.a.a.g(g.class)));
    ((Map)localObject).put(a.bzo, new c.a.a.a.b("provider_user_id", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bzp, new c.a.a.a.b("user_id", (byte)2, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bzq, new c.a.a.a.b("app_id", (byte)2, new c.a.a.a.c("UUID")));
    e = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(h.class, e);
  }
  
  public final void a(c.a.a.b.h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)k.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a()
  {
    return this.bpX != null;
  }
  
  public final void b(c.a.a.b.h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)k.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b()
  {
    return this.b != null;
  }
  
  public final boolean c()
  {
    return this.bzk != null;
  }
  
  public final boolean d()
  {
    return this.bzl != null;
  }
  
  public final void e()
    throws c.a.a.g
  {
    if (this.bpX != null) {
      this.bpX.g();
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
            do
            {
              do
              {
                return false;
              } while (!(paramObject instanceof h));
              paramObject = (h)paramObject;
            } while (paramObject == null);
            bool1 = a();
            bool2 = ((h)paramObject).a();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bpX.c(((h)paramObject).bpX))));
          bool1 = b();
          bool2 = ((h)paramObject).b();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(((h)paramObject).b))));
        bool1 = c();
        bool2 = ((h)paramObject).c();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzk.equals(((h)paramObject).bzk))));
      bool1 = d();
      bool2 = ((h)paramObject).d();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzl.equals(((h)paramObject).bzl))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int m = 0;
    StringBuilder localStringBuilder = new StringBuilder("IdentityUpdatesResponseBatched(");
    int i = 1;
    int j;
    if (a())
    {
      localStringBuilder.append("identity_updates:");
      if (this.bpX == null)
      {
        localStringBuilder.append("null");
        i = 0;
      }
    }
    else
    {
      j = i;
      if (b())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("provider_user_id:");
        if (this.b != null) {
          break label218;
        }
        localStringBuilder.append("null");
        label96:
        j = 0;
      }
      if (!c()) {
        break label259;
      }
      if (j == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("user_id:");
      if (this.bzk != null) {
        break label231;
      }
      localStringBuilder.append("null");
      i = m;
    }
    for (;;)
    {
      label145:
      if (d())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("app_id:");
        if (this.bzl != null) {
          break label246;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.bpX);
        break;
        label218:
        localStringBuilder.append(this.b);
        break label96;
        label231:
        localStringBuilder.append(this.bzk);
        i = m;
        break label145;
        label246:
        localStringBuilder.append(this.bzl);
      }
      label259:
      i = j;
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
    extends c.a.a.c.c<h>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<h>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */