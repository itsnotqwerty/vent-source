package android.support.v7.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.v4.content.d;
import android.util.Log;
import java.util.Calendar;

final class p
{
  static p Ox;
  private final LocationManager Oy;
  private final a Oz = new a();
  private final Context mContext;
  
  p(Context paramContext, LocationManager paramLocationManager)
  {
    this.mContext = paramContext;
    this.Oy = paramLocationManager;
  }
  
  private Location B(String paramString)
  {
    try
    {
      if (this.Oy.isProviderEnabled(paramString))
      {
        paramString = this.Oy.getLastKnownLocation(paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      Log.d("TwilightManager", "Failed to get last known location", paramString);
    }
    return null;
  }
  
  final boolean eI()
  {
    a locala = this.Oz;
    if (this.Oz.OF > System.currentTimeMillis()) {}
    for (int i = 1; i != 0; i = 0) {
      return locala.OA;
    }
    Object localObject1 = null;
    Object localObject2 = null;
    if (d.c(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
      localObject1 = B("network");
    }
    if (d.c(this.mContext, "android.permission.ACCESS_FINE_LOCATION") == 0) {
      localObject2 = B("gps");
    }
    long l1;
    o localo;
    long l2;
    if ((localObject2 != null) && (localObject1 != null)) {
      if (((Location)localObject2).getTime() > ((Location)localObject1).getTime())
      {
        localObject1 = localObject2;
        if (localObject1 == null) {
          break label382;
        }
        localObject2 = this.Oz;
        l1 = System.currentTimeMillis();
        if (o.Ou == null) {
          o.Ou = new o();
        }
        localo = o.Ou;
        localo.a(l1 - 86400000L, ((Location)localObject1).getLatitude(), ((Location)localObject1).getLongitude());
        l2 = localo.Ov;
        localo.a(l1, ((Location)localObject1).getLatitude(), ((Location)localObject1).getLongitude());
        if (localo.state != 1) {
          break label332;
        }
      }
    }
    long l3;
    long l4;
    long l5;
    label332:
    for (boolean bool = true;; bool = false)
    {
      l3 = localo.Ow;
      l4 = localo.Ov;
      localo.a(86400000L + l1, ((Location)localObject1).getLatitude(), ((Location)localObject1).getLongitude());
      l5 = localo.Ow;
      if ((l3 != -1L) && (l4 != -1L)) {
        break label338;
      }
      l1 = 43200000L + l1;
      ((a)localObject2).OA = bool;
      ((a)localObject2).OB = l2;
      ((a)localObject2).OC = l3;
      ((a)localObject2).OD = l4;
      ((a)localObject2).OE = l5;
      ((a)localObject2).OF = l1;
      return locala.OA;
      break;
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        break;
      }
      break;
    }
    label338:
    if (l1 > l4) {
      l1 = 0L + l5;
    }
    for (;;)
    {
      l1 += 60000L;
      break;
      if (l1 > l3) {
        l1 = 0L + l4;
      } else {
        l1 = 0L + l3;
      }
    }
    label382:
    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
    i = Calendar.getInstance().get(11);
    return (i < 6) || (i >= 22);
  }
  
  private static final class a
  {
    boolean OA;
    long OB;
    long OC;
    long OD;
    long OE;
    long OF;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */