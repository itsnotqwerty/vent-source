package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.ah;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class n
{
  private static volatile n aBz;
  private final List<Object> aBA;
  private final i aBB;
  public final a aBC;
  private volatile ah aBD;
  public Thread.UncaughtExceptionHandler aBE;
  public final Context mContext;
  
  private n(Context paramContext)
  {
    paramContext = paramContext.getApplicationContext();
    ae.E(paramContext);
    this.mContext = paramContext;
    this.aBC = new a();
    this.aBA = new CopyOnWriteArrayList();
    this.aBB = new i();
  }
  
  public static void mN()
  {
    if (!(Thread.currentThread() instanceof c)) {
      throw new IllegalStateException("Call expected from worker thread");
    }
  }
  
  public static n u(Context paramContext)
  {
    ae.E(paramContext);
    if (aBz == null) {}
    try
    {
      if (aBz == null) {
        aBz = new n(paramContext);
      }
      return aBz;
    }
    finally {}
  }
  
  public final <V> Future<V> a(Callable<V> paramCallable)
  {
    ae.E(paramCallable);
    if ((Thread.currentThread() instanceof c))
    {
      paramCallable = new FutureTask(paramCallable);
      paramCallable.run();
      return paramCallable;
    }
    return this.aBC.submit(paramCallable);
  }
  
  public final void h(Runnable paramRunnable)
  {
    ae.E(paramRunnable);
    this.aBC.submit(paramRunnable);
  }
  
  public final ah mM()
  {
    if (this.aBD == null) {}
    label202:
    for (;;)
    {
      try
      {
        ah localah;
        PackageManager localPackageManager;
        String str3;
        Object localObject5;
        Object localObject3;
        if (this.aBD == null)
        {
          localah = new ah();
          localPackageManager = this.mContext.getPackageManager();
          str3 = this.mContext.getPackageName();
          localah.mAppId = str3;
          localah.aLp = localPackageManager.getInstallerPackageName(str3);
          localObject5 = null;
          localObject3 = str3;
        }
        try
        {
          PackageInfo localPackageInfo = localPackageManager.getPackageInfo(this.mContext.getPackageName(), 0);
          localObject4 = localObject5;
          String str1 = str3;
          if (localPackageInfo != null)
          {
            localObject3 = str3;
            localObject4 = localPackageManager.getApplicationLabel(localPackageInfo.applicationInfo);
            str1 = str3;
            localObject3 = str3;
            if (!TextUtils.isEmpty((CharSequence)localObject4))
            {
              localObject3 = str3;
              str1 = ((CharSequence)localObject4).toString();
            }
            localObject3 = str1;
            localObject4 = localPackageInfo.versionName;
          }
          localah.aLn = str1;
          localah.aLo = ((String)localObject4);
          this.aBD = localah;
          return this.aBD;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          localObject1 = String.valueOf(localObject3);
          if (((String)localObject1).length() == 0) {
            break label202;
          }
        }
        Object localObject1 = "Error retrieving package info: appName set to ".concat((String)localObject1);
        Log.e("GAv4", (String)localObject1);
        Object localObject4 = localObject5;
        localObject1 = localObject3;
        continue;
        String str2 = new String("Error retrieving package info: appName set to ");
      }
      finally {}
    }
  }
  
  public final class a
    extends ThreadPoolExecutor
  {
    public a()
    {
      super(1, 1L, TimeUnit.MINUTES, new LinkedBlockingQueue());
      setThreadFactory(new n.b((byte)0));
      allowCoreThreadTimeOut(true);
    }
    
    protected final <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
    {
      return new p(this, paramRunnable, paramT);
    }
  }
  
  static final class b
    implements ThreadFactory
  {
    private static final AtomicInteger aBG = new AtomicInteger();
    
    public final Thread newThread(Runnable paramRunnable)
    {
      int i = aBG.incrementAndGet();
      return new n.c(paramRunnable, 23 + "measurement-" + i);
    }
  }
  
  static final class c
    extends Thread
  {
    c(Runnable paramRunnable, String paramString)
    {
      super(paramString);
    }
    
    public final void run()
    {
      Process.setThreadPriority(10);
      super.run();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */