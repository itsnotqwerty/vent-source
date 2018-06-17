package com.google.android.gms.internal;

import java.util.Arrays;

final class nf
{
  final byte[] aZZ;
  final int tag;
  
  nf(int paramInt, byte[] paramArrayOfByte)
  {
    this.tag = paramInt;
    this.aZZ = paramArrayOfByte;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof nf)) {
        return false;
      }
      paramObject = (nf)paramObject;
    } while ((this.tag == ((nf)paramObject).tag) && (Arrays.equals(this.aZZ, ((nf)paramObject).aZZ)));
    return false;
  }
  
  public final int hashCode()
  {
    return (this.tag + 527) * 31 + Arrays.hashCode(this.aZZ);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */