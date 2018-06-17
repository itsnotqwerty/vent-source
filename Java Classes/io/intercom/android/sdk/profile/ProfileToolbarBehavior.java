package io.intercom.android.sdk.profile;

import android.content.Context;
import android.content.res.Resources;
import android.support.design.widget.AppBarLayout.b;
import android.view.View;
import io.intercom.android.sdk.R.dimen;

abstract class ProfileToolbarBehavior
  implements AppBarLayout.b
{
  final float toolbarHeight;
  
  public ProfileToolbarBehavior(Context paramContext)
  {
    this.toolbarHeight = paramContext.getResources().getDimension(R.dimen.intercom_toolbar_height);
  }
  
  protected float getScrollPercentage(View paramView)
  {
    float f1 = paramView.getHeight();
    float f2 = this.toolbarHeight;
    return (paramView.getBottom() - this.toolbarHeight) / (f1 - f2) * 100.0F;
  }
  
  protected void setAlphaAsPercentageOfScroll(View paramView1, View paramView2, float paramFloat, boolean paramBoolean)
  {
    float f2 = getScrollPercentage(paramView2);
    float f1 = f2;
    if (paramBoolean) {
      f1 = 100.0F - f2;
    }
    paramView1.setAlpha(f1 * (paramFloat / 100.0F));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/profile/ProfileToolbarBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */