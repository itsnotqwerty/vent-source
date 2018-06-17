package com.vent;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.app.aa.c;
import android.support.v4.app.aa.g;
import com.layer.sdk.LayerClient;
import com.layer.sdk.LayerClient.ContentAvailableCallback;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.query.Queryable;
import com.vent.a.f;
import com.vent.a.x;
import com.vent.d.c.b;
import com.vent.d.e;

public final class LayerPushReceiver
  extends BroadcastReceiver
{
  public static void a(Context paramContext, String paramString, Uri paramUri)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return;
      Object localObject = new Intent(paramContext, ActMain.class);
      ((Intent)localObject).addFlags(603979776);
      ((Intent)localObject).setClass(paramContext, ActMain.class);
      ((Intent)localObject).setAction("android.intent.action.VIEW");
      i = (int)Math.round(Math.random() * 2.147483647E9D);
      ((Intent)localObject).putExtra("id", i);
      ((Intent)localObject).putExtra("cmd", "layer");
      ((Intent)localObject).putExtra("data", paramUri);
      paramUri = PendingIntent.getActivity(paramContext, i, (Intent)localObject, 134217728);
      MyApplication.bt(paramContext);
      localObject = new aa.c(paramContext, (byte)0).ad(2131231007);
      ((aa.c)localObject).zA = BitmapFactory.decodeResource(paramContext.getResources(), 2131230904);
      paramString = ((aa.c)localObject).d(paramContext.getString(2131689903)).e(e.t(e.ex(paramString))).cZ();
      paramString.zx = paramUri;
      paramString.gS = 0;
      paramString.zS = "msg";
      paramUri = new aa.g();
      paramUri.Am = BitmapFactory.decodeResource(paramContext.getResources(), 2131231038);
      paramString = paramString.a(paramUri);
      paramString.zC = (bb.ciF + bb.ciG);
      bb.eH(3);
      bb.EA();
      if (Build.VERSION.SDK_INT >= 26)
      {
        paramString.zY = MyApplication.cgE;
        try
        {
          paramString = paramString.build();
          if (paramString != null)
          {
            paramContext = (NotificationManager)paramContext.getSystemService("notification");
            if (paramContext != null)
            {
              paramContext.notify(0, paramString);
              return;
            }
          }
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
          return;
        }
      }
    }
    paramString.zD = 0;
    if (bb.chY) {}
    for (int i = 2;; i = 0)
    {
      paramString.ae(i).c(paramContext.getResources().getColor(2131099873), 300, 1000).a(new long[] { 0L });
      if (!bb.chV) {
        break;
      }
      paramString.e(Uri.parse("android.resource://" + paramContext.getPackageName() + "/2131623936"));
      break;
    }
  }
  
  public final void onReceive(final Context paramContext, Intent paramIntent)
  {
    if (!(paramContext.getApplicationContext() instanceof MyApplication))
    {
      com.vent.d.c.h(1, "Android is buggy (3)");
      System.exit(0);
    }
    while (bb.ceP == null) {
      return;
    }
    final ba localba = ((MyApplication)paramContext.getApplicationContext()).DY();
    localba.El();
    com.vent.d.c.a(new AsyncTask()
    {
      Intent intent;
      
      private Void a(Object... paramAnonymousVarArgs)
      {
        this.intent = ((Intent)paramAnonymousVarArgs[0]);
        long l = SystemClock.elapsedRealtime();
        while ((bb.ceP != null) && (localba.state < 6) && (SystemClock.elapsedRealtime() - l <= 15000L)) {
          try
          {
            Thread.sleep(1000L, 0);
          }
          catch (InterruptedException paramAnonymousVarArgs) {}
        }
        return null;
      }
    }, paramIntent);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/LayerPushReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */