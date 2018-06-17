package com.google.android.gms.internal;

import java.io.IOException;

public final class lo
  extends mx<lo>
{
  public String aQz = null;
  public Long aXW = null;
  private Integer aXX = null;
  public lp[] aXY = lp.sy();
  public ln[] aXZ = ln.sx();
  public lh[] aYa = lh.ss();
  
  public lo()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    int j = 0;
    if (this.aXW != null) {
      parammv.e(1, this.aXW.longValue());
    }
    if (this.aQz != null) {
      parammv.d(2, this.aQz);
    }
    if (this.aXX != null) {
      parammv.aw(3, this.aXX.intValue());
    }
    int i;
    Object localObject;
    if ((this.aXY != null) && (this.aXY.length > 0))
    {
      i = 0;
      while (i < this.aXY.length)
      {
        localObject = this.aXY[i];
        if (localObject != null) {
          parammv.a(4, (nd)localObject);
        }
        i += 1;
      }
    }
    if ((this.aXZ != null) && (this.aXZ.length > 0))
    {
      i = 0;
      while (i < this.aXZ.length)
      {
        localObject = this.aXZ[i];
        if (localObject != null) {
          parammv.a(5, (nd)localObject);
        }
        i += 1;
      }
    }
    if ((this.aYa != null) && (this.aYa.length > 0))
    {
      i = j;
      while (i < this.aYa.length)
      {
        localObject = this.aYa[i];
        if (localObject != null) {
          parammv.a(6, (nd)localObject);
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
      if (!(paramObject instanceof lo)) {
        return false;
      }
      paramObject = (lo)paramObject;
      if (this.aXW == null)
      {
        if (((lo)paramObject).aXW != null) {
          return false;
        }
      }
      else if (!this.aXW.equals(((lo)paramObject).aXW)) {
        return false;
      }
      if (this.aQz == null)
      {
        if (((lo)paramObject).aQz != null) {
          return false;
        }
      }
      else if (!this.aQz.equals(((lo)paramObject).aQz)) {
        return false;
      }
      if (this.aXX == null)
      {
        if (((lo)paramObject).aXX != null) {
          return false;
        }
      }
      else if (!this.aXX.equals(((lo)paramObject).aXX)) {
        return false;
      }
      if (!nb.equals(this.aXY, ((lo)paramObject).aXY)) {
        return false;
      }
      if (!nb.equals(this.aXZ, ((lo)paramObject).aXZ)) {
        return false;
      }
      if (!nb.equals(this.aYa, ((lo)paramObject).aYa)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lo)paramObject).aZO == null) || (((lo)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lo)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int n = 0;
    int i1 = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    int k;
    label42:
    int i2;
    int i3;
    int i4;
    if (this.aXW == null)
    {
      i = 0;
      if (this.aQz != null) {
        break label151;
      }
      j = 0;
      if (this.aXX != null) {
        break label162;
      }
      k = 0;
      i2 = nb.hashCode(this.aXY);
      i3 = nb.hashCode(this.aXZ);
      i4 = nb.hashCode(this.aYa);
      m = n;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label173;
        }
      }
    }
    label151:
    label162:
    label173:
    for (int m = n;; m = this.aZO.hashCode())
    {
      return ((((k + (j + (i + (i1 + 527) * 31) * 31) * 31) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + m;
      i = this.aXW.hashCode();
      break;
      j = this.aQz.hashCode();
      break label33;
      k = this.aXX.hashCode();
      break label42;
    }
  }
  
  protected final int st()
  {
    int m = 0;
    int j = super.st();
    int i = j;
    if (this.aXW != null) {
      i = j + mv.f(1, this.aXW.longValue());
    }
    j = i;
    if (this.aQz != null) {
      j = i + mv.e(2, this.aQz);
    }
    i = j;
    if (this.aXX != null) {
      i = j + mv.ax(3, this.aXX.intValue());
    }
    j = i;
    Object localObject;
    if (this.aXY != null)
    {
      j = i;
      if (this.aXY.length > 0)
      {
        j = 0;
        while (j < this.aXY.length)
        {
          localObject = this.aXY[j];
          k = i;
          if (localObject != null) {
            k = i + mv.b(4, (nd)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (this.aXZ != null)
    {
      i = j;
      if (this.aXZ.length > 0)
      {
        k = 0;
        i = j;
        j = k;
        while (j < this.aXZ.length)
        {
          localObject = this.aXZ[j];
          k = i;
          if (localObject != null) {
            k = i + mv.b(5, (nd)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (this.aYa != null)
    {
      k = i;
      if (this.aYa.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= this.aYa.length) {
            break;
          }
          localObject = this.aYa[j];
          k = i;
          if (localObject != null) {
            k = i + mv.b(6, (nd)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */