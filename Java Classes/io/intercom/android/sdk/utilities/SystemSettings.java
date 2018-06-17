package io.intercom.android.sdk.utilities;

import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Settings.Global;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class SystemSettings
{
  private static final Twig twig = ;
  
  public static float getTransitionScale(Context paramContext)
  {
    float f = 1.0F;
    if (Build.VERSION.SDK_INT >= 17) {}
    try
    {
      f = Settings.Global.getFloat(paramContext.getContentResolver(), "transition_animation_scale");
      return f;
    }
    catch (Exception paramContext)
    {
      twig.internal("Couldn't get animation scale: " + paramContext.getMessage());
    }
    return 1.0F;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/SystemSettings.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */