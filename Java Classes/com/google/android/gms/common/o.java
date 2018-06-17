package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.s;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

abstract class o
  extends s
{
  private int aJP;
  
  protected o(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length == 25) {}
    for (boolean bool = true;; bool = false)
    {
      ae.au(bool);
      this.aJP = Arrays.hashCode(paramArrayOfByte);
      return;
    }
  }
  
  protected static byte[] bk(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("ISO-8859-1");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof r))) {
      return false;
    }
    try
    {
      paramObject = (r)paramObject;
      if (((r)paramObject).of() != hashCode()) {
        return false;
      }
      paramObject = ((r)paramObject).oe();
      if (paramObject == null) {
        return false;
      }
      paramObject = (byte[])c.a((a)paramObject);
      boolean bool = Arrays.equals(getBytes(), (byte[])paramObject);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      Log.e("GoogleCertificates", "Failed to get Google certificates from remote", (Throwable)paramObject);
    }
    return false;
  }
  
  abstract byte[] getBytes();
  
  public int hashCode()
  {
    return this.aJP;
  }
  
  public final a oe()
  {
    return c.Q(getBytes());
  }
  
  public final int of()
  {
    return hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */