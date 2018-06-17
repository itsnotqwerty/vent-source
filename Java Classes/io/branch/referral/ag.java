package io.branch.referral;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Process;
import android.provider.Settings.Secure;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

final class ag
{
  String cBF = null;
  int cBG = 0;
  boolean cBH;
  Context cvX;
  
  public ag(Context paramContext)
  {
    this.cvX = paramContext;
    this.cBH = true;
  }
  
  public static String Hw()
  {
    Object localObject1 = "";
    Object localObject2 = localObject1;
    try
    {
      Iterator localIterator1 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
      localObject2 = localObject1;
      if (localIterator1.hasNext())
      {
        localObject2 = localObject1;
        Iterator localIterator2 = Collections.list(((NetworkInterface)localIterator1.next()).getInetAddresses()).iterator();
        label123:
        for (;;)
        {
          localObject2 = localObject1;
          if (!localIterator2.hasNext()) {
            break;
          }
          localObject2 = localObject1;
          Object localObject3 = (InetAddress)localIterator2.next();
          localObject2 = localObject1;
          if (!((InetAddress)localObject3).isLoopbackAddress())
          {
            localObject2 = localObject1;
            localObject3 = ((InetAddress)localObject3).getHostAddress();
            localObject2 = localObject1;
            int i = ((String)localObject3).indexOf(':');
            if (i < 0) {}
            for (i = 1;; i = 0)
            {
              if (i == 0) {
                break label123;
              }
              localObject1 = localObject3;
              break;
            }
          }
        }
      }
      return (String)localObject1;
    }
    catch (Throwable localThrowable) {}
    return (String)localObject2;
  }
  
  public final String Ht()
  {
    try
    {
      Object localObject = this.cvX.getPackageManager().getPackageInfo(this.cvX.getPackageName(), 0);
      if (((PackageInfo)localObject).versionName != null)
      {
        localObject = ((PackageInfo)localObject).versionName;
        return (String)localObject;
      }
      return "bnc_no_value";
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return "bnc_no_value";
  }
  
  @SuppressLint({"NewApi"})
  public final int Hu()
  {
    q.bT(this.cvX);
    Object localObject = Ht();
    if ("bnc_no_value".equals(q.getString("bnc_app_version"))) {
      if (Build.VERSION.SDK_INT < 9) {}
    }
    while (!q.getString("bnc_app_version").equals(localNameNotFoundException))
    {
      try
      {
        localObject = this.cvX.getPackageManager().getPackageInfo(this.cvX.getPackageName(), 0);
        long l1 = ((PackageInfo)localObject).lastUpdateTime;
        long l2 = ((PackageInfo)localObject).firstInstallTime;
        if (l1 != l2) {
          return 2;
        }
        return 0;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
      return 0;
    }
    return 1;
  }
  
  public final Object Hv()
  {
    try
    {
      Object localObject = Class.forName("com.google.android.gms.ads.c.a").getMethod("getAdvertisingIdInfo", new Class[] { Context.class }).invoke(null, new Object[] { this.cvX });
      return localObject;
    }
    catch (Throwable localThrowable) {}
    return null;
  }
  
  public final String an(Object paramObject)
  {
    try
    {
      this.cBF = ((String)paramObject.getClass().getMethod("getId", new Class[0]).invoke(paramObject, new Object[0]));
      return this.cBF;
    }
    catch (Exception paramObject)
    {
      for (;;) {}
    }
  }
  
  public final int ao(Object paramObject)
  {
    for (;;)
    {
      try
      {
        if (!((Boolean)paramObject.getClass().getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(paramObject, new Object[0])).booleanValue()) {
          continue;
        }
        i = 1;
        this.cBG = i;
      }
      catch (Exception paramObject)
      {
        int i;
        continue;
      }
      return this.cBG;
      i = 0;
    }
  }
  
  public final String bt(boolean paramBoolean)
  {
    if (this.cvX != null)
    {
      String str1 = null;
      if (!paramBoolean) {
        str1 = Settings.Secure.getString(this.cvX.getContentResolver(), "android_id");
      }
      String str2 = str1;
      if (str1 == null)
      {
        str2 = UUID.randomUUID().toString();
        this.cBH = false;
      }
      return str2;
    }
    return "bnc_no_value";
  }
  
  /* Error */
  public final String eR(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 31	io/branch/referral/ag:cvX	Landroid/content/Context;
    //   4: ldc -43
    //   6: invokevirtual 217	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   9: checkcast 219	android/app/ActivityManager
    //   12: astore_2
    //   13: new 221	android/app/ActivityManager$MemoryInfo
    //   16: dup
    //   17: invokespecial 222	android/app/ActivityManager$MemoryInfo:<init>	()V
    //   20: astore_3
    //   21: aload_2
    //   22: aload_3
    //   23: invokevirtual 226	android/app/ActivityManager:getMemoryInfo	(Landroid/app/ActivityManager$MemoryInfo;)V
    //   26: aload_3
    //   27: getfield 229	android/app/ActivityManager$MemoryInfo:lowMemory	Z
    //   30: ifne +182 -> 212
    //   33: aload_0
    //   34: getfield 31	io/branch/referral/ag:cvX	Landroid/content/Context;
    //   37: invokevirtual 94	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   40: astore_2
    //   41: aload_2
    //   42: aload_1
    //   43: iconst_0
    //   44: invokevirtual 233	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   47: getfield 238	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   50: astore_1
    //   51: new 240	java/util/jar/JarFile
    //   54: dup
    //   55: aload_1
    //   56: invokespecial 243	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   59: astore_2
    //   60: aload_2
    //   61: aload_2
    //   62: ldc -11
    //   64: invokevirtual 249	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   67: invokevirtual 253	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   70: astore_1
    //   71: aload_1
    //   72: invokevirtual 258	java/io/InputStream:available	()I
    //   75: newarray <illegal type>
    //   77: astore_3
    //   78: aload_1
    //   79: aload_3
    //   80: invokevirtual 262	java/io/InputStream:read	([B)I
    //   83: pop
    //   84: new 264	io/branch/referral/b
    //   87: dup
    //   88: invokespecial 265	io/branch/referral/b:<init>	()V
    //   91: pop
    //   92: aload_3
    //   93: invokestatic 269	io/branch/referral/b:y	([B)Ljava/lang/String;
    //   96: astore_3
    //   97: aload_1
    //   98: ifnull +7 -> 105
    //   101: aload_1
    //   102: invokevirtual 272	java/io/InputStream:close	()V
    //   105: aload_2
    //   106: invokevirtual 273	java/util/jar/JarFile:close	()V
    //   109: aload_3
    //   110: areturn
    //   111: astore_1
    //   112: aconst_null
    //   113: astore_1
    //   114: aconst_null
    //   115: astore_2
    //   116: aload_1
    //   117: ifnull +7 -> 124
    //   120: aload_1
    //   121: invokevirtual 272	java/io/InputStream:close	()V
    //   124: aload_2
    //   125: ifnull +7 -> 132
    //   128: aload_2
    //   129: invokevirtual 273	java/util/jar/JarFile:close	()V
    //   132: ldc 110
    //   134: areturn
    //   135: astore_1
    //   136: ldc 110
    //   138: areturn
    //   139: astore_1
    //   140: aconst_null
    //   141: astore_2
    //   142: aconst_null
    //   143: astore_3
    //   144: aload_2
    //   145: ifnull +7 -> 152
    //   148: aload_2
    //   149: invokevirtual 272	java/io/InputStream:close	()V
    //   152: aload_3
    //   153: ifnull +7 -> 160
    //   156: aload_3
    //   157: invokevirtual 273	java/util/jar/JarFile:close	()V
    //   160: aload_1
    //   161: athrow
    //   162: astore_1
    //   163: ldc 110
    //   165: areturn
    //   166: astore_1
    //   167: aload_3
    //   168: areturn
    //   169: astore_2
    //   170: goto -10 -> 160
    //   173: astore_1
    //   174: aconst_null
    //   175: astore 4
    //   177: aload_2
    //   178: astore_3
    //   179: aload 4
    //   181: astore_2
    //   182: goto -38 -> 144
    //   185: astore_3
    //   186: aload_1
    //   187: astore 4
    //   189: aload_3
    //   190: astore_1
    //   191: aload_2
    //   192: astore_3
    //   193: aload 4
    //   195: astore_2
    //   196: goto -52 -> 144
    //   199: astore_1
    //   200: aconst_null
    //   201: astore_1
    //   202: goto -86 -> 116
    //   205: astore_3
    //   206: goto -90 -> 116
    //   209: astore_1
    //   210: aload_3
    //   211: areturn
    //   212: ldc 110
    //   214: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	215	0	this	ag
    //   0	215	1	paramString	String
    //   12	137	2	localObject1	Object
    //   169	9	2	localIOException	java.io.IOException
    //   181	15	2	localObject2	Object
    //   20	159	3	localObject3	Object
    //   185	5	3	localObject4	Object
    //   192	1	3	localObject5	Object
    //   205	6	3	localException	Exception
    //   175	19	4	str	String
    // Exception table:
    //   from	to	target	type
    //   51	60	111	java/lang/Exception
    //   120	124	135	java/io/IOException
    //   128	132	135	java/io/IOException
    //   51	60	139	finally
    //   41	51	162	android/content/pm/PackageManager$NameNotFoundException
    //   120	124	162	android/content/pm/PackageManager$NameNotFoundException
    //   128	132	162	android/content/pm/PackageManager$NameNotFoundException
    //   148	152	162	android/content/pm/PackageManager$NameNotFoundException
    //   156	160	162	android/content/pm/PackageManager$NameNotFoundException
    //   160	162	162	android/content/pm/PackageManager$NameNotFoundException
    //   101	105	166	android/content/pm/PackageManager$NameNotFoundException
    //   105	109	166	android/content/pm/PackageManager$NameNotFoundException
    //   148	152	169	java/io/IOException
    //   156	160	169	java/io/IOException
    //   60	71	173	finally
    //   71	97	185	finally
    //   60	71	199	java/lang/Exception
    //   71	97	205	java/lang/Exception
    //   101	105	209	java/io/IOException
    //   105	109	209	java/io/IOException
  }
  
  public final String getPackageName()
  {
    try
    {
      String str = this.cvX.getPackageManager().getPackageInfo(this.cvX.getPackageName(), 0).packageName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "";
  }
  
  static abstract interface a
  {
    public abstract void Gv();
  }
  
  private final class b
    extends e<Void, Void, Void>
  {
    private final ag.a cBI;
    
    public b(ag.a parama)
    {
      this.cBI = parama;
    }
    
    private Void Bq()
    {
      final CountDownLatch localCountDownLatch = new CountDownLatch(1);
      new Thread(new Runnable()
      {
        public final void run()
        {
          Process.setThreadPriority(-19);
          Object localObject = ag.this.Hv();
          ag.this.an(localObject);
          ag.this.ao(localObject);
          localCountDownLatch.countDown();
        }
      }).start();
      try
      {
        localCountDownLatch.await(1500L, TimeUnit.MILLISECONDS);
        return null;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */