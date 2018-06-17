package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.util.Log;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ee;

public class z
{
  private static z aKj;
  public final Context mContext;
  
  private z(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
  }
  
  public static z Q(Context paramContext)
  {
    ae.E(paramContext);
    try
    {
      if (aKj == null)
      {
        n.N(paramContext);
        aKj = new z(paramContext);
      }
      return aKj;
    }
    finally {}
  }
  
  private static o a(PackageInfo paramPackageInfo, o... paramVarArgs)
  {
    int i = 0;
    if (paramPackageInfo.signatures == null) {
      return null;
    }
    if (paramPackageInfo.signatures.length != 1)
    {
      Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
      return null;
    }
    paramPackageInfo = new p(paramPackageInfo.signatures[0].toByteArray());
    while (i < paramVarArgs.length)
    {
      if (paramVarArgs[i].equals(paramPackageInfo)) {
        return paramVarArgs[i];
      }
      i += 1;
    }
    return null;
  }
  
  public static boolean a(PackageInfo paramPackageInfo, boolean paramBoolean)
  {
    if ((paramPackageInfo != null) && (paramPackageInfo.signatures != null))
    {
      if (paramBoolean) {}
      for (paramPackageInfo = a(paramPackageInfo, r.aJT); paramPackageInfo != null; paramPackageInfo = a(paramPackageInfo, new o[] { r.aJT[0] })) {
        return true;
      }
    }
    return false;
  }
  
  private final w bm(String paramString)
  {
    try
    {
      localPackageInfo = ee.ag(this.mContext).getPackageInfo(paramString, 64);
      bool = y.O(this.mContext);
      if (localPackageInfo != null) {
        break label74;
      }
      paramString = w.bl("null pkg");
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      label74:
      p localp;
      String str;
      do
      {
        PackageInfo localPackageInfo;
        boolean bool;
        w localw;
        do
        {
          do
          {
            do
            {
              paramString = String.valueOf(paramString);
              if (paramString.length() != 0) {}
              for (paramString = "no pkg ".concat(paramString);; paramString = new String("no pkg ")) {
                return w.bl(paramString);
              }
              if (localPackageInfo.signatures.length != 1) {
                return w.bl("single cert required");
              }
              localp = new p(localPackageInfo.signatures[0].toByteArray());
              str = localPackageInfo.packageName;
              localw = n.a(str, localp, bool);
              paramString = localw;
            } while (!localw.aJY);
            paramString = localw;
          } while (localPackageInfo.applicationInfo == null);
          paramString = localw;
        } while ((localPackageInfo.applicationInfo.flags & 0x2) == 0);
        if (!bool) {
          break;
        }
        paramString = localw;
      } while (!n.a(str, localp, false).aJY);
    }
    return paramString;
    return w.bl("debuggable release cert app rejected");
  }
  
  public final boolean cP(int paramInt)
  {
    String[] arrayOfString = ee.ag(this.mContext).mContext.getPackageManager().getPackagesForUid(paramInt);
    Object localObject;
    if ((arrayOfString == null) || (arrayOfString.length == 0))
    {
      localObject = w.bl("no pkgs");
      if (!((w)localObject).aJY)
      {
        if (((w)localObject).cause == null) {
          break label113;
        }
        Log.d("GoogleCertificatesRslt", ((w)localObject).oQ(), ((w)localObject).cause);
      }
    }
    for (;;)
    {
      return ((w)localObject).aJY;
      localObject = null;
      int i = arrayOfString.length;
      paramInt = 0;
      for (;;)
      {
        if (paramInt >= i) {
          break label111;
        }
        w localw = bm(arrayOfString[paramInt]);
        localObject = localw;
        if (localw.aJY) {
          break;
        }
        paramInt += 1;
        localObject = localw;
      }
      label111:
      break;
      label113:
      Log.d("GoogleCertificatesRslt", ((w)localObject).oQ());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */