package com.google.android.gms.internal;

import java.io.IOException;

public final class lh
  extends mx<lh>
{
  private static volatile lh[] aXr;
  public Integer aXs = null;
  public ll[] aXt = ll.sw();
  public li[] aXu = li.su();
  
  public lh()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static lh[] ss()
  {
    if (aXr == null) {}
    synchronized (nb.aZX)
    {
      if (aXr == null) {
        aXr = new lh[0];
      }
      return aXr;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    int j = 0;
    if (this.aXs != null) {
      parammv.aw(1, this.aXs.intValue());
    }
    int i;
    Object localObject;
    if ((this.aXt != null) && (this.aXt.length > 0))
    {
      i = 0;
      while (i < this.aXt.length)
      {
        localObject = this.aXt[i];
        if (localObject != null) {
          parammv.a(2, (nd)localObject);
        }
        i += 1;
      }
    }
    if ((this.aXu != null) && (this.aXu.length > 0))
    {
      i = j;
      while (i < this.aXu.length)
      {
        localObject = this.aXu[i];
        if (localObject != null) {
          parammv.a(3, (nd)localObject);
        }
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
      if (!(paramObject instanceof lh)) {
        return false;
      }
      paramObject = (lh)paramObject;
      if (this.aXs == null)
      {
        if (((lh)paramObject).aXs != null) {
          return false;
        }
      }
      else if (!this.aXs.equals(((lh)paramObject).aXs)) {
        return false;
      }
      if (!nb.equals(this.aXt, ((lh)paramObject).aXt)) {
        return false;
      }
      if (!nb.equals(this.aXu, ((lh)paramObject).aXu)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lh)paramObject).aZO == null) || (((lh)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lh)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int k = 0;
    int m = getClass().getName().hashCode();
    int i;
    int n;
    int i1;
    if (this.aXs == null)
    {
      i = 0;
      n = nb.hashCode(this.aXt);
      i1 = nb.hashCode(this.aXu);
      j = k;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label102;
        }
      }
    }
    label102:
    for (int j = k;; j = this.aZO.hashCode())
    {
      return (((i + (m + 527) * 31) * 31 + n) * 31 + i1) * 31 + j;
      i = this.aXs.hashCode();
      break;
    }
  }
  
  protected final int st()
  {
    int m = 0;
    int j = super.st();
    int i = j;
    if (this.aXs != null) {
      i = j + mv.ax(1, this.aXs.intValue());
    }
    j = i;
    Object localObject;
    if (this.aXt != null)
    {
      j = i;
      if (this.aXt.length > 0)
      {
        j = 0;
        while (j < this.aXt.length)
        {
          localObject = this.aXt[j];
          k = i;
          if (localObject != null) {
            k = i + mv.b(2, (nd)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    int k = j;
    if (this.aXu != null)
    {
      k = j;
      if (this.aXu.length > 0)
      {
        i = m;
        for (;;)
        {
          k = j;
          if (i >= this.aXu.length) {
            break;
          }
          localObject = this.aXu[i];
          k = j;
          if (localObject != null) {
            k = j + mv.b(3, (nd)localObject);
          }
          i += 1;
          j = k;
        }
      }
    }
    return k;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */