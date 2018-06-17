package com.firebase.jobdispatcher;

public final class a
{
  static final int[] axh = { 2, 1, 4, 8 };
  
  static int[] cs(int paramInt)
  {
    int[] arrayOfInt1 = axh;
    int m = arrayOfInt1.length;
    int i = 0;
    int j = 0;
    int k;
    if (i < m)
    {
      k = arrayOfInt1[i];
      if ((paramInt & k) == k) {}
      for (k = 1;; k = 0)
      {
        j += k;
        i += 1;
        break;
      }
    }
    arrayOfInt1 = new int[j];
    int[] arrayOfInt2 = axh;
    m = arrayOfInt2.length;
    i = 0;
    j = 0;
    if (j < m)
    {
      int n = arrayOfInt2[j];
      if ((paramInt & n) != n) {
        break label112;
      }
      k = i + 1;
      arrayOfInt1[i] = n;
      i = k;
    }
    label112:
    for (;;)
    {
      j += 1;
      break;
      return arrayOfInt1;
    }
  }
  
  static int g(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {
      return 0;
    }
    int k = paramArrayOfInt.length;
    int i = 0;
    int j = 0;
    while (i < k)
    {
      j |= paramArrayOfInt[i];
      i += 1;
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */