package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.util.e;
import java.util.Map;

@TargetApi(14)
final class jo
  implements Application.ActivityLifecycleCallbacks
{
  private jo(ja paramja) {}
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    for (;;)
    {
      try
      {
        this.aVW.qP().aTi.bq("onActivityCreated");
        Object localObject1 = paramActivity.getIntent();
        if (localObject1 == null) {
          continue;
        }
        Uri localUri = ((Intent)localObject1).getData();
        if ((localUri == null) || (!localUri.isHierarchical())) {
          continue;
        }
        if (paramBundle == null)
        {
          Bundle localBundle = this.aVW.qL().j(localUri);
          this.aVW.qL();
          if (!le.d((Intent)localObject1)) {
            break label331;
          }
          localObject1 = "gs";
          if (localBundle != null) {
            this.aVW.a((String)localObject1, "_cmp", localBundle);
          }
        }
        localObject1 = localUri.getQueryParameter("referrer");
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          return;
        }
        if (!((String)localObject1).contains("gclid")) {
          continue;
        }
        if ((((String)localObject1).contains("utm_campaign")) || (((String)localObject1).contains("utm_source")) || (((String)localObject1).contains("utm_medium")) || (((String)localObject1).contains("utm_term"))) {
          break label338;
        }
        if (!((String)localObject1).contains("utm_content")) {
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        this.aVW.qP().aTa.j("Throwable caught in onActivityCreated", localThrowable);
        localObject2 = this.aVW.qG();
        if (paramBundle == null) {
          continue;
        }
        paramBundle = paramBundle.getBundle("com.google.firebase.analytics.screen_service");
        if (paramBundle == null) {
          continue;
        }
        paramActivity = ((jq)localObject2).i(paramActivity);
        paramActivity.aWj = paramBundle.getLong("id");
        paramActivity.aWh = paramBundle.getString("name");
        paramActivity.aWi = paramBundle.getString("referrer_name");
        return;
        i = 0;
        continue;
        this.aVW.qP().aTh.j("Activity created with referrer", localObject2);
        if (TextUtils.isEmpty((CharSequence)localObject2)) {
          continue;
        }
        this.aVW.a("auto", "_ldl", localObject2);
        continue;
        return;
      }
      if (i == 0)
      {
        this.aVW.qP().aTh.bq("Activity created with data 'referrer' param without gclid and at least one utm field");
        return;
      }
      label331:
      Object localObject2 = "auto";
      continue;
      label338:
      int i = 1;
    }
  }
  
  public final void onActivityDestroyed(Activity paramActivity)
  {
    this.aVW.qG().aWo.remove(paramActivity);
  }
  
  public final void onActivityPaused(Activity paramActivity)
  {
    jq localjq = this.aVW.qG();
    paramActivity = localjq.i(paramActivity);
    localjq.aWm = localjq.aWl;
    localjq.aWn = localjq.qH().elapsedRealtime();
    localjq.aWl = null;
    localjq.qO().i(new js(localjq, paramActivity));
    paramActivity = this.aVW.qN();
    long l = paramActivity.qH().elapsedRealtime();
    paramActivity.qO().i(new kx(paramActivity, l));
  }
  
  public final void onActivityResumed(Activity paramActivity)
  {
    jq localjq = this.aVW.qG();
    localjq.a(paramActivity, localjq.i(paramActivity), false);
    paramActivity = localjq.qA();
    long l = paramActivity.qH().elapsedRealtime();
    paramActivity.qO().i(new fv(paramActivity, l));
    paramActivity = this.aVW.qN();
    l = paramActivity.qH().elapsedRealtime();
    paramActivity.qO().i(new kw(paramActivity, l));
  }
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    Object localObject = this.aVW.qG();
    if (paramBundle != null)
    {
      paramActivity = (jt)((jq)localObject).aWo.get(paramActivity);
      if (paramActivity != null)
      {
        localObject = new Bundle();
        ((Bundle)localObject).putLong("id", paramActivity.aWj);
        ((Bundle)localObject).putString("name", paramActivity.aWh);
        ((Bundle)localObject).putString("referrer_name", paramActivity.aWi);
        paramBundle.putBundle("com.google.firebase.analytics.screen_service", (Bundle)localObject);
      }
    }
  }
  
  public final void onActivityStarted(Activity paramActivity) {}
  
  public final void onActivityStopped(Activity paramActivity) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/jo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */