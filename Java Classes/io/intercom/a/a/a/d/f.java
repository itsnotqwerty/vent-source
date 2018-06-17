package io.intercom.a.a.a.d;

import android.content.Context;
import android.support.v4.content.a;
import android.util.Log;

public final class f
  implements d
{
  public final c a(Context paramContext, c.a parama)
  {
    int i;
    if (a.c(paramContext, "android.permission.ACCESS_NETWORK_STATE") == 0)
    {
      i = 1;
      if (Log.isLoggable("ConnectivityMonitor", 3)) {
        if (i == 0) {
          break label55;
        }
      }
    }
    label55:
    for (String str = "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor";; str = "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor")
    {
      Log.d("ConnectivityMonitor", str);
      if (i == 0) {
        break label62;
      }
      return new e(paramContext, parama);
      i = 0;
      break;
    }
    label62:
    return new j();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/d/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */