package com.layer.sdk.internal.lsdke.lsdkc;

import java.util.UUID;

public class d
{
  private static final char[] a = "0123456789ABCDEF".toCharArray();
  
  public static String a(UUID paramUUID)
  {
    paramUUID = com.layer.b.e.d.d(paramUUID);
    char[] arrayOfChar = new char[paramUUID.length * 2];
    int i = 0;
    while (i < paramUUID.length)
    {
      int j = paramUUID[i] & 0xFF;
      arrayOfChar[(i * 2)] = a[(j >>> 4)];
      arrayOfChar[(i * 2 + 1)] = a[(j & 0xF)];
      i += 1;
    }
    return "X'" + new String(arrayOfChar) + "'";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkc/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */