package com.layer.sdk.internal.lsdkk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import java.util.UUID;

public class e
{
  private static final k.a a = k.a(e.class);
  private static String b = null;
  private static String c = null;
  
  public static String a()
  {
    return "0.23.26";
  }
  
  public static String a(Context paramContext)
  {
    if (c != null) {
      return c;
    }
    Context localContext = paramContext.getApplicationContext();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a(Build.BRAND, Build.MODEL));
    localStringBuilder.append(" ");
    localStringBuilder.append(a("Android", Build.VERSION.SDK_INT));
    localStringBuilder.append(" ");
    localStringBuilder.append(a("LayerSDK", a()));
    localStringBuilder.append(" ");
    String str1 = "UNKNOWN";
    str2 = "UNKNOWN";
    localObject = str2;
    paramContext = str1;
    if (localContext != null) {
      paramContext = str1;
    }
    try
    {
      localObject = localContext.getPackageManager().getPackageInfo(localContext.getPackageName(), 0);
      paramContext = str1;
      str1 = ((PackageInfo)localObject).packageName;
      paramContext = str1;
      localObject = ((PackageInfo)localObject).versionName;
      paramContext = str1;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        k.d(a, localException.getMessage(), localException);
        localObject = str2;
      }
    }
    localStringBuilder.append(a(paramContext, (String)localObject));
    paramContext = localStringBuilder.toString();
    c = paramContext;
    return paramContext;
  }
  
  private static String a(String paramString)
  {
    if (paramString == null) {
      return "UNKNOWN";
    }
    return paramString.replaceAll("\\s+", "_");
  }
  
  private static String a(String paramString1, String paramString2)
  {
    return a(paramString1) + "/" + b(paramString2);
  }
  
  public static String b(Context paramContext)
  {
    if (b != null) {
      return b;
    }
    Object localObject = paramContext.getApplicationContext();
    paramContext = new n((Context)localObject);
    String str = paramContext.d("device_id");
    b = str;
    if (str != null) {
      return b;
    }
    int i = 0;
    localObject = Settings.Secure.getString(((Context)localObject).getContentResolver(), "android_id");
    b = (String)localObject;
    if (localObject == null)
    {
      b = UUID.randomUUID().toString();
      i = 1;
    }
    if ((!paramContext.a("device_id", b)) && (i != 0))
    {
      k.e(a, "Couldn't persist Generated Device ID to SharedPreferences.");
      b = null;
    }
    return b;
  }
  
  private static String b(String paramString)
  {
    if (paramString == null) {
      return "UNKNOWN";
    }
    return paramString.replaceAll("\\s+", "_").replaceAll("[^0-9.]", "");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */