package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.common.api.internal.bc;
import com.google.android.gms.location.c;
import com.google.android.gms.location.u;

final class fj
  extends u
{
  private final bc<c> aFY;
  
  fj(bc<c> parambc)
  {
    this.aFY = parambc;
  }
  
  public final void onLocationChanged(Location paramLocation)
  {
    try
    {
      this.aFY.a(new fk(paramLocation));
      return;
    }
    finally
    {
      paramLocation = finally;
      throw paramLocation;
    }
  }
  
  public final void release()
  {
    try
    {
      this.aFY.aFQ = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */