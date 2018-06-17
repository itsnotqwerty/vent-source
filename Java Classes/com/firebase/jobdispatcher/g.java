package com.firebase.jobdispatcher;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import java.util.List;

public final class g
  implements c
{
  private final v axq;
  private final PendingIntent axr;
  private final i axs;
  private final boolean axt = true;
  private final Context context;
  
  public g(Context paramContext)
  {
    this.context = paramContext;
    this.axr = PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0);
    this.axs = new i();
    this.axq = new b(paramContext);
  }
  
  private Intent aL(String paramString)
  {
    Intent localIntent = new Intent("com.google.android.gms.gcm.ACTION_SCHEDULE");
    localIntent.setPackage("com.google.android.gms");
    localIntent.putExtra("scheduler_action", paramString);
    localIntent.putExtra("app", this.axr);
    localIntent.putExtra("source", 8);
    localIntent.putExtra("source_version", 1);
    return localIntent;
  }
  
  public final int a(n paramn)
  {
    int j = 1;
    GooglePlayReceiver.b(paramn);
    Context localContext = this.context;
    Intent localIntent = aL("SCHEDULE_TASK");
    i locali = this.axs;
    Bundle localBundle = localIntent.getExtras();
    localBundle.putString("tag", paramn.getTag());
    localBundle.putBoolean("update_current", paramn.kN());
    boolean bool;
    Object localObject1;
    label133:
    int k;
    if (paramn.kP() == 2)
    {
      bool = true;
      localBundle.putBoolean("persisted", bool);
      localBundle.putString("service", GooglePlayReceiver.class.getName());
      localObject1 = paramn.kO();
      if (localObject1 != z.ayi) {
        break label366;
      }
      localBundle.putInt("trigger_type", 2);
      localBundle.putLong("window_start", 0L);
      localBundle.putLong("window_end", 1L);
      k = a.g(paramn.kL());
      if ((k & 0x4) != 4) {
        break label611;
      }
      bool = true;
      label155:
      localBundle.putBoolean("requiresCharging", bool);
      if ((k & 0x8) != 8) {
        break label617;
      }
      bool = true;
      label177:
      localBundle.putBoolean("requiresIdle", bool);
      if ((k & 0x2) != 2) {
        break label623;
      }
    }
    label366:
    label611:
    label617:
    label623:
    for (int i = 0;; i = 2)
    {
      if ((k & 0x1) == 1) {
        i = 1;
      }
      localBundle.putInt("requiredNetwork", i);
      localObject1 = paramn.kM();
      Object localObject2 = new Bundle();
      i = j;
      switch (((x)localObject1).ayd)
      {
      default: 
        i = 0;
      }
      ((Bundle)localObject2).putInt("retry_policy", i);
      ((Bundle)localObject2).putInt("initial_backoff_seconds", ((x)localObject1).aye);
      ((Bundle)localObject2).putInt("maximum_backoff_seconds", ((x)localObject1).ayf);
      localBundle.putBundle("retryStrategy", (Bundle)localObject2);
      localObject2 = paramn.getExtras();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new Bundle();
      }
      localBundle.putBundle("extras", locali.axv.a(paramn, (Bundle)localObject1));
      localIntent.putExtras(localBundle);
      localContext.sendBroadcast(localIntent);
      return 0;
      bool = false;
      break;
      if ((localObject1 instanceof u.b))
      {
        localObject1 = (u.b)localObject1;
        localBundle.putInt("trigger_type", 1);
        if (paramn.kQ())
        {
          localBundle.putLong("period", ((u.b)localObject1).aya);
          localBundle.putLong("period_flex", ((u.b)localObject1).aya - ((u.b)localObject1).axZ);
          break label133;
        }
        localBundle.putLong("window_start", ((u.b)localObject1).axZ);
        localBundle.putLong("window_end", ((u.b)localObject1).aya);
        break label133;
      }
      if ((localObject1 instanceof u.a))
      {
        localObject1 = (u.a)localObject1;
        localBundle.putInt("trigger_type", 3);
        k = ((u.a)localObject1).axY.size();
        localObject2 = new int[k];
        Uri[] arrayOfUri = new Uri[k];
        i = 0;
        while (i < k)
        {
          w localw = (w)((u.a)localObject1).axY.get(i);
          localObject2[i] = localw.flags;
          arrayOfUri[i] = localw.uri;
          i += 1;
        }
        localBundle.putIntArray("content_uri_flags_array", (int[])localObject2);
        localBundle.putParcelableArray("content_uri_array", arrayOfUri);
        break label133;
      }
      throw new IllegalArgumentException("Unknown trigger: " + localObject1.getClass());
      bool = false;
      break label155;
      bool = false;
      break label177;
    }
  }
  
  public final int aK(String paramString)
  {
    Context localContext = this.context;
    Intent localIntent = aL("CANCEL_TASK");
    localIntent.putExtra("tag", paramString);
    localIntent.putExtra("component", new ComponentName(this.context, GooglePlayReceiver.class));
    localContext.sendBroadcast(localIntent);
    return 0;
  }
  
  public final v kD()
  {
    return this.axq;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */