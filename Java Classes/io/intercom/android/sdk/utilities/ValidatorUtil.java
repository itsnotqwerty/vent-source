package io.intercom.android.sdk.utilities;

import android.app.Application;
import io.intercom.android.sdk.api.ApiFactory;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class ValidatorUtil
{
  private static final String API_PREFIX = "android_sdk-";
  private static final Twig twig = ;
  
  static boolean apiKeyIsMissingPrefix(String paramString)
  {
    return (paramString == null) || (!paramString.startsWith("android_sdk-"));
  }
  
  static boolean apiKeyIsTooShort(String paramString)
  {
    return (paramString == null) || (paramString.length() < 52);
  }
  
  private static boolean appIdIsInvalid(String paramString)
  {
    return (paramString == null) || (ApiFactory.removeInvalidCharacters(paramString).isEmpty());
  }
  
  public static boolean isValidConstructorParams(Application paramApplication, String paramString1, String paramString2)
  {
    boolean bool = true;
    if (paramApplication == null)
    {
      twig.e("The Application passed in was null.We need an Application to enable Intercom in your app", new Object[0]);
      bool = false;
    }
    if (appIdIsInvalid(paramString2))
    {
      twig.e("The app ID (" + paramString2 + ") you provided is either null or empty. We need a valid app ID to enable Intercom in your app", new Object[0]);
      bool = false;
    }
    if (apiKeyIsTooShort(paramString1))
    {
      twig.e("The API key provided (" + paramString1 + ") is too short.\nPlease check that you are using an Intercom Android SDK key and have not passed the appId into the apiKey field\n", new Object[0]);
      bool = false;
    }
    if (apiKeyIsMissingPrefix(paramString1))
    {
      twig.e("The API key provided (" + paramString1 + ") does not begin with 'android_sdk-'.\nPlease check that you are using an Intercom Android SDK key and have not passed the appId into the apiKey field\n", new Object[0]);
      return false;
    }
    return bool;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/ValidatorUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */