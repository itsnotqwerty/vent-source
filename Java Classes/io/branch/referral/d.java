package io.branch.referral;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Semaphore;
import org.json.JSONException;
import org.json.JSONObject;

public final class d
  implements InstallListener.a, ag.a, l.b
{
  private static boolean cvN;
  private static boolean cvP;
  private static boolean cvQ = false;
  static boolean cvR = true;
  private static long cvS = 1500L;
  public static d cvT;
  private static boolean cwd = false;
  private static boolean cwe = false;
  private static int cwk = g.cwA;
  private static String cwr = "app.link";
  private static int cws = 2500;
  private static final String[] cwt = { "extra_launch_uri" };
  private JSONObject cvM;
  private boolean cvO = false;
  private io.branch.referral.a.a cvU;
  private q cvV;
  private final ag cvW;
  public Context cvX;
  private Semaphore cvY;
  private z cvZ;
  private int cwa;
  private boolean cwb;
  Map<g, String> cwc;
  private int cwf = i.cwE;
  private boolean cwg = false;
  private int cwh = k.cwJ;
  private af cwi;
  WeakReference<Activity> cwj;
  private boolean cwl = false;
  private final ConcurrentHashMap<String, String> cwm;
  private boolean cwn = false;
  private List<String> cwo;
  private List<String> cwp;
  String cwq;
  private CountDownLatch cwu = null;
  private CountDownLatch cwv = null;
  private boolean cww = false;
  final Object lock;
  
  private d(Context paramContext)
  {
    this.cvV = q.bT(paramContext);
    this.cvU = new io.branch.referral.a.b(paramContext);
    this.cvW = new ag(paramContext);
    this.cvZ = z.bW(paramContext);
    this.cvY = new Semaphore(1);
    this.lock = new Object();
    this.cwa = 0;
    this.cwb = true;
    this.cwc = new HashMap();
    this.cwm = new ConcurrentHashMap();
    paramContext = this.cvW;
    if (TextUtils.isEmpty(paramContext.cBF)) {
      new ag.b(paramContext, this).e(new Void[0]);
    }
    for (boolean bool = true;; bool = false)
    {
      this.cwn = bool;
      InstallListener.a(this);
      if (Build.VERSION.SDK_INT >= 15) {
        this.cwg = true;
      }
      for (this.cwf = i.cwE;; this.cwf = i.cwF)
      {
        this.cwo = new ArrayList();
        this.cwp = new ArrayList();
        return;
        this.cwg = false;
      }
    }
  }
  
  private static boolean GA()
  {
    return !q.getString("bnc_session_id").equals("bnc_no_value");
  }
  
  private static boolean GB()
  {
    return !q.getString("bnc_identity_id").equals("bnc_no_value");
  }
  
  private void GC()
  {
    boolean bool2 = true;
    boolean bool1 = bool2;
    Object localObject4;
    if (!q.Ha())
    {
      if (cvP) {
        bool1 = bool2;
      }
    }
    else
    {
      localObject4 = o.a(bool1, this.cvW, cvN);
      if (this.cwj == null) {
        break label512;
      }
    }
    label223:
    label489:
    label512:
    Object localObject3;
    for (Object localObject1 = (Activity)this.cwj.get();; localObject3 = null)
    {
      if (localObject1 != null) {
        localObject1 = ((Activity)localObject1).getApplicationContext();
      }
      Object localObject6;
      Object localObject7;
      Context localContext;
      Object localObject8;
      Object localObject9;
      for (;;)
      {
        if (localObject1 != null)
        {
          localObject6 = this.cvZ;
          synchronized (((z)localObject6).cBx)
          {
            localObject6 = ((z)localObject6).cBx.iterator();
            do
            {
              if (!((Iterator)localObject6).hasNext()) {
                break;
              }
              localObject7 = (r)((Iterator)localObject6).next();
            } while ((localObject7 == null) || (!(localObject7 instanceof x)));
            ((r)localObject7).a(r.a.cBh);
          }
          bool1 = false;
          break;
          localContext = null;
          continue;
          ??? = i.GK();
          localObject8 = cwr;
          localObject7 = this.cvV;
          localObject9 = this.cvW;
          localObject6 = new i.b()
          {
            public final void GG()
            {
              d.b(d.this).b(r.a.cBh);
              d.c(d.this);
            }
          };
          ((i)???).cwZ = false;
          if (System.currentTimeMillis() - q.getLong("bnc_branch_strong_match_time") >= 2592000000L) {
            break label223;
          }
          ((i)???).a((i.b)localObject6, ((i)???).cwZ);
        }
      }
      return;
      if (!((i)???).cwY)
      {
        ((i)???).a((i.b)localObject6, ((i)???).cwZ);
        return;
      }
      try
      {
        if (((o)localObject4).GO() == null) {
          break label489;
        }
        localObject4 = i.a((String)localObject8, (o)localObject4, (ag)localObject9, localContext);
        if (localObject4 != null)
        {
          ((i)???).cwW.postDelayed(new i.1((i)???, (i.b)localObject6), 500L);
          ((i)???).cxa.getMethod("bindCustomTabsService", new Class[] { Context.class, String.class, ((i)???).cxb });
          localObject8 = ((i)???).cxa.getMethod("warmup", new Class[] { Long.TYPE });
          localObject9 = ((i)???).cxa.getMethod("newSession", new Class[] { ((i)???).cxc });
          Method localMethod = ((i)???).cxd.getMethod("mayLaunchUrl", new Class[] { Uri.class, Bundle.class, List.class });
          Intent localIntent = new Intent("android.support.customtabs.action.CustomTabsService");
          localIntent.setPackage("com.android.chrome");
          localContext.bindService(localIntent, new i.2((i)???, (Method)localObject8, (Method)localObject9, (Uri)localObject4, localMethod, (q)localObject7, (i.b)localObject6), 33);
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        ((i)???).a((i.b)localObject6, ((i)???).cwZ);
        return;
      }
      ((i)???).a((i.b)localObject6, ((i)???).cwZ);
      return;
      ((i)???).a((i.b)localObject6, ((i)???).cwZ);
      Log.d("BranchSDK", "Cannot use cookie-based matching since device id is not available");
      return;
    }
  }
  
  private void GD()
  {
    JSONObject localJSONObject = Gy();
    Object localObject3 = null;
    Object localObject1 = localObject3;
    try
    {
      if (!localJSONObject.has(n.a.cyZ.key)) {
        return;
      }
      localObject1 = localObject3;
      if (!localJSONObject.getBoolean(n.a.cyZ.key)) {
        return;
      }
      localObject1 = localObject3;
      if (localJSONObject.length() <= 0) {
        return;
      }
      localObject1 = localObject3;
      localObject4 = this.cvX.getPackageManager().getApplicationInfo(this.cvX.getPackageName(), 128);
      localObject1 = localObject3;
      if (((ApplicationInfo)localObject4).metaData != null)
      {
        localObject1 = localObject3;
        if (((ApplicationInfo)localObject4).metaData.getBoolean("io.branch.sdk.auto_link_disable", false)) {
          return;
        }
      }
      localObject1 = localObject3;
      localObject5 = this.cvX.getPackageManager().getPackageInfo(this.cvX.getPackageName(), 129).activities;
      if (localObject5 == null) {
        break label560;
      }
      localObject1 = localObject3;
      k = localObject5.length;
      i = 0;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        Object localObject4;
        for (;;)
        {
          int k;
          Object localObject6;
          int m;
          if (this.cwj == null) {
            return;
          }
          localObject3 = (Activity)this.cwj.get();
          if (localObject3 == null) {
            break label541;
          }
          localObject4 = new Intent((Context)localObject3, Class.forName((String)localObject1));
          ((Intent)localObject4).putExtra("io.branch.sdk.auto_linked", "true");
          ((Intent)localObject4).putExtra(n.a.cyw.key, localJSONObject.toString());
          Object localObject5 = localJSONObject.keys();
          while (((Iterator)localObject5).hasNext())
          {
            localObject6 = (String)((Iterator)localObject5).next();
            ((Intent)localObject4).putExtra((String)localObject6, localJSONObject.getString((String)localObject6));
          }
          localNameNotFoundException = localNameNotFoundException;
          Log.i("BranchSDK", "Branch Warning: Please make sure Activity names set for auto deep link are correct!");
          return;
          j += 1;
          continue;
          int j = 0;
          continue;
          i += 1;
        }
        ((Activity)localObject3).startActivityForResult((Intent)localObject4, i);
        return;
      }
      catch (ClassNotFoundException localClassNotFoundException1) {}
      Log.i("BranchSDK", "Branch Warning: Please make sure Activity names set for auto deep link are correct! Error while looking for activity " + localNameNotFoundException);
      return;
      Log.w("BranchSDK", "No activity reference to launch deep linked activity");
      return;
    }
    catch (Exception localException)
    {
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException2)
    {
      for (;;)
      {
        continue;
        int i = 0;
        Object localObject2 = null;
      }
    }
    if (i < k)
    {
      localObject4 = localObject5[i];
      if (localObject4 != null)
      {
        localObject1 = localObject3;
        if (((ActivityInfo)localObject4).metaData != null)
        {
          localObject1 = localObject3;
          if (((ActivityInfo)localObject4).metaData.getString("io.branch.sdk.auto_link_keys") == null)
          {
            localObject1 = localObject3;
            if (((ActivityInfo)localObject4).metaData.getString("io.branch.sdk.auto_link_path") == null) {}
          }
          else
          {
            localObject1 = localObject3;
            if (((ActivityInfo)localObject4).metaData.getString("io.branch.sdk.auto_link_keys") != null)
            {
              localObject1 = localObject3;
              localObject6 = ((ActivityInfo)localObject4).metaData.getString("io.branch.sdk.auto_link_keys").split(",");
              localObject1 = localObject3;
              m = localObject6.length;
              j = 0;
              if (j < m)
              {
                localObject1 = localObject3;
                if (localJSONObject.has(localObject6[j]))
                {
                  j = 1;
                  if (j == 0)
                  {
                    localObject1 = localObject3;
                    if (!a(localJSONObject, (ActivityInfo)localObject4)) {
                      break label497;
                    }
                  }
                  localObject1 = localObject3;
                  localObject3 = ((ActivityInfo)localObject4).name;
                  localObject1 = localObject3;
                  i = ((ActivityInfo)localObject4).metaData.getInt("io.branch.sdk.auto_link_request_code", 1501);
                  localObject1 = localObject3;
                  if (localObject1 == null) {
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
    label497:
    label541:
    label560:
    return;
  }
  
  public static boolean GE()
  {
    return cvQ;
  }
  
  @TargetApi(14)
  public static d Gt()
  {
    if (cvT == null) {
      Log.e("BranchSDK", "Branch instance is not created yet. Make sure you have initialised Branch. [Consider Calling getInstance(Context ctx) if you still have issue.]");
    }
    for (;;)
    {
      return cvT;
      if ((cwd) && (!cwe)) {
        Log.e("BranchSDK", "Branch instance is not properly initialised. Make sure your Application class is extending BranchApp class. If you are not extending BranchApp class make sure you are initialising Branch in your Applications onCreate()");
      }
    }
  }
  
  public static boolean Gu()
  {
    return cvN;
  }
  
  private void Gz()
  {
    int j = 1;
    for (;;)
    {
      try
      {
        this.cvY.acquire();
        if ((this.cwa != 0) || (this.cvZ.getSize() <= 0)) {
          break label211;
        }
        this.cwa = 1;
        r localr = this.cvZ.Ho();
        this.cvY.release();
        if (localr == null) {
          break label201;
        }
        if (localr.cBb.size() <= 0) {
          break label219;
        }
        i = 1;
        if (i != 0) {
          break label195;
        }
        if ((!(localr instanceof ac)) && (!GB()))
        {
          Log.i("BranchSDK", "Branch Error: User session has not been initialized!");
          this.cwa = 0;
          aK(this.cvZ.getSize() - 1, -101);
          return;
        }
        if ((localr instanceof x)) {
          break label177;
        }
        if (GA())
        {
          if (!q.getString("bnc_device_fingerprint_id").equals("bnc_no_value"))
          {
            i = j;
            break label224;
          }
        }
        else
        {
          this.cwa = 0;
          aK(this.cvZ.getSize() - 1, -101);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      int i = 0;
      label177:
      label195:
      label201:
      label211:
      label219:
      label224:
      while (i != 0)
      {
        new d(localException).e(new Void[0]);
        return;
        this.cwa = 0;
        return;
        this.cvZ.b(null);
        return;
        this.cvY.release();
        return;
        i = 0;
        break;
      }
    }
  }
  
  private void a(e parame, Activity paramActivity, boolean paramBoolean)
  {
    if (paramActivity != null) {
      this.cwj = new WeakReference(paramActivity);
    }
    if ((GB()) && (GA()) && (this.cwh == k.cwH))
    {
      if (parame != null)
      {
        if (!cwd) {
          break label87;
        }
        if (!this.cwl)
        {
          parame.a(Gy(), null);
          this.cwl = true;
        }
      }
      else
      {
        return;
      }
      parame.a(new JSONObject(), null);
      return;
      label87:
      parame.a(new JSONObject(), null);
      return;
    }
    if (paramBoolean) {
      q.setInteger("bnc_is_referrable", 1);
    }
    for (;;)
    {
      if (this.cwh != k.cwI) {
        break label146;
      }
      if (parame == null) {
        break;
      }
      this.cvZ.a(parame);
      return;
      q.setInteger("bnc_is_referrable", 0);
    }
    label146:
    this.cwh = k.cwI;
    if ((q.GU() == null) || (q.GU().equalsIgnoreCase("bnc_no_value")))
    {
      this.cwh = k.cwJ;
      if (parame != null) {
        parame.a(null, new f("Trouble initializing Branch.", -114));
      }
      Log.i("BranchSDK", "Branch Warning: Please enter your branch_key in your project's res/values/strings.xml!");
      return;
    }
    if ((q.GU() != null) && (q.GU().startsWith("key_test_"))) {
      Log.i("BranchSDK", "Branch Warning: You are using your test app's Branch Key. Remember to change it to live Branch Key during deployment.");
    }
    if ((!q.getString("bnc_external_intent_uri").equals("bnc_no_value")) || (!this.cvO))
    {
      a(parame, null);
      return;
    }
    if (m.a(this.cvX, new m.a()
    {
      public final void eD(String paramAnonymousString)
      {
        d.a(d.this);
        q.c("bnc_triggered_by_fb_app_link", Boolean.valueOf(true));
        if (paramAnonymousString != null)
        {
          paramAnonymousString = Uri.parse(paramAnonymousString).getQueryParameter(n.a.cxV.key);
          if (!TextUtils.isEmpty(paramAnonymousString))
          {
            d.a(d.this);
            q.setString("bnc_link_click_identifier", paramAnonymousString);
          }
        }
        d.b(d.this).b(r.a.cBe);
        d.c(d.this);
      }
    }).booleanValue())
    {
      a(parame, r.a.cBe);
      return;
    }
    a(parame, null);
  }
  
  private void a(e arg1, r.a parama)
  {
    Object localObject;
    if (GB())
    {
      localObject = new ad(this.cvX, ???, this.cvW);
      ((r)localObject).a(parama);
      if (this.cwn) {
        ((r)localObject).a(r.a.cBf);
      }
      if (this.cwf != i.cwF) {
        ((r)localObject).a(r.a.cBg);
      }
      if ((cvR) && ((localObject instanceof ac)))
      {
        ((r)localObject).a(r.a.cBi);
        InstallListener.T(cvS);
      }
      if (this.cvZ.Hq()) {
        break label160;
      }
      if (this.cwa != 0) {
        break label147;
      }
      this.cvZ.a((r)localObject, 0);
    }
    for (;;)
    {
      Gz();
      return;
      localObject = new ac(this.cvX, ???, this.cvW, InstallListener.GP());
      break;
      label147:
      this.cvZ.a((r)localObject, 1);
      continue;
      label160:
      if (??? != null) {
        this.cvZ.a(???);
      }
      parama = this.cvZ;
      int i = this.cwa;
      synchronized (parama.cBx)
      {
        Iterator localIterator = parama.cBx.iterator();
        while (localIterator.hasNext())
        {
          r localr = (r)localIterator.next();
          if ((localr != null) && (((localr instanceof ac)) || ((localr instanceof ad)))) {
            localIterator.remove();
          }
        }
        if (i == 0) {
          parama.a((r)localObject, 0);
        }
      }
      parama.a((r)localObject, 1);
    }
  }
  
  private static boolean a(JSONObject paramJSONObject, ActivityInfo paramActivityInfo)
  {
    String[] arrayOfString = null;
    try
    {
      int k;
      int j;
      if (paramJSONObject.has(n.a.czb.key))
      {
        localObject1 = paramJSONObject.getString(n.a.czb.key);
        if ((paramActivityInfo.metaData.getString("io.branch.sdk.auto_link_path") != null) && (localObject1 != null))
        {
          paramJSONObject = paramActivityInfo.metaData.getString("io.branch.sdk.auto_link_path").split(",");
          k = paramJSONObject.length;
          j = 0;
        }
      }
      else
      {
        for (;;)
        {
          if (j >= k) {
            break label224;
          }
          paramActivityInfo = paramJSONObject[j].trim().split("\\?")[0].split("/");
          arrayOfString = localObject1.split("\\?")[0].split("/");
          if (paramActivityInfo.length != arrayOfString.length)
          {
            i = 0;
            if (i == 0) {
              break label217;
            }
            return true;
            localObject1 = arrayOfString;
            if (!paramJSONObject.has(n.a.czc.key)) {
              break;
            }
            localObject1 = paramJSONObject.getString(n.a.czc.key);
            break;
          }
          i = 0;
          for (;;)
          {
            if ((i >= paramActivityInfo.length) || (i >= arrayOfString.length)) {
              break label234;
            }
            Object localObject2 = paramActivityInfo[i];
            if ((!((String)localObject2).equals(arrayOfString[i])) && (!((String)localObject2).contains("*")))
            {
              i = 0;
              break;
            }
            i += 1;
          }
          label217:
          j += 1;
        }
      }
      label224:
      return false;
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        Object localObject1 = arrayOfString;
        continue;
        label234:
        int i = 1;
      }
    }
  }
  
  private void aK(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= this.cvZ.getSize()) {}
    for (r localr = this.cvZ.fc(this.cvZ.getSize() - 1);; localr = this.cvZ.fc(paramInt1))
    {
      if (localr != null) {
        localr.i(paramInt2, "");
      }
      return;
    }
  }
  
  public static d bQ(Context paramContext)
  {
    return h(paramContext, true);
  }
  
  @TargetApi(14)
  public static d bR(Context paramContext)
  {
    boolean bool = true;
    cwd = true;
    cwk = g.cwA;
    if (!k.bS(paramContext)) {}
    for (;;)
    {
      h(paramContext, bool);
      return cvT;
      bool = false;
    }
  }
  
  private static JSONObject ez(String paramString)
  {
    if (paramString.equals("bnc_no_value")) {
      return new JSONObject();
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      paramString = c.z(paramString.getBytes());
      try
      {
        paramString = new JSONObject(new String(paramString));
        return paramString;
      }
      catch (JSONException paramString)
      {
        paramString.printStackTrace();
      }
    }
    return new JSONObject();
  }
  
  private JSONObject g(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      try
      {
        if (this.cvM != null)
        {
          if (this.cvM.length() > 0) {
            Log.w("BranchSDK", "You're currently in deep link debug mode. Please comment out 'setDeepLinkDebugMode' to receive the deep link parameters from a real Branch link");
          }
          Iterator localIterator = this.cvM.keys();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            paramJSONObject.put(str, this.cvM.get(str));
          }
        }
        return paramJSONObject;
      }
      catch (Exception localException) {}
    }
  }
  
  private static d h(Context paramContext, boolean paramBoolean)
  {
    Object localObject1;
    if (cvT == null)
    {
      localObject1 = new d(paramContext.getApplicationContext());
      cvT = (d)localObject1;
      localObject1 = ((d)localObject1).cvV.bq(paramBoolean);
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (!((String)localObject1).equalsIgnoreCase("bnc_no_value")) {
          break label189;
        }
      }
      localObject1 = null;
    }
    try
    {
      localObject2 = paramContext.getResources();
      localObject2 = ((Resources)localObject2).getString(((Resources)localObject2).getIdentifier("io.branch.apiKey", "string", paramContext.getPackageName()));
      localObject1 = localObject2;
    }
    catch (Exception localException)
    {
      label189:
      for (;;) {}
    }
    Object localObject2 = localObject1;
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      Log.i("BranchSDK", "Branch Warning: Please enter your branch_key in your project's Manifest file!");
      paramBoolean = cvT.cvV.eK("bnc_no_value");
    }
    for (;;)
    {
      if (paramBoolean)
      {
        cvT.cwc.clear();
        cvT.cvZ.clear();
      }
      cvT.cvX = paramContext.getApplicationContext();
      if ((paramContext instanceof Application))
      {
        cwd = true;
        localObject1 = cvT;
        paramContext = (Application)paramContext;
      }
      try
      {
        localObject1 = new a((d)localObject1, (byte)0);
        paramContext.unregisterActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)localObject1);
        paramContext.registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)localObject1);
        cwe = true;
        return cvT;
        paramBoolean = cvT.cvV.eK((String)localObject2);
      }
      catch (NoClassDefFoundError paramContext)
      {
        for (;;)
        {
          cwe = false;
          cwd = false;
          Log.w("BranchSDK", new f("", -108).cwL);
        }
      }
      catch (NoSuchMethodError paramContext)
      {
        for (;;) {}
      }
    }
  }
  
  public final void Gv()
  {
    this.cwn = false;
    this.cvZ.b(r.a.cBf);
    if (this.cww)
    {
      GC();
      this.cww = false;
      return;
    }
    Gz();
  }
  
  public final void Gw()
  {
    this.cvZ.b(r.a.cBi);
    Gz();
  }
  
  public final JSONObject Gx()
  {
    return g(ez(q.getString("bnc_install_params")));
  }
  
  public final JSONObject Gy()
  {
    return g(ez(q.getString("bnc_session_params")));
  }
  
  public final void T(String paramString1, String paramString2)
  {
    this.cwm.put(paramString1, paramString2);
  }
  
  /* Error */
  final String a(t paramt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 162	io/branch/referral/d:cwh	I
    //   6: getstatic 678	io/branch/referral/d$k:cwH	I
    //   9: if_icmpne +127 -> 136
    //   12: invokestatic 995	io/branch/referral/q:getTimeout	()I
    //   15: istore_2
    //   16: new 49	io/branch/referral/d$l
    //   19: dup
    //   20: aload_0
    //   21: iconst_0
    //   22: invokespecial 996	io/branch/referral/d$l:<init>	(Lio/branch/referral/d;B)V
    //   25: iconst_1
    //   26: anewarray 326	io/branch/referral/r
    //   29: dup
    //   30: iconst_0
    //   31: aload_1
    //   32: aastore
    //   33: invokevirtual 999	io/branch/referral/d$l:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   36: iload_2
    //   37: sipush 2000
    //   40: iadd
    //   41: i2l
    //   42: getstatic 1005	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   45: invokevirtual 1010	android/os/AsyncTask:get	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    //   48: checkcast 1012	io/branch/referral/ae
    //   51: astore 4
    //   53: aload_1
    //   54: getfield 1017	io/branch/referral/t:cxv	Z
    //   57: ifeq +8 -> 65
    //   60: aload_1
    //   61: invokevirtual 1020	io/branch/referral/t:Hh	()Ljava/lang/String;
    //   64: astore_3
    //   65: aload 4
    //   67: ifnull +95 -> 162
    //   70: aload 4
    //   72: getfield 1023	io/branch/referral/ae:cBA	I
    //   75: sipush 200
    //   78: if_icmpne +84 -> 162
    //   81: aload 4
    //   83: invokevirtual 1026	io/branch/referral/ae:Hr	()Lorg/json/JSONObject;
    //   86: ldc_w 1028
    //   89: invokevirtual 582	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   92: astore 4
    //   94: aload 4
    //   96: astore_3
    //   97: aload_1
    //   98: getfield 1032	io/branch/referral/t:cBl	Lio/branch/referral/g;
    //   101: ifnull +18 -> 119
    //   104: aload_0
    //   105: getfield 217	io/branch/referral/d:cwc	Ljava/util/Map;
    //   108: aload_1
    //   109: getfield 1032	io/branch/referral/t:cBl	Lio/branch/referral/g;
    //   112: aload_3
    //   113: invokeinterface 1033 3 0
    //   118: pop
    //   119: aload_3
    //   120: areturn
    //   121: astore 4
    //   123: aconst_null
    //   124: astore 4
    //   126: goto -73 -> 53
    //   129: astore_1
    //   130: aload_1
    //   131: invokevirtual 852	org/json/JSONException:printStackTrace	()V
    //   134: aload_3
    //   135: areturn
    //   136: ldc_w 455
    //   139: ldc_w 1035
    //   142: invokestatic 586	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   145: pop
    //   146: aconst_null
    //   147: areturn
    //   148: astore_1
    //   149: goto -19 -> 130
    //   152: astore 4
    //   154: goto -31 -> 123
    //   157: astore 4
    //   159: goto -36 -> 123
    //   162: aload_3
    //   163: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	this	d
    //   0	164	1	paramt	t
    //   15	26	2	i	int
    //   1	162	3	localObject1	Object
    //   51	44	4	localObject2	Object
    //   121	1	4	localInterruptedException	InterruptedException
    //   124	1	4	localObject3	Object
    //   152	1	4	localExecutionException	java.util.concurrent.ExecutionException
    //   157	1	4	localTimeoutException	java.util.concurrent.TimeoutException
    // Exception table:
    //   from	to	target	type
    //   12	53	121	java/lang/InterruptedException
    //   81	94	129	org/json/JSONException
    //   97	119	148	org/json/JSONException
    //   12	53	152	java/util/concurrent/ExecutionException
    //   12	53	157	java/util/concurrent/TimeoutException
  }
  
  public final void a(r paramr)
  {
    if ((this.cwh != k.cwH) && (!(paramr instanceof x)))
    {
      if ((paramr instanceof y))
      {
        paramr.i(-101, "");
        Log.i("BranchSDK", "Branch is not initialized, cannot logout");
        return;
      }
      if ((paramr instanceof ab))
      {
        Log.i("BranchSDK", "Branch is not initialized, cannot close session");
        return;
      }
      if (this.cwj == null) {
        break label174;
      }
    }
    label174:
    for (Object localObject = (Activity)this.cwj.get();; localObject = null)
    {
      if (cwk == g.cwA)
      {
        a(null, (Activity)localObject, true);
        localObject = this.cvZ;
        ((z)localObject).cBx.add(paramr);
        if (((z)localObject).getSize() >= 25) {
          ((z)localObject).cBx.remove(1);
        }
        ((z)localObject).Hm();
        paramr.cAY = System.currentTimeMillis();
        Gz();
        return;
      }
      if (cwk == g.cwB) {}
      for (boolean bool = true;; bool = false)
      {
        a(null, (Activity)localObject, bool);
        break;
      }
    }
  }
  
  /* Error */
  public final boolean a(Uri paramUri, Activity paramActivity)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 155	io/branch/referral/d:cwf	I
    //   4: getstatic 261	io/branch/referral/d$i:cwF	I
    //   7: if_icmpne +755 -> 762
    //   10: aload_1
    //   11: ifnull +254 -> 265
    //   14: aload_0
    //   15: getfield 256	io/branch/referral/d:cwo	Ljava/util/List;
    //   18: invokeinterface 1059 1 0
    //   23: ifle +730 -> 753
    //   26: aload_0
    //   27: getfield 256	io/branch/referral/d:cwo	Ljava/util/List;
    //   30: aload_1
    //   31: invokevirtual 1062	android/net/Uri:getScheme	()Ljava/lang/String;
    //   34: invokeinterface 1064 2 0
    //   39: istore 5
    //   41: aload_0
    //   42: getfield 258	io/branch/referral/d:cwp	Ljava/util/List;
    //   45: invokeinterface 1059 1 0
    //   50: ifle +691 -> 741
    //   53: aload_0
    //   54: getfield 258	io/branch/referral/d:cwp	Ljava/util/List;
    //   57: invokeinterface 316 1 0
    //   62: astore 6
    //   64: aload 6
    //   66: invokeinterface 321 1 0
    //   71: ifeq +670 -> 741
    //   74: aload 6
    //   76: invokeinterface 324 1 0
    //   81: checkcast 139	java/lang/String
    //   84: astore 7
    //   86: aload_1
    //   87: invokevirtual 1067	android/net/Uri:getHost	()Ljava/lang/String;
    //   90: astore 8
    //   92: aload 8
    //   94: ifnull -30 -> 64
    //   97: aload 8
    //   99: aload 7
    //   101: invokevirtual 275	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   104: ifeq -40 -> 64
    //   107: iconst_1
    //   108: istore_3
    //   109: iload 5
    //   111: ifeq +154 -> 265
    //   114: iload_3
    //   115: ifne +150 -> 265
    //   118: aload_0
    //   119: aload_1
    //   120: invokevirtual 1068	android/net/Uri:toString	()Ljava/lang/String;
    //   123: putfield 926	io/branch/referral/d:cwq	Ljava/lang/String;
    //   126: ldc_w 717
    //   129: aload_1
    //   130: invokevirtual 1068	android/net/Uri:toString	()Ljava/lang/String;
    //   133: invokestatic 1071	io/branch/referral/q:setString	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: aload_2
    //   137: ifnull +128 -> 265
    //   140: aload_2
    //   141: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   144: ifnull +121 -> 265
    //   147: aload_2
    //   148: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   151: invokevirtual 1075	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   154: ifnull +111 -> 265
    //   157: aload_2
    //   158: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   161: invokevirtual 1075	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   164: astore 6
    //   166: aload 6
    //   168: invokevirtual 1079	android/os/Bundle:keySet	()Ljava/util/Set;
    //   171: astore 7
    //   173: aload 7
    //   175: invokeinterface 645 1 0
    //   180: ifle +85 -> 265
    //   183: new 484	org/json/JSONObject
    //   186: dup
    //   187: invokespecial 682	org/json/JSONObject:<init>	()V
    //   190: astore 8
    //   192: getstatic 143	io/branch/referral/d:cwt	[Ljava/lang/String;
    //   195: astore 9
    //   197: aload 9
    //   199: arraylength
    //   200: istore 4
    //   202: iconst_0
    //   203: istore_3
    //   204: iload_3
    //   205: iload 4
    //   207: if_icmpge +39 -> 246
    //   210: aload 9
    //   212: iload_3
    //   213: aaload
    //   214: astore 10
    //   216: aload 7
    //   218: aload 10
    //   220: invokeinterface 1080 2 0
    //   225: ifeq +521 -> 746
    //   228: aload 8
    //   230: aload 10
    //   232: aload 6
    //   234: aload 10
    //   236: invokevirtual 1081	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   239: invokevirtual 868	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   242: pop
    //   243: goto +503 -> 746
    //   246: aload 8
    //   248: invokevirtual 495	org/json/JSONObject:length	()I
    //   251: ifle +14 -> 265
    //   254: ldc_w 1083
    //   257: aload 8
    //   259: invokevirtual 578	org/json/JSONObject:toString	()Ljava/lang/String;
    //   262: invokestatic 1071	io/branch/referral/q:setString	(Ljava/lang/String;Ljava/lang/String;)V
    //   265: aload_2
    //   266: ifnull +107 -> 373
    //   269: aload_2
    //   270: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   273: ifnull +100 -> 373
    //   276: aload_2
    //   277: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   280: invokevirtual 1075	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   283: ifnull +90 -> 373
    //   286: aload_2
    //   287: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   290: invokevirtual 1075	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   293: getstatic 1086	io/branch/referral/n$a:cxZ	Lio/branch/referral/n$a;
    //   296: getfield 482	io/branch/referral/n$a:key	Ljava/lang/String;
    //   299: invokevirtual 1087	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   302: ifne +71 -> 373
    //   305: aload_2
    //   306: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   309: invokevirtual 1075	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   312: getstatic 1090	io/branch/referral/n$a:cze	Lio/branch/referral/n$a;
    //   315: getfield 482	io/branch/referral/n$a:key	Ljava/lang/String;
    //   318: invokevirtual 537	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   321: astore 6
    //   323: aload 6
    //   325: ifnull +48 -> 373
    //   328: aload 6
    //   330: invokevirtual 1091	java/lang/String:length	()I
    //   333: ifle +40 -> 373
    //   336: ldc_w 1093
    //   339: aload 6
    //   341: invokestatic 1071	io/branch/referral/q:setString	(Ljava/lang/String;Ljava/lang/String;)V
    //   344: aload_2
    //   345: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   348: astore 6
    //   350: aload 6
    //   352: getstatic 1086	io/branch/referral/n$a:cxZ	Lio/branch/referral/n$a;
    //   355: getfield 482	io/branch/referral/n$a:key	Ljava/lang/String;
    //   358: iconst_1
    //   359: invokevirtual 945	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   362: pop
    //   363: aload_2
    //   364: aload 6
    //   366: invokevirtual 1097	android/app/Activity:setIntent	(Landroid/content/Intent;)V
    //   369: iconst_0
    //   370: ireturn
    //   371: astore 6
    //   373: aload_1
    //   374: ifnull +388 -> 762
    //   377: aload_1
    //   378: invokevirtual 1100	android/net/Uri:isHierarchical	()Z
    //   381: ifeq +381 -> 762
    //   384: aload_2
    //   385: ifnull +377 -> 762
    //   388: aload_1
    //   389: getstatic 1103	io/branch/referral/n$a:cxV	Lio/branch/referral/n$a;
    //   392: getfield 482	io/branch/referral/n$a:key	Ljava/lang/String;
    //   395: invokevirtual 1106	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   398: ifnull +213 -> 611
    //   401: ldc_w 1108
    //   404: aload_1
    //   405: getstatic 1103	io/branch/referral/n$a:cxV	Lio/branch/referral/n$a;
    //   408: getfield 482	io/branch/referral/n$a:key	Ljava/lang/String;
    //   411: invokevirtual 1106	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   414: invokestatic 1071	io/branch/referral/q:setString	(Ljava/lang/String;Ljava/lang/String;)V
    //   417: new 592	java/lang/StringBuilder
    //   420: dup
    //   421: ldc_w 1110
    //   424: invokespecial 595	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   427: aload_1
    //   428: getstatic 1103	io/branch/referral/n$a:cxV	Lio/branch/referral/n$a;
    //   431: getfield 482	io/branch/referral/n$a:key	Ljava/lang/String;
    //   434: invokevirtual 1106	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   437: invokevirtual 599	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   440: invokevirtual 600	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   443: astore 7
    //   445: aload_2
    //   446: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   449: ifnull +286 -> 735
    //   452: aload_2
    //   453: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   456: invokevirtual 1113	android/content/Intent:getDataString	()Ljava/lang/String;
    //   459: astore 6
    //   461: aload_1
    //   462: invokevirtual 1116	android/net/Uri:getQuery	()Ljava/lang/String;
    //   465: invokevirtual 1091	java/lang/String:length	()I
    //   468: aload 7
    //   470: invokevirtual 1091	java/lang/String:length	()I
    //   473: if_icmpne +52 -> 525
    //   476: new 592	java/lang/StringBuilder
    //   479: dup
    //   480: ldc_w 800
    //   483: invokespecial 595	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   486: aload 7
    //   488: invokevirtual 599	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   491: invokevirtual 600	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   494: astore_1
    //   495: aload 6
    //   497: ifnull +101 -> 598
    //   500: aload 6
    //   502: aload_1
    //   503: ldc_w 816
    //   506: invokevirtual 1120	java/lang/String:replaceFirst	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   509: invokestatic 1124	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   512: astore_1
    //   513: aload_2
    //   514: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   517: aload_1
    //   518: invokevirtual 1128	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   521: pop
    //   522: goto +237 -> 759
    //   525: aload 6
    //   527: ifnull +46 -> 573
    //   530: aload 6
    //   532: invokevirtual 1091	java/lang/String:length	()I
    //   535: aload 7
    //   537: invokevirtual 1091	java/lang/String:length	()I
    //   540: isub
    //   541: aload 6
    //   543: aload 7
    //   545: invokevirtual 1132	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   548: if_icmpne +25 -> 573
    //   551: new 592	java/lang/StringBuilder
    //   554: dup
    //   555: ldc_w 1134
    //   558: invokespecial 595	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   561: aload 7
    //   563: invokevirtual 599	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   566: invokevirtual 600	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   569: astore_1
    //   570: goto -75 -> 495
    //   573: new 592	java/lang/StringBuilder
    //   576: dup
    //   577: invokespecial 1135	java/lang/StringBuilder:<init>	()V
    //   580: aload 7
    //   582: invokevirtual 599	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   585: ldc_w 1134
    //   588: invokevirtual 599	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   591: invokevirtual 600	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   594: astore_1
    //   595: goto -100 -> 495
    //   598: ldc_w 455
    //   601: ldc_w 1137
    //   604: invokestatic 605	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   607: pop
    //   608: goto +151 -> 759
    //   611: aload_1
    //   612: invokevirtual 1062	android/net/Uri:getScheme	()Ljava/lang/String;
    //   615: astore 6
    //   617: aload_2
    //   618: invokevirtual 774	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   621: astore 7
    //   623: aload 6
    //   625: ifnull +137 -> 762
    //   628: aload 7
    //   630: ifnull +132 -> 762
    //   633: aload 7
    //   635: invokevirtual 1140	android/content/Intent:getFlags	()I
    //   638: ldc_w 1141
    //   641: iand
    //   642: ifne +120 -> 762
    //   645: aload 6
    //   647: ldc_w 1143
    //   650: invokevirtual 700	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   653: ifne +14 -> 667
    //   656: aload 6
    //   658: ldc_w 1145
    //   661: invokevirtual 700	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   664: ifeq +98 -> 762
    //   667: aload_1
    //   668: invokevirtual 1067	android/net/Uri:getHost	()Ljava/lang/String;
    //   671: ifnull +91 -> 762
    //   674: aload_1
    //   675: invokevirtual 1067	android/net/Uri:getHost	()Ljava/lang/String;
    //   678: invokevirtual 1091	java/lang/String:length	()I
    //   681: ifle +81 -> 762
    //   684: aload 7
    //   686: getstatic 1086	io/branch/referral/n$a:cxZ	Lio/branch/referral/n$a;
    //   689: getfield 482	io/branch/referral/n$a:key	Ljava/lang/String;
    //   692: iconst_0
    //   693: invokevirtual 942	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   696: ifne +66 -> 762
    //   699: ldc_w 1147
    //   702: aload_1
    //   703: invokevirtual 1068	android/net/Uri:toString	()Ljava/lang/String;
    //   706: invokestatic 1071	io/branch/referral/q:setString	(Ljava/lang/String;Ljava/lang/String;)V
    //   709: aload 7
    //   711: getstatic 1086	io/branch/referral/n$a:cxZ	Lio/branch/referral/n$a;
    //   714: getfield 482	io/branch/referral/n$a:key	Ljava/lang/String;
    //   717: iconst_1
    //   718: invokevirtual 945	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   721: pop
    //   722: aload_2
    //   723: aload 7
    //   725: invokevirtual 1097	android/app/Activity:setIntent	(Landroid/content/Intent;)V
    //   728: iconst_0
    //   729: ireturn
    //   730: astore 6
    //   732: goto -467 -> 265
    //   735: aconst_null
    //   736: astore 6
    //   738: goto -277 -> 461
    //   741: iconst_0
    //   742: istore_3
    //   743: goto -634 -> 109
    //   746: iload_3
    //   747: iconst_1
    //   748: iadd
    //   749: istore_3
    //   750: goto -546 -> 204
    //   753: iconst_1
    //   754: istore 5
    //   756: goto -715 -> 41
    //   759: iconst_1
    //   760: ireturn
    //   761: astore_1
    //   762: iconst_0
    //   763: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	764	0	this	d
    //   0	764	1	paramUri	Uri
    //   0	764	2	paramActivity	Activity
    //   108	642	3	i	int
    //   200	8	4	j	int
    //   39	716	5	bool	boolean
    //   62	303	6	localObject1	Object
    //   371	1	6	localException1	Exception
    //   459	198	6	str1	String
    //   730	1	6	localException2	Exception
    //   736	1	6	localObject2	Object
    //   84	640	7	localObject3	Object
    //   90	168	8	localObject4	Object
    //   195	16	9	arrayOfString	String[]
    //   214	21	10	str2	String
    // Exception table:
    //   from	to	target	type
    //   269	323	371	java/lang/Exception
    //   328	369	371	java/lang/Exception
    //   14	41	730	java/lang/Exception
    //   41	64	730	java/lang/Exception
    //   64	92	730	java/lang/Exception
    //   97	107	730	java/lang/Exception
    //   118	136	730	java/lang/Exception
    //   140	202	730	java/lang/Exception
    //   216	243	730	java/lang/Exception
    //   246	265	730	java/lang/Exception
    //   388	461	761	java/lang/Exception
    //   461	495	761	java/lang/Exception
    //   500	522	761	java/lang/Exception
    //   530	570	761	java/lang/Exception
    //   573	595	761	java/lang/Exception
    //   598	608	761	java/lang/Exception
    //   611	623	761	java/lang/Exception
    //   633	667	761	java/lang/Exception
    //   667	728	761	java/lang/Exception
  }
  
  public final boolean a(e parame, Activity paramActivity)
  {
    if (cwk == g.cwA)
    {
      a(parame, paramActivity, true);
      return true;
    }
    if (cwk == g.cwB) {}
    for (boolean bool = true;; bool = false)
    {
      a(parame, paramActivity, bool);
      return true;
    }
  }
  
  public final void eA(String paramString)
  {
    if (x.eQ(paramString)) {
      GD();
    }
  }
  
  public final void eB(String paramString)
  {
    if (x.eQ(paramString)) {
      GD();
    }
  }
  
  public final void eC(String paramString)
  {
    if (x.eQ(paramString)) {
      GD();
    }
  }
  
  @TargetApi(14)
  private final class a
    implements Application.ActivityLifecycleCallbacks
  {
    private int cwy = 0;
    
    private a() {}
    
    public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
    {
      paramBundle = d.this;
      if (d.d(d.this))
      {
        i = d.i.cwE;
        d.a(paramBundle, i);
        paramBundle = l.GL();
        Context localContext = paramActivity.getApplicationContext();
        if ((paramBundle.cxA == null) || (!l.a.a(paramBundle.cxA, localContext))) {
          break label90;
        }
      }
      label90:
      for (int i = 1;; i = 0)
      {
        if (i != 0)
        {
          paramBundle = l.GL();
          if (paramBundle.a(paramBundle.cxA, paramActivity, null)) {
            paramBundle.cxA = null;
          }
        }
        return;
        i = d.i.cwF;
        break;
      }
    }
    
    public final void onActivityDestroyed(Activity paramActivity)
    {
      if ((d.this.cwj != null) && (d.this.cwj.get() == paramActivity)) {
        d.this.cwj.clear();
      }
      l locall = l.GL();
      if ((locall.cxC != null) && (locall.cxC.equalsIgnoreCase(paramActivity.getClass().getName()))) {
        locall.cxy = false;
      }
    }
    
    public final void onActivityPaused(Activity paramActivity)
    {
      if (d.g(d.this) != null)
      {
        paramActivity = d.g(d.this);
        if ((paramActivity.cBD != null) && (paramActivity.cBD.isShowing())) {
          paramActivity.cBD.cancel();
        }
      }
    }
    
    public final void onActivityResumed(Activity paramActivity)
    {
      if (d.h(paramActivity.getIntent()))
      {
        d.b(d.this, d.k.cwJ);
        d.a(d.this, paramActivity);
      }
      d.this.cwj = new WeakReference(paramActivity);
      if (d.d(d.this))
      {
        d.a(d.this, d.i.cwF);
        if ((paramActivity.getIntent() == null) || (d.e(d.this) == d.k.cwH)) {
          break label97;
        }
      }
      label97:
      for (boolean bool = true;; bool = false)
      {
        d.a(d.this, paramActivity, bool);
        return;
      }
    }
    
    public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
    
    public final void onActivityStarted(Activity paramActivity)
    {
      d locald = d.this;
      int i;
      if (d.d(d.this)) {
        i = d.i.cwE;
      }
      for (;;)
      {
        d.a(locald, i);
        if (d.e(d.this) == d.k.cwH) {}
        try
        {
          io.branch.a.b.Gq().d(paramActivity, d.this.cwq);
          if (this.cwy <= 0)
          {
            if (d.e(d.this) == d.k.cwH) {
              d.b(d.this, d.k.cwJ);
            }
            if (k.bS(d.f(d.this)))
            {
              d.a(d.this);
              q.GZ();
            }
            d.a(d.this);
            q.bs(d.GE());
            d.a(d.this, paramActivity);
          }
          for (;;)
          {
            this.cwy += 1;
            return;
            i = d.i.cwF;
            break;
            if (d.h(paramActivity.getIntent()))
            {
              d.b(d.this, d.k.cwJ);
              d.a(d.this, paramActivity);
            }
          }
        }
        catch (Exception localException)
        {
          for (;;) {}
        }
      }
    }
    
    public final void onActivityStopped(Activity paramActivity)
    {
      io.branch.a.b localb = io.branch.a.b.Gq();
      if ((localb.cuQ != null) && (localb.cuQ.get() != null) && (((Activity)localb.cuQ.get()).getClass().getName().equals(paramActivity.getClass().getName())))
      {
        localb.cuP.removeCallbacks(localb.cuZ);
        localb.cuQ = null;
      }
      try
      {
        if (localb.cuS != null) {
          localb.cuS.put("tc", System.currentTimeMillis());
        }
        paramActivity = localb.cuX.values().iterator();
        while (paramActivity.hasNext())
        {
          ViewTreeObserver localViewTreeObserver = (ViewTreeObserver)((WeakReference)paramActivity.next()).get();
          if (localViewTreeObserver != null) {
            localViewTreeObserver.removeOnScrollChangedListener(localb.cva);
          }
        }
        localb.cuX.clear();
        this.cwy -= 1;
        if (this.cwy <= 0) {
          d.h(d.this);
        }
        return;
      }
      catch (JSONException paramActivity)
      {
        for (;;) {}
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(String paramString, f paramf);
  }
  
  public static abstract interface c {}
  
  private final class d
    extends e<Void, Void, ae>
  {
    r cwz;
    
    public d(r paramr)
    {
      this.cwz = paramr;
    }
    
    private ae GH()
    {
      Object localObject1;
      Object localObject2;
      if ((this.cwz instanceof x))
      {
        localObject1 = (x)this.cwz;
        localObject2 = q.getString("bnc_link_click_identifier");
        if (((String)localObject2).equals("bnc_no_value")) {}
      }
      try
      {
        ((r)localObject1).cxm.put(n.a.cyO.key, localObject2);
        localObject2 = q.getString("bnc_google_search_install_identifier");
        if (!((String)localObject2).equals("bnc_no_value")) {}
        try
        {
          ((r)localObject1).cxm.put(n.a.cxW.key, localObject2);
          localObject2 = q.getString("bnc_google_play_install_referrer_extras");
          if (!((String)localObject2).equals("bnc_no_value")) {}
          try
          {
            ((r)localObject1).cxm.put(n.a.cxX.key, localObject2);
            if (q.eN("bnc_is_full_app_conversion")) {}
            try
            {
              ((r)localObject1).cxm.put(n.a.czd.key, q.getString("bnc_app_link"));
              ((r)localObject1).cxm.put(n.a.cyy.key, true);
              localObject1 = d.this;
              localObject2 = this.cwz.Hd() + "-" + n.a.czy.key;
              Object localObject3 = this.cwz;
              if (((r)localObject3).cAY > 0L)
              {
                l = System.currentTimeMillis() - ((r)localObject3).cAY;
                ((d)localObject1).T((String)localObject2, String.valueOf(l));
                if ((this.cwz.Hf()) && (!k.bS(d.f(d.this))))
                {
                  localObject1 = this.cwz;
                  localObject2 = d.j(d.this);
                  if (TextUtils.isEmpty(((ag)localObject2).cBF)) {}
                }
                try
                {
                  ((r)localObject1).cxm.put(n.a.cyP.key, ((ag)localObject2).cBF);
                  ((r)localObject1).cxm.put(n.a.cyQ.key, ((ag)localObject2).cBG);
                  if (this.cwz.Hb())
                  {
                    localObject1 = d.i(d.this);
                    localObject2 = this.cwz.He();
                    localObject3 = this.cwz.cxm;
                    str = this.cwz.Hd();
                    d.a(d.this);
                    return ((io.branch.referral.a.a)localObject1).a((String)localObject2, (JSONObject)localObject3, str, q.GU());
                  }
                }
                catch (JSONException localJSONException1)
                {
                  for (;;)
                  {
                    localJSONException1.printStackTrace();
                  }
                  io.branch.referral.a.a locala = d.i(d.this);
                  localObject2 = this.cwz.a(d.k(d.this));
                  localObject3 = this.cwz.He();
                  String str = this.cwz.Hd();
                  d.a(d.this);
                  return locala.a((JSONObject)localObject2, (String)localObject3, str, q.GU());
                }
              }
            }
            catch (JSONException localJSONException2)
            {
              for (;;) {}
            }
          }
          catch (JSONException localJSONException3)
          {
            for (;;) {}
          }
        }
        catch (JSONException localJSONException4)
        {
          for (;;) {}
        }
      }
      catch (JSONException localJSONException5)
      {
        for (;;)
        {
          continue;
          long l = 0L;
        }
      }
    }
    
    protected final void onPreExecute()
    {
      super.onPreExecute();
      this.cwz.onPreExecute();
    }
  }
  
  public static abstract interface e
  {
    public abstract void a(JSONObject paramJSONObject, f paramf);
  }
  
  public static abstract interface f {}
  
  private static enum g
  {
    public static final int cwA = 1;
    public static final int cwB = 2;
    public static final int cwC = 3;
  }
  
  public static abstract interface h
  {
    public abstract boolean GI();
  }
  
  private static enum i
  {
    public static final int cwE = 1;
    public static final int cwF = 2;
  }
  
  public static abstract interface j {}
  
  private static enum k
  {
    public static final int cwH = 1;
    public static final int cwI = 2;
    public static final int cwJ = 3;
  }
  
  private final class l
    extends AsyncTask<r, Void, ae>
  {
    private l() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */