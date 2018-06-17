package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller.SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.a.b;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.util.g;
import com.google.android.gms.common.util.l;
import com.google.android.gms.common.util.q;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ee;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class y
{
  @Deprecated
  public static final int aCp = 12211000;
  private static boolean aKd = false;
  private static boolean aKe = false;
  private static boolean aKf = false;
  private static boolean aKg = false;
  static final AtomicBoolean aKh = new AtomicBoolean();
  private static final AtomicBoolean aKi = new AtomicBoolean();
  
  @Deprecated
  public static int K(Context paramContext)
  {
    boolean bool2 = true;
    try
    {
      paramContext.getResources().getString(a.b.common_google_play_services_unknown_issue);
      if ((!"com.google.android.gms".equals(paramContext.getPackageName())) && (!aKi.get()))
      {
        i = ab.C(paramContext);
        if (i == 0) {
          throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
      }
    }
    catch (Throwable localThrowable)
    {
      int i;
      for (;;)
      {
        Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
      }
      if (i != aCp)
      {
        int j = aCp;
        throw new IllegalStateException(320 + "The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + j + " but found " + i + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
      }
    }
    if (!g.H(paramContext)) {
      if (g.aJx == null)
      {
        if ((paramContext.getPackageManager().hasSystemFeature("android.hardware.type.iot")) || (paramContext.getPackageManager().hasSystemFeature("android.hardware.type.embedded")))
        {
          bool1 = true;
          g.aJx = Boolean.valueOf(bool1);
        }
      }
      else {
        if (g.aJx.booleanValue()) {
          break label194;
        }
      }
    }
    label194:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return a(paramContext, bool1, aCp);
      bool1 = false;
      break;
    }
  }
  
  @Deprecated
  public static void L(Context paramContext)
  {
    if (aKh.getAndSet(true)) {}
    for (;;)
    {
      return;
      try
      {
        paramContext = (NotificationManager)paramContext.getSystemService("notification");
        if (paramContext != null)
        {
          paramContext.cancel(10436);
          return;
        }
      }
      catch (SecurityException paramContext) {}
    }
  }
  
  @Deprecated
  public static int M(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.google.android.gms", 0);
      return paramContext.versionCode;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
    }
    return 0;
  }
  
  public static boolean O(Context paramContext)
  {
    boolean bool = false;
    if (!aKg) {}
    for (;;)
    {
      try
      {
        PackageInfo localPackageInfo = ee.ag(paramContext).getPackageInfo("com.google.android.gms", 64);
        z.Q(paramContext);
        if ((localPackageInfo == null) || (z.a(localPackageInfo, false)) || (!z.a(localPackageInfo, true))) {
          continue;
        }
        aKf = true;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", paramContext);
        aKg = true;
        continue;
      }
      finally
      {
        aKg = true;
      }
      if ((aKf) || (!"user".equals(Build.TYPE))) {
        bool = true;
      }
      return bool;
      aKf = false;
    }
  }
  
  public static Context P(Context paramContext)
  {
    try
    {
      paramContext = paramContext.createPackageContext("com.google.android.gms", 3);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  /* Error */
  private static int a(Context paramContext, boolean paramBoolean, int paramInt)
  {
    // Byte code:
    //   0: iconst_1
    //   1: invokestatic 236	com/google/android/gms/common/internal/ae:au	(Z)V
    //   4: aload_0
    //   5: invokevirtual 132	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   8: astore 5
    //   10: aconst_null
    //   11: astore 4
    //   13: iload_1
    //   14: ifeq +15 -> 29
    //   17: aload 5
    //   19: ldc -18
    //   21: sipush 8256
    //   24: invokevirtual 182	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   27: astore 4
    //   29: aload 5
    //   31: ldc 61
    //   33: bipush 64
    //   35: invokevirtual 182	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   38: astore 6
    //   40: aload_0
    //   41: invokestatic 208	com/google/android/gms/common/z:Q	(Landroid/content/Context;)Lcom/google/android/gms/common/z;
    //   44: pop
    //   45: aload 6
    //   47: iconst_1
    //   48: invokestatic 211	com/google/android/gms/common/z:a	(Landroid/content/pm/PackageInfo;Z)Z
    //   51: ifne +37 -> 88
    //   54: ldc 89
    //   56: ldc -16
    //   58: invokestatic 192	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   61: pop
    //   62: bipush 9
    //   64: ireturn
    //   65: astore_0
    //   66: ldc 89
    //   68: ldc -14
    //   70: invokestatic 192	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   73: pop
    //   74: bipush 9
    //   76: ireturn
    //   77: astore_0
    //   78: ldc 89
    //   80: ldc -67
    //   82: invokestatic 192	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   85: pop
    //   86: iconst_1
    //   87: ireturn
    //   88: iload_1
    //   89: ifeq +43 -> 132
    //   92: aload 4
    //   94: iconst_1
    //   95: invokestatic 211	com/google/android/gms/common/z:a	(Landroid/content/pm/PackageInfo;Z)Z
    //   98: ifeq +23 -> 121
    //   101: aload 4
    //   103: getfield 246	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   106: iconst_0
    //   107: aaload
    //   108: aload 6
    //   110: getfield 246	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   113: iconst_0
    //   114: aaload
    //   115: invokevirtual 249	android/content/pm/Signature:equals	(Ljava/lang/Object;)Z
    //   118: ifne +14 -> 132
    //   121: ldc 89
    //   123: ldc -5
    //   125: invokestatic 192	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   128: pop
    //   129: bipush 9
    //   131: ireturn
    //   132: iload_2
    //   133: sipush 1000
    //   136: idiv
    //   137: istore_2
    //   138: aload 6
    //   140: getfield 187	android/content/pm/PackageInfo:versionCode	I
    //   143: sipush 1000
    //   146: idiv
    //   147: iload_2
    //   148: if_icmpge +51 -> 199
    //   151: getstatic 20	com/google/android/gms/common/y:aCp	I
    //   154: istore_2
    //   155: aload 6
    //   157: getfield 187	android/content/pm/PackageInfo:versionCode	I
    //   160: istore_3
    //   161: ldc 89
    //   163: new 99	java/lang/StringBuilder
    //   166: dup
    //   167: bipush 77
    //   169: invokespecial 102	java/lang/StringBuilder:<init>	(I)V
    //   172: ldc -3
    //   174: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: iload_2
    //   178: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   181: ldc 113
    //   183: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: iload_3
    //   187: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   190: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   193: invokestatic 192	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   196: pop
    //   197: iconst_2
    //   198: ireturn
    //   199: aload 6
    //   201: getfield 257	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   204: astore 4
    //   206: aload 4
    //   208: astore_0
    //   209: aload 4
    //   211: ifnonnull +12 -> 223
    //   214: aload 5
    //   216: ldc 61
    //   218: iconst_0
    //   219: invokevirtual 261	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   222: astore_0
    //   223: aload_0
    //   224: getfield 266	android/content/pm/ApplicationInfo:enabled	Z
    //   227: ifne +18 -> 245
    //   230: iconst_3
    //   231: ireturn
    //   232: astore_0
    //   233: ldc 89
    //   235: ldc_w 268
    //   238: aload_0
    //   239: invokestatic 271	android/util/Log:wtf	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   242: pop
    //   243: iconst_1
    //   244: ireturn
    //   245: iconst_0
    //   246: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	247	0	paramContext	Context
    //   0	247	1	paramBoolean	boolean
    //   0	247	2	paramInt	int
    //   160	27	3	i	int
    //   11	199	4	localObject	Object
    //   8	207	5	localPackageManager	PackageManager
    //   38	162	6	localPackageInfo	PackageInfo
    // Exception table:
    //   from	to	target	type
    //   17	29	65	android/content/pm/PackageManager$NameNotFoundException
    //   29	40	77	android/content/pm/PackageManager$NameNotFoundException
    //   214	223	232	android/content/pm/PackageManager$NameNotFoundException
  }
  
  @Deprecated
  @TargetApi(19)
  public static boolean a(Context paramContext, int paramInt, String paramString)
  {
    return q.a(paramContext, paramInt, paramString);
  }
  
  @Deprecated
  public static String cD(int paramInt)
  {
    return a.cB(paramInt);
  }
  
  @Deprecated
  public static boolean cO(int paramInt)
  {
    switch (paramInt)
    {
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    default: 
      return false;
    }
    return true;
  }
  
  @TargetApi(21)
  static boolean i(Context paramContext, String paramString)
  {
    boolean bool = paramString.equals("com.google.android.gms");
    if (l.oJ()) {
      try
      {
        localObject = paramContext.getPackageManager().getPackageInstaller().getAllSessions();
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          if (paramString.equals(((PackageInstaller.SessionInfo)((Iterator)localObject).next()).getAppPackageName())) {
            return true;
          }
        }
      }
      catch (Exception paramContext)
      {
        return false;
      }
    }
    Object localObject = paramContext.getPackageManager();
    try
    {
      paramString = ((PackageManager)localObject).getApplicationInfo(paramString, 8192);
      if (bool) {
        return paramString.enabled;
      }
      if (paramString.enabled)
      {
        if (l.oH())
        {
          paramContext = ((UserManager)paramContext.getSystemService("user")).getApplicationRestrictions(paramContext.getPackageName());
          if (paramContext != null)
          {
            bool = "true".equals(paramContext.getString("restricted_profile"));
            if (!bool) {}
          }
        }
        for (int i = 1; i == 0; i = 0) {
          return true;
        }
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  @Deprecated
  public static boolean t(Context paramContext, int paramInt)
  {
    if (paramInt == 18) {
      return true;
    }
    if (paramInt == 1) {
      return i(paramContext, "com.google.android.gms");
    }
    return false;
  }
  
  public static Resources x(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getResourcesForApplication("com.google.android.gms");
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */