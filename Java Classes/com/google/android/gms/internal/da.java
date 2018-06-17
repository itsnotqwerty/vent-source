package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.google.android.gms.analytics.n;
import com.google.android.gms.common.util.e;

public final class da
  extends bb
{
  SharedPreferences aPe;
  private long aPf;
  private long aPg = -1L;
  final db aPh = new db(this, "monitoring", ((Long)cm.aOC.aOE).longValue(), (byte)0);
  
  protected da(bd parambd)
  {
    super(parambd);
  }
  
  public final void bI(String paramString)
  {
    n.mN();
    pf();
    SharedPreferences.Editor localEditor = this.aPe.edit();
    if (TextUtils.isEmpty(paramString)) {
      localEditor.remove("installation_campaign");
    }
    for (;;)
    {
      if (!localEditor.commit()) {
        bz("Failed to commit campaign data");
      }
      return;
      localEditor.putString("installation_campaign", paramString);
    }
  }
  
  protected final void mG()
  {
    this.aPe = this.aMq.mContext.getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
  }
  
  public final long qg()
  {
    n.mN();
    pf();
    long l;
    if (this.aPf == 0L)
    {
      l = this.aPe.getLong("first_run", 0L);
      if (l == 0L) {
        break label45;
      }
    }
    for (this.aPf = l;; this.aPf = l)
    {
      return this.aPf;
      label45:
      l = this.aMq.aBm.currentTimeMillis();
      SharedPreferences.Editor localEditor = this.aPe.edit();
      localEditor.putLong("first_run", l);
      if (!localEditor.commit()) {
        bz("Failed to commit first run time");
      }
    }
  }
  
  public final dh qh()
  {
    return new dh(this.aMq.aBm, qg());
  }
  
  public final long qi()
  {
    n.mN();
    pf();
    if (this.aPg == -1L) {
      this.aPg = this.aPe.getLong("last_dispatch", 0L);
    }
    return this.aPg;
  }
  
  public final void qj()
  {
    n.mN();
    pf();
    long l = this.aMq.aBm.currentTimeMillis();
    SharedPreferences.Editor localEditor = this.aPe.edit();
    localEditor.putLong("last_dispatch", l);
    localEditor.apply();
    this.aPg = l;
  }
  
  public final String qk()
  {
    n.mN();
    pf();
    String str = this.aPe.getString("installation_campaign", null);
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    return str;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/da.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */