package com.google.android.gms.common;

import java.lang.ref.WeakReference;

abstract class q
  extends o
{
  private static final WeakReference<byte[]> aJS = new WeakReference(null);
  private WeakReference<byte[]> aJR = aJS;
  
  q(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  final byte[] getBytes()
  {
    try
    {
      byte[] arrayOfByte2 = (byte[])this.aJR.get();
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 == null)
      {
        arrayOfByte1 = oO();
        this.aJR = new WeakReference(arrayOfByte1);
      }
      return arrayOfByte1;
    }
    finally {}
  }
  
  protected abstract byte[] oO();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */