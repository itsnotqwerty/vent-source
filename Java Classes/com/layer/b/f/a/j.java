package com.layer.b.f.a;

import c.a.a.b.h;
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

public class j
  implements c.a.a.c<j, a>, Serializable, Cloneable, Comparable<j>
{
  private static final c.a.a.b.d bxA;
  private static final c.a.a.b.d bxB;
  private static final c.a.a.b.d byB;
  private static final m bzi = new m("PresenceBatchWrapper");
  private static final c.a.a.b.d bzj;
  public static final Map<a, c.a.a.a.b> e;
  private static final Map<Class<? extends a>, c.a.a.c.b> k;
  public ByteBuffer bzk;
  public ByteBuffer bzl;
  public i bzx;
  public ByteBuffer bzy;
  private a[] bzz = { a.bzD };
  
  static
  {
    bxA = new c.a.a.b.d("presence", (byte)12, (short)1);
    bxB = new c.a.a.b.d("user_id", (byte)11, (short)2);
    bzj = new c.a.a.b.d("app_id", (byte)11, (short)3);
    byB = new c.a.a.b.d("device_id", (byte)11, (short)4);
    Object localObject = new HashMap();
    k = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    k.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bzA, new c.a.a.a.b("presence", (byte)1, new c.a.a.a.g(i.class)));
    ((Map)localObject).put(a.bzB, new c.a.a.a.b("user_id", (byte)1, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bzC, new c.a.a.a.b("app_id", (byte)1, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bzD, new c.a.a.a.b("device_id", (byte)2, new c.a.a.a.c("UUID")));
    e = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(j.class, e);
  }
  
  private boolean a()
  {
    return this.bzx != null;
  }
  
  private boolean b()
  {
    return this.bzy != null;
  }
  
  private boolean c()
  {
    return this.bzk != null;
  }
  
  public final void a(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)k.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final void b(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)k.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean d()
  {
    return this.bzl != null;
  }
  
  public final void e()
    throws c.a.a.g
  {
    if (this.bzx == null) {
      throw new c.a.a.b.i("Required field 'presence' was not present! Struct: " + toString());
    }
    if (this.bzy == null) {
      throw new c.a.a.b.i("Required field 'user_id' was not present! Struct: " + toString());
    }
    if (this.bzk == null) {
      throw new c.a.a.b.i("Required field 'app_id' was not present! Struct: " + toString());
    }
    if (this.bzx != null) {
      this.bzx.g();
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
              } while (!(paramObject instanceof j));
              paramObject = (j)paramObject;
            } while (paramObject == null);
            bool1 = a();
            bool2 = ((j)paramObject).a();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzx.b(((j)paramObject).bzx))));
          bool1 = b();
          bool2 = ((j)paramObject).b();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzy.equals(((j)paramObject).bzy))));
        bool1 = c();
        bool2 = ((j)paramObject).c();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzk.equals(((j)paramObject).bzk))));
      bool1 = d();
      bool2 = ((j)paramObject).d();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzl.equals(((j)paramObject).bzl))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PresenceBatchWrapper(");
    localStringBuilder.append("presence:");
    if (this.bzx == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("user_id:");
      if (this.bzy != null) {
        break label159;
      }
      localStringBuilder.append("null");
      label65:
      localStringBuilder.append(", ");
      localStringBuilder.append("app_id:");
      if (this.bzk != null) {
        break label171;
      }
      localStringBuilder.append("null");
      label96:
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("device_id:");
        if (this.bzl != null) {
          break label183;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.bzx);
      break;
      label159:
      localStringBuilder.append(this.bzy);
      break label65;
      label171:
      localStringBuilder.append(this.bzk);
      break label96;
      label183:
      localStringBuilder.append(this.bzl);
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
    extends c.a.a.c.c<j>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<j>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */