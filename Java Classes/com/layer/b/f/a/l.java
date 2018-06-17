package com.layer.b.f.a;

import c.a.a.b.m;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class l
  implements c.a.a.c<l, a>, Serializable, Cloneable, Comparable<l>
{
  private static final c.a.a.b.d bxT;
  private static final c.a.a.b.d bxU;
  private static final c.a.a.b.d bxV;
  private static final c.a.a.b.d bxW;
  private static final c.a.a.b.d bxX;
  private static final c.a.a.b.d bxY;
  private static final c.a.a.b.d bxZ;
  private static final c.a.a.b.d byF;
  private static final c.a.a.b.d byG;
  private static final c.a.a.b.d bya;
  private static final c.a.a.b.d byb;
  private static final m bzM = new m("Response");
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> bzN;
  public static final Map<a, c.a.a.a.b> l;
  public a bzO;
  public c bzP;
  public g bzQ;
  public List<c> bzR;
  public List<h> bzS;
  public i bzT;
  private a[] bzU = { a.bzV, a.bzW, a.bzX, a.bzY, a.bzZ, a.bAa, a.bAb, a.bAc, a.bAd, a.bAe, a.bAf };
  public List<ByteBuffer> c;
  public List<String> d;
  public int f;
  public List<j> j;
  public List<i> k;
  private byte z = 0;
  
  static
  {
    byF = new c.a.a.b.d("error", (byte)12, (short)1);
    byG = new c.a.a.b.d("identity", (byte)12, (short)2);
    bxT = new c.a.a.b.d("followers", (byte)15, (short)3);
    bxU = new c.a.a.b.d("followees", (byte)15, (short)4);
    bxV = new c.a.a.b.d("identity_updates", (byte)12, (short)5);
    bxW = new c.a.a.b.d("external_badge_count", (byte)8, (short)6);
    bxX = new c.a.a.b.d("identities", (byte)15, (short)7);
    bxY = new c.a.a.b.d("identity_updates_batch", (byte)15, (short)8);
    bxZ = new c.a.a.b.d("presence", (byte)12, (short)9);
    bya = new c.a.a.b.d("presences_with_internal", (byte)15, (short)10);
    byb = new c.a.a.b.d("presences", (byte)15, (short)11);
    Object localObject = new HashMap();
    bzN = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    bzN.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bzV, new c.a.a.a.b("error", (byte)2, new c.a.a.a.g(a.class)));
    ((Map)localObject).put(a.bzW, new c.a.a.a.b("identity", (byte)2, new c.a.a.a.g(c.class)));
    ((Map)localObject).put(a.bzX, new c.a.a.a.b("followers", (byte)2, new c.a.a.a.d(new c.a.a.a.c("UUID"))));
    ((Map)localObject).put(a.bzY, new c.a.a.a.b("followees", (byte)2, new c.a.a.a.d(new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.bzZ, new c.a.a.a.b("identity_updates", (byte)2, new c.a.a.a.g(g.class)));
    ((Map)localObject).put(a.bAa, new c.a.a.a.b("external_badge_count", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bAb, new c.a.a.a.b("identities", (byte)2, new c.a.a.a.d(new c.a.a.a.g(c.class))));
    ((Map)localObject).put(a.bAc, new c.a.a.a.b("identity_updates_batch", (byte)2, new c.a.a.a.d(new c.a.a.a.g(h.class))));
    ((Map)localObject).put(a.bAd, new c.a.a.a.b("presence", (byte)2, new c.a.a.a.g(i.class)));
    ((Map)localObject).put(a.bAe, new c.a.a.a.b("presences_with_internal", (byte)2, new c.a.a.a.d(new c.a.a.a.g(j.class))));
    ((Map)localObject).put(a.bAf, new c.a.a.a.b("presences", (byte)2, new c.a.a.a.d(new c.a.a.a.g(i.class))));
    l = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(l.class, l);
  }
  
  public final void a(c.a.a.b.h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bzN.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a()
  {
    return this.bzO != null;
  }
  
  public final void b(c.a.a.b.h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bzN.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b()
  {
    return this.bzP != null;
  }
  
  public final boolean c()
  {
    return this.c != null;
  }
  
  public final boolean d()
  {
    return this.d != null;
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
                            } while (!(paramObject instanceof l));
                            paramObject = (l)paramObject;
                          } while (paramObject == null);
                          bool1 = a();
                          bool2 = ((l)paramObject).a();
                        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzO.a(((l)paramObject).bzO))));
                        bool1 = b();
                        bool2 = ((l)paramObject).b();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzP.a(((l)paramObject).bzP))));
                      bool1 = c();
                      bool2 = ((l)paramObject).c();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(((l)paramObject).c))));
                    bool1 = d();
                    bool2 = ((l)paramObject).d();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((l)paramObject).d))));
                  bool1 = f();
                  bool2 = ((l)paramObject).f();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzQ.c(((l)paramObject).bzQ))));
                bool1 = xi();
                bool2 = ((l)paramObject).xi();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.f != ((l)paramObject).f)));
              bool1 = h();
              bool2 = ((l)paramObject).h();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzR.equals(((l)paramObject).bzR))));
            bool1 = i();
            bool2 = ((l)paramObject).i();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzS.equals(((l)paramObject).bzS))));
          bool1 = j();
          bool2 = ((l)paramObject).j();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzT.b(((l)paramObject).bzT))));
        bool1 = k();
        bool2 = ((l)paramObject).k();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(((l)paramObject).j))));
      bool1 = xE();
      bool2 = ((l)paramObject).xE();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.k.equals(((l)paramObject).k))));
    return true;
  }
  
  public final boolean f()
  {
    return this.bzQ != null;
  }
  
  public final boolean h()
  {
    return this.bzR != null;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean i()
  {
    return this.bzS != null;
  }
  
  public final boolean j()
  {
    return this.bzT != null;
  }
  
  public final boolean k()
  {
    return this.j != null;
  }
  
  public final void m()
    throws c.a.a.g
  {
    if (this.bzO != null) {
      this.bzO.f();
    }
    if (this.bzP != null) {
      this.bzP.z();
    }
    if (this.bzQ != null) {
      this.bzQ.g();
    }
    if (this.bzT != null) {
      this.bzT.g();
    }
  }
  
  public String toString()
  {
    int n = 0;
    StringBuilder localStringBuilder = new StringBuilder("Response(");
    int m = 1;
    int i;
    if (a())
    {
      localStringBuilder.append("error:");
      if (this.bzO == null)
      {
        localStringBuilder.append("null");
        m = 0;
      }
    }
    else
    {
      i = m;
      if (b())
      {
        if (m == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("identity:");
        if (this.bzP != null) {
          break label556;
        }
        localStringBuilder.append("null");
        label97:
        i = 0;
      }
      m = i;
      if (c())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("followers:");
        if (this.c != null) {
          break label569;
        }
        localStringBuilder.append("null");
        label146:
        m = 0;
      }
      i = m;
      if (d())
      {
        if (m == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("followees:");
        if (this.d != null) {
          break label582;
        }
        localStringBuilder.append("null");
        label195:
        i = 0;
      }
      m = i;
      if (f())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("identity_updates:");
        if (this.bzQ != null) {
          break label595;
        }
        localStringBuilder.append("null");
        label244:
        m = 0;
      }
      i = m;
      if (xi())
      {
        if (m == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("external_badge_count:");
        localStringBuilder.append(this.f);
        i = 0;
      }
      m = i;
      if (h())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("identities:");
        if (this.bzR != null) {
          break label608;
        }
        localStringBuilder.append("null");
        label336:
        m = 0;
      }
      i = m;
      if (i())
      {
        if (m == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("identity_updates_batch:");
        if (this.bzS != null) {
          break label621;
        }
        localStringBuilder.append("null");
        label385:
        i = 0;
      }
      m = i;
      if (j())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("presence:");
        if (this.bzT != null) {
          break label634;
        }
        localStringBuilder.append("null");
        label434:
        m = 0;
      }
      if (!k()) {
        break label675;
      }
      if (m == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("presences_with_internal:");
      if (this.j != null) {
        break label647;
      }
      localStringBuilder.append("null");
      i = n;
    }
    for (;;)
    {
      label483:
      if (xE())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("presences:");
        if (this.k != null) {
          break label662;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.bzO);
        break;
        label556:
        localStringBuilder.append(this.bzP);
        break label97;
        label569:
        localStringBuilder.append(this.c);
        break label146;
        label582:
        localStringBuilder.append(this.d);
        break label195;
        label595:
        localStringBuilder.append(this.bzQ);
        break label244;
        label608:
        localStringBuilder.append(this.bzR);
        break label336;
        label621:
        localStringBuilder.append(this.bzS);
        break label385;
        label634:
        localStringBuilder.append(this.bzT);
        break label434;
        label647:
        localStringBuilder.append(this.j);
        i = n;
        break label483;
        label662:
        localStringBuilder.append(this.k);
      }
      label675:
      i = m;
    }
  }
  
  public final boolean xE()
  {
    return this.k != null;
  }
  
  public final void xF()
  {
    this.z = ((byte)c.a.a.a.d(this.z, 0, true));
  }
  
  public final boolean xi()
  {
    return c.a.a.a.aT(this.z, 0);
  }
  
  public static enum a
  {
    private static final Map<String, a> a;
    private final short bxI;
    private final String c;
    
    static
    {
      bAa = new a("EXTERNAL_BADGE_COUNT", 5, (short)6, "external_badge_count");
      bAb = new a("IDENTITIES", 6, (short)7, "identities");
      bAc = new a("IDENTITY_UPDATES_BATCH", 7, (short)8, "identity_updates_batch");
      bAd = new a("PRESENCE", 8, (short)9, "presence");
      bAe = new a("PRESENCES_WITH_INTERNAL", 9, (short)10, "presences_with_internal");
      bAf = new a("PRESENCES", 10, (short)11, "presences");
      bAg = new a[] { bzV, bzW, bzX, bzY, bzZ, bAa, bAb, bAc, bAd, bAe, bAf };
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
    extends c.a.a.c.c<l>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<l>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/a/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */