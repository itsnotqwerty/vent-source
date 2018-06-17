package io.intercom.android.sdk.user;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.os.Build.VERSION;
import io.intercom.android.sdk.commons.utilities.DeviceUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class DeviceData
{
  private static final String PREFS_DEVICE_ID = "DeviceId";
  private static final String PREFS_PUSH_TOKEN = "push_token";
  
  public static void cacheDeviceToken(Context paramContext, String paramString)
  {
    getPreferences(paramContext).edit().putString("push_token", paramString).apply();
  }
  
  public static Map<String, Object> generateDeviceData(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("platform_version", Build.VERSION.RELEASE);
    localHashMap.put("platform", Build.MODEL);
    localHashMap.put("browser", "Intercom-Android-SDK");
    localHashMap.put("version", DeviceUtils.getAppVersion(paramContext));
    localHashMap.put("application", DeviceUtils.getAppName(paramContext));
    localHashMap.put("language", Locale.getDefault().getDisplayLanguage());
    localHashMap.put("device_id", getCachedOrNewId(paramContext));
    paramContext = getPreferences(paramContext).getString("push_token", "");
    if (!paramContext.isEmpty()) {
      localHashMap.put("device_token", paramContext);
    }
    return localHashMap;
  }
  
  private static String getCachedOrNewId(Context paramContext)
  {
    SharedPreferences localSharedPreferences = getPreferences(paramContext);
    String str2 = localSharedPreferences.getString("DeviceId", "");
    String str1 = str2;
    if (str2.isEmpty())
    {
      str1 = DeviceUtils.generateDeviceId(paramContext);
      localSharedPreferences.edit().putString("DeviceId", str1).apply();
    }
    return str1;
  }
  
  public static String getDeviceToken(Context paramContext)
  {
    return getPreferences(paramContext).getString("push_token", "");
  }
  
  private static SharedPreferences getPreferences(Context paramContext)
  {
    return paramContext.getSharedPreferences("INTERCOM_SDK_DATA", 0);
  }
  
  public static boolean hasCachedDeviceToken(Context paramContext, String paramString)
  {
    return paramString.equals(getDeviceToken(paramContext));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/user/DeviceData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */