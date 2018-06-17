package com.layer.b.f.a;

import c.a.a.b.h;
import c.a.a.b.i;
import c.a.a.b.m;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class d
  implements c.a.a.c<d, a>, Serializable, Cloneable, Comparable<d>
{
  public static final Map<a, c.a.a.a.b> bsv;
  private static final c.a.a.b.d bxT;
  private static final m byA = new m("IdentityPatch");
  private static final c.a.a.b.d byB = new c.a.a.b.d("type", (byte)8, (short)1);
  private static final c.a.a.b.d byC = new c.a.a.b.d("provider_user_id", (byte)11, (short)3);
  private static final c.a.a.b.d byD = new c.a.a.b.d("properties", (byte)13, (short)4);
  private static final c.a.a.b.d byE = new c.a.a.b.d("properties_removed", (byte)15, (short)5);
  private static final c.a.a.b.d byF = new c.a.a.b.d("identity", (byte)12, (short)6);
  private static final c.a.a.b.d byG = new c.a.a.b.d("changed_at", (byte)10, (short)7);
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> byH;
  public String b;
  public e byI;
  public c byJ;
  public ByteBuffer byK;
  private byte byL = 0;
  private a[] byM = { a.byP, a.byQ, a.byR, a.byS, a.byT };
  public Map<String, String> c;
  public List<String> d;
  public long f;
  
  static
  {
    bxT = new c.a.a.b.d("user_id", (byte)11, (short)8);
    Object localObject = new HashMap();
    byH = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    byH.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.byN, new c.a.a.a.b("type", (byte)1, new c.a.a.a.a(e.class)));
    ((Map)localObject).put(a.byO, new c.a.a.a.b("provider_user_id", (byte)1, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.byP, new c.a.a.a.b("properties", (byte)2, new c.a.a.a.e(new c.a.a.a.c((byte)11), new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.byQ, new c.a.a.a.b("properties_removed", (byte)2, new c.a.a.a.d(new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.byR, new c.a.a.a.b("identity", (byte)2, new c.a.a.a.g(c.class)));
    ((Map)localObject).put(a.byS, new c.a.a.a.b("changed_at", (byte)2, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.byT, new c.a.a.a.b("user_id", (byte)2, new c.a.a.a.c("UUID")));
    bsv = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(d.class, bsv);
  }
  
  public d() {}
  
  public d(d paramd)
  {
    this.byL = paramd.byL;
    if (paramd.b()) {
      this.byI = paramd.byI;
    }
    if (paramd.d()) {
      this.b = paramd.b;
    }
    if (paramd.xi()) {
      this.c = new HashMap(paramd.c);
    }
    if (paramd.j()) {
      this.d = new ArrayList(paramd.d);
    }
    if (paramd.xE()) {
      this.byJ = new c(paramd.byJ);
    }
    this.f = paramd.f;
    if (paramd.xG()) {
      this.byK = paramd.byK;
    }
  }
  
  private boolean b()
  {
    return this.byI != null;
  }
  
  private boolean d()
  {
    return this.b != null;
  }
  
  public final void a(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)byH.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final void b(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)byH.get(paramh.LS())).xh().a(paramh, this);
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
                      return false;
                    } while (!(paramObject instanceof d));
                    paramObject = (d)paramObject;
                  } while (paramObject == null);
                  bool1 = b();
                  bool2 = ((d)paramObject).b();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.byI.equals(((d)paramObject).byI))));
                bool1 = d();
                bool2 = ((d)paramObject).d();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(((d)paramObject).b))));
              bool1 = xi();
              bool2 = ((d)paramObject).xi();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(((d)paramObject).c))));
            bool1 = j();
            bool2 = ((d)paramObject).j();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((d)paramObject).d))));
          bool1 = xE();
          bool2 = ((d)paramObject).xE();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.byJ.a(((d)paramObject).byJ))));
        bool1 = xj();
        bool2 = ((d)paramObject).xj();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.f != ((d)paramObject).f)));
      bool1 = xG();
      bool2 = ((d)paramObject).xG();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.byK.equals(((d)paramObject).byK))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean j()
  {
    return this.d != null;
  }
  
  public final void o()
    throws c.a.a.g
  {
    if (this.byI == null) {
      throw new i("Required field 'type' was not present! Struct: " + toString());
    }
    if (this.b == null) {
      throw new i("Required field 'provider_user_id' was not present! Struct: " + toString());
    }
    if (this.byJ != null) {
      this.byJ.z();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdentityPatch(");
    localStringBuilder.append("type:");
    if (this.byI == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("provider_user_id:");
      if (this.b != null) {
        break label274;
      }
      localStringBuilder.append("null");
      label65:
      if (xi())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("properties:");
        if (this.c != null) {
          break label286;
        }
        localStringBuilder.append("null");
      }
      label103:
      if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("properties_removed:");
        if (this.d != null) {
          break label298;
        }
        localStringBuilder.append("null");
      }
      label141:
      if (xE())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("identity:");
        if (this.byJ != null) {
          break label310;
        }
        localStringBuilder.append("null");
      }
      label179:
      if (xj())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("changed_at:");
        localStringBuilder.append(this.f);
      }
      if (xG())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("user_id:");
        if (this.byK != null) {
          break label322;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.byI);
      break;
      label274:
      localStringBuilder.append(this.b);
      break label65;
      label286:
      localStringBuilder.append(this.c);
      break label103;
      label298:
      localStringBuilder.append(this.d);
      break label141;
      label310:
      localStringBuilder.append(this.byJ);
      break label179;
      label322:
      localStringBuilder.append(this.byK);
    }
  }
  
  public final boolean xE()
  {
    return this.byJ != null;
  }
  
  public final void xF()
  {
    this.byL = ((byte)c.a.a.a.d(this.byL, 0, true));
  }
  
  public final boolean xG()
  {
    return this.byK != null;
  }
  
  public final boolean xi()
  {
    return this.c != null;
  }
  
  public final boolean xj()
  {
    return c.a.a.a.aT(this.byL, 0);
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
    extends c.a.a.c.c<d>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<d>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */