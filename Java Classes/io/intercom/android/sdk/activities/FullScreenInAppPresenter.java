package io.intercom.android.sdk.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;

class FullScreenInAppPresenter
{
  void closeWindow(final Activity paramActivity)
  {
    View localView = paramActivity.getWindow().getDecorView();
    localView.setAlpha(1.0F);
    localView.animate().alpha(0.0F).setDuration(200L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        paramActivity.finish();
        paramActivity.overridePendingTransition(0, 0);
      }
    }).start();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/FullScreenInAppPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */