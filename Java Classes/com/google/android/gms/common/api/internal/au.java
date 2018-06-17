package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.a.b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ak;

@Deprecated
public final class au
{
  private static final Object AT = new Object();
  private static au aFC;
  private final Status aFD;
  private final boolean aFE;
  private final boolean aFF;
  private final String mAppId;
  
  private au(Context paramContext)
  {
    Object localObject = paramContext.getResources();
    int i = ((Resources)localObject).getIdentifier("google_app_measurement_enable", "integer", ((Resources)localObject).getResourcePackageName(a.b.common_google_play_services_unknown_issue));
    if (i != 0) {
      if (((Resources)localObject).getInteger(i) != 0)
      {
        bool1 = true;
        if (bool1) {
          break label127;
        }
      }
    }
    label52:
    for (this.aFF = bool2;; this.aFF = false)
    {
      this.aFE = bool1;
      String str = ab.B(paramContext);
      localObject = str;
      if (str == null) {
        localObject = new ak(paramContext).getString("google_app_id");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        break label141;
      }
      this.aFD = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
      this.mAppId = null;
      return;
      bool1 = false;
      break;
      label127:
      bool2 = false;
      break label52;
    }
    label141:
    this.mAppId = ((String)localObject);
    this.aFD = Status.aDa;
  }
  
  private static au bd(String paramString)
  {
    synchronized (AT)
    {
      if (aFC == null) {
        throw new IllegalStateException(String.valueOf(paramString).length() + 34 + "Initialize must be called before " + paramString + ".");
      }
    }
    paramString = aFC;
    return paramString;
  }
  
  public static String nN()
  {
    return bd("getGoogleAppId").mAppId;
  }
  
  public static boolean nO()
  {
    return bd("isMeasurementExplicitlyDisabled").aFF;
  }
  
  public static Status z(Context paramContext)
  {
    ae.g(paramContext, "Context must not be null.");
    synchronized (AT)
    {
      if (aFC == null) {
        aFC = new au(paramContext);
      }
      paramContext = aFC.aFD;
      return paramContext;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */