package io.intercom.android.sdk.utilities;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.ContextThemeWrapper;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import java.util.Locale;

public class ContextLocaliser
{
  private static final String FAKE_FORMAL_COUNTRY = "FO";
  private static final String FORMAL_TAG = "form";
  private static final String SIMPLIFIED_CHINESE_COUNTRY = "CN";
  private static final String SIMPLIFIED_CHINESE_ISO_15924 = "hans";
  private static final String TRADITIONAL_CHINESE_COUNTRY = "TW";
  private static final String TRADITIONAL_CHINESE_ISO_15924 = "hant";
  private static final Twig twig = ;
  private final Provider<AppConfig> appConfigProvider;
  
  public ContextLocaliser(Provider<AppConfig> paramProvider)
  {
    this.appConfigProvider = paramProvider;
  }
  
  static Locale convertToLocale(String paramString)
  {
    if (paramString.length() <= 2) {
      return new Locale(paramString);
    }
    String str2 = paramString.substring(0, 2);
    String str1 = paramString.substring(3);
    if ("hans".equalsIgnoreCase(str1)) {
      paramString = "CN";
    }
    for (;;)
    {
      return new Locale(str2, paramString);
      if ("hant".equalsIgnoreCase(str1))
      {
        paramString = "TW";
      }
      else
      {
        paramString = str1;
        if ("form".equalsIgnoreCase(str1)) {
          paramString = "FO";
        }
      }
    }
  }
  
  public void applyOverrideConfiguration(ContextThemeWrapper paramContextThemeWrapper, Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      paramContext = new Configuration(paramContext.getResources().getConfiguration());
      paramContext.setLocale(convertToLocale(((AppConfig)this.appConfigProvider.get()).getLocale()));
      paramContextThemeWrapper.applyOverrideConfiguration(paramContext);
    }
  }
  
  public Context createLocalisedContext(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      Configuration localConfiguration = new Configuration(paramContext.getResources().getConfiguration());
      localConfiguration.setLocale(convertToLocale(((AppConfig)this.appConfigProvider.get()).getLocale()));
      return paramContext.createConfigurationContext(localConfiguration);
    }
    twig.d("Localisation outside the Messenger is unsupported on Android 4.0 and 4.1, text may be localised incorrectly", new Object[0]);
    return paramContext;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/ContextLocaliser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */