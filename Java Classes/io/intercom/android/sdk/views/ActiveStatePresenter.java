package io.intercom.android.sdk.views;

import android.content.res.Resources;
import android.support.v4.content.a;
import android.util.DisplayMetrics;
import android.view.View;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.utilities.BackgroundUtils;

public class ActiveStatePresenter
{
  private static final String ENGLISH_LOCALE = "en";
  
  public void presentStateDot(boolean paramBoolean, View paramView, AppConfig paramAppConfig)
  {
    if (!"en".equals(paramAppConfig.getLocale()))
    {
      paramView.setBackgroundResource(0);
      return;
    }
    paramAppConfig = paramView.getContext();
    if (paramBoolean) {}
    for (int i = R.color.intercom_active_state;; i = R.color.intercom_away_state)
    {
      BackgroundUtils.setBackground(paramView, new ActiveStateDrawable(a.c(paramAppConfig, i), a.c(paramView.getContext(), R.color.intercom_white), 1.0F * paramView.getResources().getDisplayMetrics().density));
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/ActiveStatePresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */