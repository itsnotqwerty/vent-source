package com.google.android.gms.location;

import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.g;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.cg;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.ey;
import com.google.android.gms.internal.fl;
import com.google.android.gms.internal.fr;

public final class d
{
  private static final a.g<fl> aYT = new a.g();
  private static final a.b<fl, Object> aYV = new i();
  public static final com.google.android.gms.common.api.a<Object> aYZ = new com.google.android.gms.common.api.a("LocationServices.API", aYV, aYT);
  @Deprecated
  public static final a bdA = new er();
  @Deprecated
  public static final b bdB = new ey();
  @Deprecated
  public static final e bdC = new fr();
  
  public static fl b(f paramf)
  {
    boolean bool2 = true;
    if (paramf != null)
    {
      bool1 = true;
      ae.b(bool1, "GoogleApiClient parameter is required.");
      paramf = (fl)paramf.a(aYT);
      if (paramf == null) {
        break label44;
      }
    }
    label44:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      ae.a(bool1, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
      return paramf;
      bool1 = false;
      break;
    }
  }
  
  public static abstract class a<R extends com.google.android.gms.common.api.i>
    extends cg<R, fl>
  {
    public a(f paramf)
    {
      super(paramf);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */