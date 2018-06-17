package com.layer.b.f.c;

import c.a.a.a.f;
import c.a.a.b.h;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class l
  implements c.a.a.c<l, a>, Serializable, Cloneable, Comparable<l>
{
  public static final Map<a, c.a.a.a.b> bAF;
  private static final c.a.a.b.m bEh = new c.a.a.b.m("Response");
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> bEi;
  private static final c.a.a.b.d bxT;
  private static final c.a.a.b.d bxU;
  private static final c.a.a.b.d bxV;
  private static final c.a.a.b.d bxW;
  private static final c.a.a.b.d bxX;
  private static final c.a.a.b.d bxY;
  private static final c.a.a.b.d bxZ;
  private static final c.a.a.b.d byG = new c.a.a.b.d("error", (byte)12, (short)1);
  private static final c.a.a.b.d bya;
  private static final c.a.a.b.d byb;
  private static final c.a.a.b.d byc;
  private static final c.a.a.b.d byd;
  public b bEj;
  public d bEk;
  public m bEl;
  public n bEm;
  public Set<a> bEn;
  public p bEo;
  public Set<ByteBuffer> bEp;
  public Set<String> bEq;
  public ByteBuffer bEr;
  private a[] bEs = { a.bEt, a.bEu, a.bEv, a.bEw, a.bEx, a.bEy, a.bEz, a.bEA, a.bEB, a.bEC, a.bED, a.bEE };
  public Set<p> bwV;
  public Set<m> d;
  public List<d> j;
  
  static
  {
    bxT = new c.a.a.b.d("event", (byte)12, (short)2);
    bxU = new c.a.a.b.d("stream", (byte)12, (short)3);
    bxV = new c.a.a.b.d("streams", (byte)14, (short)4);
    bxW = new c.a.a.b.d("stream_metadata", (byte)12, (short)5);
    bxX = new c.a.a.b.d("content", (byte)14, (short)6);
    bxY = new c.a.a.b.d("mutation", (byte)12, (short)7);
    bxZ = new c.a.a.b.d("mutations", (byte)14, (short)8);
    bya = new c.a.a.b.d("ids", (byte)14, (short)9);
    byb = new c.a.a.b.d("events", (byte)15, (short)10);
    byc = new c.a.a.b.d("tags", (byte)14, (short)11);
    byd = new c.a.a.b.d("paging_key", (byte)11, (short)12);
    Object localObject = new HashMap();
    bEi = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    bEi.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bEt, new c.a.a.a.b("error", (byte)2, new c.a.a.a.g(b.class)));
    ((Map)localObject).put(a.bEu, new c.a.a.a.b("event", (byte)2, new c.a.a.a.g(d.class)));
    ((Map)localObject).put(a.bEv, new c.a.a.a.b("stream", (byte)2, new c.a.a.a.g(m.class)));
    ((Map)localObject).put(a.bEw, new c.a.a.a.b("streams", (byte)2, new f(new c.a.a.a.g(m.class))));
    ((Map)localObject).put(a.bEx, new c.a.a.a.b("stream_metadata", (byte)2, new c.a.a.a.g(n.class)));
    ((Map)localObject).put(a.bEy, new c.a.a.a.b("content", (byte)2, new f(new c.a.a.a.g(a.class))));
    ((Map)localObject).put(a.bEz, new c.a.a.a.b("mutation", (byte)2, new c.a.a.a.g(p.class)));
    ((Map)localObject).put(a.bEA, new c.a.a.a.b("mutations", (byte)2, new f(new c.a.a.a.g(p.class))));
    ((Map)localObject).put(a.bEB, new c.a.a.a.b("ids", (byte)2, new f(new c.a.a.a.c("UUID"))));
    ((Map)localObject).put(a.bEC, new c.a.a.a.b("events", (byte)2, new c.a.a.a.d(new c.a.a.a.g(d.class))));
    ((Map)localObject).put(a.bED, new c.a.a.a.b("tags", (byte)2, new f(new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.bEE, new c.a.a.a.b("paging_key", (byte)2, new c.a.a.a.c((byte)11, true)));
    bAF = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(l.class, bAF);
  }
  
  public final void a(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bEi.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a()
  {
    return this.bEj != null;
  }
  
  public final void b(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bEi.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b()
  {
    return this.bEk != null;
  }
  
  public final boolean c()
  {
    return this.bEl != null;
  }
  
  public final boolean d()
  {
    return this.d != null;
  }
  
  public final boolean e()
  {
    return this.bEm != null;
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
                              do
                              {
                                return false;
                              } while (!(paramObject instanceof l));
                              paramObject = (l)paramObject;
                            } while (paramObject == null);
                            bool1 = a();
                            bool2 = ((l)paramObject).a();
                          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEj.a(((l)paramObject).bEj))));
                          bool1 = b();
                          bool2 = ((l)paramObject).b();
                        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEk.a(((l)paramObject).bEk))));
                        bool1 = c();
                        bool2 = ((l)paramObject).c();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEl.b(((l)paramObject).bEl))));
                      bool1 = d();
                      bool2 = ((l)paramObject).d();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((l)paramObject).d))));
                    bool1 = e();
                    bool2 = ((l)paramObject).e();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEm.c(((l)paramObject).bEm))));
                  bool1 = f();
                  bool2 = ((l)paramObject).f();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEn.equals(((l)paramObject).bEn))));
                bool1 = xi();
                bool2 = ((l)paramObject).xi();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEo.a(((l)paramObject).bEo))));
              bool1 = h();
              bool2 = ((l)paramObject).h();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bwV.equals(((l)paramObject).bwV))));
            bool1 = i();
            bool2 = ((l)paramObject).i();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEp.equals(((l)paramObject).bEp))));
          bool1 = j();
          bool2 = ((l)paramObject).j();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(((l)paramObject).j))));
        bool1 = k();
        bool2 = ((l)paramObject).k();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEq.equals(((l)paramObject).bEq))));
      bool1 = xE();
      bool2 = ((l)paramObject).xE();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEr.equals(((l)paramObject).bEr))));
    return true;
  }
  
  public final boolean f()
  {
    return this.bEn != null;
  }
  
  public final boolean h()
  {
    return this.bwV != null;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean i()
  {
    return this.bEp != null;
  }
  
  public final boolean j()
  {
    return this.j != null;
  }
  
  public final boolean k()
  {
    return this.bEq != null;
  }
  
  public final void m()
    throws c.a.a.g
  {
    if (this.bEj != null) {
      b.g();
    }
    if (this.bEk != null) {
      this.bEk.yA();
    }
    if (this.bEl != null) {
      this.bEl.zj();
    }
    if (this.bEm != null) {
      n.g();
    }
    if (this.bEo != null) {
      this.bEo.t();
    }
  }
  
  public String toString()
  {
    int m = 0;
    StringBuilder localStringBuilder = new StringBuilder("Response(");
    int k = 1;
    int i;
    if (a())
    {
      localStringBuilder.append("error:");
      if (this.bEj == null)
      {
        localStringBuilder.append("null");
        k = 0;
      }
    }
    else
    {
      i = k;
      if (b())
      {
        if (k == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("event:");
        if (this.bEk != null) {
          break label611;
        }
        localStringBuilder.append("null");
        label97:
        i = 0;
      }
      k = i;
      if (c())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("stream:");
        if (this.bEl != null) {
          break label624;
        }
        localStringBuilder.append("null");
        label146:
        k = 0;
      }
      i = k;
      if (d())
      {
        if (k == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("streams:");
        if (this.d != null) {
          break label637;
        }
        localStringBuilder.append("null");
        label195:
        i = 0;
      }
      k = i;
      if (e())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("stream_metadata:");
        if (this.bEm != null) {
          break label650;
        }
        localStringBuilder.append("null");
        label244:
        k = 0;
      }
      i = k;
      if (f())
      {
        if (k == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("content:");
        if (this.bEn != null) {
          break label663;
        }
        localStringBuilder.append("null");
        label293:
        i = 0;
      }
      k = i;
      if (xi())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("mutation:");
        if (this.bEo != null) {
          break label676;
        }
        localStringBuilder.append("null");
        label342:
        k = 0;
      }
      i = k;
      if (h())
      {
        if (k == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("mutations:");
        if (this.bwV != null) {
          break label689;
        }
        localStringBuilder.append("null");
        label391:
        i = 0;
      }
      k = i;
      if (i())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("ids:");
        if (this.bEp != null) {
          break label702;
        }
        localStringBuilder.append("null");
        label440:
        k = 0;
      }
      i = k;
      if (j())
      {
        if (k == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("events:");
        if (this.j != null) {
          break label715;
        }
        localStringBuilder.append("null");
        label489:
        i = 0;
      }
      if (!k()) {
        break label755;
      }
      if (i == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("tags:");
      if (this.bEq != null) {
        break label728;
      }
      localStringBuilder.append("null");
      i = m;
    }
    label538:
    label611:
    label624:
    label637:
    label650:
    label663:
    label676:
    label689:
    label702:
    label715:
    label728:
    label743:
    label755:
    for (;;)
    {
      if (xE())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("paging_key:");
        if (this.bEr != null) {
          break label743;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.bEj);
        break;
        localStringBuilder.append(this.bEk);
        break label97;
        localStringBuilder.append(this.bEl);
        break label146;
        localStringBuilder.append(this.d);
        break label195;
        localStringBuilder.append(this.bEm);
        break label244;
        localStringBuilder.append(this.bEn);
        break label293;
        localStringBuilder.append(this.bEo);
        break label342;
        localStringBuilder.append(this.bwV);
        break label391;
        localStringBuilder.append(this.bEp);
        break label440;
        localStringBuilder.append(this.j);
        break label489;
        localStringBuilder.append(this.bEq);
        i = m;
        break label538;
        c.a.a.d.a(this.bEr, localStringBuilder);
      }
    }
  }
  
  public final boolean xE()
  {
    return this.bEr != null;
  }
  
  public final boolean xi()
  {
    return this.bEo != null;
  }
  
  public static enum a
  {
    private static final Map<String, a> a;
    private final short bxI;
    private final String c;
    
    static
    {
      bEA = new a("MUTATIONS", 7, (short)8, "mutations");
      bEB = new a("IDS", 8, (short)9, "ids");
      bEC = new a("EVENTS", 9, (short)10, "events");
      bED = new a("TAGS", 10, (short)11, "tags");
      bEE = new a("PAGING_KEY", 11, (short)12, "paging_key");
      bEF = new a[] { bEt, bEu, bEv, bEw, bEx, bEy, bEz, bEA, bEB, bEC, bED, bEE };
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/c/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */