package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.a.c;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.nx;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.up;

public class AdActivity
  extends Activity
{
  private up ayV;
  
  private final void lw()
  {
    if (this.ayV != null) {}
    try
    {
      this.ayV.lw();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not forward setContentViewSet to ad overlay:", localRemoteException);
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    try
    {
      this.ayV.onActivityResult(paramInt1, paramInt2, paramIntent);
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        af.d("Could not forward onActivityResult to ad overlay:", localException);
      }
    }
  }
  
  public void onBackPressed()
  {
    boolean bool2 = true;
    boolean bool1 = bool2;
    try
    {
      if (this.ayV != null) {
        bool1 = this.ayV.ub();
      }
      if (bool1) {
        super.onBackPressed();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        af.d("Could not forward onBackPressed to ad overlay:", localRemoteException);
        bool1 = bool2;
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    try
    {
      this.ayV.w(c.Q(paramConfiguration));
      return;
    }
    catch (RemoteException paramConfiguration)
    {
      af.d("Failed to wrap configuration.", paramConfiguration);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    boolean bool = false;
    super.onCreate(paramBundle);
    nx localnx = of.tk();
    Intent localIntent = getIntent();
    if (!localIntent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
      af.e("useClientJar flag not found in activity intent extras.");
    }
    for (;;)
    {
      this.ayV = ((up)nx.a(this, bool, new oe(localnx, this)));
      if (this.ayV != null) {
        break;
      }
      af.bt("Could not create ad overlay.");
      finish();
      return;
      bool = localIntent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
    }
    try
    {
      this.ayV.onCreate(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      af.d("Could not forward onCreate to ad overlay:", paramBundle);
      finish();
    }
  }
  
  protected void onDestroy()
  {
    try
    {
      if (this.ayV != null) {
        this.ayV.onDestroy();
      }
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        af.d("Could not forward onDestroy to ad overlay:", localRemoteException);
      }
    }
  }
  
  protected void onPause()
  {
    try
    {
      if (this.ayV != null) {
        this.ayV.onPause();
      }
      super.onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        af.d("Could not forward onPause to ad overlay:", localRemoteException);
        finish();
      }
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
    try
    {
      if (this.ayV != null) {
        this.ayV.onRestart();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not forward onRestart to ad overlay:", localRemoteException);
      finish();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    try
    {
      if (this.ayV != null) {
        this.ayV.onResume();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not forward onResume to ad overlay:", localRemoteException);
      finish();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      if (this.ayV != null) {
        this.ayV.onSaveInstanceState(paramBundle);
      }
      super.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        af.d("Could not forward onSaveInstanceState to ad overlay:", localRemoteException);
        finish();
      }
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    try
    {
      if (this.ayV != null) {
        this.ayV.onStart();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not forward onStart to ad overlay:", localRemoteException);
      finish();
    }
  }
  
  protected void onStop()
  {
    try
    {
      if (this.ayV != null) {
        this.ayV.onStop();
      }
      super.onStop();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        af.d("Could not forward onStop to ad overlay:", localRemoteException);
        finish();
      }
    }
  }
  
  public void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    lw();
  }
  
  public void setContentView(View paramView)
  {
    super.setContentView(paramView);
    lw();
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    lw();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/AdActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */