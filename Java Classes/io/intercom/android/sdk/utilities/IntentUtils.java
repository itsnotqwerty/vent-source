package io.intercom.android.sdk.utilities;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class IntentUtils
{
  private static final Twig twig = ;
  
  public static void safelyOpenIntent(Context paramContext, Intent paramIntent)
  {
    if (paramContext.getPackageManager().resolveActivity(paramIntent, 65536) == null)
    {
      twig.i("This device has no application that can handle the Uri passed in", new Object[0]);
      return;
    }
    paramContext.startActivity(paramIntent);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/IntentUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */