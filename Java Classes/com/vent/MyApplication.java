package com.vent;

import android.annotation.SuppressLint;
import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.os.StrictMode.VmPolicy.Builder;
import android.support.constraint.ConstraintLayout;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.TabLayout;
import android.support.v4.app.n;
import android.support.v7.widget.CardView;
import android.support.v7.widget.GridLayout;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.i;
import android.support.v7.widget.p;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.f.a;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.nx;
import com.google.android.gms.internal.oc;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.pk;
import com.google.android.gms.internal.qc;
import com.google.android.gms.internal.qd;
import com.vent.a.l;
import com.vent.a.y;
import com.vent.a.z;
import com.vent.b.a.3;
import com.vent.d.b;
import com.vent.d.e;
import com.vent.views.FixedSwipeRefreshLayout;
import com.vent.views.FixedTextViewTouchConsume;
import com.vent.views.MyFragmentTabHost;
import io.intercom.android.sdk.Intercom;
import java.io.FileInputStream;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;

public final class MyApplication
  extends Application
  implements Thread.UncaughtExceptionHandler
{
  public static boolean cgA;
  public static final boolean cgC;
  public static String cgD;
  public static String cgE;
  public static String cgF;
  public static int cgG;
  public static int cgH;
  private static String cgI = "com.lsdka.";
  private static String cgJ = "android.support.v4.app.DialogFragment.show";
  private static boolean cgb;
  public static int cgd;
  public static int cge;
  public static int cgf;
  public static int cgg;
  public static int cgh;
  public static int cgi;
  public static int cgj;
  public static int cgk;
  public static int cgl;
  public static int cgm;
  public static int cgn;
  public static int cgo;
  public static int cgp;
  public static int cgq;
  static int cgr;
  static int cgs;
  static int cgt;
  static int cgu;
  static int cgv;
  public static boolean cgw;
  public static int cgx;
  public static boolean cgy;
  public static boolean cgz;
  public com.vent.b.a cgB;
  private Thread.UncaughtExceptionHandler cgK;
  private com.google.android.gms.analytics.d cga = null;
  private ba cgc = null;
  
  static
  {
    boolean bool = false;
    cgb = false;
    if (Build.VERSION.SDK_INT >= 15) {
      bool = true;
    }
    cgC = bool;
  }
  
  public static void Eb()
  {
    if (cgC) {}
    try
    {
      Intercom localIntercom = Intercom.client();
      if (localIntercom != null) {
        localIntercom.setInAppMessageVisibility(Intercom.GONE);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static void Ec()
  {
    if (cgC) {}
    try
    {
      Intercom localIntercom = Intercom.client();
      if (localIntercom != null) {
        localIntercom.setInAppMessageVisibility(Intercom.VISIBLE);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static void b(android.support.v7.app.d paramd)
  {
    MyApplication localMyApplication;
    Object localObject;
    if (!cgb)
    {
      cgb = true;
      localMyApplication = (MyApplication)paramd.getApplicationContext();
      localObject = localMyApplication.getResources();
      cgd = ((Resources)localObject).getDimensionPixelSize(2131165497);
      cge = ((Resources)localObject).getDimensionPixelSize(2131165365);
      cgf = ((Resources)localObject).getDimensionPixelSize(2131165483);
      cgg = ((Resources)localObject).getDimensionPixelSize(2131165356);
      cgh = ((Resources)localObject).getDimensionPixelSize(2131165484);
      cgi = ((Resources)localObject).getDimensionPixelSize(2131165482);
      cgr = ((Resources)localObject).getDimensionPixelSize(2131165379);
      cgs = ((Resources)localObject).getDimensionPixelSize(2131165380);
      cgt = ((Resources)localObject).getDimensionPixelSize(2131165376);
      cgu = ((Resources)localObject).getDimensionPixelSize(2131165378);
      cgv = ((Resources)localObject).getDimensionPixelSize(2131165377);
      int i = ((Resources)localObject).getDimensionPixelSize(2131165459);
      cgj = i;
      i = com.vent.d.c.eR(i);
      cgk = i;
      cgl = i * i;
      i = com.vent.d.c.eR(((Resources)localObject).getDimensionPixelSize(2131165458));
      cgm = i;
      cgn = i * i;
      i = com.vent.d.c.eR(((Resources)localObject).getDimensionPixelSize(2131165456));
      cgo = i;
      cgp = i * i;
      cgq = ((Resources)localObject).getDimensionPixelSize(2131165366);
      cgH = ((Resources)localObject).getColor(2131099846);
      ae.aG(localMyApplication);
      if (cgw)
      {
        s.CV();
        if (com.vent.b.a.Fp()) {}
      }
    }
    try
    {
      localObject = new WebView(localMyApplication);
      ((WebView)localObject).setWebViewClient(new WebViewClient()
      {
        public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
          paramAnonymousWebView.setWebViewClient(null);
          paramAnonymousWebView.destroy();
        }
      });
      ((WebView)localObject).loadUrl("about:blank");
      if (android.support.v4.content.a.c(localMyApplication, "android.permission.ACCESS_COARSE_LOCATION") == 0)
      {
        localObject = new f[1];
        localObject[0 = new f.a(localMyApplication).b(new f.b()
        {
          public final void cG(int paramAnonymousInt) {}
          
          @SuppressLint({"MissingPermission"})
          public final void h(Bundle paramAnonymousBundle)
          {
            bb.ciy = com.google.android.gms.location.d.bdA.a(this.cgO[0]);
            if (this.cgO[0] != null)
            {
              this.cgO[0].disconnect();
              this.cgO[0] = null;
            }
          }
        }).c(new f.c()
        {
          public final void a(com.google.android.gms.common.a paramAnonymousa)
          {
            if (this.cgO[0] != null)
            {
              this.cgO[0].disconnect();
              this.cgO[0] = null;
            }
          }
        }).a(com.google.android.gms.location.d.aYZ).nc();
        localObject[0].connect();
      }
      localMyApplication.DY();
      try
      {
        io.branch.referral.d.bR(localMyApplication);
        e.bM(localMyApplication);
        bb.Eu();
        bb.Et();
        e.u(paramd);
        s.p(paramd);
        c(localMyApplication);
        localMyApplication.DW();
        e.l(new Date(0L));
        new i(paramd);
        new p(paramd);
        new FloatingActionButton(paramd);
        new RecyclerView(paramd);
        new ConstraintLayout(paramd);
        new GridLayout(paramd);
        new CardView(paramd);
        new CollapsingToolbarLayout(paramd);
        new AppBarLayout(paramd);
        new TabLayout(paramd);
      }
      catch (Exception localException2)
      {
        try
        {
          new android.support.d.a(new FileInputStream(null));
          new CachedImageView(paramd);
          new FixedSwipeRefreshLayout(paramd);
          new FixedTextViewTouchConsume(paramd);
          new MyFragmentTabHost(paramd);
          new FrgVentsList();
          paramd = LayoutInflater.from(paramd);
          paramd.inflate(2131427546, null, false);
          paramd.inflate(2131427438, null, false);
          new z();
          new y();
          new l();
          e.a(e.a(null, null, e.u("_ @prime _").toString(), Integer.MAX_VALUE, -16777216, null, null, true, true, 0));
          return;
          localException2 = localException2;
        }
        catch (Exception localException1)
        {
          for (;;) {}
        }
      }
    }
    catch (Exception localException3)
    {
      for (;;) {}
    }
  }
  
  public static boolean br(Context paramContext)
  {
    if (paramContext == null) {}
    while (32 != (paramContext.getResources().getConfiguration().uiMode & 0x30)) {
      return false;
    }
    return true;
  }
  
  /* Error */
  public static com.google.android.gms.analytics.d bs(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull +77 -> 81
    //   7: aload_0
    //   8: invokevirtual 423	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   11: checkcast 2	com/vent/MyApplication
    //   14: astore_0
    //   15: aload_0
    //   16: ifnull +65 -> 81
    //   19: aload_0
    //   20: getfield 85	com/vent/MyApplication:cga	Lcom/google/android/gms/analytics/d;
    //   23: ifnonnull +48 -> 71
    //   26: aload_0
    //   27: invokestatic 429	com/google/android/gms/analytics/a:t	(Landroid/content/Context;)Lcom/google/android/gms/analytics/a;
    //   30: astore_1
    //   31: aload_1
    //   32: ifnull +39 -> 71
    //   35: aload_0
    //   36: aload_1
    //   37: aload_0
    //   38: ldc_w 430
    //   41: invokevirtual 434	com/vent/MyApplication:getString	(I)Ljava/lang/String;
    //   44: invokevirtual 438	com/google/android/gms/analytics/a:aW	(Ljava/lang/String;)Lcom/google/android/gms/analytics/d;
    //   47: putfield 85	com/vent/MyApplication:cga	Lcom/google/android/gms/analytics/d;
    //   50: aload_0
    //   51: getfield 85	com/vent/MyApplication:cga	Lcom/google/android/gms/analytics/d;
    //   54: iconst_1
    //   55: putfield 443	com/google/android/gms/analytics/d:aAU	Z
    //   58: aload_0
    //   59: getfield 85	com/vent/MyApplication:cga	Lcom/google/android/gms/analytics/d;
    //   62: ldc_w 445
    //   65: getstatic 448	com/vent/bb:chR	Ljava/lang/String;
    //   68: invokevirtual 452	com/google/android/gms/analytics/d:set	(Ljava/lang/String;Ljava/lang/String;)V
    //   71: aload_0
    //   72: getfield 85	com/vent/MyApplication:cga	Lcom/google/android/gms/analytics/d;
    //   75: astore_0
    //   76: ldc 2
    //   78: monitorexit
    //   79: aload_0
    //   80: areturn
    //   81: aconst_null
    //   82: astore_0
    //   83: goto -7 -> 76
    //   86: astore_0
    //   87: ldc 2
    //   89: monitorexit
    //   90: aload_0
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	paramContext	Context
    //   30	7	1	locala	com.google.android.gms.analytics.a
    // Exception table:
    //   from	to	target	type
    //   7	15	86	finally
    //   19	31	86	finally
    //   35	71	86	finally
    //   71	76	86	finally
  }
  
  public static void bt(Context paramContext)
  {
    if ((Build.VERSION.SDK_INT >= 26) && (cgD == null) && (paramContext != null))
    {
      paramContext = paramContext.getApplicationContext();
      NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
      if (localNotificationManager != null)
      {
        cgD = "main";
        NotificationChannel localNotificationChannel = new NotificationChannel(cgD, paramContext.getString(2131689925), 3);
        localNotificationChannel.enableLights(true);
        localNotificationChannel.setLightColor(paramContext.getColor(2131099873));
        localNotificationChannel.setShowBadge(true);
        localNotificationChannel.setSound(Uri.parse("android.resource://" + paramContext.getPackageName() + "/2131623937"), null);
        localNotificationManager.createNotificationChannel(localNotificationChannel);
        cgE = "chat";
        localNotificationChannel = new NotificationChannel(cgE, paramContext.getString(2131689926), 3);
        localNotificationChannel.enableLights(true);
        localNotificationChannel.setLightColor(paramContext.getColor(2131099873));
        localNotificationChannel.setShowBadge(true);
        localNotificationChannel.setSound(Uri.parse("android.resource://" + paramContext.getPackageName() + "/2131623936"), null);
        localNotificationManager.createNotificationChannel(localNotificationChannel);
      }
    }
  }
  
  public static void c(Application paramApplication)
  {
    if ((!com.vent.b.a.Fp()) && (paramApplication != null))
    {
      try
      {
        String str = paramApplication.getString(2131689892);
        qc localqc = qc.tF();
        synchronized (qc.AT)
        {
          if (localqc.bbZ != null) {
            return;
          }
          if (paramApplication == null) {
            throw new IllegalArgumentException("Context cannot be null.");
          }
        }
        try
        {
          localqc.bbZ = ((pk)nx.a(paramApplication, false, new oc(of.tk(), paramApplication)));
          localqc.bbZ.initialize();
          if (str != null) {
            localqc.bbZ.a(str, com.google.android.gms.a.c.Q(new qd(localqc, paramApplication)));
          }
        }
        catch (RemoteException paramApplication)
        {
          for (;;)
          {
            af.d("MobileAdsSettingManager initialization failed", paramApplication);
          }
        }
      }
      catch (Exception paramApplication)
      {
        paramApplication.printStackTrace();
        return;
      }
      return;
    }
  }
  
  public final ba Bc()
  {
    try
    {
      ba localba = this.cgc;
      return localba;
    }
    finally {}
  }
  
  public final void DW()
  {
    if (this.cgB == null)
    {
      this.cgB = new com.vent.b.a();
      com.vent.b.a locala = this.cgB;
      if ((!com.vent.b.a.clf) && (!com.vent.b.a.clj) && (!com.vent.b.a.cli))
      {
        com.vent.b.a.cli = true;
        locala.a(this, new a.3(locala, this));
      }
    }
  }
  
  public final void DX()
  {
    if (this.cgB != null)
    {
      this.cgB.g(this);
      com.vent.b.a.clf = false;
      com.vent.b.a.e(this);
      this.cgB = null;
    }
  }
  
  public final ba DY()
  {
    try
    {
      if (this.cgc == null) {
        this.cgc = new ba(this);
      }
      ba localba = this.cgc;
      return localba;
    }
    finally {}
  }
  
  public final ba DZ()
  {
    try
    {
      DY();
      this.cgc.El();
      ba localba = this.cgc;
      return localba;
    }
    finally {}
  }
  
  public final void Ea()
  {
    try
    {
      this.cgc = null;
      return;
    }
    finally {}
  }
  
  protected final void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
  }
  
  public final void onCreate()
  {
    boolean bool2 = true;
    super.onCreate();
    com.vent.d.c.bD(this);
    for (;;)
    {
      try
      {
        localObject1 = android.support.v4.app.h.class.getMethods();
        if ((localObject1 != null) && (localObject1.length > 0))
        {
          int j = localObject1.length;
          i = 0;
          if (i < j)
          {
            Object localObject2 = localObject1[i];
            Class[] arrayOfClass = ((Method)localObject2).getParameterTypes();
            if ((arrayOfClass == null) || (arrayOfClass.length <= 0) || (!arrayOfClass[0].getCanonicalName().equals(n.class.getCanonicalName()))) {
              continue;
            }
            cgJ = android.support.v4.app.h.class.getCanonicalName() + '.' + ((Method)localObject2).getName();
          }
        }
      }
      catch (Exception localException6)
      {
        Object localObject1;
        int i;
        continue;
      }
      try
      {
        localObject1 = com.b.a.a.class.getCanonicalName().split(Pattern.quote("."));
        cgI = localObject1[0] + '.' + localObject1[1] + '.';
        this.cgK = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        try
        {
          localObject1 = getPackageManager().getPackageInfo(getPackageName(), 0);
          cgF = ((PackageInfo)localObject1).versionName;
          cgG = ((PackageInfo)localObject1).versionCode;
          try
          {
            localObject1 = getPackageManager().getPackageInfo("com.google.android.gms", 0);
            if (localObject1 != null)
            {
              cgw = true;
              cgx = ((PackageInfo)localObject1).versionCode;
            }
          }
          catch (Exception localException3)
          {
            boolean bool1;
            continue;
          }
          try
          {
            if (getPackageManager().getPackageInfo("com.android.vending", 0) == null) {
              continue;
            }
            bool1 = true;
            cgy = bool1;
          }
          catch (Exception localException2)
          {
            continue;
          }
          if ((Build.MANUFACTURER.equalsIgnoreCase("Amazon")) && (Build.MODEL.startsWith("K")))
          {
            bool1 = true;
            cgA = bool1;
            localObject1 = new StrictMode.ThreadPolicy.Builder().detectAll();
            ((StrictMode.ThreadPolicy.Builder)localObject1).permitAll();
            ((StrictMode.ThreadPolicy.Builder)localObject1).penaltyLog();
            StrictMode.setThreadPolicy(((StrictMode.ThreadPolicy.Builder)localObject1).build());
            localObject1 = new StrictMode.VmPolicy.Builder();
            ((StrictMode.VmPolicy.Builder)localObject1).penaltyLog();
            StrictMode.setVmPolicy(((StrictMode.VmPolicy.Builder)localObject1).build());
            e.bK(this);
            az.bu(this);
            b.Fy();
            com.vent.a.h.init();
            bb.bw(this);
            bb.by(this);
            bb.Ex();
            if (!cgC) {}
          }
          try
          {
            Intercom.setLogLevel(6);
            bb.Es();
            bb.Es();
            Intercom.initialize(this, "android_sdk-2fd97ce49d8a2a98bd09a60f195b3d2cdd4a45a1", "yl4xdcql");
            ba.d(this);
            ae.Dc();
            if (com.google.android.gms.common.c.mR().w(this) == 0)
            {
              bool1 = bool2;
              cgz = bool1;
              if (bool1) {
                bb.cip = false;
              }
              if (cgz)
              {
                com.google.firebase.a.am(this);
                bb.ee(null);
              }
              com.vent.d.c.b(new AsyncTask()
              {
                private Void Bq()
                {
                  try
                  {
                    Object localObject = MessageDigest.getInstance("SHA1");
                    ((MessageDigest)localObject).update(MyApplication.this.getPackageManager().getPackageInfo(MyApplication.this.getPackageName(), 64).signatures[0].toByteArray());
                    localObject = ((MessageDigest)localObject).digest();
                    if (!Arrays.equals((byte[])localObject, new byte[] { 109, 27, -79, -28, 104, -2, -11, 51, -49, -105, -98, -83, 59, -75, -48, 77, -45, -60, 32, 127 })) {
                      if (!Arrays.equals((byte[])localObject, new byte[] { -124, -122, 78, -17, -120, 16, -71, -53, 106, -124, 111, 58, 72, -63, 71, 6, 16, -114, 111, -15 })) {
                        com.vent.d.c.b(new AsyncTask()
                        {
                          private static Void Bq()
                          {
                            try
                            {
                              Thread.sleep(5000L);
                              System.exit(0);
                              return null;
                            }
                            catch (InterruptedException localInterruptedException)
                            {
                              for (;;) {}
                            }
                          }
                        });
                      }
                    }
                    return null;
                  }
                  catch (Exception localException)
                  {
                    for (;;) {}
                  }
                }
              });
              return;
              i += 1;
              continue;
              bool1 = false;
              continue;
              bool1 = false;
            }
          }
          catch (Exception localException1)
          {
            localException1.printStackTrace();
            continue;
            bool1 = false;
          }
        }
        catch (Exception localException4) {}
      }
      catch (Exception localException5) {}
    }
  }
  
  public final void onTerminate()
  {
    DX();
    s.CW();
    ae.done();
    az.Ef();
    if (this.cgc != null)
    {
      ba localba = this.cgc;
      this.cgc = null;
      localba.a(true, null, 0);
    }
    super.onTerminate();
  }
  
  public final void onTrimMemory(int paramInt)
  {
    super.onTrimMemory(paramInt);
    ae.a(true, "");
    com.vent.d.a.flush();
    s.CW();
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (paramThrowable != null) {
      try
      {
        Object localObject1 = paramThrowable.getCause();
        int j;
        int i;
        if (localObject1 != null)
        {
          localObject1 = ((Throwable)localObject1).getStackTrace();
          j = localObject1.length;
          i = 0;
        }
        for (;;)
        {
          if (i >= j) {
            break label223;
          }
          Object localObject2 = localObject1[i];
          String str2 = ((StackTraceElement)localObject2).getClassName();
          String str1 = ((StackTraceElement)localObject2).getMethodName();
          if (str2 != null)
          {
            localObject2 = str1;
            if (str1 != null) {
              localObject2 = str2 + '.' + str1;
            }
            if ((str2.startsWith("com.layer.")) || (str2.startsWith(cgI)) || (str2.startsWith("io.branch.")) || (str2.startsWith("io.intercom.")) || (str2.startsWith("com.google.android.gms.")) || (str2.startsWith("com.google.firebase.")) || (str2.startsWith("com.google.ads.")) || (TextUtils.equals((CharSequence)localObject2, "android.app.Dialog.dismiss")) || (TextUtils.equals((CharSequence)localObject2, cgJ)))
            {
              paramThrowable.printStackTrace();
              return;
              localObject1 = paramThrowable.getStackTrace();
              break;
            }
          }
          i += 1;
        }
        if (this.cgK == null) {
          break label242;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    label223:
    this.cgK.uncaughtException(paramThread, paramThrowable);
    return;
    label242:
    System.exit(-1);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/MyApplication.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */