package com.google.a.b;

import com.google.a.a.e;
import com.google.a.b;
import com.google.a.d.c;
import com.google.a.f;
import com.google.a.u;
import com.google.a.v;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class d
  implements v, Cloneable
{
  public static final d bhi = new d();
  public double bhj = -1.0D;
  public int bhk = 136;
  public boolean bhl = true;
  public boolean bhm;
  public List<b> bhn = Collections.emptyList();
  public List<b> bho = Collections.emptyList();
  
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
  
  private d vp()
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
  
  public final <T> u<T> a(final f paramf, final com.google.a.c.a<T> parama)
  {
    final boolean bool2 = false;
    boolean bool3 = n(parama.bkb);
    if ((bool3) || (aF(true))) {}
    for (final boolean bool1 = true;; bool1 = false)
    {
      if ((bool3) || (aF(false))) {
        bool2 = true;
      }
      if ((bool1) || (bool2)) {
        break;
      }
      return null;
    }
    new u()
    {
      private u<T> bgO;
      
      private u<T> vq()
      {
        u localu = this.bgO;
        if (localu != null) {
          return localu;
        }
        localu = paramf.a(d.this, parama);
        this.bgO = localu;
        return localu;
      }
      
      public final T a(com.google.a.d.a paramAnonymousa)
        throws IOException
      {
        if (bool2)
        {
          paramAnonymousa.skipValue();
          return null;
        }
        return (T)vq().a(paramAnonymousa);
      }
      
      public final void a(c paramAnonymousc, T paramAnonymousT)
        throws IOException
      {
        if (bool1)
        {
          paramAnonymousc.vF();
          return;
        }
        vq().a(paramAnonymousc, paramAnonymousT);
      }
    };
  }
  
  public final boolean a(com.google.a.a.d paramd, e parame)
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
  
  public final boolean aF(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (Object localObject = this.bhn;; localObject = this.bho)
    {
      localObject = ((List)localObject).iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
      } while (!((b)((Iterator)localObject).next()).vb());
      return true;
    }
    return false;
  }
  
  public final boolean n(Class<?> paramClass)
  {
    if ((this.bhj != -1.0D) && (!a((com.google.a.a.d)paramClass.getAnnotation(com.google.a.a.d.class), (e)paramClass.getAnnotation(e.class)))) {
      return true;
    }
    if ((!this.bhl) && (p(paramClass))) {
      return true;
    }
    return o(paramClass);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */