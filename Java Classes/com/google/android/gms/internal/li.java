package com.google.android.gms.internal;

import java.io.IOException;

public final class li
  extends mx<li>
{
  private static volatile li[] aXv;
  public lk aXA = null;
  public Integer aXw = null;
  public String aXx = null;
  public lj[] aXy = lj.sv();
  private Boolean aXz = null;
  
  public li()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static li[] su()
  {
    if (aXv == null) {}
    synchronized (nb.aZX)
    {
      if (aXv == null) {
        aXv = new li[0];
      }
      return aXv;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.aXw != null) {
      parammv.aw(1, this.aXw.intValue());
    }
    if (this.aXx != null) {
      parammv.d(2, this.aXx);
    }
    if ((this.aXy != null) && (this.aXy.length > 0))
    {
      int i = 0;
      while (i < this.aXy.length)
      {
        lj locallj = this.aXy[i];
        if (locallj != null) {
          parammv.a(3, locallj);
        }
        i += 1;
      }
    }
    if (this.aXz != null) {
      parammv.i(4, this.aXz.booleanValue());
    }
    if (this.aXA != null) {
      parammv.a(5, this.aXA);
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof li)) {
        return false;
      }
      paramObject = (li)paramObject;
      if (this.aXw == null)
      {
        if (((li)paramObject).aXw != null) {
          return false;
        }
      }
      else if (!this.aXw.equals(((li)paramObject).aXw)) {
        return false;
      }
      if (this.aXx == null)
      {
        if (((li)paramObject).aXx != null) {
          return false;
        }
      }
      else if (!this.aXx.equals(((li)paramObject).aXx)) {
        return false;
      }
      if (!nb.equals(this.aXy, ((li)paramObject).aXy)) {
        return false;
      }
      if (this.aXz == null)
      {
        if (((li)paramObject).aXz != null) {
          return false;
        }
      }
      else if (!this.aXz.equals(((li)paramObject).aXz)) {
        return false;
      }
      if (this.aXA == null)
      {
        if (((li)paramObject).aXA != null) {
          return false;
        }
      }
      else if (!this.aXA.equals(((li)paramObject).aXA)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((li)paramObject).aZO == null) || (((li)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((li)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int i1 = 0;
    int i2 = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    int i3;
    int k;
    label51:
    lk locallk;
    int m;
    if (this.aXw == null)
    {
      i = 0;
      if (this.aXx != null) {
        break label141;
      }
      j = 0;
      i3 = nb.hashCode(this.aXy);
      if (this.aXz != null) {
        break label152;
      }
      k = 0;
      locallk = this.aXA;
      if (locallk != null) {
        break label163;
      }
      m = 0;
      label65:
      n = i1;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label173;
        }
      }
    }
    label141:
    label152:
    label163:
    label173:
    for (int n = i1;; n = this.aZO.hashCode())
    {
      return (m + (k + ((j + (i + (i2 + 527) * 31) * 31) * 31 + i3) * 31) * 31) * 31 + n;
      i = this.aXw.hashCode();
      break;
      j = this.aXx.hashCode();
      break label33;
      k = this.aXz.hashCode();
      break label51;
      m = locallk.hashCode();
      break label65;
    }
  }
  
  protected final int st()
  {
    int i = super.st();
    int j = i;
    if (this.aXw != null) {
      j = i + mv.ax(1, this.aXw.intValue());
    }
    i = j;
    if (this.aXx != null) {
      i = j + mv.e(2, this.aXx);
    }
    j = i;
    if (this.aXy != null)
    {
      j = i;
      if (this.aXy.length > 0)
      {
        j = 0;
        while (j < this.aXy.length)
        {
          lj locallj = this.aXy[j];
          int k = i;
          if (locallj != null) {
            k = i + mv.b(3, locallj);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (this.aXz != null)
    {
      this.aXz.booleanValue();
      i = j + (mv.db(32) + 1);
    }
    j = i;
    if (this.aXA != null) {
      j = i + mv.b(5, this.aXA);
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/li.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */