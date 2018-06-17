package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.a;
import com.google.android.gms.location.c;
import com.google.android.gms.location.d;

public final class er
  implements a
{
  public final Location a(f paramf)
  {
    paramf = d.b(paramf);
    try
    {
      paramf = paramf.aQh;
      paramf.aPL.oq();
      paramf = ((fc)paramf.aPL.or()).bO(paramf.mContext.getPackageName());
      return paramf;
    }
    catch (Exception paramf) {}
    return null;
  }
  
  public final g<Status> a(f paramf, LocationRequest paramLocationRequest, c paramc)
  {
    ae.g(Looper.myLooper(), "Calling thread must be a prepared Looper thread.");
    return paramf.b(new es(paramf, paramLocationRequest, paramc));
  }
  
  public final g<Status> a(f paramf, c paramc)
  {
    return paramf.b(new et(paramf, paramc));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/er.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */