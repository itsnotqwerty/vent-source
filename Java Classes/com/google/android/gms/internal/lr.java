package com.google.android.gms.internal;

import java.io.IOException;

public final class lr
  extends mx<lr>
{
  private static volatile lr[] aYg;
  public ls[] aYh = ls.sB();
  public Long aYi = null;
  public Long aYj = null;
  public Integer count = null;
  public String name = null;
  
  public lr()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static lr[] sA()
  {
    if (aYg == null) {}
    synchronized (nb.aZX)
    {
      if (aYg == null) {
        aYg = new lr[0];
      }
      return aYg;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if ((this.aYh != null) && (this.aYh.length > 0))
    {
      int i = 0;
      while (i < this.aYh.length)
      {
        ls localls = this.aYh[i];
        if (localls != null) {
          parammv.a(1, localls);
        }
        i += 1;
      }
    }
    if (this.name != null) {
      parammv.d(2, this.name);
    }
    if (this.aYi != null) {
      parammv.e(3, this.aYi.longValue());
    }
    if (this.aYj != null) {
      parammv.e(4, this.aYj.longValue());
    }
    if (this.count != null) {
      parammv.aw(5, this.count.intValue());
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lr)) {
        return false;
      }
      paramObject = (lr)paramObject;
      if (!nb.equals(this.aYh, ((lr)paramObject).aYh)) {
        return false;
      }
      if (this.name == null)
      {
        if (((lr)paramObject).name != null) {
          return false;
        }
      }
      else if (!this.name.equals(((lr)paramObject).name)) {
        return false;
      }
      if (this.aYi == null)
      {
        if (((lr)paramObject).aYi != null) {
          return false;
        }
      }
      else if (!this.aYi.equals(((lr)paramObject).aYi)) {
        return false;
      }
      if (this.aYj == null)
      {
        if (((lr)paramObject).aYj != null) {
          return false;
        }
      }
      else if (!this.aYj.equals(((lr)paramObject).aYj)) {
        return false;
      }
      if (this.count == null)
      {
        if (((lr)paramObject).count != null) {
          return false;
        }
      }
      else if (!this.count.equals(((lr)paramObject).count)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lr)paramObject).aZO == null) || (((lr)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lr)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int i1 = 0;
    int i2 = getClass().getName().hashCode();
    int i3 = nb.hashCode(this.aYh);
    int i;
    int j;
    label42:
    int k;
    label51:
    int m;
    if (this.name == null)
    {
      i = 0;
      if (this.aYi != null) {
        break label137;
      }
      j = 0;
      if (this.aYj != null) {
        break label148;
      }
      k = 0;
      if (this.count != null) {
        break label159;
      }
      m = 0;
      label61:
      n = i1;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label171;
        }
      }
    }
    label137:
    label148:
    label159:
    label171:
    for (int n = i1;; n = this.aZO.hashCode())
    {
      return (m + (k + (j + (i + ((i2 + 527) * 31 + i3) * 31) * 31) * 31) * 31) * 31 + n;
      i = this.name.hashCode();
      break;
      j = this.aYi.hashCode();
      break label42;
      k = this.aYj.hashCode();
      break label51;
      m = this.count.hashCode();
      break label61;
    }
  }
  
  protected final int st()
  {
    int i = super.st();
    int j = i;
    if (this.aYh != null)
    {
      j = i;
      if (this.aYh.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= this.aYh.length) {
            break;
          }
          ls localls = this.aYh[k];
          j = i;
          if (localls != null) {
            j = i + mv.b(1, localls);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (this.name != null) {
      i = j + mv.e(2, this.name);
    }
    j = i;
    if (this.aYi != null) {
      j = i + mv.f(3, this.aYi.longValue());
    }
    i = j;
    if (this.aYj != null) {
      i = j + mv.f(4, this.aYj.longValue());
    }
    j = i;
    if (this.count != null) {
      j = i + mv.ax(5, this.count.intValue());
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */