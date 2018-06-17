package android.support.v7.c.a;

import java.lang.reflect.Array;

final class c
{
  static
  {
    if (!c.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public static <T> T[] a(T[] paramArrayOfT, int paramInt, T paramT)
  {
    assert (paramInt <= paramArrayOfT.length);
    if (paramInt + 1 > paramArrayOfT.length)
    {
      Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), aV(paramInt));
      System.arraycopy(paramArrayOfT, 0, arrayOfObject, 0, paramInt);
      paramArrayOfT = arrayOfObject;
    }
    for (;;)
    {
      paramArrayOfT[paramInt] = paramT;
      return paramArrayOfT;
    }
  }
  
  private static int aV(int paramInt)
  {
    if (paramInt <= 4) {
      return 8;
    }
    return paramInt * 2;
  }
  
  public static int[] c(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    assert (paramInt1 <= paramArrayOfInt.length);
    int[] arrayOfInt = paramArrayOfInt;
    if (paramInt1 + 1 > paramArrayOfInt.length)
    {
      arrayOfInt = new int[aV(paramInt1)];
      System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, paramInt1);
    }
    arrayOfInt[paramInt1] = paramInt2;
    return arrayOfInt;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/c/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */