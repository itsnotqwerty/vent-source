package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.v4.g.a;
import com.google.android.gms.common.api.internal.au;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.ft;
import com.google.android.gms.internal.fu;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hz;
import com.google.android.gms.internal.ix;
import com.google.android.gms.internal.ja;
import com.google.android.gms.internal.jg;
import com.google.android.gms.internal.jh;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.jq;
import com.google.android.gms.internal.lb;
import com.google.android.gms.internal.le;
import com.google.firebase.analytics.FirebaseAnalytics.a;
import com.google.firebase.analytics.FirebaseAnalytics.b;
import com.google.firebase.analytics.FirebaseAnalytics.c;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;

@Deprecated
@Keep
public class AppMeasurement
{
  public static final String CRASH_ORIGIN = "crash";
  public static final String FCM_ORIGIN = "fcm";
  private final hz zzjev;
  
  public AppMeasurement(hz paramhz)
  {
    ae.E(paramhz);
    this.zzjev = paramhz;
  }
  
  @Deprecated
  @Keep
  public static AppMeasurement getInstance(Context paramContext)
  {
    return hz.ai(paramContext).aUT;
  }
  
  @Keep
  public void beginAdUnitExposure(String paramString)
  {
    fs localfs = this.zzjev.qA();
    if ((paramString == null) || (paramString.length() == 0))
    {
      localfs.qP().aTa.bq("Ad unit id must be a non-empty string");
      return;
    }
    long l = localfs.qH().elapsedRealtime();
    localfs.qO().i(new ft(localfs, paramString, l));
  }
  
  @Keep
  protected void clearConditionalUserProperty(String paramString1, String paramString2, Bundle paramBundle)
  {
    this.zzjev.qC().a(null, paramString1, paramString2, paramBundle);
  }
  
  @Keep
  protected void clearConditionalUserPropertyAs(String paramString1, String paramString2, String paramString3, Bundle paramBundle)
  {
    ja localja = this.zzjev.qC();
    ae.bf(paramString1);
    localja.qy();
    localja.a(paramString1, paramString2, paramString3, paramBundle);
  }
  
  @Keep
  public void endAdUnitExposure(String paramString)
  {
    fs localfs = this.zzjev.qA();
    if ((paramString == null) || (paramString.length() == 0))
    {
      localfs.qP().aTa.bq("Ad unit id must be a non-empty string");
      return;
    }
    long l = localfs.qH().elapsedRealtime();
    localfs.qO().i(new fu(localfs, paramString, l));
  }
  
  @Keep
  public long generateEventId()
  {
    return this.zzjev.qL().sq();
  }
  
  @Keep
  public String getAppInstanceId()
  {
    return (String)this.zzjev.qC().aVU.get();
  }
  
  @Keep
  public List<ConditionalUserProperty> getConditionalUserProperties(String paramString1, String paramString2)
  {
    return this.zzjev.qC().f(null, paramString1, paramString2);
  }
  
  @Keep
  protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(String paramString1, String paramString2, String paramString3)
  {
    ja localja = this.zzjev.qC();
    ae.bf(paramString1);
    localja.qy();
    return localja.f(paramString1, paramString2, paramString3);
  }
  
  @Keep
  public String getCurrentScreenClass()
  {
    jp localjp = this.zzjev.qG().sk();
    if (localjp != null) {
      return localjp.aWi;
    }
    return null;
  }
  
  @Keep
  public String getCurrentScreenName()
  {
    jp localjp = this.zzjev.qG().sk();
    if (localjp != null) {
      return localjp.aWh;
    }
    return null;
  }
  
  @Keep
  public String getGmpAppId()
  {
    try
    {
      String str = au.nN();
      return str;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      this.zzjev.qP().aTa.j("getGoogleAppId failed with exception", localIllegalStateException);
    }
    return null;
  }
  
  @Keep
  public int getMaxUserProperties(String paramString)
  {
    this.zzjev.qC();
    ae.bf(paramString);
    return 25;
  }
  
  @Keep
  protected Map<String, Object> getUserProperties(String paramString1, String paramString2, boolean paramBoolean)
  {
    return this.zzjev.qC().c(null, paramString1, paramString2, paramBoolean);
  }
  
  public Map<String, Object> getUserProperties(boolean paramBoolean)
  {
    Object localObject = this.zzjev.qC().ay(paramBoolean);
    a locala = new a(((List)localObject).size());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      lb locallb = (lb)((Iterator)localObject).next();
      locala.put(locallb.name, locallb.getValue());
    }
    return locala;
  }
  
  @Keep
  protected Map<String, Object> getUserPropertiesAs(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    ja localja = this.zzjev.qC();
    ae.bf(paramString1);
    localja.qy();
    return localja.c(paramString1, paramString2, paramString3, paramBoolean);
  }
  
  public void logEvent(String paramString, Bundle paramBundle)
  {
    if (paramBundle == null) {
      paramBundle = new Bundle();
    }
    for (;;)
    {
      ja localja = this.zzjev.qC();
      if ((localja.aVR == null) || (le.cD(paramString))) {}
      for (boolean bool = true;; bool = false)
      {
        localja.a("app", paramString, paramBundle, bool, true);
        return;
      }
    }
  }
  
  @Keep
  public void logEventInternal(String paramString1, String paramString2, Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    this.zzjev.qC().a(paramString1, paramString2, localBundle);
  }
  
  public void logEventInternalNoInterceptor(String paramString1, String paramString2, Bundle paramBundle, long paramLong)
  {
    if (paramBundle == null) {
      paramBundle = new Bundle();
    }
    for (;;)
    {
      this.zzjev.qC().a(paramString1, paramString2, paramBundle, paramLong);
      return;
    }
  }
  
  public void registerOnMeasurementEventListener(c paramc)
  {
    this.zzjev.qC().registerOnMeasurementEventListener(paramc);
  }
  
  @Keep
  public void registerOnScreenChangeCallback(f paramf)
  {
    jq localjq = this.zzjev.qG();
    if (paramf == null)
    {
      localjq.qP().aTd.bq("Attempting to register null OnScreenChangeCallback");
      return;
    }
    localjq.aWp.remove(paramf);
    localjq.aWp.add(paramf);
  }
  
  @Keep
  protected void setConditionalUserProperty(ConditionalUserProperty paramConditionalUserProperty)
  {
    this.zzjev.qC().setConditionalUserProperty(paramConditionalUserProperty);
  }
  
  @Keep
  protected void setConditionalUserPropertyAs(ConditionalUserProperty paramConditionalUserProperty)
  {
    this.zzjev.qC().setConditionalUserPropertyAs(paramConditionalUserProperty);
  }
  
  public void setEventInterceptor(b paramb)
  {
    this.zzjev.qC().setEventInterceptor(paramb);
  }
  
  @Deprecated
  public void setMeasurementEnabled(boolean paramBoolean)
  {
    this.zzjev.qC().setMeasurementEnabled(paramBoolean);
  }
  
  public void setMinimumSessionDuration(long paramLong)
  {
    ja localja = this.zzjev.qC();
    localja.qO().i(new jg(localja, paramLong));
  }
  
  public void setSessionTimeoutDuration(long paramLong)
  {
    ja localja = this.zzjev.qC();
    localja.qO().i(new jh(localja, paramLong));
  }
  
  public void setUserProperty(String paramString1, String paramString2)
  {
    int i = 6;
    int j = 0;
    le localle = this.zzjev.qL();
    if (!localle.F("user property", paramString1)) {}
    while (i != 0)
    {
      this.zzjev.qL();
      paramString2 = le.a(paramString1, 24, true);
      if (paramString1 != null) {
        j = paramString1.length();
      }
      this.zzjev.qL().a(i, "_ev", paramString2, j);
      return;
      if (!localle.a("user property", e.bdP, paramString1)) {
        i = 15;
      } else if (localle.a("user property", 24, paramString1)) {
        i = 0;
      }
    }
    setUserPropertyInternal("app", paramString1, paramString2);
  }
  
  public void setUserPropertyInternal(String paramString1, String paramString2, Object paramObject)
  {
    this.zzjev.qC().a(paramString1, paramString2, paramObject);
  }
  
  public void unregisterOnMeasurementEventListener(c paramc)
  {
    this.zzjev.qC().unregisterOnMeasurementEventListener(paramc);
  }
  
  @Keep
  public void unregisterOnScreenChangeCallback(f paramf)
  {
    this.zzjev.qG().aWp.remove(paramf);
  }
  
  public static class ConditionalUserProperty
  {
    @Keep
    public boolean mActive;
    @Keep
    public String mAppId;
    @Keep
    public long mCreationTimestamp;
    @Keep
    public String mExpiredEventName;
    @Keep
    public Bundle mExpiredEventParams;
    @Keep
    public String mName;
    @Keep
    public String mOrigin;
    @Keep
    public long mTimeToLive;
    @Keep
    public String mTimedOutEventName;
    @Keep
    public Bundle mTimedOutEventParams;
    @Keep
    public String mTriggerEventName;
    @Keep
    public long mTriggerTimeout;
    @Keep
    public String mTriggeredEventName;
    @Keep
    public Bundle mTriggeredEventParams;
    @Keep
    public long mTriggeredTimestamp;
    @Keep
    public Object mValue;
    
    public ConditionalUserProperty() {}
    
    public ConditionalUserProperty(ConditionalUserProperty paramConditionalUserProperty)
    {
      ae.E(paramConditionalUserProperty);
      this.mAppId = paramConditionalUserProperty.mAppId;
      this.mOrigin = paramConditionalUserProperty.mOrigin;
      this.mCreationTimestamp = paramConditionalUserProperty.mCreationTimestamp;
      this.mName = paramConditionalUserProperty.mName;
      if (paramConditionalUserProperty.mValue != null)
      {
        this.mValue = le.V(paramConditionalUserProperty.mValue);
        if (this.mValue == null) {
          this.mValue = paramConditionalUserProperty.mValue;
        }
      }
      this.mValue = paramConditionalUserProperty.mValue;
      this.mActive = paramConditionalUserProperty.mActive;
      this.mTriggerEventName = paramConditionalUserProperty.mTriggerEventName;
      this.mTriggerTimeout = paramConditionalUserProperty.mTriggerTimeout;
      this.mTimedOutEventName = paramConditionalUserProperty.mTimedOutEventName;
      if (paramConditionalUserProperty.mTimedOutEventParams != null) {
        this.mTimedOutEventParams = new Bundle(paramConditionalUserProperty.mTimedOutEventParams);
      }
      this.mTriggeredEventName = paramConditionalUserProperty.mTriggeredEventName;
      if (paramConditionalUserProperty.mTriggeredEventParams != null) {
        this.mTriggeredEventParams = new Bundle(paramConditionalUserProperty.mTriggeredEventParams);
      }
      this.mTriggeredTimestamp = paramConditionalUserProperty.mTriggeredTimestamp;
      this.mTimeToLive = paramConditionalUserProperty.mTimeToLive;
      this.mExpiredEventName = paramConditionalUserProperty.mExpiredEventName;
      if (paramConditionalUserProperty.mExpiredEventParams != null) {
        this.mExpiredEventParams = new Bundle(paramConditionalUserProperty.mExpiredEventParams);
      }
    }
  }
  
  public static final class a
    extends FirebaseAnalytics.a
  {
    public static final String[] bdL = { "app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", "ad_impression", "ad_click", "ad_reward", "screen_view", "ga_extra_parameter" };
    public static final String[] bdM = { "_cd", "_ae", "_ui", "_ug", "_in", "_au", "_cmp", "_err", "_f", "_v", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_e", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "_ar", "_vs", "_ep" };
    
    public static String cY(String paramString)
    {
      return le.a(paramString, bdL, bdM);
    }
  }
  
  public static abstract interface b {}
  
  public static abstract interface c {}
  
  public static final class d
    extends FirebaseAnalytics.b
  {
    public static final String[] bdN = { "firebase_conversion", "engagement_time_msec", "exposure_time", "ad_event_id", "ad_unit_id", "firebase_error", "firebase_error_value", "firebase_error_length", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "firebase_previous_screen", "firebase_previous_class", "firebase_previous_id", "message_device_time", "message_id", "message_name", "message_time", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count", "ga_event_id", "ga_extra_params_ct", "ga_group_name", "ga_list_length", "ga_index", "ga_event_name" };
    public static final String[] bdO = { "_c", "_et", "_xt", "_aeid", "_ai", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_ndt", "_nmid", "_nmn", "_nmt", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin", "_eid", "_epc", "_gn", "_ll", "_i", "_en" };
    
    public static String cY(String paramString)
    {
      return le.a(paramString, bdN, bdO);
    }
  }
  
  public static final class e
    extends FirebaseAnalytics.c
  {
    public static final String[] bdP = { "firebase_last_notification", "first_open_time", "first_visit_time", "last_deep_link_referrer", "user_id", "first_open_after_install", "lifetime_user_engagement" };
    public static final String[] bdQ = { "_ln", "_fot", "_fvt", "_ldl", "_id", "_fi", "_lte" };
    
    public static String cY(String paramString)
    {
      return le.a(paramString, bdP, bdQ);
    }
  }
  
  public static abstract interface f
  {
    public abstract boolean uf();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/measurement/AppMeasurement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */