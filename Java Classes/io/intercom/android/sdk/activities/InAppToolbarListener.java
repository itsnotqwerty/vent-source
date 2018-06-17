package io.intercom.android.sdk.activities;

import android.app.Activity;
import io.intercom.android.sdk.views.IntercomToolbar.Listener;

class InAppToolbarListener
  implements IntercomToolbar.Listener
{
  private final Activity activity;
  
  InAppToolbarListener(Activity paramActivity)
  {
    this.activity = paramActivity;
  }
  
  public void onCloseClicked()
  {
    this.activity.onBackPressed();
  }
  
  public void onInboxClicked() {}
  
  public void onToolbarClicked() {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/InAppToolbarListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */