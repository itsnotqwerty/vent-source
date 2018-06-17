package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.au;
import com.google.firebase.iid.FirebaseInstanceId;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Locale;

public final class gw
  extends iy
{
  private String aQF;
  private String aQH;
  private long aQL;
  private String aQx;
  private String aQz;
  private int aRa;
  private int aSP;
  private String aSQ;
  private long aSR;
  
  gw(hz paramhz)
  {
    super(paramhz);
  }
  
  private final String qT()
  {
    mN();
    try
    {
      String str = FirebaseInstanceId.us().getId();
      return str;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      qP().aTd.bq("Failed to retrieve Firebase Instance Id");
    }
    return null;
  }
  
  final fx cg(String paramString)
  {
    mN();
    String str1 = getAppId();
    String str2 = getGmpAppId();
    pf();
    String str3 = this.aQF;
    long l2 = rE();
    pf();
    String str4 = this.aQH;
    pf();
    mN();
    if (this.aSR == 0L) {
      this.aSR = this.zzjev.qL().o(getContext(), getContext().getPackageName());
    }
    long l3 = this.aSR;
    boolean bool3 = this.zzjev.isEnabled();
    boolean bool1;
    String str5;
    Object localObject;
    Long localLong;
    long l1;
    label161:
    int i;
    if (!qQ().aTZ)
    {
      bool1 = true;
      str5 = qT();
      pf();
      localObject = this.zzjev;
      localLong = Long.valueOf(((hz)localObject).qQ().aTM.get());
      if (localLong.longValue() != 0L) {
        break label240;
      }
      l1 = ((hz)localObject).aQZ;
      i = rF();
      localObject = qR().bX("google_analytics_adid_collection_enabled");
      if ((localObject != null) && (!((Boolean)localObject).booleanValue())) {
        break label257;
      }
    }
    label240:
    label257:
    for (boolean bool2 = true;; bool2 = false)
    {
      return new fx(str1, str2, str3, l2, str4, 12211L, l3, paramString, bool3, bool1, str5, 0L, l1, i, Boolean.valueOf(bool2).booleanValue());
      bool1 = false;
      break;
      l1 = Math.min(((hz)localObject).aQZ, localLong.longValue());
      break label161;
    }
  }
  
  final String getAppId()
  {
    pf();
    return this.aQx;
  }
  
  final String getGmpAppId()
  {
    pf();
    return this.aQz;
  }
  
  protected final void rC()
  {
    int j = 1;
    Object localObject3 = "unknown";
    String str3 = "Unknown";
    int k = Integer.MIN_VALUE;
    String str1 = "Unknown";
    String str4 = getContext().getPackageName();
    Object localObject6 = getContext().getPackageManager();
    Object localObject5;
    String str2;
    int i;
    Object localObject1;
    if (localObject6 == null)
    {
      qP().aTa.j("PackageManager is null, app identity information might be inaccurate. appId", hb.ck(str4));
      localObject5 = localObject3;
      str2 = str3;
      i = k;
      localObject3 = str1;
      this.aQx = str4;
      this.aQH = ((String)localObject5);
      this.aQF = str2;
      this.aSP = i;
      this.aSQ = ((String)localObject3);
      this.aSR = 0L;
      localObject1 = au.z(getContext());
      if ((localObject1 == null) || (!((Status)localObject1).mQ())) {
        break label531;
      }
      i = 1;
      label134:
      if (i == 0)
      {
        if (localObject1 != null) {
          break label536;
        }
        qP().aTa.bq("GoogleService failed to initialize (no status)");
      }
      label156:
      if (i == 0) {
        break label679;
      }
      localObject1 = qR().bX("firebase_analytics_collection_enabled");
      if (!qR().rj()) {
        break label565;
      }
      qP().aTg.bq("Collection disabled with firebase_analytics_collection_deactivated=1");
      i = 0;
    }
    for (;;)
    {
      this.aQz = "";
      this.aQL = 0L;
      try
      {
        localObject3 = au.nN();
        localObject1 = localObject3;
        if (TextUtils.isEmpty((CharSequence)localObject3)) {
          localObject1 = "";
        }
        this.aQz = ((String)localObject1);
        if (i != 0) {
          qP().aTi.e("App package, google app id", this.aQx, this.aQz);
        }
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          Object localObject2;
          label531:
          label536:
          label565:
          qP().aTa.e("getGoogleAppId or isMeasurementEnabled failed with exception. appId", hb.ck(str4), localIllegalStateException);
          continue;
          i = 0;
        }
        this.aRa = 0;
        return;
      }
      if (Build.VERSION.SDK_INT >= 16) {
        if (ec.ae(getContext()))
        {
          i = j;
          this.aRa = i;
          return;
          try
          {
            localObject1 = ((PackageManager)localObject6).getInstallerPackageName(str4);
            localObject3 = localObject1;
            if (localObject3 == null)
            {
              localObject1 = "manual_install";
              localObject5 = str1;
              str2 = str3;
            }
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            for (;;)
            {
              try
              {
                PackageInfo localPackageInfo = ((PackageManager)localObject6).getPackageInfo(getContext().getPackageName(), 0);
                localObject3 = str1;
                i = k;
                str2 = str3;
                localObject5 = localObject1;
                if (localPackageInfo == null) {
                  break;
                }
                localObject5 = str1;
                str2 = str3;
                localObject6 = ((PackageManager)localObject6).getApplicationLabel(localPackageInfo.applicationInfo);
                localObject3 = str1;
                localObject5 = str1;
                str2 = str3;
                if (!TextUtils.isEmpty((CharSequence)localObject6))
                {
                  localObject5 = str1;
                  str2 = str3;
                  localObject3 = ((CharSequence)localObject6).toString();
                }
                localObject5 = localObject3;
                str2 = str3;
                str1 = localPackageInfo.versionName;
                localObject5 = localObject3;
                str2 = str1;
                i = localPackageInfo.versionCode;
                str2 = str1;
                localObject5 = localObject1;
              }
              catch (PackageManager.NameNotFoundException localNameNotFoundException)
              {
                qP().aTa.e("Error retrieving package info. appId, appName", hb.ck(str4), localObject5);
                Object localObject4 = localObject5;
                i = k;
                localObject5 = localObject2;
              }
              localIllegalArgumentException = localIllegalArgumentException;
              qP().aTa.j("Error retrieving app installer package name. appId", hb.ck(str4));
              continue;
              localObject2 = localObject3;
              if ("com.android.vending".equals(localObject3)) {
                localObject2 = "";
              }
            }
          }
          break;
          i = 0;
          break label134;
          qP().aTa.e("GoogleService failed to initialize, status", Integer.valueOf(((Status)localObject2).aCj), ((Status)localObject2).aCl);
          break label156;
          if ((localObject2 != null) && (!((Boolean)localObject2).booleanValue()))
          {
            qP().aTg.bq("Collection disabled with firebase_analytics_collection_enabled=0");
            i = 0;
            continue;
          }
          if ((localObject2 == null) && (au.nO()))
          {
            qP().aTg.bq("Collection disabled with google_app_measurement_enable=0");
            i = 0;
            continue;
          }
          qP().aTi.bq("Collection enabled");
          i = 1;
          continue;
        }
      }
      label679:
      i = 0;
    }
  }
  
  final String rD()
  {
    byte[] arrayOfByte = new byte[16];
    qL().sr().nextBytes(arrayOfByte);
    return String.format(Locale.US, "%032x", new Object[] { new BigInteger(1, arrayOfByte) });
  }
  
  final int rE()
  {
    pf();
    return this.aSP;
  }
  
  final int rF()
  {
    pf();
    return this.aRa;
  }
  
  protected final boolean ri()
  {
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */