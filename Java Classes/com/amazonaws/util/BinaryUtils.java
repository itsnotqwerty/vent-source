package com.amazonaws.util;

public class BinaryUtils
{
  public static byte[] as(String paramString)
  {
    byte[] arrayOfByte = new byte[(paramString.length() + 1) / 2];
    int i = 0;
    int j = 0;
    while (j < paramString.length())
    {
      String str = paramString.substring(j, j + 2);
      j += 2;
      arrayOfByte[i] = ((byte)Integer.parseInt(str, 16));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[] at(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return Base64.decode(paramString);
  }
  
  public static String h(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      String str2 = Integer.toHexString(paramArrayOfByte[i]);
      String str1;
      if (str2.length() == 1)
      {
        localStringBuilder.append("0");
        str1 = str2;
      }
      for (;;)
      {
        localStringBuilder.append(str1);
        i += 1;
        break;
        str1 = str2;
        if (str2.length() == 8) {
          str1 = str2.substring(6);
        }
      }
    }
    return StringUtils.aC(localStringBuilder.toString());
  }
  
  public static String i(byte[] paramArrayOfByte)
  {
    return Base64.g(paramArrayOfByte);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/BinaryUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */