package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.a;
import com.google.android.gms.common.api.internal.ah;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.bc;
import com.google.android.gms.common.m;

public class GoogleApiActivity
  extends Activity
  implements DialogInterface.OnCancelListener
{
  private int aCG = 0;
  
  public static PendingIntent a(Context paramContext, PendingIntent paramPendingIntent, int paramInt)
  {
    return PendingIntent.getActivity(paramContext, 0, a(paramContext, paramPendingIntent, paramInt, true), 134217728);
  }
  
  public static Intent a(Context paramContext, PendingIntent paramPendingIntent, int paramInt, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, GoogleApiActivity.class);
    paramContext.putExtra("pending_intent", paramPendingIntent);
    paramContext.putExtra("failing_client_id", paramInt);
    paramContext.putExtra("notify_manager", paramBoolean);
    return paramContext;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1)
    {
      boolean bool = getIntent().getBooleanExtra("notify_manager", true);
      this.aCG = 0;
      setResult(paramInt2, paramIntent);
      if (bool)
      {
        paramIntent = ah.y(this);
        switch (paramInt2)
        {
        }
      }
    }
    for (;;)
    {
      finish();
      return;
      paramIntent.a(new a(13, null), getIntent().getIntExtra("failing_client_id", -1));
      continue;
      paramIntent.nl();
      continue;
      if (paramInt1 == 2)
      {
        this.aCG = 0;
        setResult(paramInt2, paramIntent);
      }
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.aCG = 0;
    setResult(0);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      this.aCG = paramBundle.getInt("resolution");
    }
    if (this.aCG != 1)
    {
      localObject = getIntent().getExtras();
      if (localObject == null)
      {
        Log.e("GoogleApiActivity", "Activity started without extras");
        finish();
      }
    }
    else
    {
      return;
    }
    paramBundle = (PendingIntent)((Bundle)localObject).get("pending_intent");
    Object localObject = (Integer)((Bundle)localObject).get("error_code");
    if ((paramBundle == null) && (localObject == null))
    {
      Log.e("GoogleApiActivity", "Activity started without resolution");
      finish();
      return;
    }
    if (paramBundle != null) {
      try
      {
        startIntentSenderForResult(paramBundle.getIntentSender(), 1, null, 0, 0, 0);
        this.aCG = 1;
        return;
      }
      catch (IntentSender.SendIntentException paramBundle)
      {
        Log.e("GoogleApiActivity", "Failed to launch pendingIntent", paramBundle);
        finish();
        return;
      }
    }
    c.mR();
    int i = ((Integer)localObject).intValue();
    paramBundle = c.a(this, i, bc.a(this, m.b(this, i, "d")), this);
    if (paramBundle != null) {
      c.a(this, paramBundle, "GooglePlayServicesErrorDialog", this);
    }
    this.aCG = 1;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("resolution", this.aCG);
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/GoogleApiActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */