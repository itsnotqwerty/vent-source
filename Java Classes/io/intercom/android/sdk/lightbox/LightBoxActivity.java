package io.intercom.android.sdk.lightbox;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.a;
import android.support.v7.app.d;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.transforms.RoundedCornersTransform;
import io.intercom.android.sdk.utilities.ImageUtils;

public class LightBoxActivity
  extends d
  implements LightBoxListener
{
  private static final int ANIMATION_TIME_MS = 300;
  private static final String CACHE_HEIGHT = "cache_height";
  private static final String CACHE_WIDTH = "cache_width";
  private static final String EXTRA_ACTIVITY_FULLSCREEN = "extra_activity_fullscreen";
  private static final String EXTRA_IMAGE_URL = "extra_image_url";
  public static final String TRANSITION_KEY = "lightbox_image";
  private String imageUrl = "";
  ViewGroup rootView;
  
  private void fadeIn()
  {
    int i = a.c(this, R.color.intercom_full_transparent_full_black);
    int j = a.c(this, R.color.intercom_transparent_black_lightbox);
    ValueAnimator localValueAnimator = ValueAnimator.ofObject(new ArgbEvaluator(), new Object[] { Integer.valueOf(i), Integer.valueOf(j) });
    localValueAnimator.setDuration(300L);
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        LightBoxActivity.this.rootView.setBackgroundColor(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
      }
    });
    localValueAnimator.start();
  }
  
  private void fadeOut()
  {
    int i = a.c(this, R.color.intercom_transparent_black_lightbox);
    int j = a.c(this, R.color.intercom_full_transparent_full_black);
    ValueAnimator localValueAnimator = ValueAnimator.ofObject(new ArgbEvaluator(), new Object[] { Integer.valueOf(i), Integer.valueOf(j) });
    localValueAnimator.setDuration(300L);
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        LightBoxActivity.this.rootView.setBackgroundColor(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
      }
    });
    localValueAnimator.start();
  }
  
  public static Intent imageIntent(Context paramContext, String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    return new Intent(paramContext, LightBoxActivity.class).putExtra("extra_image_url", paramString).putExtra("cache_width", paramInt1).putExtra("cache_height", paramInt2).putExtra("extra_activity_fullscreen", paramBoolean);
  }
  
  public void closeLightBox()
  {
    fadeOut();
    supportFinishAfterTransition();
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    closeLightBox();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    Object localObject = getIntent().getExtras();
    int j;
    int i;
    if (localObject != null)
    {
      this.imageUrl = ((Bundle)localObject).getString("extra_image_url", "");
      j = ((Bundle)localObject).getInt("cache_width");
      i = ((Bundle)localObject).getInt("cache_height");
      if (((Bundle)localObject).getBoolean("extra_activity_fullscreen", false))
      {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
      }
    }
    for (;;)
    {
      super.onCreate(paramBundle);
      setContentView(R.layout.intercom_activity_lightbox);
      this.rootView = ((ViewGroup)findViewById(R.id.root_view));
      localObject = (LightBoxImageView)findViewById(R.id.full_image);
      if (Build.VERSION.SDK_INT >= 21) {
        ((LightBoxImageView)localObject).setTransitionName("lightbox_image");
      }
      paramBundle = new g().a(new RoundedCornersTransform(getResources().getDimensionPixelSize(R.dimen.intercom_image_rounded_corners)), true).fo(R.drawable.intercom_error).b(ImageUtils.getDiskCacheStrategy(this.imageUrl));
      if (io.intercom.a.a.a.i.i.aR(j, i)) {
        paramBundle = paramBundle.aO(j, i);
      }
      for (;;)
      {
        io.intercom.a.a.a.c.b(this).eT(this.imageUrl).a(io.intercom.a.a.a.c.d.c.c.Ji()).a(paramBundle).c((ImageView)localObject);
        ((LightBoxImageView)localObject).setLightBoxListener(this);
        fadeIn();
        return;
      }
      i = 0;
      j = 0;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/lightbox/LightBoxActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */