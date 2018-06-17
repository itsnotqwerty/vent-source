package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.google.android.gms.common.util.d;
import java.util.Collections;
import java.util.List;

public final class a
{
  private static final Object aHo = new Object();
  private static volatile a aIZ;
  private static boolean aJa = false;
  private final List<String> aJb = Collections.EMPTY_LIST;
  private final List<String> aJc = Collections.EMPTY_LIST;
  private final List<String> aJd = Collections.EMPTY_LIST;
  private final List<String> aJe = Collections.EMPTY_LIST;
  
  public static boolean a(Context paramContext, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt)
  {
    ComponentName localComponentName = paramIntent.getComponent();
    if (localComponentName == null) {}
    for (boolean bool = false; bool; bool = d.g(paramContext, localComponentName.getPackageName()))
    {
      Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
      return false;
    }
    return paramContext.bindService(paramIntent, paramServiceConnection, paramInt);
  }
  
  public static boolean b(Context paramContext, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt)
  {
    paramContext.getClass().getName();
    return a(paramContext, paramIntent, paramServiceConnection, paramInt);
  }
  
  public static a oz()
  {
    if (aIZ == null) {}
    synchronized (aHo)
    {
      if (aIZ == null) {
        aIZ = new a();
      }
      return aIZ;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/stats/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */