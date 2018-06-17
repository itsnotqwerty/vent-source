package com.google.android.gms.internal;

import java.io.IOException;

public final class lk
  extends mx<lk>
{
  public Integer aXG = null;
  public Boolean aXH = null;
  public String aXI = null;
  public String aXJ = null;
  public String aXK = null;
  
  public lk()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  private final lk b(mu parammu)
    throws IOException
  {
    int i;
    do
    {
      i = parammu.sI();
      switch (i)
      {
      }
    } while (super.a(parammu, i));
    return this;
    int j = parammu.getPosition();
    for (;;)
    {
      int k;
      try
      {
        k = parammu.sK();
        switch (k)
        {
        case 0: 
          throw new IllegalArgumentException(46 + k + " is not a valid enum ComparisonType");
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        parammu.cX(j);
        a(parammu, i);
      }
      break;
      this.aXG = Integer.valueOf(k);
      break;
      this.aXH = Boolean.valueOf(parammu.sJ());
      break;
      this.aXI = parammu.readString();
      break;
      this.aXJ = parammu.readString();
      break;
      this.aXK = parammu.readString();
      break;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.aXG != null) {
      parammv.aw(1, this.aXG.intValue());
    }
    if (this.aXH != null) {
      parammv.i(2, this.aXH.booleanValue());
    }
    if (this.aXI != null) {
      parammv.d(3, this.aXI);
    }
    if (this.aXJ != null) {
      parammv.d(4, this.aXJ);
    }
    if (this.aXK != null) {
      parammv.d(5, this.aXK);
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lk)) {
        return false;
      }
      paramObject = (lk)paramObject;
      if (this.aXG == null)
      {
        if (((lk)paramObject).aXG != null) {
          return false;
        }
      }
      else if (!this.aXG.equals(((lk)paramObject).aXG)) {
        return false;
      }
      if (this.aXH == null)
      {
        if (((lk)paramObject).aXH != null) {
          return false;
        }
      }
      else if (!this.aXH.equals(((lk)paramObject).aXH)) {
        return false;
      }
      if (this.aXI == null)
      {
        if (((lk)paramObject).aXI != null) {
          return false;
        }
      }
      else if (!this.aXI.equals(((lk)paramObject).aXI)) {
        return false;
      }
      if (this.aXJ == null)
      {
        if (((lk)paramObject).aXJ != null) {
          return false;
        }
      }
      else if (!this.aXJ.equals(((lk)paramObject).aXJ)) {
        return false;
      }
      if (this.aXK == null)
      {
        if (((lk)paramObject).aXK != null) {
          return false;
        }
      }
      else if (!this.aXK.equals(((lk)paramObject).aXK)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lk)paramObject).aZO == null) || (((lk)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lk)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int i2 = 0;
    int i3 = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    int k;
    label42:
    int m;
    label52:
    int n;
    if (this.aXG == null)
    {
      i = 0;
      if (this.aXH != null) {
        break label138;
      }
      j = 0;
      if (this.aXI != null) {
        break label149;
      }
      k = 0;
      if (this.aXJ != null) {
        break label160;
      }
      m = 0;
      if (this.aXK != null) {
        break label172;
      }
      n = 0;
      label62:
      i1 = i2;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label184;
        }
      }
    }
    label138:
    label149:
    label160:
    label172:
    label184:
    for (int i1 = i2;; i1 = this.aZO.hashCode())
    {
      return (n + (m + (k + (j + (i + (i3 + 527) * 31) * 31) * 31) * 31) * 31) * 31 + i1;
      i = this.aXG.intValue();
      break;
      j = this.aXH.hashCode();
      break label33;
      k = this.aXI.hashCode();
      break label42;
      m = this.aXJ.hashCode();
      break label52;
      n = this.aXK.hashCode();
      break label62;
    }
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.aXG != null) {
      i = j + mv.ax(1, this.aXG.intValue());
    }
    j = i;
    if (this.aXH != null)
    {
      this.aXH.booleanValue();
      j = i + (mv.db(16) + 1);
    }
    i = j;
    if (this.aXI != null) {
      i = j + mv.e(3, this.aXI);
    }
    j = i;
    if (this.aXJ != null) {
      j = i + mv.e(4, this.aXJ);
    }
    i = j;
    if (this.aXK != null) {
      i = j + mv.e(5, this.aXK);
    }
    return i;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */