package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.support.v4.content.e;
import android.support.v4.g.m;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;

public final class ac
{
  private static ac bfQ;
  private final m<String, String> bfR = new m();
  private Boolean bfS = null;
  final Queue<Intent> bfT = new ArrayDeque();
  public Queue<Intent> bfU = new ArrayDeque();
  
  public static PendingIntent a(Context paramContext, int paramInt, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramContext, FirebaseInstanceIdReceiver.class);
    localIntent.setAction("com.google.firebase.MESSAGING_EVENT");
    localIntent.putExtra("wrapped_intent", paramIntent);
    return PendingIntent.getBroadcast(paramContext, paramInt, localIntent, 1073741824);
  }
  
  public static ac uW()
  {
    try
    {
      if (bfQ == null) {
        bfQ = new ac();
      }
      ac localac = bfQ;
      return localac;
    }
    finally {}
  }
  
  final int d(Context paramContext, Intent paramIntent)
  {
    synchronized (this.bfR)
    {
      ??? = (String)this.bfR.get(paramIntent.getAction());
      ??? = ???;
      if (??? == null)
      {
        ??? = paramContext.getPackageManager().resolveService(paramIntent, 0);
        if ((??? == null) || (((ResolveInfo)???).serviceInfo == null)) {
          Log.e("FirebaseInstanceId", "Failed to resolve target intent service, skipping classname enforcement");
        }
      }
    }
    try
    {
      boolean bool;
      if (this.bfS == null)
      {
        if (paramContext.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0)
        {
          bool = true;
          label87:
          this.bfS = Boolean.valueOf(bool);
        }
      }
      else
      {
        if (!this.bfS.booleanValue()) {
          break label410;
        }
        paramContext = e.a(paramContext, paramIntent);
      }
      for (;;)
      {
        if (paramContext != null) {
          break label441;
        }
        Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
        return 404;
        paramContext = finally;
        throw paramContext;
        ??? = ((ResolveInfo)???).serviceInfo;
        if ((!paramContext.getPackageName().equals(((ServiceInfo)???).packageName)) || (((ServiceInfo)???).name == null))
        {
          ??? = ((ServiceInfo)???).packageName;
          ??? = ((ServiceInfo)???).name;
          Log.e("FirebaseInstanceId", String.valueOf(???).length() + 94 + String.valueOf(???).length() + "Error resolving target intent service, skipping classname enforcement. Resolved service was: " + (String)??? + "/" + (String)???);
          break;
        }
        ??? = ((ServiceInfo)???).name;
        ??? = ???;
        if (((String)???).startsWith("."))
        {
          ??? = String.valueOf(paramContext.getPackageName());
          ??? = String.valueOf(???);
          if (((String)???).length() == 0) {
            break label371;
          }
          ??? = ((String)???).concat((String)???);
        }
        for (;;)
        {
          synchronized (this.bfR)
          {
            this.bfR.put(paramIntent.getAction(), ???);
            if (Log.isLoggable("FirebaseInstanceId", 3))
            {
              ??? = String.valueOf(???);
              if (((String)???).length() != 0)
              {
                ??? = "Restricting intent to a specific service: ".concat((String)???);
                Log.d("FirebaseInstanceId", (String)???);
              }
            }
            else
            {
              paramIntent.setClassName(paramContext.getPackageName(), (String)???);
              break;
              label371:
              ??? = new String((String)???);
            }
          }
          ??? = new String("Restricting intent to a specific service: ");
        }
        bool = false;
        break label87;
        label410:
        paramContext = paramContext.startService(paramIntent);
        Log.d("FirebaseInstanceId", "Missing wake lock permission, service start may be delayed");
      }
      label441:
      return 402;
    }
    catch (SecurityException paramContext)
    {
      Log.e("FirebaseInstanceId", "Error while delivering the message to the serviceIntent", paramContext);
      return 401;
      return -1;
    }
    catch (IllegalStateException paramContext)
    {
      paramContext = String.valueOf(paramContext);
      Log.e("FirebaseInstanceId", String.valueOf(paramContext).length() + 45 + "Failed to start service while in background: " + paramContext);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */