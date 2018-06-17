package com.layer.b.f.c;

import c.a.a.b.m;
import c.a.a.g;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class h
  implements c.a.a.c<h, a>, Serializable, Cloneable, Comparable<h>
{
  private static final m bAE = new m("PartialSyncHints");
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> bAF;
  public static final Map<a, c.a.a.a.b> bAI;
  private static final c.a.a.b.d bxB = new c.a.a.b.d("total_message_count", (byte)8, (short)1);
  private static final c.a.a.b.d byB;
  private static final c.a.a.b.d byC;
  private static final c.a.a.b.d byD;
  private static final c.a.a.b.d bzj = new c.a.a.b.d("unread_message_count", (byte)8, (short)2);
  public int a;
  public int b;
  private byte bAG = 0;
  private a[] bDN = { a.bDQ, a.bDR, a.bDS };
  public int bpD;
  public int c;
  public long d;
  
  static
  {
    byB = new c.a.a.b.d("oldest_unread_message_seq", (byte)8, (short)3);
    byC = new c.a.a.b.d("last_message_received_at", (byte)10, (short)4);
    byD = new c.a.a.b.d("last_message_seq", (byte)8, (short)5);
    Object localObject = new HashMap();
    bAF = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    bAF.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bDO, new c.a.a.a.b("total_message_count", (byte)3, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bDP, new c.a.a.a.b("unread_message_count", (byte)3, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bDQ, new c.a.a.a.b("oldest_unread_message_seq", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bDR, new c.a.a.a.b("last_message_received_at", (byte)2, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.bDS, new c.a.a.a.b("last_message_seq", (byte)2, new c.a.a.a.c((byte)8)));
    bAI = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(h.class, bAI);
  }
  
  public h() {}
  
  public h(h paramh)
  {
    this.bAG = paramh.bAG;
    this.a = paramh.a;
    this.b = paramh.b;
    this.c = paramh.c;
    this.d = paramh.d;
    this.bpD = paramh.bpD;
  }
  
  public static void k()
    throws g
  {}
  
  public final void a(c.a.a.b.h paramh)
    throws g
  {
    ((c.a.a.c.b)bAF.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a(h paramh)
  {
    if (paramh == null) {}
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
          } while ((this.a != paramh.a) || (this.b != paramh.b));
          bool1 = f();
          bool2 = paramh.f();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.c != paramh.c)));
        bool1 = h();
        bool2 = paramh.h();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.d != paramh.d)));
      bool1 = j();
      bool2 = paramh.j();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.bpD != paramh.bpD)));
    return true;
  }
  
  public final int b(h paramh)
  {
    int i;
    if (!getClass().equals(paramh.getClass())) {
      i = getClass().getName().compareTo(paramh.getClass().getName());
    }
    int j;
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
                        return i;
                        j = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramh.b()));
                        i = j;
                      } while (j != 0);
                      if (!b()) {
                        break;
                      }
                      j = c.a.a.d.aB(this.a, paramh.a);
                      i = j;
                    } while (j != 0);
                    j = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramh.d()));
                    i = j;
                  } while (j != 0);
                  if (!d()) {
                    break;
                  }
                  j = c.a.a.d.aB(this.b, paramh.b);
                  i = j;
                } while (j != 0);
                j = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramh.f()));
                i = j;
              } while (j != 0);
              if (!f()) {
                break;
              }
              j = c.a.a.d.aB(this.c, paramh.c);
              i = j;
            } while (j != 0);
            j = Boolean.valueOf(h()).compareTo(Boolean.valueOf(paramh.h()));
            i = j;
          } while (j != 0);
          if (!h()) {
            break;
          }
          j = c.a.a.d.f(this.d, paramh.d);
          i = j;
        } while (j != 0);
        j = Boolean.valueOf(j()).compareTo(Boolean.valueOf(paramh.j()));
        i = j;
      } while (j != 0);
      if (!j()) {
        break;
      }
      j = c.a.a.d.aB(this.bpD, paramh.bpD);
      i = j;
    } while (j != 0);
    return 0;
  }
  
  public final void b(c.a.a.b.h paramh)
    throws g
  {
    ((c.a.a.c.b)bAF.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b()
  {
    return c.a.a.a.aT(this.bAG, 0);
  }
  
  public final boolean d()
  {
    return c.a.a.a.aT(this.bAG, 1);
  }
  
  public final void e(boolean paramBoolean)
  {
    this.bAG = ((byte)c.a.a.a.d(this.bAG, 4, paramBoolean));
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof h)) {
      return false;
    }
    return a((h)paramObject);
  }
  
  public final boolean f()
  {
    return c.a.a.a.aT(this.bAG, 2);
  }
  
  public final boolean h()
  {
    return c.a.a.a.aT(this.bAG, 3);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean j()
  {
    return c.a.a.a.aT(this.bAG, 4);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PartialSyncHints(");
    localStringBuilder.append("total_message_count:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("unread_message_count:");
    localStringBuilder.append(this.b);
    if (f())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("oldest_unread_message_seq:");
      localStringBuilder.append(this.c);
    }
    if (h())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("last_message_received_at:");
      localStringBuilder.append(this.d);
    }
    if (j())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("last_message_seq:");
      localStringBuilder.append(this.bpD);
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public final void xP()
  {
    this.bAG = ((byte)c.a.a.a.d(this.bAG, 0, true));
  }
  
  public final void xQ()
  {
    this.bAG = ((byte)c.a.a.a.d(this.bAG, 2, true));
  }
  
  public final void xV()
  {
    this.bAG = ((byte)c.a.a.a.d(this.bAG, 1, true));
  }
  
  public final void yX()
  {
    this.bAG = ((byte)c.a.a.a.d(this.bAG, 3, true));
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/c/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */