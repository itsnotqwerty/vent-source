package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;
import com.google.firebase.a;
import java.io.IOException;

final class d
  implements Runnable
{
  private final z beM;
  private final long beX;
  private final PowerManager.WakeLock beY;
  private final FirebaseInstanceId beZ;
  
  d(FirebaseInstanceId paramFirebaseInstanceId, z paramz, long paramLong)
  {
    this.beZ = paramFirebaseInstanceId;
    this.beM = paramz;
    this.beX = paramLong;
    this.beY = ((PowerManager)getContext().getSystemService("power")).newWakeLock(1, "fiid-sync");
    this.beY.setReferenceCounted(false);
  }
  
  private final boolean df(String paramString)
  {
    Object localObject1 = paramString.split("!");
    int j;
    int i;
    if (localObject1.length == 2)
    {
      paramString = localObject1[0];
      localObject1 = localObject1[1];
      j = -1;
      i = j;
      try
      {
        switch (paramString.hashCode())
        {
        case 83: 
          i = j;
          if (!paramString.equals("S")) {
            break label498;
          }
          i = 0;
        }
      }
      catch (IOException paramString)
      {
        FirebaseInstanceId localFirebaseInstanceId;
        Object localObject2;
        paramString = String.valueOf(paramString.getMessage());
        if (paramString.length() == 0) {
          break label483;
        }
        for (paramString = "Topic sync failed: ".concat(paramString);; paramString = new String("Topic sync failed: "))
        {
          Log.e("FirebaseInstanceId", paramString);
          return false;
          Bundle localBundle = new Bundle();
          paramString = String.valueOf("/topics/");
          String str = String.valueOf(localObject1);
          if (str.length() != 0)
          {
            paramString = paramString.concat(str);
            localBundle.putString("gcm.topic", paramString);
            localObject2 = ((c)localObject2).beW;
            paramString = String.valueOf("/topics/");
            localObject1 = String.valueOf(localObject1);
            if (((String)localObject1).length() == 0) {
              break label287;
            }
          }
          for (paramString = paramString.concat((String)localObject1);; paramString = new String(paramString))
          {
            localFirebaseInstanceId.b((String)localObject2, paramString, localBundle);
            if (!FirebaseInstanceId.uy()) {
              break label520;
            }
            Log.d("FirebaseInstanceId", "subscribe operation succeeded");
            return true;
            paramString = new String(paramString);
            break;
          }
          localFirebaseInstanceId = this.beZ;
          localObject2 = localFirebaseInstanceId.uw();
          if ((localObject2 == null) || (((c)localObject2).de(localFirebaseInstanceId.beM.uR()))) {
            throw new IOException("token not available");
          }
          localBundle = new Bundle();
          paramString = String.valueOf("/topics/");
          str = String.valueOf(localObject1);
          if (str.length() != 0)
          {
            paramString = paramString.concat(str);
            localBundle.putString("gcm.topic", paramString);
            localBundle.putString("delete", "1");
            localObject2 = ((c)localObject2).beW;
            paramString = String.valueOf("/topics/");
            localObject1 = String.valueOf(localObject1);
            if (((String)localObject1).length() == 0) {
              break label471;
            }
          }
          for (paramString = paramString.concat((String)localObject1);; paramString = new String(paramString))
          {
            localFirebaseInstanceId.b((String)localObject2, paramString, localBundle);
            if (!FirebaseInstanceId.uy()) {
              break label520;
            }
            Log.d("FirebaseInstanceId", "unsubscribe operation succeeded");
            return true;
            paramString = new String(paramString);
            break;
          }
        }
        i = j;
        switch (i)
        {
        }
      }
      i = j;
      if (paramString.equals("U"))
      {
        i = 1;
        break label498;
        localFirebaseInstanceId = this.beZ;
        localObject2 = localFirebaseInstanceId.uw();
        if ((localObject2 == null) || (((c)localObject2).de(localFirebaseInstanceId.beM.uR()))) {
          throw new IOException("token not available");
        }
      }
    }
    label287:
    label471:
    label483:
    label498:
    label520:
    return true;
  }
  
  private final boolean uH()
  {
    Object localObject1 = this.beZ.uw();
    if ((localObject1 != null) && (!((c)localObject1).de(this.beM.uR()))) {}
    for (;;)
    {
      return true;
      try
      {
        Object localObject2 = this.beZ;
        localObject2 = ((FirebaseInstanceId)localObject2).I(z.b(((FirebaseInstanceId)localObject2).beL), "*");
        if (localObject2 == null)
        {
          Log.e("FirebaseInstanceId", "Token retrieval failed: null");
          return false;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
          Log.d("FirebaseInstanceId", "Token successfully retrieved");
        }
        if ((localObject1 != null) && ((localObject1 == null) || (((String)localObject2).equals(((c)localObject1).beW)))) {
          continue;
        }
        localObject1 = getContext();
        localObject2 = new Intent("com.google.firebase.iid.TOKEN_REFRESH");
        Intent localIntent = new Intent("com.google.firebase.INSTANCE_ID_EVENT");
        localIntent.setClass((Context)localObject1, FirebaseInstanceIdReceiver.class);
        localIntent.putExtra("wrapped_intent", (Parcelable)localObject2);
        ((Context)localObject1).sendBroadcast(localIntent);
        return true;
      }
      catch (IOException localIOException)
      {
        String str = String.valueOf(localIOException.getMessage());
        if (str.length() != 0) {}
        for (str = "Token retrieval failed: ".concat(str);; str = new String("Token retrieval failed: "))
        {
          Log.e("FirebaseInstanceId", str);
          return false;
        }
      }
      catch (SecurityException localSecurityException)
      {
        for (;;) {}
      }
    }
  }
  
  private final boolean uI()
  {
    for (;;)
    {
      synchronized (this.beZ)
      {
        String str1 = FirebaseInstanceId.ux().uF();
        if (str1 == null)
        {
          Log.d("FirebaseInstanceId", "topic sync succeeded");
          return true;
        }
        if (!df(str1)) {
          return false;
        }
      }
      FirebaseInstanceId.ux().cZ(str2);
    }
  }
  
  final Context getContext()
  {
    return this.beZ.beL.getApplicationContext();
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 47	com/google/firebase/iid/d:beY	Landroid/os/PowerManager$WakeLock;
    //   6: invokevirtual 238	android/os/PowerManager$WakeLock:acquire	()V
    //   9: aload_0
    //   10: getfield 21	com/google/firebase/iid/d:beZ	Lcom/google/firebase/iid/FirebaseInstanceId;
    //   13: iconst_1
    //   14: invokevirtual 241	com/google/firebase/iid/FirebaseInstanceId:aE	(Z)V
    //   17: aload_0
    //   18: getfield 23	com/google/firebase/iid/d:beM	Lcom/google/firebase/iid/z;
    //   21: invokevirtual 244	com/google/firebase/iid/z:uQ	()I
    //   24: ifeq +23 -> 47
    //   27: iload_1
    //   28: ifne +24 -> 52
    //   31: aload_0
    //   32: getfield 21	com/google/firebase/iid/d:beZ	Lcom/google/firebase/iid/FirebaseInstanceId;
    //   35: iconst_0
    //   36: invokevirtual 241	com/google/firebase/iid/FirebaseInstanceId:aE	(Z)V
    //   39: aload_0
    //   40: getfield 47	com/google/firebase/iid/d:beY	Landroid/os/PowerManager$WakeLock;
    //   43: invokevirtual 247	android/os/PowerManager$WakeLock:release	()V
    //   46: return
    //   47: iconst_0
    //   48: istore_1
    //   49: goto -22 -> 27
    //   52: aload_0
    //   53: invokevirtual 250	com/google/firebase/iid/d:uJ	()Z
    //   56: ifne +59 -> 115
    //   59: new 252	com/google/firebase/iid/e
    //   62: dup
    //   63: aload_0
    //   64: invokespecial 255	com/google/firebase/iid/e:<init>	(Lcom/google/firebase/iid/d;)V
    //   67: astore_2
    //   68: invokestatic 148	com/google/firebase/iid/FirebaseInstanceId:uy	()Z
    //   71: ifeq +12 -> 83
    //   74: ldc 119
    //   76: ldc_w 257
    //   79: invokestatic 153	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   82: pop
    //   83: new 259	android/content/IntentFilter
    //   86: dup
    //   87: ldc_w 261
    //   90: invokespecial 262	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   93: astore_3
    //   94: aload_2
    //   95: getfield 266	com/google/firebase/iid/e:bfa	Lcom/google/firebase/iid/d;
    //   98: invokevirtual 29	com/google/firebase/iid/d:getContext	()Landroid/content/Context;
    //   101: aload_2
    //   102: aload_3
    //   103: invokevirtual 270	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   106: pop
    //   107: aload_0
    //   108: getfield 47	com/google/firebase/iid/d:beY	Landroid/os/PowerManager$WakeLock;
    //   111: invokevirtual 247	android/os/PowerManager$WakeLock:release	()V
    //   114: return
    //   115: aload_0
    //   116: invokespecial 272	com/google/firebase/iid/d:uH	()Z
    //   119: ifeq +26 -> 145
    //   122: aload_0
    //   123: invokespecial 274	com/google/firebase/iid/d:uI	()Z
    //   126: ifeq +19 -> 145
    //   129: aload_0
    //   130: getfield 21	com/google/firebase/iid/d:beZ	Lcom/google/firebase/iid/FirebaseInstanceId;
    //   133: iconst_0
    //   134: invokevirtual 241	com/google/firebase/iid/FirebaseInstanceId:aE	(Z)V
    //   137: aload_0
    //   138: getfield 47	com/google/firebase/iid/d:beY	Landroid/os/PowerManager$WakeLock;
    //   141: invokevirtual 247	android/os/PowerManager$WakeLock:release	()V
    //   144: return
    //   145: aload_0
    //   146: getfield 21	com/google/firebase/iid/d:beZ	Lcom/google/firebase/iid/FirebaseInstanceId;
    //   149: aload_0
    //   150: getfield 25	com/google/firebase/iid/d:beX	J
    //   153: invokevirtual 278	com/google/firebase/iid/FirebaseInstanceId:H	(J)V
    //   156: goto -19 -> 137
    //   159: astore_2
    //   160: aload_0
    //   161: getfield 47	com/google/firebase/iid/d:beY	Landroid/os/PowerManager$WakeLock;
    //   164: invokevirtual 247	android/os/PowerManager$WakeLock:release	()V
    //   167: aload_2
    //   168: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	d
    //   1	48	1	i	int
    //   67	35	2	locale	e
    //   159	9	2	localObject	Object
    //   93	10	3	localIntentFilter	android.content.IntentFilter
    // Exception table:
    //   from	to	target	type
    //   9	27	159	finally
    //   31	39	159	finally
    //   52	83	159	finally
    //   83	107	159	finally
    //   115	137	159	finally
    //   145	156	159	finally
  }
  
  final boolean uJ()
  {
    Object localObject = (ConnectivityManager)getContext().getSystemService("connectivity");
    if (localObject != null) {}
    for (localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo(); (localObject != null) && (((NetworkInfo)localObject).isConnected()); localObject = null) {
      return true;
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */