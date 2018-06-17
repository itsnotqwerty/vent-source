package com.google.android.gms.internal;

import java.io.IOException;

public final class lm
  extends mx<lm>
{
  public Integer aXO = null;
  public String aXP = null;
  public Boolean aXQ = null;
  public String[] aXR = ng.EMPTY_STRING_ARRAY;
  
  public lm()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  private final lm c(mu parammu)
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
          throw new IllegalArgumentException(41 + k + " is not a valid enum MatchType");
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        parammu.cX(j);
        a(parammu, i);
      }
      break;
      this.aXO = Integer.valueOf(k);
      break;
      this.aXP = parammu.readString();
      break;
      this.aXQ = Boolean.valueOf(parammu.sJ());
      break;
      j = ng.b(parammu, 34);
      if (this.aXR == null) {}
      String[] arrayOfString;
      for (i = 0;; i = this.aXR.length)
      {
        arrayOfString = new String[j + i];
        j = i;
        if (i != 0)
        {
          System.arraycopy(this.aXR, 0, arrayOfString, 0, i);
          j = i;
        }
        while (j < arrayOfString.length - 1)
        {
          arrayOfString[j] = parammu.readString();
          parammu.sI();
          j += 1;
        }
      }
      arrayOfString[j] = parammu.readString();
      this.aXR = arrayOfString;
      break;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.aXO != null) {
      parammv.aw(1, this.aXO.intValue());
    }
    if (this.aXP != null) {
      parammv.d(2, this.aXP);
    }
    if (this.aXQ != null) {
      parammv.i(3, this.aXQ.booleanValue());
    }
    if ((this.aXR != null) && (this.aXR.length > 0))
    {
      int i = 0;
      while (i < this.aXR.length)
      {
        String str = this.aXR[i];
        if (str != null) {
          parammv.d(4, str);
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
      if (!(paramObject instanceof lm)) {
        return false;
      }
      paramObject = (lm)paramObject;
      if (this.aXO == null)
      {
        if (((lm)paramObject).aXO != null) {
          return false;
        }
      }
      else if (!this.aXO.equals(((lm)paramObject).aXO)) {
        return false;
      }
      if (this.aXP == null)
      {
        if (((lm)paramObject).aXP != null) {
          return false;
        }
      }
      else if (!this.aXP.equals(((lm)paramObject).aXP)) {
        return false;
      }
      if (this.aXQ == null)
      {
        if (((lm)paramObject).aXQ != null) {
          return false;
        }
      }
      else if (!this.aXQ.equals(((lm)paramObject).aXQ)) {
        return false;
      }
      if (!nb.equals(this.aXR, ((lm)paramObject).aXR)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lm)paramObject).aZO == null) || (((lm)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lm)paramObject).aZO);
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
    if (this.aXO == null)
    {
      i = 0;
      if (this.aXP != null) {
        break label121;
      }
      j = 0;
      if (this.aXQ != null) {
        break label132;
      }
      k = 0;
      i2 = nb.hashCode(this.aXR);
      m = n;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label143;
        }
      }
    }
    label121:
    label132:
    label143:
    for (int m = n;; m = this.aZO.hashCode())
    {
      return ((k + (j + (i + (i1 + 527) * 31) * 31) * 31) * 31 + i2) * 31 + m;
      i = this.aXO.intValue();
      break;
      j = this.aXP.hashCode();
      break label33;
      k = this.aXQ.hashCode();
      break label42;
    }
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.aXO != null) {
      i = j + mv.ax(1, this.aXO.intValue());
    }
    j = i;
    if (this.aXP != null) {
      j = i + mv.e(2, this.aXP);
    }
    i = j;
    if (this.aXQ != null)
    {
      this.aXQ.booleanValue();
      i = j + (mv.db(24) + 1);
    }
    j = i;
    int k;
    int m;
    if (this.aXR != null)
    {
      j = i;
      if (this.aXR.length > 0)
      {
        k = 0;
        j = 0;
        m = 0;
        if (k < this.aXR.length)
        {
          String str = this.aXR[k];
          if (str == null) {
            break label155;
          }
          m += 1;
          j = mv.cJ(str) + j;
        }
      }
    }
    label155:
    for (;;)
    {
      k += 1;
      break;
      j = i + j + m * 1;
      return j;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */