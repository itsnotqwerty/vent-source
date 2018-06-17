package com.google.android.gms.internal;

import java.io.IOException;

public final class lj
  extends mx<lj>
{
  private static volatile lj[] aXB;
  public lm aXC = null;
  public lk aXD = null;
  public Boolean aXE = null;
  public String aXF = null;
  
  public lj()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static lj[] sv()
  {
    if (aXB == null) {}
    synchronized (nb.aZX)
    {
      if (aXB == null) {
        aXB = new lj[0];
      }
      return aXB;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.aXC != null) {
      parammv.a(1, this.aXC);
    }
    if (this.aXD != null) {
      parammv.a(2, this.aXD);
    }
    if (this.aXE != null) {
      parammv.i(3, this.aXE.booleanValue());
    }
    if (this.aXF != null) {
      parammv.d(4, this.aXF);
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lj)) {
        return false;
      }
      paramObject = (lj)paramObject;
      if (this.aXC == null)
      {
        if (((lj)paramObject).aXC != null) {
          return false;
        }
      }
      else if (!this.aXC.equals(((lj)paramObject).aXC)) {
        return false;
      }
      if (this.aXD == null)
      {
        if (((lj)paramObject).aXD != null) {
          return false;
        }
      }
      else if (!this.aXD.equals(((lj)paramObject).aXD)) {
        return false;
      }
      if (this.aXE == null)
      {
        if (((lj)paramObject).aXE != null) {
          return false;
        }
      }
      else if (!this.aXE.equals(((lj)paramObject).aXE)) {
        return false;
      }
      if (this.aXF == null)
      {
        if (((lj)paramObject).aXF != null) {
          return false;
        }
      }
      else if (!this.aXF.equals(((lj)paramObject).aXF)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lj)paramObject).aZO == null) || (((lj)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lj)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int i1 = 0;
    int i2 = getClass().getName().hashCode();
    Object localObject = this.aXC;
    int i;
    int j;
    label41:
    int k;
    label50:
    int m;
    if (localObject == null)
    {
      i = 0;
      localObject = this.aXD;
      if (localObject != null) {
        break label128;
      }
      j = 0;
      if (this.aXE != null) {
        break label137;
      }
      k = 0;
      if (this.aXF != null) {
        break label148;
      }
      m = 0;
      label60:
      n = i1;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label160;
        }
      }
    }
    label128:
    label137:
    label148:
    label160:
    for (int n = i1;; n = this.aZO.hashCode())
    {
      return (m + (k + (j + (i + (i2 + 527) * 31) * 31) * 31) * 31) * 31 + n;
      i = ((lm)localObject).hashCode();
      break;
      j = ((lk)localObject).hashCode();
      break label41;
      k = this.aXE.hashCode();
      break label50;
      m = this.aXF.hashCode();
      break label60;
    }
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.aXC != null) {
      i = j + mv.b(1, this.aXC);
    }
    j = i;
    if (this.aXD != null) {
      j = i + mv.b(2, this.aXD);
    }
    i = j;
    if (this.aXE != null)
    {
      this.aXE.booleanValue();
      i = j + (mv.db(24) + 1);
    }
    j = i;
    if (this.aXF != null) {
      j = i + mv.e(4, this.aXF);
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */