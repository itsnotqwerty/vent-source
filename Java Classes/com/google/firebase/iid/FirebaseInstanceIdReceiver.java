package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.content.e;
import android.util.Base64;
import android.util.Log;
import java.util.Queue;

public final class FirebaseInstanceIdReceiver
  extends e
{
  private static boolean beR = false;
  private static l beS;
  private static l beT;
  
  private final void a(Context paramContext, Intent paramIntent, String paramString)
  {
    int j = -1;
    paramIntent.setComponent(null);
    paramIntent.setPackage(paramContext.getPackageName());
    if (Build.VERSION.SDK_INT <= 18) {
      paramIntent.removeCategory(paramContext.getPackageName());
    }
    Object localObject = paramIntent.getStringExtra("gcm.rawData64");
    if (localObject != null)
    {
      paramIntent.putExtra("rawData", Base64.decode((String)localObject, 0));
      paramIntent.removeExtra("gcm.rawData64");
    }
    if (("google.com/iid".equals(paramIntent.getStringExtra("from"))) || ("com.google.firebase.INSTANCE_ID_EVENT".equals(paramString)))
    {
      paramString = "com.google.firebase.INSTANCE_ID_EVENT";
      i = j;
      if (paramString != null) {
        if ((!com.google.android.gms.common.util.l.oK()) || (paramContext.getApplicationInfo().targetSdkVersion < 26)) {
          break label206;
        }
      }
    }
    label206:
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        break label212;
      }
      if (isOrderedBroadcast()) {
        setResultCode(-1);
      }
      r(paramContext, paramString).a(paramIntent, goAsync());
      i = j;
      if (isOrderedBroadcast()) {
        setResultCode(i);
      }
      return;
      if (("com.google.android.c2dm.intent.RECEIVE".equals(paramString)) || ("com.google.firebase.MESSAGING_EVENT".equals(paramString)))
      {
        paramString = "com.google.firebase.MESSAGING_EVENT";
        break;
      }
      Log.d("FirebaseInstanceId", "Unexpected intent");
      paramString = null;
      break;
    }
    label212:
    localObject = ac.uW();
    switch (paramString.hashCode())
    {
    default: 
      i = j;
      switch (i)
      {
      default: 
        label252:
        paramContext = String.valueOf(paramString);
        if (paramContext.length() == 0) {}
        break;
      }
      break;
    }
    for (paramContext = "Unknown service action: ".concat(paramContext);; paramContext = new String("Unknown service action: "))
    {
      Log.w("FirebaseInstanceId", paramContext);
      i = 500;
      break;
      i = j;
      if (!paramString.equals("com.google.firebase.INSTANCE_ID_EVENT")) {
        break label252;
      }
      i = 0;
      break label252;
      i = j;
      if (!paramString.equals("com.google.firebase.MESSAGING_EVENT")) {
        break label252;
      }
      i = 1;
      break label252;
      ((ac)localObject).bfT.offer(paramIntent);
      for (;;)
      {
        paramIntent = new Intent(paramString);
        paramIntent.setPackage(paramContext.getPackageName());
        i = ((ac)localObject).d(paramContext, paramIntent);
        break;
        ((ac)localObject).bfU.offer(paramIntent);
      }
    }
  }
  
  /* Error */
  private static l r(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 117
    //   5: aload_1
    //   6: invokevirtual 76	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   9: ifeq +30 -> 39
    //   12: getstatic 172	com/google/firebase/iid/FirebaseInstanceIdReceiver:beT	Lcom/google/firebase/iid/l;
    //   15: ifnonnull +15 -> 30
    //   18: new 110	com/google/firebase/iid/l
    //   21: dup
    //   22: aload_0
    //   23: aload_1
    //   24: invokespecial 175	com/google/firebase/iid/l:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   27: putstatic 172	com/google/firebase/iid/FirebaseInstanceIdReceiver:beT	Lcom/google/firebase/iid/l;
    //   30: getstatic 172	com/google/firebase/iid/FirebaseInstanceIdReceiver:beT	Lcom/google/firebase/iid/l;
    //   33: astore_0
    //   34: ldc 2
    //   36: monitorexit
    //   37: aload_0
    //   38: areturn
    //   39: getstatic 177	com/google/firebase/iid/FirebaseInstanceIdReceiver:beS	Lcom/google/firebase/iid/l;
    //   42: ifnonnull +15 -> 57
    //   45: new 110	com/google/firebase/iid/l
    //   48: dup
    //   49: aload_0
    //   50: aload_1
    //   51: invokespecial 175	com/google/firebase/iid/l:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   54: putstatic 177	com/google/firebase/iid/FirebaseInstanceIdReceiver:beS	Lcom/google/firebase/iid/l;
    //   57: getstatic 177	com/google/firebase/iid/FirebaseInstanceIdReceiver:beS	Lcom/google/firebase/iid/l;
    //   60: astore_0
    //   61: goto -27 -> 34
    //   64: astore_0
    //   65: ldc 2
    //   67: monitorexit
    //   68: aload_0
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	paramContext	Context
    //   0	70	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   3	30	64	finally
    //   30	34	64	finally
    //   39	57	64	finally
    //   57	61	64	finally
  }
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    Parcelable localParcelable = paramIntent.getParcelableExtra("wrapped_intent");
    if ((localParcelable instanceof Intent))
    {
      a(paramContext, (Intent)localParcelable, paramIntent.getAction());
      return;
    }
    a(paramContext, paramIntent, paramIntent.getAction());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/FirebaseInstanceIdReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */