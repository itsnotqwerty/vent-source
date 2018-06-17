package com.google.android.gms.internal;

import java.io.IOException;

public final class lv
  extends mx<lv>
{
  public long[] aYP = ng.baf;
  public long[] aYQ = ng.baf;
  
  public lv()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    int j = 0;
    int i;
    if ((this.aYP != null) && (this.aYP.length > 0))
    {
      i = 0;
      while (i < this.aYP.length)
      {
        parammv.d(1, this.aYP[i]);
        i += 1;
      }
    }
    if ((this.aYQ != null) && (this.aYQ.length > 0))
    {
      i = j;
      while (i < this.aYQ.length)
      {
        parammv.d(2, this.aYQ[i]);
        i += 1;
      }
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lv)) {
        return false;
      }
      paramObject = (lv)paramObject;
      if (!nb.equals(this.aYP, ((lv)paramObject).aYP)) {
        return false;
      }
      if (!nb.equals(this.aYQ, ((lv)paramObject).aYQ)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lv)paramObject).aZO == null) || (((lv)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lv)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int j = getClass().getName().hashCode();
    int k = nb.hashCode(this.aYP);
    int m = nb.hashCode(this.aYQ);
    if ((this.aZO == null) || (this.aZO.isEmpty())) {}
    for (int i = 0;; i = this.aZO.hashCode()) {
      return i + (((j + 527) * 31 + k) * 31 + m) * 31;
    }
  }
  
  protected final int st()
  {
    int k = super.st();
    int j;
    if ((this.aYP != null) && (this.aYP.length > 0))
    {
      i = 0;
      j = 0;
      while (i < this.aYP.length)
      {
        j += mv.G(this.aYP[i]);
        i += 1;
      }
    }
    for (int i = k + j + this.aYP.length * 1;; i = k)
    {
      j = i;
      if (this.aYQ != null)
      {
        j = i;
        if (this.aYQ.length > 0)
        {
          j = 0;
          k = 0;
          while (j < this.aYQ.length)
          {
            k += mv.G(this.aYQ[j]);
            j += 1;
          }
          j = i + k + this.aYQ.length * 1;
        }
      }
      return j;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */