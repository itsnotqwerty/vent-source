package com.google.android.gms.internal;

import java.io.IOException;

public final class ln
  extends mx<ln>
{
  private static volatile ln[] aXS;
  public Boolean aXT = null;
  public Boolean aXU = null;
  public Integer aXV = null;
  public String name = null;
  
  public ln()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static ln[] sx()
  {
    if (aXS == null) {}
    synchronized (nb.aZX)
    {
      if (aXS == null) {
        aXS = new ln[0];
      }
      return aXS;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.name != null) {
      parammv.d(1, this.name);
    }
    if (this.aXT != null) {
      parammv.i(2, this.aXT.booleanValue());
    }
    if (this.aXU != null) {
      parammv.i(3, this.aXU.booleanValue());
    }
    if (this.aXV != null) {
      parammv.aw(4, this.aXV.intValue());
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ln)) {
        return false;
      }
      paramObject = (ln)paramObject;
      if (this.name == null)
      {
        if (((ln)paramObject).name != null) {
          return false;
        }
      }
      else if (!this.name.equals(((ln)paramObject).name)) {
        return false;
      }
      if (this.aXT == null)
      {
        if (((ln)paramObject).aXT != null) {
          return false;
        }
      }
      else if (!this.aXT.equals(((ln)paramObject).aXT)) {
        return false;
      }
      if (this.aXU == null)
      {
        if (((ln)paramObject).aXU != null) {
          return false;
        }
      }
      else if (!this.aXU.equals(((ln)paramObject).aXU)) {
        return false;
      }
      if (this.aXV == null)
      {
        if (((ln)paramObject).aXV != null) {
          return false;
        }
      }
      else if (!this.aXV.equals(((ln)paramObject).aXV)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((ln)paramObject).aZO == null) || (((ln)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((ln)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int i1 = 0;
    int i2 = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    int k;
    label42:
    int m;
    if (this.name == null)
    {
      i = 0;
      if (this.aXT != null) {
        break label122;
      }
      j = 0;
      if (this.aXU != null) {
        break label133;
      }
      k = 0;
      if (this.aXV != null) {
        break label144;
      }
      m = 0;
      label52:
      n = i1;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label156;
        }
      }
    }
    label122:
    label133:
    label144:
    label156:
    for (int n = i1;; n = this.aZO.hashCode())
    {
      return (m + (k + (j + (i + (i2 + 527) * 31) * 31) * 31) * 31) * 31 + n;
      i = this.name.hashCode();
      break;
      j = this.aXT.hashCode();
      break label33;
      k = this.aXU.hashCode();
      break label42;
      m = this.aXV.hashCode();
      break label52;
    }
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.name != null) {
      i = j + mv.e(1, this.name);
    }
    j = i;
    if (this.aXT != null)
    {
      this.aXT.booleanValue();
      j = i + (mv.db(16) + 1);
    }
    i = j;
    if (this.aXU != null)
    {
      this.aXU.booleanValue();
      i = j + (mv.db(24) + 1);
    }
    j = i;
    if (this.aXV != null) {
      j = i + mv.ax(4, this.aXV.intValue());
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ln.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */