package io.intercom.a.a.a.c.b;

import io.intercom.a.a.a.c.j;
import java.security.MessageDigest;
import java.util.Map;

public final class m
  implements io.intercom.a.a.a.c.h
{
  private int bkc;
  private final Class<?> cGh;
  private final Object cGk;
  private final io.intercom.a.a.a.c.h cIX;
  private final j cIZ;
  private final Class<?> cJb;
  private final Map<Class<?>, io.intercom.a.a.a.c.m<?>> cJd;
  private final int height;
  private final int width;
  
  public m(Object paramObject, io.intercom.a.a.a.c.h paramh, int paramInt1, int paramInt2, Map<Class<?>, io.intercom.a.a.a.c.m<?>> paramMap, Class<?> paramClass1, Class<?> paramClass2, j paramj)
  {
    this.cGk = io.intercom.a.a.a.i.h.checkNotNull(paramObject, "Argument must not be null");
    this.cIX = ((io.intercom.a.a.a.c.h)io.intercom.a.a.a.i.h.checkNotNull(paramh, "Signature must not be null"));
    this.width = paramInt1;
    this.height = paramInt2;
    this.cJd = ((Map)io.intercom.a.a.a.i.h.checkNotNull(paramMap, "Argument must not be null"));
    this.cJb = ((Class)io.intercom.a.a.a.i.h.checkNotNull(paramClass1, "Resource class must not be null"));
    this.cGh = ((Class)io.intercom.a.a.a.i.h.checkNotNull(paramClass2, "Transcode class must not be null"));
    this.cIZ = ((j)io.intercom.a.a.a.i.h.checkNotNull(paramj, "Argument must not be null"));
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof m))
    {
      paramObject = (m)paramObject;
      bool1 = bool2;
      if (this.cGk.equals(((m)paramObject).cGk))
      {
        bool1 = bool2;
        if (this.cIX.equals(((m)paramObject).cIX))
        {
          bool1 = bool2;
          if (this.height == ((m)paramObject).height)
          {
            bool1 = bool2;
            if (this.width == ((m)paramObject).width)
            {
              bool1 = bool2;
              if (this.cJd.equals(((m)paramObject).cJd))
              {
                bool1 = bool2;
                if (this.cJb.equals(((m)paramObject).cJb))
                {
                  bool1 = bool2;
                  if (this.cGh.equals(((m)paramObject).cGh))
                  {
                    bool1 = bool2;
                    if (this.cIZ.equals(((m)paramObject).cIZ)) {
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
    return bool1;
  }
  
  public final int hashCode()
  {
    if (this.bkc == 0)
    {
      this.bkc = this.cGk.hashCode();
      this.bkc = (this.bkc * 31 + this.cIX.hashCode());
      this.bkc = (this.bkc * 31 + this.width);
      this.bkc = (this.bkc * 31 + this.height);
      this.bkc = (this.bkc * 31 + this.cJd.hashCode());
      this.bkc = (this.bkc * 31 + this.cJb.hashCode());
      this.bkc = (this.bkc * 31 + this.cGh.hashCode());
      this.bkc = (this.bkc * 31 + this.cIZ.hashCode());
    }
    return this.bkc;
  }
  
  public final String toString()
  {
    return "EngineKey{model=" + this.cGk + ", width=" + this.width + ", height=" + this.height + ", resourceClass=" + this.cJb + ", transcodeClass=" + this.cGh + ", signature=" + this.cIX + ", hashCode=" + this.bkc + ", transformations=" + this.cJd + ", options=" + this.cIZ + '}';
  }
  
  public final void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */