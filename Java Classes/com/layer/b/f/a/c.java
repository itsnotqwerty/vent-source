package com.layer.b.f.a;

import c.a.a.a.e;
import c.a.a.b.h;
import c.a.a.b.i;
import c.a.a.b.m;
import c.a.a.g;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class c
  implements c.a.a.c<c, a>, Serializable, Cloneable, Comparable<c>
{
  private static final m bxS = new m("Identity");
  private static final c.a.a.b.d bxT = new c.a.a.b.d("provider_user_id", (byte)11, (short)1);
  private static final c.a.a.b.d bxU = new c.a.a.b.d("display_name", (byte)11, (short)2);
  private static final c.a.a.b.d bxV = new c.a.a.b.d("avatar_url", (byte)11, (short)3);
  private static final c.a.a.b.d bxW = new c.a.a.b.d("first_name", (byte)11, (short)4);
  private static final c.a.a.b.d bxX = new c.a.a.b.d("last_name", (byte)11, (short)5);
  private static final c.a.a.b.d bxY = new c.a.a.b.d("phone_number", (byte)11, (short)6);
  private static final c.a.a.b.d bxZ = new c.a.a.b.d("email", (byte)11, (short)7);
  private static final c.a.a.b.d bya = new c.a.a.b.d("public_key", (byte)11, (short)8);
  private static final c.a.a.b.d byb = new c.a.a.b.d("metadata", (byte)13, (short)9);
  private static final c.a.a.b.d byc = new c.a.a.b.d("created_at", (byte)10, (short)10);
  private static final c.a.a.b.d byd = new c.a.a.b.d("updated_at", (byte)10, (short)11);
  private static final c.a.a.b.d bye = new c.a.a.b.d("identity_type", (byte)8, (short)12);
  private static final c.a.a.b.d byf = new c.a.a.b.d("user_id", (byte)11, (short)13);
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> byg;
  public static final Map<a, c.a.a.a.b> byl;
  public String a;
  public String b;
  public f byh;
  public ByteBuffer byi;
  private byte byj = 0;
  private a[] byk = { a.byn, a.byo, a.byp, a.byq, a.byr, a.bys, a.byt, a.byu, a.byv, a.byw, a.byx, a.byy };
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public String h;
  public Map<String, String> i;
  public long j;
  public long k;
  
  static
  {
    Object localObject = new HashMap();
    byg = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    byg.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bym, new c.a.a.a.b("provider_user_id", (byte)1, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.byn, new c.a.a.a.b("display_name", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.byo, new c.a.a.a.b("avatar_url", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.byp, new c.a.a.a.b("first_name", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.byq, new c.a.a.a.b("last_name", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.byr, new c.a.a.a.b("phone_number", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bys, new c.a.a.a.b("email", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.byt, new c.a.a.a.b("public_key", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.byu, new c.a.a.a.b("metadata", (byte)2, new e(new c.a.a.a.c((byte)11), new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.byv, new c.a.a.a.b("created_at", (byte)2, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.byw, new c.a.a.a.b("updated_at", (byte)2, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.byx, new c.a.a.a.b("identity_type", (byte)2, new c.a.a.a.a(f.class)));
    ((Map)localObject).put(a.byy, new c.a.a.a.b("user_id", (byte)2, new c.a.a.a.c("UUID")));
    byl = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(c.class, byl);
  }
  
  public c() {}
  
  public c(c paramc)
  {
    this.byj = paramc.byj;
    if (paramc.e()) {
      this.a = paramc.a;
    }
    if (paramc.xi()) {
      this.b = paramc.b;
    }
    if (paramc.i()) {
      this.c = paramc.c;
    }
    if (paramc.k()) {
      this.d = paramc.d;
    }
    if (paramc.xj()) {
      this.e = paramc.e;
    }
    if (paramc.xk()) {
      this.f = paramc.f;
    }
    if (paramc.q()) {
      this.g = paramc.g;
    }
    if (paramc.s()) {
      this.h = paramc.h;
    }
    if (paramc.xl()) {
      this.i = new HashMap(paramc.i);
    }
    this.j = paramc.j;
    this.k = paramc.k;
    if (paramc.xp()) {
      this.byh = paramc.byh;
    }
    if (paramc.y()) {
      this.byi = paramc.byi;
    }
  }
  
  private boolean e()
  {
    return this.a != null;
  }
  
  public final void a(h paramh)
    throws g
  {
    ((c.a.a.c.b)byg.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a(c paramc)
  {
    if (paramc == null) {}
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
                            do
                            {
                              return false;
                              bool1 = e();
                              bool2 = paramc.e();
                            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramc.a))));
                            bool1 = xi();
                            bool2 = paramc.xi();
                          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(paramc.b))));
                          bool1 = i();
                          bool2 = paramc.i();
                        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramc.c))));
                        bool1 = k();
                        bool2 = paramc.k();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramc.d))));
                      bool1 = xj();
                      bool2 = paramc.xj();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(paramc.e))));
                    bool1 = xk();
                    bool2 = paramc.xk();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(paramc.f))));
                  bool1 = q();
                  bool2 = paramc.q();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramc.g))));
                bool1 = s();
                bool2 = paramc.s();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(paramc.h))));
              bool1 = xl();
              bool2 = paramc.xl();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.i.equals(paramc.i))));
            bool1 = xm();
            bool2 = paramc.xm();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.j != paramc.j)));
          bool1 = w();
          bool2 = paramc.w();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.k != paramc.k)));
        bool1 = xp();
        bool2 = paramc.xp();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.byh.equals(paramc.byh))));
      bool1 = y();
      bool2 = paramc.y();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.byi.equals(paramc.byi))));
    return true;
  }
  
  public final void b(h paramh)
    throws g
  {
    ((c.a.a.c.b)byg.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof c)) {
      return false;
    }
    return a((c)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean i()
  {
    return this.c != null;
  }
  
  public final boolean k()
  {
    return this.d != null;
  }
  
  public final boolean q()
  {
    return this.g != null;
  }
  
  public final boolean s()
  {
    return this.h != null;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Identity(");
    localStringBuilder.append("provider_user_id:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (xi())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("display_name:");
        if (this.b != null) {
          break label503;
        }
        localStringBuilder.append("null");
      }
      label72:
      if (i())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("avatar_url:");
        if (this.c != null) {
          break label515;
        }
        localStringBuilder.append("null");
      }
      label110:
      if (k())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("first_name:");
        if (this.d != null) {
          break label527;
        }
        localStringBuilder.append("null");
      }
      label148:
      if (xj())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("last_name:");
        if (this.e != null) {
          break label539;
        }
        localStringBuilder.append("null");
      }
      label186:
      if (xk())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("phone_number:");
        if (this.f != null) {
          break label551;
        }
        localStringBuilder.append("null");
      }
      label224:
      if (q())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("email:");
        if (this.g != null) {
          break label563;
        }
        localStringBuilder.append("null");
      }
      label262:
      if (s())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("public_key:");
        if (this.h != null) {
          break label575;
        }
        localStringBuilder.append("null");
      }
      label300:
      if (xl())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("metadata:");
        if (this.i != null) {
          break label587;
        }
        localStringBuilder.append("null");
      }
      label338:
      if (xm())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("created_at:");
        localStringBuilder.append(this.j);
      }
      if (w())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("updated_at:");
        localStringBuilder.append(this.k);
      }
      if (xp())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("identity_type:");
        if (this.byh != null) {
          break label599;
        }
        localStringBuilder.append("null");
      }
      label440:
      if (y())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("user_id:");
        if (this.byi != null) {
          break label611;
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
      label503:
      localStringBuilder.append(this.b);
      break label72;
      label515:
      localStringBuilder.append(this.c);
      break label110;
      label527:
      localStringBuilder.append(this.d);
      break label148;
      label539:
      localStringBuilder.append(this.e);
      break label186;
      label551:
      localStringBuilder.append(this.f);
      break label224;
      label563:
      localStringBuilder.append(this.g);
      break label262;
      label575:
      localStringBuilder.append(this.h);
      break label300;
      label587:
      localStringBuilder.append(this.i);
      break label338;
      label599:
      localStringBuilder.append(this.byh);
      break label440;
      label611:
      localStringBuilder.append(this.byi);
    }
  }
  
  public final boolean w()
  {
    return c.a.a.a.aT(this.byj, 1);
  }
  
  public final boolean xi()
  {
    return this.b != null;
  }
  
  public final boolean xj()
  {
    return this.e != null;
  }
  
  public final boolean xk()
  {
    return this.f != null;
  }
  
  public final boolean xl()
  {
    return this.i != null;
  }
  
  public final boolean xm()
  {
    return c.a.a.a.aT(this.byj, 0);
  }
  
  public final void xn()
  {
    this.byj = ((byte)c.a.a.a.d(this.byj, 0, true));
  }
  
  public final void xo()
  {
    this.byj = ((byte)c.a.a.a.d(this.byj, 1, true));
  }
  
  public final boolean xp()
  {
    return this.byh != null;
  }
  
  public final boolean y()
  {
    return this.byi != null;
  }
  
  public final void z()
    throws g
  {
    if (this.a == null) {
      throw new i("Required field 'provider_user_id' was not present! Struct: " + toString());
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */