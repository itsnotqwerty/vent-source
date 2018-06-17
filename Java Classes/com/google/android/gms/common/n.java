package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.a.c;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.c;

final class n
{
  private static volatile y aJM;
  private static final Object aJN = new Object();
  private static Context aJO;
  
  /* Error */
  static void N(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 22	com/google/android/gms/common/n:aJO	Landroid/content/Context;
    //   6: ifnonnull +18 -> 24
    //   9: aload_0
    //   10: ifnull +10 -> 20
    //   13: aload_0
    //   14: invokevirtual 28	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   17: putstatic 22	com/google/android/gms/common/n:aJO	Landroid/content/Context;
    //   20: ldc 2
    //   22: monitorexit
    //   23: return
    //   24: ldc 30
    //   26: ldc 32
    //   28: invokestatic 38	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   31: pop
    //   32: goto -12 -> 20
    //   35: astore_0
    //   36: ldc 2
    //   38: monitorexit
    //   39: aload_0
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   3	9	35	finally
    //   13	20	35	finally
    //   24	32	35	finally
  }
  
  static w a(String paramString, o paramo, boolean paramBoolean)
  {
    boolean bool1 = true;
    try
    {
      if (aJM == null) {
        ae.E(aJO);
      }
      synchronized (aJN)
      {
        if (aJM == null) {
          aJM = z.g(DynamiteModule.a(aJO, DynamiteModule.aKv, "com.google.android.gms.googlecertificates").bn("com.google.android.gms.common.GoogleCertificatesImpl"));
        }
        ae.E(aJO);
        ??? = new u(paramString, paramo, paramBoolean);
      }
    }
    catch (DynamiteModule.c paramString)
    {
      boolean bool2;
      return w.a("module init", paramString);
    }
    try
    {
      bool2 = aJM.a((u)???, c.Q(aJO.getPackageManager()));
      if (!bool2) {
        break label134;
      }
      return w.oP();
    }
    catch (RemoteException paramString)
    {
      Log.e("GoogleCertificates", "Failed to get Google certificates from remote", paramString);
      return w.a("module call", paramString);
    }
    paramString = finally;
    throw paramString;
    label134:
    if ((!paramBoolean) && (a(paramString, paramo, true).aJY)) {}
    for (;;)
    {
      return w.a(paramString, paramo, paramBoolean, bool1);
      bool1 = false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */