package io.intercom.a.a.a.g;

import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import io.intercom.a.a.a.c.d.a.k;
import io.intercom.a.a.a.c.d.e.c;
import io.intercom.a.a.a.c.d.e.f;
import io.intercom.a.a.a.h.a;
import java.util.HashMap;
import java.util.Map;

public final class g
  implements Cloneable
{
  public Drawable bOV;
  public boolean cIM = true;
  public io.intercom.a.a.a.c.h cIX = a.JP();
  public io.intercom.a.a.a.c.j cIZ = new io.intercom.a.a.a.c.j();
  public Class<?> cJb = Object.class;
  public Map<Class<?>, io.intercom.a.a.a.c.m<?>> cJd = new HashMap();
  public io.intercom.a.a.a.g cJg = io.intercom.a.a.a.g.cFT;
  public boolean cJh;
  public boolean cJi = true;
  public boolean cJu;
  public boolean cKC;
  public boolean cKV;
  public int cPR;
  public float cPS = 1.0F;
  public Drawable cPT;
  public int cPU;
  public int cPV;
  public int cPW = -1;
  public int cPX = -1;
  public boolean cPY = true;
  public Drawable cPZ;
  public int cQa;
  public Resources.Theme cQb;
  public boolean cQc;
  public boolean cQd;
  public io.intercom.a.a.a.c.b.i diskCacheStrategy = io.intercom.a.a.a.c.b.i.cKf;
  
  public static g K(Class<?> paramClass)
  {
    for (g localg = new g(); localg.cQc; localg = localg.Jy()) {}
    localg.cJb = ((Class)io.intercom.a.a.a.i.h.checkNotNull(paramClass, "Argument must not be null"));
    localg.cPR |= 0x1000;
    return localg.JB();
  }
  
  public static g a(io.intercom.a.a.a.c.b.i parami)
  {
    return new g().b(parami);
  }
  
  private <T> g a(Class<T> paramClass, io.intercom.a.a.a.c.m<T> paramm, boolean paramBoolean)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    io.intercom.a.a.a.i.h.checkNotNull(paramClass, "Argument must not be null");
    io.intercom.a.a.a.i.h.checkNotNull(paramm, "Argument must not be null");
    localg.cJd.put(paramClass, paramm);
    localg.cPR |= 0x800;
    localg.cPY = true;
    localg.cPR |= 0x10000;
    localg.cJi = false;
    if (paramBoolean)
    {
      localg.cPR |= 0x20000;
      localg.cJh = true;
    }
    return localg.JB();
  }
  
  public static boolean aN(int paramInt1, int paramInt2)
  {
    return (paramInt1 & paramInt2) != 0;
  }
  
  public static g e(io.intercom.a.a.a.c.h paramh)
  {
    for (g localg = new g(); localg.cQc; localg = localg.Jy()) {}
    localg.cIX = ((io.intercom.a.a.a.c.h)io.intercom.a.a.a.i.h.checkNotNull(paramh, "Argument must not be null"));
    localg.cPR |= 0x400;
    return localg.JB();
  }
  
  public final g C(float paramFloat)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    if ((paramFloat < 0.0F) || (paramFloat > 1.0F)) {
      throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
    }
    localg.cPS = paramFloat;
    localg.cPR |= 0x2;
    return localg.JB();
  }
  
  public final g JA()
  {
    if ((this.cKV) && (!this.cQc)) {
      throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }
    this.cQc = true;
    this.cKV = true;
    return this;
  }
  
  public final g JB()
  {
    if (this.cKV) {
      throw new IllegalStateException("You cannot modify locked RequestOptions, consider clone()");
    }
    return this;
  }
  
  public final boolean JC()
  {
    return io.intercom.a.a.a.i.i.aR(this.cPX, this.cPW);
  }
  
  public final g Jw()
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    localg.cKC = true;
    localg.cPR |= 0x100000;
    return localg.JB();
  }
  
  public final g Jx()
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    localg.cIM = false;
    localg.cPR |= 0x100;
    return localg.JB();
  }
  
  public final g Jy()
  {
    try
    {
      g localg = (g)super.clone();
      localg.cIZ = new io.intercom.a.a.a.c.j();
      localg.cIZ.a(this.cIZ);
      localg.cJd = new HashMap();
      localg.cJd.putAll(this.cJd);
      localg.cKV = false;
      localg.cQc = false;
      return localg;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  public final g Jz()
  {
    return b(io.intercom.a.a.a.c.d.a.j.cNJ, new io.intercom.a.a.a.c.d.a.h());
  }
  
  public final g a(io.intercom.a.a.a.c.d.a.j paramj, io.intercom.a.a.a.c.m<Bitmap> paramm)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    localg.b(k.cNQ, io.intercom.a.a.a.i.h.checkNotNull(paramj, "Argument must not be null"));
    return localg.a(paramm, false);
  }
  
  public final g a(io.intercom.a.a.a.c.m<Bitmap> paramm, boolean paramBoolean)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    io.intercom.a.a.a.c.d.a.m localm = new io.intercom.a.a.a.c.d.a.m(paramm, paramBoolean);
    localg.a(Bitmap.class, paramm, paramBoolean);
    localg.a(Drawable.class, localm, paramBoolean);
    localg.a(BitmapDrawable.class, localm, paramBoolean);
    localg.a(c.class, new f(paramm), paramBoolean);
    return localg.JB();
  }
  
  public final g aO(int paramInt1, int paramInt2)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    localg.cPX = paramInt1;
    localg.cPW = paramInt2;
    localg.cPR |= 0x200;
    return localg.JB();
  }
  
  public final g b(io.intercom.a.a.a.c.b.i parami)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    localg.diskCacheStrategy = ((io.intercom.a.a.a.c.b.i)io.intercom.a.a.a.i.h.checkNotNull(parami, "Argument must not be null"));
    localg.cPR |= 0x4;
    return localg.JB();
  }
  
  public final g b(io.intercom.a.a.a.c.d.a.j paramj, io.intercom.a.a.a.c.m<Bitmap> paramm)
  {
    paramj = a(paramj, paramm);
    paramj.cJi = true;
    return paramj;
  }
  
  public final <T> g b(io.intercom.a.a.a.c.i<T> parami, T paramT)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    io.intercom.a.a.a.i.h.checkNotNull(parami, "Argument must not be null");
    io.intercom.a.a.a.i.h.checkNotNull(paramT, "Argument must not be null");
    localg.cIZ.a(parami, paramT);
    return localg.JB();
  }
  
  public final g b(io.intercom.a.a.a.g paramg)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    localg.cJg = ((io.intercom.a.a.a.g)io.intercom.a.a.a.i.h.checkNotNull(paramg, "Argument must not be null"));
    localg.cPR |= 0x8;
    return localg.JB();
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof g))
    {
      paramObject = (g)paramObject;
      bool1 = bool2;
      if (Float.compare(((g)paramObject).cPS, this.cPS) == 0)
      {
        bool1 = bool2;
        if (this.cPU == ((g)paramObject).cPU)
        {
          bool1 = bool2;
          if (io.intercom.a.a.a.i.i.i(this.cPT, ((g)paramObject).cPT))
          {
            bool1 = bool2;
            if (this.cPV == ((g)paramObject).cPV)
            {
              bool1 = bool2;
              if (io.intercom.a.a.a.i.i.i(this.bOV, ((g)paramObject).bOV))
              {
                bool1 = bool2;
                if (this.cQa == ((g)paramObject).cQa)
                {
                  bool1 = bool2;
                  if (io.intercom.a.a.a.i.i.i(this.cPZ, ((g)paramObject).cPZ))
                  {
                    bool1 = bool2;
                    if (this.cIM == ((g)paramObject).cIM)
                    {
                      bool1 = bool2;
                      if (this.cPW == ((g)paramObject).cPW)
                      {
                        bool1 = bool2;
                        if (this.cPX == ((g)paramObject).cPX)
                        {
                          bool1 = bool2;
                          if (this.cJh == ((g)paramObject).cJh)
                          {
                            bool1 = bool2;
                            if (this.cPY == ((g)paramObject).cPY)
                            {
                              bool1 = bool2;
                              if (this.cQd == ((g)paramObject).cQd)
                              {
                                bool1 = bool2;
                                if (this.cJu == ((g)paramObject).cJu)
                                {
                                  bool1 = bool2;
                                  if (this.diskCacheStrategy.equals(((g)paramObject).diskCacheStrategy))
                                  {
                                    bool1 = bool2;
                                    if (this.cJg == ((g)paramObject).cJg)
                                    {
                                      bool1 = bool2;
                                      if (this.cIZ.equals(((g)paramObject).cIZ))
                                      {
                                        bool1 = bool2;
                                        if (this.cJd.equals(((g)paramObject).cJd))
                                        {
                                          bool1 = bool2;
                                          if (this.cJb.equals(((g)paramObject).cJb))
                                          {
                                            bool1 = bool2;
                                            if (io.intercom.a.a.a.i.i.i(this.cIX, ((g)paramObject).cIX))
                                            {
                                              bool1 = bool2;
                                              if (io.intercom.a.a.a.i.i.i(this.cQb, ((g)paramObject).cQb)) {
                                                bool1 = true;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public final g fo(int paramInt)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    localg.cPU = paramInt;
    localg.cPR |= 0x20;
    return localg.JB();
  }
  
  public final int hashCode()
  {
    int i = io.intercom.a.a.a.i.i.hashCode(this.cPS);
    i = io.intercom.a.a.a.i.i.hashCode(this.cPU, i);
    i = io.intercom.a.a.a.i.i.b(this.cPT, i);
    i = io.intercom.a.a.a.i.i.hashCode(this.cPV, i);
    i = io.intercom.a.a.a.i.i.b(this.bOV, i);
    i = io.intercom.a.a.a.i.i.hashCode(this.cQa, i);
    i = io.intercom.a.a.a.i.i.b(this.cPZ, i);
    i = io.intercom.a.a.a.i.i.c(this.cIM, i);
    i = io.intercom.a.a.a.i.i.hashCode(this.cPW, i);
    i = io.intercom.a.a.a.i.i.hashCode(this.cPX, i);
    i = io.intercom.a.a.a.i.i.c(this.cJh, i);
    i = io.intercom.a.a.a.i.i.c(this.cPY, i);
    i = io.intercom.a.a.a.i.i.c(this.cQd, i);
    i = io.intercom.a.a.a.i.i.c(this.cJu, i);
    i = io.intercom.a.a.a.i.i.b(this.diskCacheStrategy, i);
    i = io.intercom.a.a.a.i.i.b(this.cJg, i);
    i = io.intercom.a.a.a.i.i.b(this.cIZ, i);
    i = io.intercom.a.a.a.i.i.b(this.cJd, i);
    i = io.intercom.a.a.a.i.i.b(this.cJb, i);
    i = io.intercom.a.a.a.i.i.b(this.cIX, i);
    return io.intercom.a.a.a.i.i.b(this.cQb, i);
  }
  
  public final boolean isSet(int paramInt)
  {
    return aN(this.cPR, paramInt);
  }
  
  public final g o(Drawable paramDrawable)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    localg.bOV = paramDrawable;
    localg.cPR |= 0x40;
    return localg.JB();
  }
  
  public final g p(Drawable paramDrawable)
  {
    for (g localg = this; localg.cQc; localg = localg.Jy()) {}
    localg.cPT = paramDrawable;
    localg.cPR |= 0x10;
    return localg.JB();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/g/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */