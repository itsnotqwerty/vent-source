package com.google.android.gms.internal;

public final class mz
  implements Cloneable
{
  static final na aZR = new na();
  private boolean aZS = false;
  int[] aZT;
  na[] aZU;
  int ai;
  
  mz()
  {
    this(10);
  }
  
  private mz(int paramInt)
  {
    paramInt = ap(paramInt);
    this.aZT = new int[paramInt];
    this.aZU = new na[paramInt];
    this.ai = 0;
  }
  
  static int ap(int paramInt)
  {
    int j = paramInt << 2;
    paramInt = 4;
    for (;;)
    {
      int i = j;
      if (paramInt < 32)
      {
        if (j <= (1 << paramInt) - 12) {
          i = (1 << paramInt) - 12;
        }
      }
      else {
        return i / 4;
      }
      paramInt += 1;
    }
  }
  
  final int dc(int paramInt)
  {
    int i = 0;
    int j = this.ai - 1;
    while (i <= j)
    {
      int k = i + j >>> 1;
      int m = this.aZT[k];
      if (m < paramInt)
      {
        i = k + 1;
      }
      else
      {
        j = k;
        if (m <= paramInt) {
          return j;
        }
        j = k - 1;
      }
    }
    j = i ^ 0xFFFFFFFF;
    return j;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label71:
    label93:
    label131:
    label138:
    label141:
    for (;;)
    {
      return true;
      if (!(paramObject instanceof mz)) {
        return false;
      }
      paramObject = (mz)paramObject;
      if (this.ai != ((mz)paramObject).ai) {
        return false;
      }
      Object localObject = this.aZT;
      int[] arrayOfInt = ((mz)paramObject).aZT;
      int j = this.ai;
      int i = 0;
      if (i < j) {
        if (localObject[i] != arrayOfInt[i])
        {
          i = 0;
          if (i != 0)
          {
            localObject = this.aZU;
            paramObject = ((mz)paramObject).aZU;
            j = this.ai;
            i = 0;
            if (i >= j) {
              break label138;
            }
            if (localObject[i].equals(paramObject[i])) {
              break label131;
            }
          }
        }
      }
      for (i = 0;; i = 1)
      {
        if (i != 0) {
          break label141;
        }
        return false;
        i += 1;
        break;
        i = 1;
        break label71;
        i += 1;
        break label93;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = 17;
    int i = 0;
    while (i < this.ai)
    {
      j = (j * 31 + this.aZT[i]) * 31 + this.aZU[i].hashCode();
      i += 1;
    }
    return j;
  }
  
  public final boolean isEmpty()
  {
    return this.ai == 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/mz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */