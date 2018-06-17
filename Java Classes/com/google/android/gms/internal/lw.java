package com.google.android.gms.internal;

import java.io.IOException;

public final class lw
  extends mx<lw>
{
  private static volatile lw[] aYR;
  public String aTr = null;
  private Float aXj = null;
  public Double aXk = null;
  public Long aYS = null;
  public Long aYl = null;
  public String name = null;
  
  public lw()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static lw[] sD()
  {
    if (aYR == null) {}
    synchronized (nb.aZX)
    {
      if (aYR == null) {
        aYR = new lw[0];
      }
      return aYR;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.aYS != null) {
      parammv.e(1, this.aYS.longValue());
    }
    if (this.name != null) {
      parammv.d(2, this.name);
    }
    if (this.aTr != null) {
      parammv.d(3, this.aTr);
    }
    if (this.aYl != null) {
      parammv.e(4, this.aYl.longValue());
    }
    if (this.aXj != null) {
      parammv.e(5, this.aXj.floatValue());
    }
    if (this.aXk != null) {
      parammv.a(6, this.aXk.doubleValue());
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lw)) {
        return false;
      }
      paramObject = (lw)paramObject;
      if (this.aYS == null)
      {
        if (((lw)paramObject).aYS != null) {
          return false;
        }
      }
      else if (!this.aYS.equals(((lw)paramObject).aYS)) {
        return false;
      }
      if (this.name == null)
      {
        if (((lw)paramObject).name != null) {
          return false;
        }
      }
      else if (!this.name.equals(((lw)paramObject).name)) {
        return false;
      }
      if (this.aTr == null)
      {
        if (((lw)paramObject).aTr != null) {
          return false;
        }
      }
      else if (!this.aTr.equals(((lw)paramObject).aTr)) {
        return false;
      }
      if (this.aYl == null)
      {
        if (((lw)paramObject).aYl != null) {
          return false;
        }
      }
      else if (!this.aYl.equals(((lw)paramObject).aYl)) {
        return false;
      }
      if (this.aXj == null)
      {
        if (((lw)paramObject).aXj != null) {
          return false;
        }
      }
      else if (!this.aXj.equals(((lw)paramObject).aXj)) {
        return false;
      }
      if (this.aXk == null)
      {
        if (((lw)paramObject).aXk != null) {
          return false;
        }
      }
      else if (!this.aXk.equals(((lw)paramObject).aXk)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lw)paramObject).aZO == null) || (((lw)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lw)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int i3 = 0;
    int i4 = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    int k;
    label42:
    int m;
    label52:
    int n;
    label62:
    int i1;
    if (this.aYS == null)
    {
      i = 0;
      if (this.name != null) {
        break label154;
      }
      j = 0;
      if (this.aTr != null) {
        break label165;
      }
      k = 0;
      if (this.aYl != null) {
        break label176;
      }
      m = 0;
      if (this.aXj != null) {
        break label188;
      }
      n = 0;
      if (this.aXk != null) {
        break label200;
      }
      i1 = 0;
      label72:
      i2 = i3;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label212;
        }
      }
    }
    label154:
    label165:
    label176:
    label188:
    label200:
    label212:
    for (int i2 = i3;; i2 = this.aZO.hashCode())
    {
      return (i1 + (n + (m + (k + (j + (i + (i4 + 527) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i2;
      i = this.aYS.hashCode();
      break;
      j = this.name.hashCode();
      break label33;
      k = this.aTr.hashCode();
      break label42;
      m = this.aYl.hashCode();
      break label52;
      n = this.aXj.hashCode();
      break label62;
      i1 = this.aXk.hashCode();
      break label72;
    }
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.aYS != null) {
      i = j + mv.f(1, this.aYS.longValue());
    }
    j = i;
    if (this.name != null) {
      j = i + mv.e(2, this.name);
    }
    i = j;
    if (this.aTr != null) {
      i = j + mv.e(3, this.aTr);
    }
    j = i;
    if (this.aYl != null) {
      j = i + mv.f(4, this.aYl.longValue());
    }
    i = j;
    if (this.aXj != null)
    {
      this.aXj.floatValue();
      i = j + (mv.db(40) + 4);
    }
    j = i;
    if (this.aXk != null)
    {
      this.aXk.doubleValue();
      j = i + (mv.db(48) + 8);
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */