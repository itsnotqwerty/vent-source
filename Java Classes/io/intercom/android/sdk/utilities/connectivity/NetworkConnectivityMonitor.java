package io.intercom.android.sdk.utilities.connectivity;

import android.content.Context;
import android.content.IntentFilter;

public class NetworkConnectivityMonitor
  implements ConnectivityBroadcastReceiver.ConnectivityUpdateListener
{
  private boolean didRegister = false;
  private NetworkState lastState = NetworkState.UNKNOWN;
  private ConnectivityEventListener listener;
  private final ConnectivityBroadcastReceiver receiver = new ConnectivityBroadcastReceiver(this);
  
  ConnectivityEventListener getListener()
  {
    return this.listener;
  }
  
  public void onUpdate(NetworkState paramNetworkState)
  {
    if (paramNetworkState == this.lastState) {
      return;
    }
    if (this.listener != null)
    {
      if (paramNetworkState != NetworkState.NOT_CONNECTED) {
        break label38;
      }
      this.listener.onDisconnect();
    }
    for (;;)
    {
      this.lastState = paramNetworkState;
      return;
      label38:
      if ((paramNetworkState == NetworkState.CONNECTED) && (this.lastState == NetworkState.NOT_CONNECTED)) {
        this.listener.onReconnect();
      }
    }
  }
  
  public void setListener(ConnectivityEventListener paramConnectivityEventListener)
  {
    this.listener = paramConnectivityEventListener;
  }
  
  public void startListening(Context paramContext)
  {
    try
    {
      if (!this.didRegister)
      {
        paramContext.registerReceiver(this.receiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.didRegister = true;
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public void stopListening(Context paramContext)
  {
    try
    {
      if (this.didRegister)
      {
        paramContext.unregisterReceiver(this.receiver);
        this.didRegister = false;
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static abstract interface ConnectivityEventListener
  {
    public abstract void onDisconnect();
    
    public abstract void onReconnect();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */