package com.google.android.gms.internal;

import android.content.BroadcastReceiver.PendingResult;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.ae;

public final class hq
{
  private final hs aUj;
  
  public hq(hs paramhs)
  {
    ae.E(paramhs);
    this.aUj = paramhs;
  }
  
  public static boolean s(Context paramContext)
  {
    ae.E(paramContext);
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      if (localPackageManager == null) {
        return false;
      }
      paramContext = localPackageManager.getReceiverInfo(new ComponentName(paramContext, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0);
      if (paramContext != null)
      {
        boolean bool = paramContext.enabled;
        if (bool) {
          return true;
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    hz localhz = hz.ai(paramContext);
    hb localhb = localhz.qP();
    if (paramIntent == null) {
      localhb.aTd.bq("Receiver called with null intent");
    }
    BroadcastReceiver.PendingResult localPendingResult;
    String str;
    do
    {
      do
      {
        return;
        localObject = paramIntent.getAction();
        localhb.aTi.j("Local receiver got", localObject);
        if ("com.google.android.gms.measurement.UPLOAD".equals(localObject))
        {
          paramIntent = new Intent().setClassName(paramContext, "com.google.android.gms.measurement.AppMeasurementService");
          paramIntent.setAction("com.google.android.gms.measurement.UPLOAD");
          localhb.aTi.bq("Starting wakeful intent.");
          this.aUj.b(paramContext, paramIntent);
          return;
        }
      } while (!"com.android.vending.INSTALL_REFERRER".equals(localObject));
      localPendingResult = this.aUj.rQ();
      str = paramIntent.getStringExtra("referrer");
      if (str != null) {
        break;
      }
      localhb.aTi.bq("Install referrer extras are null");
    } while (localPendingResult == null);
    localPendingResult.finish();
    return;
    localhb.aTg.j("Install referrer extras are", str);
    Object localObject = str;
    if (!str.contains("?"))
    {
      localObject = String.valueOf(str);
      if (((String)localObject).length() == 0) {
        break label249;
      }
    }
    label249:
    for (localObject = "?".concat((String)localObject);; localObject = new String("?"))
    {
      localObject = Uri.parse((String)localObject);
      localObject = localhz.qL().j((Uri)localObject);
      if (localObject != null) {
        break label263;
      }
      localhb.aTi.bq("No campaign defined in install referrer broadcast");
      if (localPendingResult == null) {
        break;
      }
      localPendingResult.finish();
      return;
    }
    label263:
    long l = paramIntent.getLongExtra("referrer_timestamp_seconds", 0L) * 1000L;
    if (l == 0L) {
      localhb.aTd.bq("Install referrer is missing timestamp");
    }
    localhz.qO().i(new hr(localhz, l, (Bundle)localObject, paramContext, localhb, localPendingResult));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */