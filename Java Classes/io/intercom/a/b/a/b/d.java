package io.intercom.a.b.a.b;

import io.intercom.a.b.a.d.c;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class d
  implements s, Cloneable
{
  public static final d cRD = new d();
  public double bhj = -1.0D;
  public int bhk = 136;
  public boolean bhl = true;
  public boolean bhm;
  public List<io.intercom.a.b.a.a> bhn = Collections.emptyList();
  public List<io.intercom.a.b.a.a> bho = Collections.emptyList();
  
  private d Kd()
  {
    try
    {
      d locald = (d)super.clone();
      return locald;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
  }
  
  public static boolean o(Class<?> paramClass)
  {
    return (!Enum.class.isAssignableFrom(paramClass)) && ((paramClass.isAnonymousClass()) || (paramClass.isLocalClass()));
  }
  
  public static boolean p(Class<?> paramClass)
  {
    if (paramClass.isMemberClass())
    {
      if ((paramClass.getModifiers() & 0x8) != 0) {}
      for (int i = 1; i == 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  public final <T> r<T> a(final io.intercom.a.b.a.e parame, final io.intercom.a.b.a.c.a<T> parama)
  {
    Class localClass = parama.bkb;
    final boolean bool1 = b(localClass, true);
    final boolean bool2 = b(localClass, false);
    if ((!bool1) && (!bool2)) {
      return null;
    }
    new r()
    {
      private r<T> cRs;
      
      private r<T> Ke()
      {
        r localr = this.cRs;
        if (localr != null) {
          return localr;
        }
        localr = parame.a(d.this, parama);
        this.cRs = localr;
        return localr;
      }
      
      public final T a(io.intercom.a.b.a.d.a paramAnonymousa)
        throws IOException
      {
        if (bool2)
        {
          paramAnonymousa.skipValue();
          return null;
        }
        return (T)Ke().a(paramAnonymousa);
      }
      
      public final void a(c paramAnonymousc, T paramAnonymousT)
        throws IOException
      {
        if (bool1)
        {
          paramAnonymousc.Kn();
          return;
        }
        Ke().a(paramAnonymousc, paramAnonymousT);
      }
    };
  }
  
  public final boolean a(io.intercom.a.b.a.a.d paramd, io.intercom.a.b.a.a.e parame)
  {
    if ((paramd != null) && (paramd.vn() > this.bhj))
    {
      i = 0;
      if (i == 0) {
        break label60;
      }
      if ((parame == null) || (parame.vn() > this.bhj)) {
        break label55;
      }
    }
    label55:
    for (int i = 0;; i = 1)
    {
      if (i == 0) {
        break label60;
      }
      return true;
      i = 1;
      break;
    }
    label60:
    return false;
  }
  
  public final boolean b(Class<?> paramClass, boolean paramBoolean)
  {
    if ((this.bhj != -1.0D) && (!a((io.intercom.a.b.a.a.d)paramClass.getAnnotation(io.intercom.a.b.a.a.d.class), (io.intercom.a.b.a.a.e)paramClass.getAnnotation(io.intercom.a.b.a.a.e.class)))) {
      return true;
    }
    if ((!this.bhl) && (p(paramClass))) {
      return true;
    }
    if (o(paramClass)) {
      return true;
    }
    if (paramBoolean) {}
    for (paramClass = this.bhn;; paramClass = this.bho)
    {
      paramClass = paramClass.iterator();
      do
      {
        if (!paramClass.hasNext()) {
          break;
        }
      } while (!((io.intercom.a.b.a.a)paramClass.next()).vb());
      return true;
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */