package io.intercom.android.sdk.utilities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.intercom.composer.b;
import com.intercom.input.gallery.c;
import io.intercom.android.sdk.Intercom;
import io.intercom.android.sdk.activities.IntercomHelpCenterActivity;
import javax.annotation.Nullable;

public class ActivityUtils
{
  private static final String COMPOSER_INPUT_PACKAGE_NAME = c.class.getPackage().getName();
  private static final String COMPOSER_PACKAGE_NAME;
  private static final String[] INTERCOM_PACKAGES = { PACKAGE_NAME, COMPOSER_PACKAGE_NAME, COMPOSER_INPUT_PACKAGE_NAME };
  private static final String PACKAGE_NAME = Intercom.class.getPackage().getName();
  
  static
  {
    COMPOSER_PACKAGE_NAME = b.class.getPackage().getName();
  }
  
  public static boolean isFullScreenHelpCenter(@Nullable Activity paramActivity)
  {
    boolean bool = true;
    if ((paramActivity == null) || (paramActivity.getIntent() == null)) {
      bool = false;
    }
    for (;;)
    {
      return bool;
      Bundle localBundle = paramActivity.getIntent().getExtras();
      if (localBundle != null) {}
      for (int i = localBundle.getInt("parcel_display_mode", 1); (!(paramActivity instanceof IntercomHelpCenterActivity)) || (i != 1); i = 1) {
        return false;
      }
    }
  }
  
  public static boolean isHostActivity(@Nullable Activity paramActivity)
  {
    return (paramActivity != null) && (isInHostAppPackage(paramActivity.getClass().getName()));
  }
  
  private static boolean isInHostAppPackage(String paramString)
  {
    String[] arrayOfString = INTERCOM_PACKAGES;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      if (paramString.startsWith(arrayOfString[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/ActivityUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */