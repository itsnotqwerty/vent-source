package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.ae;

class hj
  extends BroadcastReceiver
{
  private static String aOX = hj.class.getName();
  boolean aTA;
  boolean aTB;
  final hz zzjev;
  
  hj(hz paramhz)
  {
    ae.E(paramhz);
    this.zzjev = paramhz;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.zzjev.pf();
    paramContext = paramIntent.getAction();
    this.zzjev.qP().aTi.j("NetworkBroadcastReceiver received action", paramContext);
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramContext))
    {
      boolean bool = this.zzjev.rW().qe();
      if (this.aTB != bool)
      {
        this.aTB = bool;
        this.zzjev.qO().i(new hk(this, bool));
      }
      return;
    }
    this.zzjev.qP().aTd.j("NetworkBroadcastReceiver received unknown action", paramContext);
  }
  
  public final void unregister()
  {
    this.zzjev.pf();
    this.zzjev.qO().mN();
    this.zzjev.qO().mN();
    if (!this.aTA) {
      return;
    }
    this.zzjev.qP().aTi.bq("Unregistering connectivity change receiver");
    this.aTA = false;
    this.aTB = false;
    Context localContext = this.zzjev.aUM;
    try
    {
      localContext.unregisterReceiver(this);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      this.zzjev.qP().aTa.j("Failed to unregister the network broadcast receiver", localIllegalArgumentException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */