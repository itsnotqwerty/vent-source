package com.google.android.gms.internal;

import java.io.IOException;

public final class ll
  extends mx<ll>
{
  private static volatile ll[] aXL;
  public String aXM = null;
  public lj aXN = null;
  public Integer aXw = null;
  
  public ll()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static ll[] sw()
  {
    if (aXL == null) {}
    synchronized (nb.aZX)
    {
      if (aXL == null) {
        aXL = new ll[0];
      }
      return aXL;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.aXw != null) {
      parammv.aw(1, this.aXw.intValue());
    }
    if (this.aXM != null) {
      parammv.d(2, this.aXM);
    }
    if (this.aXN != null) {
      parammv.a(3, this.aXN);
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ll)) {
        return false;
      }
      paramObject = (ll)paramObject;
      if (this.aXw == null)
      {
        if (((ll)paramObject).aXw != null) {
          return false;
        }
      }
      else if (!this.aXw.equals(((ll)paramObject).aXw)) {
        return false;
      }
      if (this.aXM == null)
      {
        if (((ll)paramObject).aXM != null) {
          return false;
        }
      }
      else if (!this.aXM.equals(((ll)paramObject).aXM)) {
        return false;
      }
      if (this.aXN == null)
      {
        if (((ll)paramObject).aXN != null) {
          return false;
        }
      }
      else if (!this.aXN.equals(((ll)paramObject).aXN)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((ll)paramObject).aZO == null) || (((ll)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((ll)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int n = 0;
    int i1 = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    lj locallj;
    int k;
    if (this.aXw == null)
    {
      i = 0;
      if (this.aXM != null) {
        break label110;
      }
      j = 0;
      locallj = this.aXN;
      if (locallj != null) {
        break label121;
      }
      k = 0;
      label46:
      m = n;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label130;
        }
      }
    }
    label110:
    label121:
    label130:
    for (int m = n;; m = this.aZO.hashCode())
    {
      return (k + (j + (i + (i1 + 527) * 31) * 31) * 31) * 31 + m;
      i = this.aXw.hashCode();
      break;
      j = this.aXM.hashCode();
      break label33;
      k = locallj.hashCode();
      break label46;
    }
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.aXw != null) {
      i = j + mv.ax(1, this.aXw.intValue());
    }
    j = i;
    if (this.aXM != null) {
      j = i + mv.e(2, this.aXM);
    }
    i = j;
    if (this.aXN != null) {
      i = j + mv.b(3, this.aXN);
    }
    return i;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ll.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */