package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Keep;
import com.google.android.gms.c.e;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hz;
import com.google.android.gms.internal.ix;
import com.google.android.gms.internal.ja;
import com.google.android.gms.internal.jn;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.jq;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.le;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Map;

@Keep
public final class FirebaseAnalytics
{
  private final hz zzjev;
  
  public FirebaseAnalytics(hz paramhz)
  {
    ae.E(paramhz);
    this.zzjev = paramhz;
  }
  
  @Keep
  public static FirebaseAnalytics getInstance(Context paramContext)
  {
    return hz.ai(paramContext).aUU;
  }
  
  public final e<String> getAppInstanceId()
  {
    return this.zzjev.qC().getAppInstanceId();
  }
  
  public final void logEvent(String paramString, Bundle paramBundle)
  {
    this.zzjev.aUT.logEvent(paramString, paramBundle);
  }
  
  public final void resetAnalyticsData()
  {
    ja localja = this.zzjev.qC();
    localja.qO().i(new jn(localja));
  }
  
  public final void setAnalyticsCollectionEnabled(boolean paramBoolean)
  {
    this.zzjev.aUT.setMeasurementEnabled(paramBoolean);
  }
  
  @Keep
  public final void setCurrentScreen(Activity paramActivity, String paramString1, String paramString2)
  {
    jq localjq = this.zzjev.qG();
    localjq.qO();
    if (!hu.oM())
    {
      localjq.qP().aTd.bq("setCurrentScreen must be called from the main thread");
      return;
    }
    if (localjq.aWq)
    {
      localjq.qP().aTd.bq("Cannot call setCurrentScreen from onScreenChangeCallback");
      return;
    }
    if (localjq.aWl == null)
    {
      localjq.qP().aTd.bq("setCurrentScreen cannot be called while no activity active");
      return;
    }
    if (localjq.aWo.get(paramActivity) == null)
    {
      localjq.qP().aTd.bq("setCurrentScreen must be called with an activity in the activity lifecycle");
      return;
    }
    String str = paramString2;
    if (paramString2 == null) {
      str = jq.cv(paramActivity.getClass().getCanonicalName());
    }
    boolean bool1 = localjq.aWl.aWi.equals(str);
    boolean bool2 = le.H(localjq.aWl.aWh, paramString1);
    if ((bool1) && (bool2))
    {
      localjq.qP().aTf.bq("setCurrentScreen cannot be called with the same class and name");
      return;
    }
    if ((paramString1 != null) && ((paramString1.length() <= 0) || (paramString1.length() > 100)))
    {
      localjq.qP().aTd.j("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(paramString1.length()));
      return;
    }
    if ((str != null) && ((str.length() <= 0) || (str.length() > 100)))
    {
      localjq.qP().aTd.j("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
      return;
    }
    hd localhd = localjq.qP().aTi;
    if (paramString1 == null) {}
    for (paramString2 = "null";; paramString2 = paramString1)
    {
      localhd.e("Setting current screen to name, class", paramString2, str);
      paramString1 = new jt(paramString1, str, localjq.qL().sq());
      localjq.aWo.put(paramActivity, paramString1);
      localjq.a(paramActivity, paramString1, true);
      return;
    }
  }
  
  public final void setMinimumSessionDuration(long paramLong)
  {
    this.zzjev.aUT.setMinimumSessionDuration(paramLong);
  }
  
  public final void setSessionTimeoutDuration(long paramLong)
  {
    this.zzjev.aUT.setSessionTimeoutDuration(paramLong);
  }
  
  public final void setUserId(String paramString)
  {
    this.zzjev.aUT.setUserPropertyInternal("app", "_id", paramString);
  }
  
  public final void setUserProperty(String paramString1, String paramString2)
  {
    this.zzjev.aUT.setUserProperty(paramString1, paramString2);
  }
  
  public static class a {}
  
  public static class b {}
  
  public static class c {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/analytics/FirebaseAnalytics.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */