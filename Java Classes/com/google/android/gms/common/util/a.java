package com.google.android.gms.common.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class a
{
  public static MessageDigest bi(String paramString)
  {
    int i = 0;
    while (i < 2) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
        if (localMessageDigest != null) {
          return localMessageDigest;
        }
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        i += 1;
      }
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/util/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */