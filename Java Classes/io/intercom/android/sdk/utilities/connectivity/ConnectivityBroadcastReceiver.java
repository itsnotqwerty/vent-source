package io.intercom.android.sdk.utilities.connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class ConnectivityBroadcastReceiver
  extends BroadcastReceiver
{
  private final ConnectivityUpdateListener connectivityUpdateListener;
  
  ConnectivityBroadcastReceiver(ConnectivityUpdateListener paramConnectivityUpdateListener)
  {
    this.connectivityUpdateListener = paramConnectivityUpdateListener;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent == null) || (!"android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction()))) {
      return;
    }
    if (paramIntent.getBooleanExtra("noConnectivity", false)) {}
    for (paramContext = NetworkState.NOT_CONNECTED;; paramContext = NetworkState.CONNECTED)
    {
      this.connectivityUpdateListener.onUpdate(paramContext);
      return;
    }
  }
  
  static abstract interface ConnectivityUpdateListener
  {
    public abstract void onUpdate(NetworkState paramNetworkState);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */