package com.layer.sdk.internal.lsdkk;

import android.util.Base64;

public class c
{
  private static final k.a a = k.a(c.class);
  private static String b = "UTF-8";
  private static int c = 3;
  
  public static String a(byte[] paramArrayOfByte)
  {
    return Base64.encodeToString(paramArrayOfByte, c);
  }
  
  public static byte[] a(String paramString)
  {
    return Base64.decode(paramString, c);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */