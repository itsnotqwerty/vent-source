package com.google.android.gms.common.util;

import com.google.android.gms.common.internal.ac;
import java.lang.reflect.Array;
import java.util.Arrays;

public final class c
{
  public static <T> T[] b(T[] paramArrayOfT1, T... paramVarArgs)
  {
    if (paramArrayOfT1 == null)
    {
      paramArrayOfT1 = null;
      return paramArrayOfT1;
    }
    Object[] arrayOfObject = (Object[])Array.newInstance(paramVarArgs.getClass().getComponentType(), paramArrayOfT1.length);
    int m = paramArrayOfT1.length;
    int j = 0;
    int i = 0;
    label33:
    if (j < m)
    {
      T ? = paramArrayOfT1[j];
      if (ac.equal(paramVarArgs[0], ?)) {
        break label100;
      }
      int k = i + 1;
      arrayOfObject[i] = ?;
      i = k;
    }
    label100:
    for (;;)
    {
      j += 1;
      break label33;
      if (arrayOfObject == null) {
        return null;
      }
      paramArrayOfT1 = arrayOfObject;
      if (i == arrayOfObject.length) {
        break;
      }
      return Arrays.copyOf(arrayOfObject, i);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/util/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */