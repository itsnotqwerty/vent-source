package com.google.android.gms.common.util;

public final class i
{
  private static final char[] aJB = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private static final char[] aJC = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  public static String m(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[paramArrayOfByte.length << 1];
    int i = 0;
    int k;
    for (int j = 0; i < paramArrayOfByte.length; j = k + 1)
    {
      int m = paramArrayOfByte[i] & 0xFF;
      k = j + 1;
      arrayOfChar[j] = aJC[(m >>> 4)];
      arrayOfChar[k] = aJC[(m & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/util/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */