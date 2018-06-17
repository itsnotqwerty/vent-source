package com.google.android.gms.internal;

import com.google.android.gms.common.api.internal.bc;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.r;

final class ff
  extends r
{
  private final bc<Object> aFY;
  
  public final void a(LocationAvailability paramLocationAvailability)
  {
    this.aFY.a(new fh(paramLocationAvailability));
  }
  
  public final void a(LocationResult paramLocationResult)
  {
    this.aFY.a(new fg(paramLocationResult));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */