package com.amazonaws.util;

public enum CodecUtils
{
  static void ar(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & paramInt2) != 0) {
      throw new IllegalArgumentException("Invalid last non-pad character detected");
    }
  }
  
  public static byte[] av(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    byte[] arrayOfByte = new byte[arrayOfChar.length];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      int j = arrayOfChar[i];
      if (j > 127) {
        throw new IllegalArgumentException("Invalid character found at position " + i + " for " + paramString);
      }
      arrayOfByte[i] = ((byte)j);
      i += 1;
    }
    return arrayOfByte;
  }
  
  static int b(String paramString, byte[] paramArrayOfByte)
  {
    int m = paramArrayOfByte.length;
    char[] arrayOfChar = paramString.toCharArray();
    int j = 0;
    int i = 0;
    if (j < m)
    {
      int n = arrayOfChar[j];
      if ((n == 13) || (n == 10) || (n == 32)) {
        break label110;
      }
      if (n > 127) {
        throw new IllegalArgumentException("Invalid character found at position " + j + " for " + paramString);
      }
      int k = i + 1;
      paramArrayOfByte[i] = ((byte)n);
      i = k;
    }
    label110:
    for (;;)
    {
      j += 1;
      break;
      return i;
    }
  }
  
  public static String j(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[paramArrayOfByte.length];
    int k = paramArrayOfByte.length;
    int j = 0;
    int i = 0;
    while (j < k)
    {
      arrayOfChar[i] = ((char)paramArrayOfByte[j]);
      j += 1;
      i += 1;
    }
    return new String(arrayOfChar);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/CodecUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */