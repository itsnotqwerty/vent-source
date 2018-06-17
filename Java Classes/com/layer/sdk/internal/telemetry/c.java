package com.layer.sdk.internal.telemetry;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.os.Build.VERSION;
import android.os.LocaleList;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

final class c
{
  private static final long btn = TimeUnit.HOURS.toMillis(1L);
  @com.google.a.a.c("platform")
  private String bto;
  @com.google.a.a.c("os")
  private String btp;
  @com.google.a.a.c("app_version")
  private String btq;
  @com.google.a.a.c("layer_sdk_version")
  private String btr;
  @com.google.a.a.c("ui_sdk_version")
  private String bts;
  @com.google.a.a.c("layer_messenger_version")
  private String btt;
  @com.google.a.a.c("app_name")
  private String btu;
  @com.google.a.a.c("locale")
  private String btv;
  @com.google.a.a.c("accessibility")
  private Map<String, Set<String>> btw;
  @com.google.a.a.c("time_zone")
  private String btx;
  
  c() {}
  
  c(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.bto = "android";
    this.btp = Build.VERSION.RELEASE;
    this.btr = paramString1;
    this.bts = paramString2;
    this.btt = paramString3;
    paramString1 = paramContext.getApplicationInfo();
    try
    {
      if (paramString1.labelRes == 0)
      {
        paramString1 = paramString1.nonLocalizedLabel;
        if (paramString1 == null) {
          break label296;
        }
        paramString1 = paramString1.toString();
        label64:
        this.btu = paramString1;
        label69:
        paramString1 = new StringBuilder();
      }
    }
    catch (Resources.NotFoundException paramString1)
    {
      try
      {
        paramString2 = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
        if (!TextUtils.isEmpty(paramString2.versionName)) {
          paramString1.append(paramString2.versionName).append("+").append(paramString2.versionCode);
        }
        for (;;)
        {
          paramString2 = (String)localObject;
          if (paramString1 != null) {
            paramString2 = paramString1.toString();
          }
          this.btq = paramString2;
          if (Build.VERSION.SDK_INT != 24) {
            break label321;
          }
          paramString1 = paramContext.getResources().getConfiguration().getLocales().get(0);
          this.btv = (paramString1.getLanguage() + "_" + paramString1.getCountry());
          int i = TimeZone.getDefault().getRawOffset();
          long l1 = i / btn;
          long l2 = i;
          long l3 = btn;
          this.btx = String.format(Locale.US, "%d%d", new Object[] { Long.valueOf(l1), Long.valueOf(l2 % l3) });
          this.btw = new HashMap();
          this.btw.put("enabled_services", av(paramContext));
          return;
          paramString1 = paramContext.getString(paramString1.labelRes);
          break;
          label296:
          paramString1 = null;
          break label64;
          paramString1 = paramString1;
          this.btu = null;
          break label69;
          paramString1 = null;
        }
      }
      catch (PackageManager.NameNotFoundException paramString1)
      {
        for (;;)
        {
          paramString1 = null;
          continue;
          label321:
          paramString1 = paramContext.getResources().getConfiguration().locale;
        }
      }
    }
  }
  
  private static Set<String> av(Context paramContext)
  {
    HashSet localHashSet = new HashSet();
    Object localObject = (AccessibilityManager)paramContext.getSystemService("accessibility");
    paramContext = paramContext.getPackageManager();
    localObject = ((AccessibilityManager)localObject).getEnabledAccessibilityServiceList(-1).iterator();
    while (((Iterator)localObject).hasNext()) {
      localHashSet.add(a.dw(((AccessibilityServiceInfo)((Iterator)localObject).next()).getResolveInfo().loadLabel(paramContext).toString().replace(' ', '_')));
    }
    if (localHashSet.isEmpty()) {
      return null;
    }
    return localHashSet;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/telemetry/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */