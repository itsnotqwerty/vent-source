package android.support.v4.g;

public final class c
{
  static final int[] Ev = new int[0];
  static final long[] Ew = new long[0];
  static final Object[] Ex = new Object[0];
  
  public static int a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramInt1 - 1;
    paramInt1 = 0;
    while (paramInt1 <= i)
    {
      int j = paramInt1 + i >>> 1;
      int k = paramArrayOfInt[j];
      if (k < paramInt2)
      {
        paramInt1 = j + 1;
      }
      else
      {
        i = j;
        if (k <= paramInt2) {
          return i;
        }
        i = j - 1;
      }
    }
    i = paramInt1 ^ 0xFFFFFFFF;
    return i;
  }
  
  public static int a(long[] paramArrayOfLong, int paramInt, long paramLong)
  {
    int i = paramInt - 1;
    paramInt = 0;
    while (paramInt <= i)
    {
      int j = paramInt + i >>> 1;
      long l = paramArrayOfLong[j];
      if (l < paramLong)
      {
        paramInt = j + 1;
      }
      else
      {
        i = j;
        if (l <= paramLong) {
          break label67;
        }
        i = j - 1;
      }
    }
    i = paramInt ^ 0xFFFFFFFF;
    label67:
    return i;
  }
  
  public static int ap(int paramInt)
  {
    return ar(paramInt * 4) / 4;
  }
  
  public static int aq(int paramInt)
  {
    return ar(paramInt * 8) / 8;
  }
  
  private static int ar(int paramInt)
  {
    int i = 4;
    for (;;)
    {
      int j = paramInt;
      if (i < 32)
      {
        if (paramInt <= (1 << i) - 12) {
          j = (1 << i) - 12;
        }
      }
      else {
        return j;
      }
      i += 1;
    }
  }
  
  public static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */