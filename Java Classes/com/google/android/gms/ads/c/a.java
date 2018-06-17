package com.google.android.gms.ads.c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.IBinder;
import android.os.SystemClock;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import com.google.android.gms.common.i;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.m;
import com.google.android.gms.internal.nj;
import com.google.android.gms.internal.nk;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class a
{
  private i azI;
  private nj azJ;
  private boolean azK;
  private Object azL = new Object();
  private b azM;
  private boolean azN;
  private long azO;
  private final Context mContext;
  
  private a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    ae.E(paramContext);
    Context localContext;
    if (paramBoolean1)
    {
      localContext = paramContext.getApplicationContext();
      if (localContext != null) {}
    }
    for (this.mContext = paramContext;; this.mContext = paramContext)
    {
      this.azK = false;
      this.azO = -1L;
      this.azN = paramBoolean2;
      return;
      paramContext = localContext;
      break;
    }
  }
  
  private static nj a(i parami)
    throws IOException
  {
    try
    {
      localTimeUnit = TimeUnit.MILLISECONDS;
      ae.bh("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
      if (parami.aJJ) {
        throw new IllegalStateException("Cannot call get on this connection more than once");
      }
    }
    catch (InterruptedException parami)
    {
      TimeUnit localTimeUnit;
      throw new IOException("Interrupted exception");
      parami.aJJ = true;
      parami = (IBinder)parami.aJK.poll(10000L, localTimeUnit);
      if (parami == null) {
        throw new TimeoutException("Timed out waiting for the service connection");
      }
    }
    catch (Throwable parami)
    {
      throw new IOException(parami);
    }
    parami = nk.o(parami);
    return parami;
  }
  
  private static boolean a(a parama, boolean paramBoolean, float paramFloat, long paramLong, String paramString, Throwable paramThrowable)
  {
    if (Math.random() > paramFloat) {
      return false;
    }
    HashMap localHashMap = new HashMap();
    if (paramBoolean)
    {
      str = "1";
      localHashMap.put("app_context", str);
      if (parama != null) {
        if (!parama.azQ) {
          break label193;
        }
      }
    }
    label193:
    for (String str = "1";; str = "0")
    {
      localHashMap.put("limit_ad_tracking", str);
      if ((parama != null) && (parama.azP != null)) {
        localHashMap.put("ad_id_size", Integer.toString(parama.azP.length()));
      }
      if (paramThrowable != null) {
        localHashMap.put("error", paramThrowable.getClass().getName());
      }
      if ((paramString != null) && (!paramString.isEmpty())) {
        localHashMap.put("experiment_id", paramString);
      }
      localHashMap.put("tag", "AdvertisingIdClient");
      localHashMap.put("time_spent", Long.toString(paramLong));
      new b(localHashMap).start();
      return true;
      str = "0";
      break;
    }
  }
  
  private static i c(Context paramContext, boolean paramBoolean)
    throws IOException, d, e
  {
    try
    {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      switch (m.oN().w(paramContext))
      {
      case 1: 
      default: 
        throw new IOException("Google Play services not available");
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new d();
    }
    if (paramBoolean) {}
    for (Object localObject = "com.google.android.gms.ads.identifier.service.PERSISTENT_START";; localObject = "com.google.android.gms.ads.identifier.service.START")
    {
      i locali = new i();
      localObject = new Intent((String)localObject);
      ((Intent)localObject).setPackage("com.google.android.gms");
      try
      {
        com.google.android.gms.common.stats.a.oz();
        paramBoolean = com.google.android.gms.common.stats.a.b(paramContext, (Intent)localObject, locali, 1);
        if (!paramBoolean) {
          break;
        }
        return locali;
      }
      catch (Throwable paramContext)
      {
        throw new IOException(paramContext);
      }
    }
    throw new IOException("Connection failure");
  }
  
  private final void lU()
    throws IOException, IllegalStateException, d, e
  {
    ae.bh("Calling this from your main thread can lead to deadlock");
    try
    {
      if (this.azK) {
        finish();
      }
      this.azI = c(this.mContext, this.azN);
      this.azJ = a(this.azI);
      this.azK = true;
      return;
    }
    finally {}
  }
  
  /* Error */
  private a lV()
    throws IOException
  {
    // Byte code:
    //   0: ldc_w 260
    //   3: invokestatic 74	com/google/android/gms/common/internal/ae:bh	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: monitorenter
    //   8: aload_0
    //   9: getfield 48	com/google/android/gms/ads/c/a:azK	Z
    //   12: ifne +85 -> 97
    //   15: aload_0
    //   16: getfield 32	com/google/android/gms/ads/c/a:azL	Ljava/lang/Object;
    //   19: astore_1
    //   20: aload_1
    //   21: monitorenter
    //   22: aload_0
    //   23: getfield 279	com/google/android/gms/ads/c/a:azM	Lcom/google/android/gms/ads/c/a$b;
    //   26: ifnull +13 -> 39
    //   29: aload_0
    //   30: getfield 279	com/google/android/gms/ads/c/a:azM	Lcom/google/android/gms/ads/c/a$b;
    //   33: getfield 282	com/google/android/gms/ads/c/a$b:azU	Z
    //   36: ifne +24 -> 60
    //   39: new 58	java/io/IOException
    //   42: dup
    //   43: ldc_w 284
    //   46: invokespecial 88	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   49: athrow
    //   50: astore_2
    //   51: aload_1
    //   52: monitorexit
    //   53: aload_2
    //   54: athrow
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: athrow
    //   60: aload_1
    //   61: monitorexit
    //   62: aload_0
    //   63: invokespecial 286	com/google/android/gms/ads/c/a:lU	()V
    //   66: aload_0
    //   67: getfield 48	com/google/android/gms/ads/c/a:azK	Z
    //   70: ifne +27 -> 97
    //   73: new 58	java/io/IOException
    //   76: dup
    //   77: ldc_w 288
    //   80: invokespecial 88	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   83: athrow
    //   84: astore_1
    //   85: new 58	java/io/IOException
    //   88: dup
    //   89: ldc_w 288
    //   92: aload_1
    //   93: invokespecial 291	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   96: athrow
    //   97: aload_0
    //   98: getfield 267	com/google/android/gms/ads/c/a:azI	Lcom/google/android/gms/common/i;
    //   101: invokestatic 38	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   104: pop
    //   105: aload_0
    //   106: getfield 271	com/google/android/gms/ads/c/a:azJ	Lcom/google/android/gms/internal/nj;
    //   109: invokestatic 38	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   112: pop
    //   113: new 6	com/google/android/gms/ads/c/a$a
    //   116: dup
    //   117: aload_0
    //   118: getfield 271	com/google/android/gms/ads/c/a:azJ	Lcom/google/android/gms/internal/nj;
    //   121: invokeinterface 296 1 0
    //   126: aload_0
    //   127: getfield 271	com/google/android/gms/ads/c/a:azJ	Lcom/google/android/gms/internal/nj;
    //   130: invokeinterface 299 1 0
    //   135: invokespecial 302	com/google/android/gms/ads/c/a$a:<init>	(Ljava/lang/String;Z)V
    //   138: astore_2
    //   139: aload_0
    //   140: monitorexit
    //   141: aload_0
    //   142: getfield 32	com/google/android/gms/ads/c/a:azL	Ljava/lang/Object;
    //   145: astore_1
    //   146: aload_1
    //   147: monitorenter
    //   148: aload_0
    //   149: getfield 279	com/google/android/gms/ads/c/a:azM	Lcom/google/android/gms/ads/c/a$b;
    //   152: ifnull +20 -> 172
    //   155: aload_0
    //   156: getfield 279	com/google/android/gms/ads/c/a:azM	Lcom/google/android/gms/ads/c/a$b;
    //   159: getfield 306	com/google/android/gms/ads/c/a$b:azT	Ljava/util/concurrent/CountDownLatch;
    //   162: invokevirtual 311	java/util/concurrent/CountDownLatch:countDown	()V
    //   165: aload_0
    //   166: getfield 279	com/google/android/gms/ads/c/a:azM	Lcom/google/android/gms/ads/c/a$b;
    //   169: invokevirtual 314	com/google/android/gms/ads/c/a$b:join	()V
    //   172: aload_0
    //   173: getfield 52	com/google/android/gms/ads/c/a:azO	J
    //   176: lconst_0
    //   177: lcmp
    //   178: ifle +19 -> 197
    //   181: aload_0
    //   182: new 9	com/google/android/gms/ads/c/a$b
    //   185: dup
    //   186: aload_0
    //   187: aload_0
    //   188: getfield 52	com/google/android/gms/ads/c/a:azO	J
    //   191: invokespecial 317	com/google/android/gms/ads/c/a$b:<init>	(Lcom/google/android/gms/ads/c/a;J)V
    //   194: putfield 279	com/google/android/gms/ads/c/a:azM	Lcom/google/android/gms/ads/c/a$b;
    //   197: aload_1
    //   198: monitorexit
    //   199: aload_2
    //   200: areturn
    //   201: astore_1
    //   202: ldc -74
    //   204: ldc_w 319
    //   207: aload_1
    //   208: invokestatic 325	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   211: pop
    //   212: new 58	java/io/IOException
    //   215: dup
    //   216: ldc_w 327
    //   219: invokespecial 88	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   222: athrow
    //   223: astore_2
    //   224: aload_1
    //   225: monitorexit
    //   226: aload_2
    //   227: athrow
    //   228: astore_3
    //   229: goto -57 -> 172
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	232	0	this	a
    //   19	33	1	localObject1	Object
    //   55	6	1	localObject2	Object
    //   84	9	1	localException	Exception
    //   201	24	1	localRemoteException	android.os.RemoteException
    //   50	4	2	localObject4	Object
    //   138	62	2	locala	a
    //   223	4	2	localObject5	Object
    //   228	1	3	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   22	39	50	finally
    //   39	50	50	finally
    //   51	53	50	finally
    //   60	62	50	finally
    //   8	22	55	finally
    //   53	55	55	finally
    //   56	58	55	finally
    //   62	66	55	finally
    //   66	84	55	finally
    //   85	97	55	finally
    //   97	113	55	finally
    //   113	139	55	finally
    //   139	141	55	finally
    //   202	223	55	finally
    //   62	66	84	java/lang/Exception
    //   113	139	201	android/os/RemoteException
    //   148	165	223	finally
    //   165	172	223	finally
    //   172	197	223	finally
    //   197	199	223	finally
    //   224	226	223	finally
    //   165	172	228	java/lang/InterruptedException
  }
  
  public static a r(Context paramContext)
    throws IOException, IllegalStateException, d, e
  {
    Object localObject2 = new c(paramContext);
    boolean bool = ((c)localObject2).aT("gads:ad_id_app_context:enabled");
    float f = ((c)localObject2).aU("gads:ad_id_app_context:ping_ratio");
    String str = ((c)localObject2).getString("gads:ad_id_use_shared_preference:experiment_id", "");
    paramContext = new a(paramContext, bool, ((c)localObject2).aT("gads:ad_id_use_persistent_service:enabled"));
    try
    {
      long l = SystemClock.elapsedRealtime();
      paramContext.lU();
      localObject2 = paramContext.lV();
      a((a)localObject2, bool, f, SystemClock.elapsedRealtime() - l, str, null);
      return (a)localObject2;
    }
    catch (Throwable localThrowable)
    {
      a(null, bool, f, -1L, str, localThrowable);
      throw localThrowable;
    }
    finally
    {
      paramContext.finish();
    }
  }
  
  protected void finalize()
    throws Throwable
  {
    finish();
    super.finalize();
  }
  
  /* Error */
  public final void finish()
  {
    // Byte code:
    //   0: ldc_w 260
    //   3: invokestatic 74	com/google/android/gms/common/internal/ae:bh	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: monitorenter
    //   8: aload_0
    //   9: getfield 46	com/google/android/gms/ads/c/a:mContext	Landroid/content/Context;
    //   12: ifnull +10 -> 22
    //   15: aload_0
    //   16: getfield 267	com/google/android/gms/ads/c/a:azI	Lcom/google/android/gms/common/i;
    //   19: ifnonnull +6 -> 25
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: aload_0
    //   26: getfield 48	com/google/android/gms/ads/c/a:azK	Z
    //   29: ifeq +18 -> 47
    //   32: invokestatic 250	com/google/android/gms/common/stats/a:oz	()Lcom/google/android/gms/common/stats/a;
    //   35: pop
    //   36: aload_0
    //   37: getfield 46	com/google/android/gms/ads/c/a:mContext	Landroid/content/Context;
    //   40: aload_0
    //   41: getfield 267	com/google/android/gms/ads/c/a:azI	Lcom/google/android/gms/common/i;
    //   44: invokevirtual 375	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   47: aload_0
    //   48: iconst_0
    //   49: putfield 48	com/google/android/gms/ads/c/a:azK	Z
    //   52: aload_0
    //   53: aconst_null
    //   54: putfield 271	com/google/android/gms/ads/c/a:azJ	Lcom/google/android/gms/internal/nj;
    //   57: aload_0
    //   58: aconst_null
    //   59: putfield 267	com/google/android/gms/ads/c/a:azI	Lcom/google/android/gms/common/i;
    //   62: aload_0
    //   63: monitorexit
    //   64: return
    //   65: astore_1
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    //   70: astore_1
    //   71: ldc -74
    //   73: ldc_w 377
    //   76: aload_1
    //   77: invokestatic 325	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   80: pop
    //   81: goto -34 -> 47
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	a
    //   65	4	1	localObject	Object
    //   70	7	1	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   8	22	65	finally
    //   22	24	65	finally
    //   25	47	65	finally
    //   47	64	65	finally
    //   66	68	65	finally
    //   71	81	65	finally
    //   25	47	70	java/lang/Throwable
  }
  
  public static final class a
  {
    public final String azP;
    public final boolean azQ;
    
    public a(String paramString, boolean paramBoolean)
    {
      this.azP = paramString;
      this.azQ = paramBoolean;
    }
    
    public final String toString()
    {
      String str = this.azP;
      boolean bool = this.azQ;
      return String.valueOf(str).length() + 7 + "{" + str + "}" + bool;
    }
  }
  
  static final class b
    extends Thread
  {
    private WeakReference<a> azR;
    private long azS;
    CountDownLatch azT;
    boolean azU;
    
    public b(a parama, long paramLong)
    {
      this.azR = new WeakReference(parama);
      this.azS = paramLong;
      this.azT = new CountDownLatch(1);
      this.azU = false;
      start();
    }
    
    private final void disconnect()
    {
      a locala = (a)this.azR.get();
      if (locala != null)
      {
        locala.finish();
        this.azU = true;
      }
    }
    
    public final void run()
    {
      try
      {
        if (!this.azT.await(this.azS, TimeUnit.MILLISECONDS)) {
          disconnect();
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        disconnect();
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */