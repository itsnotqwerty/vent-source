package com.layer.b.f.c;

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

public class i
  implements c.a.a.c<i, a>, Serializable, Cloneable, Comparable<i>
{
  private static final c.a.a.b.d bxA;
  private static final c.a.a.b.d bxB;
  private static final c.a.a.b.d byB;
  private static final m bzi = new m("PushToken");
  private static final c.a.a.b.d bzj;
  public static final Map<a, c.a.a.a.b> e;
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> k;
  public String a;
  private a[] bDU = { a.bDX, a.bDY };
  public j bxq;
  public String c;
  public String d;
  
  static
  {
    bxA = new c.a.a.b.d("device_token", (byte)11, (short)1);
    bxB = new c.a.a.b.d("type", (byte)8, (short)2);
    bzj = new c.a.a.b.d("apns_bundle_id", (byte)11, (short)3);
    byB = new c.a.a.b.d("gcm_sender_id", (byte)11, (short)4);
    Object localObject = new HashMap();
    k = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    k.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bDV, new c.a.a.a.b("device_token", (byte)1, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bDW, new c.a.a.a.b("type", (byte)1, new c.a.a.a.a(j.class)));
    ((Map)localObject).put(a.bDX, new c.a.a.a.b("apns_bundle_id", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bDY, new c.a.a.a.b("gcm_sender_id", (byte)2, new c.a.a.a.c((byte)11)));
    e = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(i.class, e);
  }
  
  public i() {}
  
  public i(String paramString, j paramj)
  {
    this();
    this.a = paramString;
    this.bxq = paramj;
  }
  
  private boolean a()
  {
    return this.a != null;
  }
  
  private boolean b()
  {
    return this.bxq != null;
  }
  
  public final void a(h paramh)
    throws g
  {
    ((c.a.a.c.b)k.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final void b(h paramh)
    throws g
  {
    ((c.a.a.c.b)k.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean c()
  {
    return this.c != null;
  }
  
  public final boolean d()
  {
    return this.d != null;
  }
  
  public final void e()
    throws g
  {
    if (this.a == null) {
      throw new c.a.a.b.i("Required field 'device_token' was not present! Struct: " + toString());
    }
    if (this.bxq == null) {
      throw new c.a.a.b.i("Required field 'type' was not present! Struct: " + toString());
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
              } while (!(paramObject instanceof i));
              paramObject = (i)paramObject;
            } while (paramObject == null);
            bool1 = a();
            bool2 = ((i)paramObject).a();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((i)paramObject).a))));
          bool1 = b();
          bool2 = ((i)paramObject).b();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bxq.equals(((i)paramObject).bxq))));
        bool1 = c();
        bool2 = ((i)paramObject).c();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(((i)paramObject).c))));
      bool1 = d();
      bool2 = ((i)paramObject).d();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((i)paramObject).d))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PushToken(");
    localStringBuilder.append("device_token:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("type:");
      if (this.bxq != null) {
        break label166;
      }
      localStringBuilder.append("null");
      label65:
      if (c())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("apns_bundle_id:");
        if (this.c != null) {
          break label178;
        }
        localStringBuilder.append("null");
      }
      label103:
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("gcm_sender_id:");
        if (this.d != null) {
          break label190;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label166:
      localStringBuilder.append(this.bxq);
      break label65;
      label178:
      localStringBuilder.append(this.c);
      break label103;
      label190:
      localStringBuilder.append(this.d);
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/c/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */