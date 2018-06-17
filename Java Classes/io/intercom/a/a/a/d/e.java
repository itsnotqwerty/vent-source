package io.intercom.a.a.a.d;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import io.intercom.a.a.a.i.h;

final class e
  implements c
{
  final c.a cPc;
  boolean cPd;
  private final BroadcastReceiver cPe = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      boolean bool = e.this.cPd;
      try
      {
        e.this.cPd = e.cb(paramAnonymousContext);
        if (bool != e.this.cPd)
        {
          if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + e.this.cPd);
          }
          e.this.cPc.bu(e.this.cPd);
        }
        return;
      }
      catch (SecurityException paramAnonymousContext)
      {
        for (;;)
        {
          if (Log.isLoggable("ConnectivityMonitor", 5)) {
            Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", paramAnonymousContext);
          }
          e.this.cPd = true;
        }
      }
    }
  };
  private final Context context;
  private boolean isRegistered;
  
  e(Context paramContext, c.a parama)
  {
    this.context = paramContext.getApplicationContext();
    this.cPc = parama;
  }
  
  @SuppressLint({"MissingPermission"})
  static boolean cb(Context paramContext)
  {
    paramContext = ((ConnectivityManager)h.checkNotNull((ConnectivityManager)paramContext.getSystemService("connectivity"), "Argument must not be null")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.isConnected());
  }
  
  public final void onDestroy() {}
  
  public final void onStart()
  {
    if (!this.isRegistered) {}
    try
    {
      this.cPd = cb(this.context);
      this.context.registerReceiver(this.cPe, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      this.isRegistered = true;
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (!Log.isLoggable("ConnectivityMonitor", 5)) {}
      Log.w("ConnectivityMonitor", "Failed to register", localSecurityException);
    }
  }
  
  public final void onStop()
  {
    if (this.isRegistered)
    {
      this.context.unregisterReceiver(this.cPe);
      this.isRegistered = false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/d/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */