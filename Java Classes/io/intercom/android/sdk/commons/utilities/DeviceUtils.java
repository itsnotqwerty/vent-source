package io.intercom.android.sdk.commons.utilities;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.UUID;

public class DeviceUtils
{
  public static String generateDeviceId(Context paramContext)
  {
    return generateDeviceId(getTelephonyDeviceId(paramContext), getWifiMacAddress(paramContext), getAndroidId(paramContext));
  }
  
  public static String generateDeviceId(String paramString1, String paramString2, String paramString3)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      String str;
      if ((!TextUtils.isEmpty(paramString2)) && (!TextUtils.isEmpty(paramString3))) {
        str = new UUID(paramString3.hashCode(), paramString2.hashCode()).toString();
      }
      for (;;)
      {
        paramString1 = str;
        if (TextUtils.isEmpty(str)) {
          paramString1 = UUID.randomUUID().toString();
        }
        return paramString1;
        str = paramString3;
        if (TextUtils.isEmpty(paramString3)) {
          if (!TextUtils.isEmpty(paramString2)) {
            str = paramString2;
          } else {
            str = paramString1;
          }
        }
      }
    }
    return paramString1;
  }
  
  static String getAndroidId(Context paramContext)
  {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    if (str != null)
    {
      paramContext = str;
      if (!str.equalsIgnoreCase("9774d56d682e549c")) {}
    }
    else
    {
      paramContext = "";
    }
    return paramContext;
  }
  
  public static String getAppName(Context paramContext)
  {
    String str = paramContext.getPackageName();
    paramContext = str;
    if (str == null) {
      paramContext = "";
    }
    return paramContext;
  }
  
  public static String getAppVersion(Context paramContext)
  {
    String str = "";
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      paramContext = str;
      if (localPackageInfo.versionName != null) {
        paramContext = localPackageInfo.versionName;
      }
      return paramContext;
    }
    catch (RuntimeException paramContext)
    {
      return "";
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return "";
  }
  
  static String getTelephonyDeviceId(Context paramContext)
  {
    if (hasPermission(paramContext, "android.permission.READ_PHONE_STATE")) {}
    for (;;)
    {
      try
      {
        paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
        Object localObject = paramContext;
        if (paramContext == null) {
          localObject = "";
        }
        return (String)localObject;
      }
      catch (Exception paramContext) {}
      paramContext = null;
    }
  }
  
  static String getWifiMacAddress(Context paramContext)
  {
    if (hasPermission(paramContext, "android.permission.ACCESS_WIFI_STATE"))
    {
      paramContext = (WifiManager)paramContext.getSystemService("wifi");
      if (paramContext != null)
      {
        paramContext = paramContext.getConnectionInfo();
        if (paramContext == null) {}
      }
    }
    for (paramContext = paramContext.getMacAddress();; paramContext = null)
    {
      Object localObject = paramContext;
      if (paramContext == null) {
        localObject = "";
      }
      return (String)localObject;
    }
  }
  
  public static boolean hasPermission(Context paramContext, String paramString)
  {
    return paramContext.checkCallingOrSelfPermission(paramString) == 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/commons/utilities/DeviceUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */