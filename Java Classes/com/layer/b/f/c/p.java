package com.layer.b.f.c;

import c.a.a.b.h;
import c.a.a.b.i;
import c.a.a.b.m;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class p
  implements c.a.a.c<p, a>, Serializable, Cloneable, Comparable<p>
{
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> bEU;
  private static final m bFx = new m("SyncUserMutation");
  private static final c.a.a.b.d bxT;
  private static final c.a.a.b.d bxU;
  private static final c.a.a.b.d bxV;
  private static final c.a.a.b.d byC = new c.a.a.b.d("type", (byte)8, (short)1);
  private static final c.a.a.b.d byD = new c.a.a.b.d("target", (byte)8, (short)2);
  private static final c.a.a.b.d byE = new c.a.a.b.d("deprecated_do_not_use", (byte)11, (short)3);
  private static final c.a.a.b.d byF = new c.a.a.b.d("stream_id", (byte)11, (short)4);
  private static final c.a.a.b.d byG = new c.a.a.b.d("target_seq", (byte)8, (short)5);
  public static final Map<a, c.a.a.a.b> i;
  private byte bFA = 0;
  private a[] bFB = { a.bFE, a.bFF, a.bFH, a.bFI, a.bFJ };
  public g bFy;
  public f bFz;
  public int bpD;
  public ByteBuffer bzk;
  public ByteBuffer bzl;
  public int f;
  public long g;
  public String h;
  
  static
  {
    bxT = new c.a.a.b.d("seq", (byte)8, (short)6);
    bxU = new c.a.a.b.d("timestamp", (byte)10, (short)7);
    bxV = new c.a.a.b.d("provider_user_id", (byte)11, (short)8);
    Object localObject = new HashMap();
    bEU = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    bEU.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bFC, new c.a.a.a.b("type", (byte)1, new c.a.a.a.a(g.class)));
    ((Map)localObject).put(a.bFD, new c.a.a.a.b("target", (byte)1, new c.a.a.a.a(f.class)));
    ((Map)localObject).put(a.bFE, new c.a.a.a.b("deprecated_do_not_use", (byte)2, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bFF, new c.a.a.a.b("stream_id", (byte)2, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bFG, new c.a.a.a.b("target_seq", (byte)1, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bFH, new c.a.a.a.b("seq", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bFI, new c.a.a.a.b("timestamp", (byte)2, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.bFJ, new c.a.a.a.b("provider_user_id", (byte)2, new c.a.a.a.c("ProviderUserId")));
    i = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(p.class, i);
  }
  
  public p() {}
  
  public p(p paramp)
  {
    this.bFA = paramp.bFA;
    if (paramp.h()) {
      this.bFy = paramp.bFy;
    }
    if (paramp.j()) {
      this.bFz = paramp.bFz;
    }
    if (paramp.k()) {
      this.bzk = paramp.bzk;
    }
    if (paramp.xj()) {
      this.bzl = paramp.bzl;
    }
    this.bpD = paramp.bpD;
    this.f = paramp.f;
    this.g = paramp.g;
    if (paramp.s()) {
      this.h = paramp.h;
    }
  }
  
  private boolean h()
  {
    return this.bFy != null;
  }
  
  private boolean j()
  {
    return this.bFz != null;
  }
  
  public final void a(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bEU.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a(p paramp)
  {
    if (paramp == null) {}
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
                  return false;
                  bool1 = h();
                  bool2 = paramp.h();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bFy.equals(paramp.bFy))));
                bool1 = j();
                bool2 = paramp.j();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bFz.equals(paramp.bFz))));
              bool1 = k();
              bool2 = paramp.k();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzk.equals(paramp.bzk))));
            bool1 = xj();
            bool2 = paramp.xj();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzl.equals(paramp.bzl)) || (this.bpD != paramp.bpD)));
          bool1 = q();
          bool2 = paramp.q();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.f != paramp.f)));
        bool1 = r();
        bool2 = paramp.r();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.g != paramp.g)));
      bool1 = s();
      bool2 = paramp.s();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(paramp.h))));
    return true;
  }
  
  public final void b(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bEU.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final p dH(int paramInt)
  {
    this.bpD = paramInt;
    yg();
    return this;
  }
  
  public final p dI(int paramInt)
  {
    this.f = paramInt;
    xF();
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof p)) {
      return false;
    }
    return a((p)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean k()
  {
    return this.bzk != null;
  }
  
  public final boolean q()
  {
    return c.a.a.a.aT(this.bFA, 1);
  }
  
  public final boolean r()
  {
    return c.a.a.a.aT(this.bFA, 2);
  }
  
  public final boolean s()
  {
    return this.h != null;
  }
  
  public final void t()
    throws c.a.a.g
  {
    if (this.bFy == null) {
      throw new i("Required field 'type' was not present! Struct: " + toString());
    }
    if (this.bFz == null) {
      throw new i("Required field 'target' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("SyncUserMutation(");
    localStringBuilder.append("type:");
    if (this.bFy == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.bFz != null) {
        break label293;
      }
      localStringBuilder.append("null");
      label65:
      if (k())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("deprecated_do_not_use:");
        if (this.bzk != null) {
          break label305;
        }
        localStringBuilder.append("null");
      }
      label103:
      if (xj())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("stream_id:");
        if (this.bzl != null) {
          break label317;
        }
        localStringBuilder.append("null");
      }
      label141:
      localStringBuilder.append(", ");
      localStringBuilder.append("target_seq:");
      localStringBuilder.append(this.bpD);
      if (q())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("seq:");
        localStringBuilder.append(this.f);
      }
      if (r())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("timestamp:");
        localStringBuilder.append(this.g);
      }
      if (s())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("provider_user_id:");
        if (this.h != null) {
          break label329;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.bFy);
      break;
      label293:
      localStringBuilder.append(this.bFz);
      break label65;
      label305:
      localStringBuilder.append(this.bzk);
      break label103;
      label317:
      localStringBuilder.append(this.bzl);
      break label141;
      label329:
      localStringBuilder.append(this.h);
    }
  }
  
  public final void xF()
  {
    this.bFA = ((byte)c.a.a.a.d(this.bFA, 1, true));
  }
  
  public final boolean xj()
  {
    return this.bzl != null;
  }
  
  public final boolean xk()
  {
    return c.a.a.a.aT(this.bFA, 0);
  }
  
  public final void yg()
  {
    this.bFA = ((byte)c.a.a.a.d(this.bFA, 0, true));
  }
  
  public final void yl()
  {
    this.bFA = ((byte)c.a.a.a.d(this.bFA, 2, true));
  }
  
  public final byte[] zl()
  {
    this.bzl = c.a.a.d.f(this.bzl);
    if (this.bzl == null) {
      return null;
    }
    return this.bzl.array();
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
    extends c.a.a.c.c<p>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<p>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/c/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */