package io.intercom.android.sdk.utilities;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.widget.TextView;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class FontUtils
{
  private static final String ROBOTO_MEDIUM = "fonts/intercom_roboto_medium.ttf";
  private static final Twig twig = ;
  
  public static void setRobotoLightTypeface(TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramTextView.setTypeface(Typeface.create("sans-serif-light", 0));
      return;
    }
    paramTextView.setTypeface(Typeface.SANS_SERIF);
  }
  
  public static void setRobotoMediumTypeface(TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramTextView.setTypeface(Typeface.create("sans-serif-medium", 0));
      return;
    }
    try
    {
      paramTextView.setTypeface(Typeface.createFromAsset(paramTextView.getContext().getAssets(), "fonts/intercom_roboto_medium.ttf"));
      return;
    }
    catch (RuntimeException paramTextView)
    {
      twig.e("We could not load our custom font, using the default system font as a backup.", new Object[0]);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/FontUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */