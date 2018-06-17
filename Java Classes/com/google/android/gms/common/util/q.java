package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.gms.common.y;
import com.google.android.gms.common.z;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ee;

public final class q
{
  @TargetApi(19)
  public static boolean a(Context paramContext, int paramInt, String paramString)
  {
    return ee.ag(paramContext).b(paramInt, paramString);
  }
  
  public static boolean s(Context paramContext, int paramInt)
  {
    if (!a(paramContext, paramInt, "com.google.android.gms")) {}
    Object localObject;
    label65:
    do
    {
      do
      {
        for (;;)
        {
          return false;
          localObject = paramContext.getPackageManager();
          try
          {
            localObject = ((PackageManager)localObject).getPackageInfo("com.google.android.gms", 64);
            paramContext = z.Q(paramContext);
            if (localObject != null)
            {
              if (!z.a((PackageInfo)localObject, false)) {
                break label65;
              }
              return true;
            }
          }
          catch (PackageManager.NameNotFoundException paramContext) {}
        }
      } while (!Log.isLoggable("UidVerifier", 3));
      Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
      return false;
    } while (!z.a((PackageInfo)localObject, true));
    if (y.O(paramContext.mContext)) {
      return true;
    }
    Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/util/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */