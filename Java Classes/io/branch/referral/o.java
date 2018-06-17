package io.branch.referral;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Locale;

final class o
{
  private static o cAL = null;
  final int cAA;
  final int cAB;
  final int cAC;
  final boolean cAD;
  final String cAE;
  final String cAF;
  final int cAG;
  private final String cAH;
  final String cAI;
  final String cAJ;
  final String cAK;
  final String cAw;
  final boolean cAx;
  final String cAy;
  final String cAz;
  
  private o(boolean paramBoolean1, ag paramag, boolean paramBoolean2)
  {
    if (paramBoolean2)
    {
      this.cAw = paramag.bt(true);
      this.cAx = paramag.cBH;
      this.cAy = Build.MANUFACTURER;
      this.cAz = Build.MODEL;
      Object localObject = new DisplayMetrics();
      ((WindowManager)paramag.cvX.getSystemService("window")).getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
      this.cAA = ((DisplayMetrics)localObject).densityDpi;
      this.cAB = ((DisplayMetrics)localObject).heightPixels;
      this.cAC = ((DisplayMetrics)localObject).widthPixels;
      if (paramag.cvX.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
        break label237;
      }
      localObject = ((ConnectivityManager)paramag.cvX.getSystemService("connectivity")).getNetworkInfo(1);
      if ((localObject == null) || (!((NetworkInfo)localObject).isConnected())) {
        break label232;
      }
      paramBoolean1 = true;
      label142:
      this.cAD = paramBoolean1;
      this.cAE = ag.Hw();
      this.cAF = "Android";
      this.cAG = Build.VERSION.SDK_INT;
      this.cAH = paramag.getPackageName();
      this.cAI = paramag.Ht();
      if (Locale.getDefault() == null) {
        break label242;
      }
      paramag = Locale.getDefault().getCountry();
      label196:
      this.cAJ = paramag;
      if (Locale.getDefault() == null) {
        break label248;
      }
    }
    label232:
    label237:
    label242:
    label248:
    for (paramag = Locale.getDefault().getLanguage();; paramag = "")
    {
      this.cAK = paramag;
      return;
      this.cAw = paramag.bt(paramBoolean1);
      break;
      paramBoolean1 = false;
      break label142;
      paramBoolean1 = false;
      break label142;
      paramag = "";
      break label196;
    }
  }
  
  public static o GN()
  {
    return cAL;
  }
  
  public static o a(boolean paramBoolean1, ag paramag, boolean paramBoolean2)
  {
    if (cAL == null) {
      cAL = new o(paramBoolean1, paramag, paramBoolean2);
    }
    return cAL;
  }
  
  public final String GO()
  {
    if (this.cAw.equals("bnc_no_value")) {
      return null;
    }
    return this.cAw;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */