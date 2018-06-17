package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Map;

public final class ah
  extends l<ah>
{
  public String aLn;
  public String aLo;
  public String aLp;
  public String mAppId;
  
  public final void a(ah paramah)
  {
    if (!TextUtils.isEmpty(this.aLn)) {
      paramah.aLn = this.aLn;
    }
    if (!TextUtils.isEmpty(this.aLo)) {
      paramah.aLo = this.aLo;
    }
    if (!TextUtils.isEmpty(this.mAppId)) {
      paramah.mAppId = this.mAppId;
    }
    if (!TextUtils.isEmpty(this.aLp)) {
      paramah.aLp = this.aLp;
    }
  }
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appName", this.aLn);
    localHashMap.put("appVersion", this.aLo);
    localHashMap.put("appId", this.mAppId);
    localHashMap.put("appInstallerId", this.aLp);
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */