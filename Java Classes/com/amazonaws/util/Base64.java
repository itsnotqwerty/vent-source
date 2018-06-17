package com.amazonaws.util;

public enum Base64
{
  private static final Base64Codec auI = new Base64Codec();
  
  public static byte[] decode(String paramString)
  {
    int k = 2;
    if (paramString == null) {
      return null;
    }
    if (paramString.length() == 0) {
      return new byte[0];
    }
    byte[] arrayOfByte = new byte[paramString.length()];
    int m = CodecUtils.b(paramString, arrayOfByte);
    if (m % 4 != 0) {
      throw new IllegalArgumentException("Input is expected to be encoded in multiple of 4 bytes but found: " + m);
    }
    int i = m - 1;
    int j = 0;
    while ((j < 2) && (i >= 0) && (arrayOfByte[i] == 61))
    {
      i -= 1;
      j += 1;
    }
    i = k;
    switch (j)
    {
    }
    for (i = 3;; i = 1)
    {
      paramString = new byte[m / 4 * 3 - (3 - i)];
      k = 0;
      j = 0;
      while (k < paramString.length - i % 3)
      {
        Base64Codec.b(arrayOfByte, j, paramString, k);
        k += 3;
        j += 4;
      }
    }
    if (i < 3) {
      Base64Codec.a(i, arrayOfByte, j, paramString, k);
    }
    return paramString;
  }
  
  public static String g(byte... paramVarArgs)
  {
    if (paramVarArgs == null) {
      return null;
    }
    if (paramVarArgs.length == 0) {
      return "";
    }
    Base64Codec localBase64Codec = auI;
    int i = paramVarArgs.length / 3;
    int k = paramVarArgs.length % 3;
    if (k == 0)
    {
      arrayOfByte1 = new byte[i * 4];
      j = 0;
      i = 0;
      while (i < paramVarArgs.length)
      {
        localBase64Codec.a(paramVarArgs, i, arrayOfByte1, j);
        j += 4;
        i += 3;
      }
      paramVarArgs = arrayOfByte1;
      return CodecUtils.j(paramVarArgs);
    }
    byte[] arrayOfByte1 = new byte[(i + 1) * 4];
    i = 0;
    int j = 0;
    while (j < paramVarArgs.length - k)
    {
      localBase64Codec.a(paramVarArgs, j, arrayOfByte1, i);
      j += 3;
      i += 4;
    }
    switch (k)
    {
    }
    for (;;)
    {
      paramVarArgs = arrayOfByte1;
      break;
      k = i + 1;
      byte[] arrayOfByte2 = localBase64Codec.auK;
      j = paramVarArgs[j];
      arrayOfByte1[i] = arrayOfByte2[(j >>> 2 & 0x3F)];
      i = k + 1;
      arrayOfByte1[k] = localBase64Codec.auK[((j & 0x3) << 4)];
      arrayOfByte1[i] = 61;
      arrayOfByte1[(i + 1)] = 61;
      continue;
      k = i + 1;
      arrayOfByte2 = localBase64Codec.auK;
      int m = paramVarArgs[j];
      arrayOfByte1[i] = arrayOfByte2[(m >>> 2 & 0x3F)];
      i = k + 1;
      arrayOfByte2 = localBase64Codec.auK;
      j = paramVarArgs[(j + 1)];
      arrayOfByte1[k] = arrayOfByte2[((m & 0x3) << 4 | j >>> 4 & 0xF)];
      arrayOfByte1[i] = localBase64Codec.auK[((j & 0xF) << 2)];
      arrayOfByte1[(i + 1)] = 61;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/Base64.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */