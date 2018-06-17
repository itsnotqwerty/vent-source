package io.intercom.android.sdk.identity;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.auto.value.AutoValue;

@AutoValue
public abstract class AppIdentity
{
  private static final String PREFS_API_KEY = "ApiKey";
  private static final String PREFS_APP_ID = "AppId";
  
  public static AppIdentity create(String paramString1, String paramString2)
  {
    return new AutoValue_AppIdentity(paramString1, paramString2);
  }
  
  public static AppIdentity loadFromDevice(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("INTERCOM_SDK_PREFS", 0);
    return create(paramContext.getString("ApiKey", ""), paramContext.getString("AppId", ""));
  }
  
  public abstract String apiKey();
  
  public abstract String appId();
  
  public void persist(Context paramContext)
  {
    paramContext.getSharedPreferences("INTERCOM_SDK_PREFS", 0).edit().putString("ApiKey", apiKey()).putString("AppId", appId()).apply();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/identity/AppIdentity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */