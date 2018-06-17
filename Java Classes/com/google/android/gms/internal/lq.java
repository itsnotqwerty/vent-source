package com.google.android.gms.internal;

import java.io.IOException;

public final class lq
  extends mx<lq>
{
  private static volatile lq[] aYc;
  public Integer aXs = null;
  public lv aYd = null;
  public lv aYe = null;
  public Boolean aYf = null;
  
  public lq()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static lq[] sz()
  {
    if (aYc == null) {}
    synchronized (nb.aZX)
    {
      if (aYc == null) {
        aYc = new lq[0];
      }
      return aYc;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.aXs != null) {
      parammv.aw(1, this.aXs.intValue());
    }
    if (this.aYd != null) {
      parammv.a(2, this.aYd);
    }
    if (this.aYe != null) {
      parammv.a(3, this.aYe);
    }
    if (this.aYf != null) {
      parammv.i(4, this.aYf.booleanValue());
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lq)) {
        return false;
      }
      paramObject = (lq)paramObject;
      if (this.aXs == null)
      {
        if (((lq)paramObject).aXs != null) {
          return false;
        }
      }
      else if (!this.aXs.equals(((lq)paramObject).aXs)) {
        return false;
      }
      if (this.aYd == null)
      {
        if (((lq)paramObject).aYd != null) {
          return false;
        }
      }
      else if (!this.aYd.equals(((lq)paramObject).aYd)) {
        return false;
      }
      if (this.aYe == null)
      {
        if (((lq)paramObject).aYe != null) {
          return false;
        }
      }
      else if (!this.aYe.equals(((lq)paramObject).aYe)) {
        return false;
      }
      if (this.aYf == null)
      {
        if (((lq)paramObject).aYf != null) {
          return false;
        }
      }
      else if (!this.aYf.equals(((lq)paramObject).aYf)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lq)paramObject).aZO == null) || (((lq)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lq)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int i1 = 0;
    int i2 = getClass().getName().hashCode();
    int i;
    lv locallv;
    int j;
    label37:
    int k;
    label50:
    int m;
    if (this.aXs == null)
    {
      i = 0;
      locallv = this.aYd;
      if (locallv != null) {
        break label130;
      }
      j = 0;
      locallv = this.aYe;
      if (locallv != null) {
        break label139;
      }
      k = 0;
      if (this.aYf != null) {
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
    label130:
    label139:
    label148:
    label160:
    for (int n = i1;; n = this.aZO.hashCode())
    {
      return (m + (k + (j + (i + (i2 + 527) * 31) * 31) * 31) * 31) * 31 + n;
      i = this.aXs.hashCode();
      break;
      j = locallv.hashCode();
      break label37;
      k = locallv.hashCode();
      break label50;
      m = this.aYf.hashCode();
      break label60;
    }
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.aXs != null) {
      i = j + mv.ax(1, this.aXs.intValue());
    }
    j = i;
    if (this.aYd != null) {
      j = i + mv.b(2, this.aYd);
    }
    i = j;
    if (this.aYe != null) {
      i = j + mv.b(3, this.aYe);
    }
    j = i;
    if (this.aYf != null)
    {
      this.aYf.booleanValue();
      j = i + (mv.db(32) + 1);
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */