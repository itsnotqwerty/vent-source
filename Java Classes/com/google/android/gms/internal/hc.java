package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.security.SecureRandom;

final class hc
  implements Runnable
{
  hc(hb paramhb, int paramInt, String paramString, Object paramObject1, Object paramObject2, Object paramObject3) {}
  
  public final void run()
  {
    Object localObject3 = this.aTo.zzjev.qQ();
    if (!((iy)localObject3).isInitialized())
    {
      this.aTo.c(6, "Persisted config not initialized. Not logging error/warn");
      return;
    }
    if (this.aTo.aSY == 0) {
      if (!this.aTo.qR().pK()) {
        break label337;
      }
    }
    long l;
    Object localObject1;
    Object localObject2;
    label337:
    for (this.aTo.aSY = 'C';; this.aTo.aSY = 'c')
    {
      if (this.aTo.aQI < 0L) {
        this.aTo.aQI = 12211L;
      }
      char c1 = "01VDIWEA?".charAt(this.aTj);
      char c2 = this.aTo.aSY;
      l = this.aTo.aQI;
      localObject1 = hb.a(true, this.aTk, this.aTl, this.aTm, this.aTn);
      localObject2 = String.valueOf(localObject1).length() + 24 + "2" + c1 + c2 + l + ":" + (String)localObject1;
      localObject1 = localObject2;
      if (((String)localObject2).length() > 1024) {
        localObject1 = this.aTk.substring(0, 1024);
      }
      localObject3 = ((hl)localObject3).aTG;
      ((ho)localObject3).aUc.mN();
      if (((ho)localObject3).qm() == 0L) {
        ((ho)localObject3).ql();
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = "";
      }
      l = hl.a(((ho)localObject3).aUc).getLong(((ho)localObject3).aUf, 0L);
      if (l > 0L) {
        break;
      }
      localObject1 = hl.a(((ho)localObject3).aUc).edit();
      ((SharedPreferences.Editor)localObject1).putString(((ho)localObject3).aUg, (String)localObject2);
      ((SharedPreferences.Editor)localObject1).putLong(((ho)localObject3).aUf, 1L);
      ((SharedPreferences.Editor)localObject1).apply();
      return;
    }
    if ((((ho)localObject3).aUc.qL().sr().nextLong() & 0x7FFFFFFFFFFFFFFF) < Long.MAX_VALUE / (1L + l)) {}
    for (int i = 1;; i = 0)
    {
      localObject1 = hl.a(((ho)localObject3).aUc).edit();
      if (i != 0) {
        ((SharedPreferences.Editor)localObject1).putString(((ho)localObject3).aUg, (String)localObject2);
      }
      ((SharedPreferences.Editor)localObject1).putLong(((ho)localObject3).aUf, l + 1L);
      ((SharedPreferences.Editor)localObject1).apply();
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */