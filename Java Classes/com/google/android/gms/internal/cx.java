package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.analytics.n;
import com.google.android.gms.common.internal.ae;

class cx
  extends BroadcastReceiver
{
  static String aOX = cx.class.getName();
  boolean CA;
  final bd aMq;
  boolean aOY;
  
  cx(bd parambd)
  {
    ae.E(parambd);
    this.aMq = parambd;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    qd();
    paramContext = paramIntent.getAction();
    this.aMq.pg().d("NetworkBroadcastReceiver received action", paramContext);
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramContext))
    {
      boolean bool = qe();
      if (this.aOY != bool)
      {
        this.aOY = bool;
        paramContext = this.aMq.pi();
        paramContext.d("Network connectivity status changed", Boolean.valueOf(bool));
        paramContext.aMq.ph().h(new aw(paramContext, bool));
      }
    }
    do
    {
      return;
      if (!"com.google.analytics.RADIO_POWERED".equals(paramContext)) {
        break;
      }
    } while (paramIntent.hasExtra(aOX));
    paramContext = this.aMq.pi();
    paramContext.bw("Radio powered up");
    paramContext.oZ();
    return;
    this.aMq.pg().g("NetworkBroadcastReceiver received unknown action", paramContext);
  }
  
  final void qd()
  {
    this.aMq.pg();
    this.aMq.pi();
  }
  
  final boolean qe()
  {
    Object localObject = (ConnectivityManager)this.aMq.mContext.getSystemService("connectivity");
    try
    {
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if (localObject != null)
      {
        boolean bool = ((NetworkInfo)localObject).isConnected();
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (SecurityException localSecurityException) {}
    return false;
  }
  
  public final void unregister()
  {
    if (!this.CA) {
      return;
    }
    this.aMq.pg().bw("Unregistering connectivity change receiver");
    this.CA = false;
    this.aOY = false;
    Context localContext = this.aMq.mContext;
    try
    {
      localContext.unregisterReceiver(this);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      this.aMq.pg().h("Failed to unregister the network broadcast receiver", localIllegalArgumentException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */