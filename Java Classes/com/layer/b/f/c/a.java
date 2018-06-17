package com.layer.b.f.c;

import c.a.a.b.h;
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

public class a
  implements c.a.a.c<a, a>, Serializable, Cloneable, Comparable<a>
{
  private static final m bAE = new m("Content");
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> bAF;
  public static final Map<a, c.a.a.a.b> bAI;
  private static final c.a.a.b.d bxB = new c.a.a.b.d("media_type", (byte)11, (short)1);
  private static final c.a.a.b.d byB;
  private static final c.a.a.b.d byC;
  private static final c.a.a.b.d byD;
  private static final c.a.a.b.d bzj = new c.a.a.b.d("size", (byte)10, (short)2);
  public String a;
  public long b;
  private byte bAG = 0;
  private a[] bAH = { a.bAL, a.bAM, a.bAN };
  public ByteBuffer bzk;
  public String d;
  public long e;
  
  static
  {
    byB = new c.a.a.b.d("body", (byte)11, (short)3);
    byC = new c.a.a.b.d("external_url", (byte)11, (short)4);
    byD = new c.a.a.b.d("external_access_expiration", (byte)10, (short)5);
    Object localObject = new HashMap();
    bAF = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    bAF.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bAJ, new c.a.a.a.b("media_type", (byte)3, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bAK, new c.a.a.a.b("size", (byte)3, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.bAL, new c.a.a.a.b("body", (byte)2, new c.a.a.a.c((byte)11, true)));
    ((Map)localObject).put(a.bAM, new c.a.a.a.b("external_url", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bAN, new c.a.a.a.b("external_access_expiration", (byte)2, new c.a.a.a.c((byte)10)));
    bAI = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(a.class, bAI);
  }
  
  public a() {}
  
  public a(a parama)
  {
    this.bAG = parama.bAG;
    if (parama.b()) {
      this.a = parama.a;
    }
    this.b = parama.b;
    if (parama.f()) {
      this.bzk = c.a.a.d.g(parama.bzk);
    }
    if (parama.h()) {
      this.d = parama.d;
    }
    this.e = parama.e;
  }
  
  public static void k()
    throws g
  {}
  
  public final a L(long paramLong)
  {
    this.b = paramLong;
    xV();
    return this;
  }
  
  public final void a(h paramh)
    throws g
  {
    ((c.a.a.c.b)bAF.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final void b(h paramh)
    throws g
  {
    ((c.a.a.c.b)bAF.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b()
  {
    return this.a != null;
  }
  
  public final boolean d()
  {
    return c.a.a.a.aT(this.bAG, 0);
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
              } while (!(paramObject instanceof a));
              paramObject = (a)paramObject;
            } while (paramObject == null);
            bool1 = b();
            bool2 = ((a)paramObject).b();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((a)paramObject).a)) || (this.b != ((a)paramObject).b)));
          bool1 = f();
          bool2 = ((a)paramObject).f();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bzk.equals(((a)paramObject).bzk))));
        bool1 = h();
        bool2 = ((a)paramObject).h();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((a)paramObject).d))));
      bool1 = j();
      bool2 = ((a)paramObject).j();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.e != ((a)paramObject).e)));
    return true;
  }
  
  public final boolean f()
  {
    return this.bzk != null;
  }
  
  public final boolean h()
  {
    return this.d != null;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean j()
  {
    return c.a.a.a.aT(this.bAG, 1);
  }
  
  public final a t(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (paramArrayOfByte = null;; paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte))
    {
      this.bzk = paramArrayOfByte;
      return this;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Content(");
    localStringBuilder.append("media_type:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("size:");
      localStringBuilder.append(this.b);
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("body:");
        if (this.bzk != null) {
          break label192;
        }
        localStringBuilder.append("null");
      }
      label97:
      if (h())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("external_url:");
        if (this.d != null) {
          break label203;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("external_access_expiration:");
        localStringBuilder.append(this.e);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label192:
      c.a.a.d.a(this.bzk, localStringBuilder);
      break label97;
      label203:
      localStringBuilder.append(this.d);
    }
  }
  
  public final void xV()
  {
    this.bAG = ((byte)c.a.a.a.d(this.bAG, 0, true));
  }
  
  public final byte[] yf()
  {
    this.bzk = c.a.a.d.f(this.bzk);
    if (this.bzk == null) {
      return null;
    }
    return this.bzk.array();
  }
  
  public final void yg()
  {
    this.bAG = ((byte)c.a.a.a.d(this.bAG, 1, true));
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
    extends c.a.a.c.c<a>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<a>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */