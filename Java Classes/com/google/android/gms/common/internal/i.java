package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Intent;
import java.util.Arrays;

public final class i
{
  private final String aHq;
  final String aHr;
  final ComponentName aHs;
  final int aHt;
  
  public i(String paramString1, String paramString2, int paramInt)
  {
    this.aHq = ae.bf(paramString1);
    this.aHr = ae.bf(paramString2);
    this.aHs = null;
    this.aHt = paramInt;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof i)) {
        return false;
      }
      paramObject = (i)paramObject;
    } while ((ac.equal(this.aHq, ((i)paramObject).aHq)) && (ac.equal(this.aHr, ((i)paramObject).aHr)) && (ac.equal(this.aHs, ((i)paramObject).aHs)) && (this.aHt == ((i)paramObject).aHt));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.aHq, this.aHr, this.aHs, Integer.valueOf(this.aHt) });
  }
  
  public final Intent oa()
  {
    if (this.aHq != null) {
      return new Intent(this.aHq).setPackage(this.aHr);
    }
    return new Intent().setComponent(this.aHs);
  }
  
  public final String toString()
  {
    if (this.aHq == null) {
      return this.aHs.flattenToString();
    }
    return this.aHq;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */