package com.google.android.gms.location;

import android.location.Location;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;

@Deprecated
public abstract interface a
{
  public abstract Location a(f paramf);
  
  public abstract g<Status> a(f paramf, LocationRequest paramLocationRequest, c paramc);
  
  public abstract g<Status> a(f paramf, c paramc);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */