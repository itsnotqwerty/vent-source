package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.aa.b;
import android.support.v4.app.aa.c;
import android.support.v4.app.j;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.ProgressBar;
import com.google.android.gms.a.a;
import com.google.android.gms.a.b;
import com.google.android.gms.common.api.internal.as;
import com.google.android.gms.common.api.internal.at;
import com.google.android.gms.common.api.internal.az;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.bb;
import com.google.android.gms.common.internal.bc;
import com.google.android.gms.common.util.l;
import java.util.concurrent.atomic.AtomicBoolean;

public final class c
  extends m
{
  private static final c aCn = new c();
  public static final int aCp = m.aCp;
  private static final Object mLock = new Object();
  private String aCo;
  
  public static Dialog a(Activity paramActivity, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    Object localObject = new ProgressBar(paramActivity, null, 16842874);
    ((ProgressBar)localObject).setIndeterminate(true);
    ((ProgressBar)localObject).setVisibility(0);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
    localBuilder.setView((View)localObject);
    localBuilder.setMessage(bb.p(paramActivity, 18));
    localBuilder.setPositiveButton("", null);
    localObject = localBuilder.create();
    a(paramActivity, (Dialog)localObject, "GooglePlayServicesUpdatingDialog", paramOnCancelListener);
    return (Dialog)localObject;
  }
  
  public static Dialog a(Context paramContext, int paramInt, bc parambc, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    AlertDialog.Builder localBuilder = null;
    if (paramInt == 0) {
      return null;
    }
    Object localObject = new TypedValue();
    paramContext.getTheme().resolveAttribute(16843529, (TypedValue)localObject, true);
    if ("Theme.Dialog.Alert".equals(paramContext.getResources().getResourceEntryName(((TypedValue)localObject).resourceId))) {
      localBuilder = new AlertDialog.Builder(paramContext, 5);
    }
    localObject = localBuilder;
    if (localBuilder == null) {
      localObject = new AlertDialog.Builder(paramContext);
    }
    ((AlertDialog.Builder)localObject).setMessage(bb.p(paramContext, paramInt));
    if (paramOnCancelListener != null) {
      ((AlertDialog.Builder)localObject).setOnCancelListener(paramOnCancelListener);
    }
    paramOnCancelListener = bb.r(paramContext, paramInt);
    if (paramOnCancelListener != null) {
      ((AlertDialog.Builder)localObject).setPositiveButton(paramOnCancelListener, parambc);
    }
    paramContext = bb.n(paramContext, paramInt);
    if (paramContext != null) {
      ((AlertDialog.Builder)localObject).setTitle(paramContext);
    }
    return ((AlertDialog.Builder)localObject).create();
  }
  
  public static as a(Context paramContext, at paramat)
  {
    Object localObject = new IntentFilter("android.intent.action.PACKAGE_ADDED");
    ((IntentFilter)localObject).addDataScheme("package");
    as localas = new as(paramat);
    paramContext.registerReceiver(localas, (IntentFilter)localObject);
    localas.mContext = paramContext;
    localObject = localas;
    if (!y.i(paramContext, "com.google.android.gms"))
    {
      paramat.nx();
      localas.unregister();
      localObject = null;
    }
    return (as)localObject;
  }
  
  @TargetApi(26)
  private final String a(Context paramContext, NotificationManager paramNotificationManager)
  {
    ae.at(l.oK());
    Object localObject2 = mS();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = "com.google.android.gms.availability";
      localObject2 = paramNotificationManager.getNotificationChannel("com.google.android.gms.availability");
      paramContext = bb.F(paramContext);
      if (localObject2 != null) {
        break label58;
      }
      paramNotificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", paramContext, 4));
    }
    label58:
    while (paramContext.equals(((NotificationChannel)localObject2).getName())) {
      return (String)localObject1;
    }
    ((NotificationChannel)localObject2).setName(paramContext);
    paramNotificationManager.createNotificationChannel((NotificationChannel)localObject2);
    return "com.google.android.gms.availability";
  }
  
  public static void a(Activity paramActivity, Dialog paramDialog, String paramString, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    if ((paramActivity instanceof j))
    {
      paramActivity = ((j)paramActivity).getSupportFragmentManager();
      g.b(paramDialog, paramOnCancelListener).a(paramActivity, paramString);
      return;
    }
    paramActivity = paramActivity.getFragmentManager();
    b.a(paramDialog, paramOnCancelListener).show(paramActivity, paramString);
  }
  
  public static boolean a(Activity paramActivity, az paramaz, int paramInt, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramaz = a(paramActivity, paramInt, bc.a(paramaz, m.b(paramActivity, paramInt, "d")), paramOnCancelListener);
    if (paramaz == null) {
      return false;
    }
    a(paramActivity, paramaz, "GooglePlayServicesErrorDialog", paramOnCancelListener);
    return true;
  }
  
  public static c mR()
  {
    return aCn;
  }
  
  private final String mS()
  {
    synchronized (mLock)
    {
      String str = this.aCo;
      return str;
    }
  }
  
  @TargetApi(20)
  public final void a(Context paramContext, int paramInt, PendingIntent paramPendingIntent)
  {
    if (paramInt == 18) {
      new a(paramContext).sendEmptyMessageDelayed(1, 120000L);
    }
    do
    {
      return;
      if (paramPendingIntent != null) {
        break;
      }
    } while (paramInt != 6);
    Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
    return;
    String str2 = bb.o(paramContext, paramInt);
    String str1 = bb.q(paramContext, paramInt);
    Object localObject = paramContext.getResources();
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    if (com.google.android.gms.common.util.g.H(paramContext))
    {
      ae.at(l.oI());
      paramPendingIntent = new Notification.Builder(paramContext).setSmallIcon(paramContext.getApplicationInfo().icon).setPriority(2).setAutoCancel(true).setContentTitle(str2).setStyle(new Notification.BigTextStyle().bigText(str1)).addAction(a.a.common_full_open_on_phone, ((Resources)localObject).getString(a.b.common_open_on_phone), paramPendingIntent);
      if ((l.oK()) && (l.oK())) {
        paramPendingIntent.setChannelId(a(paramContext, localNotificationManager));
      }
      paramContext = paramPendingIntent.build();
      switch (paramInt)
      {
      default: 
        paramInt = 39789;
      }
    }
    for (;;)
    {
      localNotificationManager.notify(paramInt, paramContext);
      return;
      localObject = new aa.c(paramContext, (byte)0).ad(17301642).f(((Resources)localObject).getString(a.b.common_google_play_services_notification_ticker));
      long l = System.currentTimeMillis();
      ((aa.c)localObject).Ad.when = l;
      localObject = ((aa.c)localObject).cZ();
      ((aa.c)localObject).zx = paramPendingIntent;
      paramPendingIntent = ((aa.c)localObject).d(str2).e(str1);
      paramPendingIntent.zP = true;
      paramPendingIntent = paramPendingIntent.a(new aa.b().c(str1));
      if ((l.oK()) && (l.oK())) {
        paramPendingIntent.zY = a(paramContext, localNotificationManager);
      }
      paramContext = paramPendingIntent.build();
      break;
      paramInt = 10436;
      y.aKh.set(false);
    }
  }
  
  public final PendingIntent b(Context paramContext, int paramInt1, int paramInt2)
  {
    return super.b(paramContext, paramInt1, paramInt2);
  }
  
  public final boolean cC(int paramInt)
  {
    return super.cC(paramInt);
  }
  
  public final String cD(int paramInt)
  {
    return super.cD(paramInt);
  }
  
  public final int w(Context paramContext)
  {
    return super.w(paramContext);
  }
  
  @SuppressLint({"HandlerLeak"})
  final class a
    extends Handler
  {
    private final Context aCq;
    
    public a(Context paramContext) {}
    
    public final void handleMessage(Message paramMessage)
    {
      int i;
      switch (paramMessage.what)
      {
      default: 
        i = paramMessage.what;
        Log.w("GoogleApiAvailability", 50 + "Don't know how to handle this message: " + i);
      }
      do
      {
        return;
        i = c.this.w(this.aCq);
      } while (!c.this.cC(i));
      paramMessage = c.this;
      Context localContext = this.aCq;
      paramMessage.a(localContext, i, m.a(localContext, i, 0, "n"));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */