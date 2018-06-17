package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.j;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class di
{
  private static final char[] aPt = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  
  public static ai a(cw paramcw, String paramString)
  {
    ae.E(paramcw);
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    new HashMap();
    try
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "?".concat(paramString);; paramString = new String("?"))
      {
        paramString = j.a(new URI(paramString), "UTF-8");
        paramcw = new ai();
        paramcw.aLt = ((String)paramString.get("utm_content"));
        paramcw.aLr = ((String)paramString.get("utm_medium"));
        paramcw.mName = ((String)paramString.get("utm_campaign"));
        paramcw.aLq = ((String)paramString.get("utm_source"));
        paramcw.aLs = ((String)paramString.get("utm_term"));
        paramcw.aBR = ((String)paramString.get("utm_id"));
        paramcw.aLu = ((String)paramString.get("anid"));
        paramcw.aLv = ((String)paramString.get("gclid"));
        paramcw.aLw = ((String)paramString.get("dclid"));
        paramcw.aLx = ((String)paramString.get("aclid"));
        return paramcw;
      }
      return null;
    }
    catch (URISyntaxException paramString)
    {
      paramcw.g("No valid campaign data found", paramString);
    }
  }
  
  public static void a(Map<String, String> paramMap1, String paramString, Map<String, String> paramMap2)
  {
    c(paramMap1, paramString, (String)paramMap2.get(paramString));
  }
  
  public static boolean a(double paramDouble, String paramString)
  {
    boolean bool = true;
    if ((paramDouble <= 0.0D) || (paramDouble >= 100.0D)) {
      bool = false;
    }
    int k;
    do
    {
      return bool;
      if (!TextUtils.isEmpty(paramString))
      {
        int j = paramString.length() - 1;
        int i = 0;
        for (;;)
        {
          k = i;
          if (j < 0) {
            break;
          }
          k = paramString.charAt(j);
          k = (i << 6 & 0xFFFFFFF) + k + (k << 14);
          int m = 0xFE00000 & k;
          i = k;
          if (m != 0) {
            i = k ^ m >> 21;
          }
          j -= 1;
        }
      }
      k = 1;
    } while (k % 10000 >= 100.0D * paramDouble);
    return false;
  }
  
  public static void b(Map<String, String> paramMap, String paramString, boolean paramBoolean)
  {
    if (!paramMap.containsKey(paramString)) {
      if (!paramBoolean) {
        break label27;
      }
    }
    label27:
    for (String str = "1";; str = "0")
    {
      paramMap.put(paramString, str);
      return;
    }
  }
  
  public static double bJ(String paramString)
  {
    if (paramString == null) {
      return 100.0D;
    }
    try
    {
      double d = Double.parseDouble(paramString);
      return d;
    }
    catch (NumberFormatException paramString) {}
    return 100.0D;
  }
  
  public static long bK(String paramString)
  {
    if (paramString == null) {
      return 0L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return 0L;
  }
  
  public static boolean bL(String paramString)
  {
    if ((paramString == null) || (paramString.equalsIgnoreCase("true")) || (paramString.equalsIgnoreCase("yes")) || (paramString.equalsIgnoreCase("1"))) {}
    while ((!paramString.equalsIgnoreCase("false")) && (!paramString.equalsIgnoreCase("no")) && (!paramString.equalsIgnoreCase("0"))) {
      return true;
    }
    return false;
  }
  
  public static boolean bM(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!paramString.startsWith("http:")) {
      return true;
    }
    return false;
  }
  
  public static MessageDigest bi(String paramString)
  {
    int i = 0;
    while (i < 2) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
        if (localMessageDigest != null) {
          return localMessageDigest;
        }
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        i += 1;
      }
    }
    return null;
  }
  
  public static String c(Locale paramLocale)
  {
    if (paramLocale == null) {}
    String str;
    do
    {
      return null;
      str = paramLocale.getLanguage();
    } while (TextUtils.isEmpty(str));
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(str.toLowerCase());
    if (!TextUtils.isEmpty(paramLocale.getCountry())) {
      localStringBuilder.append("-").append(paramLocale.getCountry().toLowerCase());
    }
    return localStringBuilder.toString();
  }
  
  public static void c(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (!paramMap.containsKey(paramString1))) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  public static void d(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (TextUtils.isEmpty((CharSequence)paramMap.get(paramString1)))) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  public static boolean d(Context paramContext, String paramString, boolean paramBoolean)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getReceiverInfo(new ComponentName(paramContext, paramString), 2);
      if ((paramContext != null) && (paramContext.enabled)) {
        if (paramBoolean)
        {
          paramBoolean = paramContext.exported;
          if (!paramBoolean) {}
        }
        else
        {
          return true;
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean n(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getServiceInfo(new ComponentName(paramContext, paramString), 4);
      if (paramContext != null)
      {
        boolean bool = paramContext.enabled;
        if (bool) {
          return true;
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/di.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */