package io.intercom.android.sdk.activities;

import android.content.Context;
import android.support.v7.app.d;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.utilities.ContextLocaliser;

public abstract class IntercomBaseActivity
  extends d
{
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    new ContextLocaliser(Injector.get().getAppConfigProvider()).applyOverrideConfiguration(this, paramContext);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/IntercomBaseActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */