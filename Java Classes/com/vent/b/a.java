package com.vent.b;

import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.Html;
import android.text.TextUtils;
import com.vent.MyApplication;
import com.vent.a.m;
import com.vent.a.x;
import com.vent.a.y;
import com.vent.bb;
import com.vent.d.c.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class a
{
  public static boolean cld;
  public static boolean cle;
  public static boolean clf;
  static boolean clg;
  public static final Map<String, f> clh = new HashMap();
  public static boolean cli;
  public static boolean clj;
  private static int clk;
  public c cll;
  private ArrayList<b> clm;
  
  public static String Fo()
  {
    bb.Es();
    return "production_unlockall";
  }
  
  public static boolean Fp()
  {
    return (cle) || (cld);
  }
  
  private static void Fq()
  {
    SharedPreferences.Editor localEditor = bb.ciY.edit();
    localEditor.putBoolean(bb.chQ, cld);
    localEditor.putBoolean(bb.chQ + "2", cle);
    localEditor.apply();
  }
  
  public static int Fr()
  {
    Iterator localIterator = clh.values().iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      Object localObject = (f)localIterator.next();
      if (!TextUtils.equals(((f)localObject).cmg, "inapp")) {
        break label100;
      }
      localObject = ((f)localObject).cmi.toLowerCase();
      if ((((String)localObject).contains("gift")) || (!((String)localObject).contains("_ec_")) || ((!((String)localObject).contains("production_")) && (!((String)localObject).contains("prod_")))) {
        break label100;
      }
      i += 1;
    }
    label100:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public static void Fs()
  {
    clk += 1;
  }
  
  public static void a(Activity paramActivity, final c.b paramb)
  {
    if (paramActivity != null)
    {
      bb.Es();
      ((MyApplication)paramActivity.getApplication()).cgB.a(paramActivity, "production_unlockall", null, new a()
      {
        public final void aQ(boolean paramAnonymousBoolean)
        {
          a.f(this.bXe.getApplication());
          if (paramb != null)
          {
            paramb.cmT = Boolean.valueOf(paramAnonymousBoolean);
            paramb.run();
          }
        }
      });
    }
  }
  
  public static void e(Application paramApplication)
  {
    clh.clear();
    cld = false;
    cle = false;
    clj = false;
    MyApplication.c(paramApplication);
    Fq();
  }
  
  static void f(Application paramApplication)
  {
    Map localMap = clh;
    bb.Es();
    cld = localMap.containsKey("prod_noads");
    localMap = clh;
    bb.Es();
    cle = localMap.containsKey("production_unlockall");
    if (Fr() >= 10) {
      cld = true;
    }
    MyApplication.c(paramApplication);
    Fq();
  }
  
  public static void s(Activity paramActivity)
  {
    if (paramActivity != null)
    {
      bb.Es();
      ((MyApplication)paramActivity.getApplication()).cgB.a(paramActivity, "prod_noads", null, new a()
      {
        public final void aQ(boolean paramAnonymousBoolean)
        {
          a.f(this.bXe.getApplication());
        }
      });
    }
  }
  
  public final void a(final Activity paramActivity, final String paramString, final x paramx, final a parama)
  {
    a(paramActivity, new b(new android.support.v7.app.c[] { com.vent.d.c.v(paramActivity, 2131689697) })
    {
      final void ek(String paramAnonymousString)
      {
        com.vent.d.c.a(this.clq[0]);
        this.clq[0] = null;
        if (!TextUtils.isEmpty(paramAnonymousString)) {
          com.vent.d.c.a(paramActivity, paramAnonymousString, -1);
        }
        parama.aQ(false);
      }
      
      public final void run()
      {
        if ((!a.clg) || (a.this.cll == null))
        {
          ek(paramActivity.getString(2131689976) + " (4)");
          return;
        }
        try
        {
          a.Fs();
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(paramString);
          a.this.cll.a(true, localArrayList, localArrayList, new c.f()
          {
            final void Ft()
            {
              a.this.h(a.5.this.bXe.getApplication());
              a.5 local5 = a.5.this;
              com.vent.d.c.a(local5.clq[0]);
              local5.clq[0] = null;
              local5.clr.aQ(true);
            }
            
            public final void a(d paramAnonymous2d, final e paramAnonymous2e)
            {
              Object localObject;
              if (paramAnonymous2e != null)
              {
                localObject = a.5.this.cls;
                paramAnonymous2e = (h)paramAnonymous2e.cme.get(localObject);
                if ((paramAnonymous2d != null) && (paramAnonymous2d.mQ()) && (paramAnonymous2e != null)) {
                  break label141;
                }
                if ((paramAnonymous2d == null) || (paramAnonymous2d.mQ())) {
                  break label332;
                }
              }
              label141:
              label332:
              for (paramAnonymous2e = paramAnonymous2d.cmd;; paramAnonymous2e = null)
              {
                localObject = paramAnonymous2e;
                if (TextUtils.isEmpty(paramAnonymous2e)) {
                  localObject = a.5.this.bXe.getString(2131689975);
                }
                paramAnonymous2e = new StringBuilder().append(((String)localObject).trim()).append(" (5.");
                if (paramAnonymous2d == null) {}
                for (int i = -1;; i = paramAnonymous2d.cmc)
                {
                  el(i + ")");
                  return;
                  paramAnonymous2e = null;
                  break;
                }
                if (!com.vent.d.c.bG(a.5.this.bXe))
                {
                  el(null);
                  return;
                }
                if (a.5.this.bYv == null) {
                  paramAnonymous2d = paramAnonymous2e.cmt;
                }
                for (localObject = Html.fromHtml(a.5.this.bXe.getString(2131690098, new Object[] { paramAnonymous2e.cmu.trim() }));; localObject = Html.fromHtml(a.5.this.bXe.getString(2131690099, new Object[] { paramAnonymous2e.cmt, paramAnonymous2e.cmu.trim() })))
                {
                  new android.support.v7.app.c.a(a.5.this.bXe).setTitle(com.vent.d.e.s(paramAnonymous2d)).setMessage(com.vent.d.e.s((CharSequence)localObject)).setOnCancelListener(new DialogInterface.OnCancelListener()
                  {
                    public final void onCancel(DialogInterface paramAnonymous3DialogInterface)
                    {
                      a.5.1.this.el(null);
                    }
                  }).setNegativeButton(17039360, new DialogInterface.OnClickListener()
                  {
                    public final void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                    {
                      a.5.1.this.el(null);
                    }
                  }).setPositiveButton(17039370, new DialogInterface.OnClickListener()
                  {
                    public final void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                    {
                      if (a.clh.containsKey(a.5.this.cls))
                      {
                        a.5.this.clr.clx = ((f)a.clh.get(a.5.this.cls));
                        a.5.1.this.Ft();
                        return;
                      }
                      if ((a.this.cll == null) || (bb.ceP == null) || (a.5.this.bXe == null))
                      {
                        a.5.1.this.el("?");
                        return;
                      }
                      Object localObject2;
                      String str1;
                      c.d local1;
                      String str2;
                      try
                      {
                        paramAnonymous3DialogInterface = a.this.cll;
                        Object localObject1 = a.5.this.bXe;
                        localObject2 = a.5.this.cls;
                        str1 = paramAnonymous2e.gU;
                        local1 = new c.d()
                        {
                          public final void a(d paramAnonymous4d, f paramAnonymous4f)
                          {
                            Object localObject2 = null;
                            int i = paramAnonymous4d.cmc;
                            Object localObject1 = paramAnonymous4f;
                            if (paramAnonymous4f == null)
                            {
                              localObject1 = paramAnonymous4f;
                              if (i == 7) {
                                localObject1 = (f)a.clh.get(a.5.this.cls);
                              }
                            }
                            a.5.this.clr.cly = i;
                            a.5.this.clr.clx = ((f)localObject1);
                            if ((i != 0) && (i != 7))
                            {
                              if (i == 64531) {
                                break label272;
                              }
                              localObject1 = paramAnonymous4d.cmd;
                              paramAnonymous4f = (f)localObject1;
                              if (!TextUtils.isEmpty((CharSequence)localObject1)) {}
                            }
                            label272:
                            for (paramAnonymous4f = a.5.this.bXe.getString(2131689974);; paramAnonymous4f = null)
                            {
                              localObject1 = a.5.1.this;
                              if (paramAnonymous4f == null) {}
                              for (paramAnonymous4d = (d)localObject2;; paramAnonymous4d = paramAnonymous4f.trim() + " (6." + paramAnonymous4d.cmc + ")")
                              {
                                ((a.5.1)localObject1).el(paramAnonymous4d);
                                return;
                              }
                              a.clh.remove(a.5.this.cls);
                              if (localObject1 != null) {
                                a.clh.put(((f)localObject1).cmi, localObject1);
                              }
                              a.f(a.5.this.bXe.getApplication());
                              a.5.1.this.Ft();
                              return;
                            }
                          }
                        };
                        str2 = bb.ceP.cjy.toString();
                        paramAnonymous3DialogInterface.Fv();
                        paramAnonymous3DialogInterface.em("launchPurchaseFlow");
                        paramAnonymous3DialogInterface.en("launchPurchaseFlow");
                        if ((str1.equals("subs")) && (!paramAnonymous3DialogInterface.clD))
                        {
                          localObject1 = new d(64527, "Subscriptions are not available.");
                          paramAnonymous3DialogInterface.Fw();
                          local1.a((d)localObject1, null);
                          return;
                        }
                      }
                      catch (c.a paramAnonymous3DialogInterface)
                      {
                        a.5.1.this.el(a.5.this.bXe.getString(2131689974) + " (7)");
                        return;
                      }
                      try
                      {
                        localObject2 = paramAnonymous3DialogInterface.clI.a(3, paramAnonymous3DialogInterface.mContext.getPackageName(), (String)localObject2, str1, str2);
                        paramAnonymous3Int = c.v((Bundle)localObject2);
                        if (paramAnonymous3Int != 0)
                        {
                          paramAnonymous3DialogInterface.Fw();
                          local1.a(new d(paramAnonymous3Int, "Unable to buy item"), null);
                          return;
                        }
                      }
                      catch (IntentSender.SendIntentException localSendIntentException)
                      {
                        localSendIntentException.printStackTrace();
                        paramAnonymous3DialogInterface.Fw();
                        local1.a(new d(64532, "Failed to send intent."), null);
                        return;
                        localObject2 = (PendingIntent)((Bundle)localObject2).getParcelable("BUY_INTENT");
                        paramAnonymous3DialogInterface.clK = 47;
                        paramAnonymous3DialogInterface.clN = local1;
                        paramAnonymous3DialogInterface.clL = str1;
                        localSendIntentException.startIntentSenderForResult(((PendingIntent)localObject2).getIntentSender(), 47, new Intent(), 0, 0, 0);
                        return;
                      }
                      catch (RemoteException localRemoteException)
                      {
                        localRemoteException.printStackTrace();
                        paramAnonymous3DialogInterface.Fw();
                        local1.a(new d(64535, "Remote exception while starting purchase flow"), null);
                      }
                    }
                  }).show();
                  return;
                  paramAnonymous2d = a.5.this.bXe.getString(2131689592);
                }
              }
            }
            
            final void el(String paramAnonymous2String)
            {
              a.this.h(a.5.this.bXe.getApplication());
              a.5.this.ek(paramAnonymous2String);
            }
          });
          return;
        }
        catch (c.a locala)
        {
          ek(paramActivity.getString(2131689974) + " (3)");
        }
      }
    });
  }
  
  public final void a(final Context paramContext, b paramb)
  {
    if (!MyApplication.cgy)
    {
      clf = true;
      e((Application)paramContext.getApplicationContext());
      paramb.bUL = paramContext.getString(2131689978);
      paramb.run();
    }
    do
    {
      return;
      if (clg)
      {
        paramb.bUL = null;
        paramb.run();
        return;
      }
      if (this.clm == null) {
        this.clm = new ArrayList();
      }
      this.clm.add(paramb);
    } while (this.cll != null);
    this.cll = new c(paramContext, com.vent.d.c.eo("ZVVOVwNAOtxduxvT9j0ONDRSNNBPND8NZVVOPtXPNDRNkb+m+s9M4376/i/nMp+4x9CB+dT5hWQMfjpTZwHGNYsLrqjs7qr19+dEqmb0L7W33A6KyVQxRUZXY2MItIoaREjcCAaufoZyD0daMQCrgtgSrHc5tUkeugl47Mul1Dov+Inw1PhRu8Oj6J97Qw06PxfcCcDBIEHiqr1I4ipa63QXo3zNMYD7Z8wEGGot7B3Czfix+P0fwyZ20TBJuuUt7vEskSJB+VnZLMxcm2TGPtPpSbIOnRR1s2l1eAeh2bZD7nex5b+CVQmYulzv7jeTfQto/j0sTbjDPR/S0BMz0s/9i4y3nvPV6TyS6U1wO3q8QJliE4jCle2PARvgN7nH3DVQNDNO"));
    Fs();
    paramb = this.cll;
    paramContext = new c.e()
    {
      public final void b(d paramAnonymousd)
      {
        if (!paramAnonymousd.mQ())
        {
          a.clf = true;
          a.clg = false;
          paramAnonymousd = paramAnonymousd.cmd;
          a.e((Application)paramContext.getApplicationContext());
        }
        for (;;)
        {
          a.this.ej(paramAnonymousd);
          a.this.h((Application)paramContext.getApplicationContext());
          return;
          a.clf = false;
          a.clg = true;
          paramAnonymousd = null;
        }
      }
    };
    paramb.Fv();
    if (paramb.clA) {
      throw new IllegalStateException("IAB helper is already set up.");
    }
    paramb.clJ = new c.1(paramb, paramContext);
    Intent localIntent = new Intent(c.eo("pbz.naqebvq.iraqvat.ovyyvat.VaNccOvyyvatFreivpr.OVAQ"));
    localIntent.setPackage(c.eo("pbz.naqebvq.iraqvat"));
    List localList = paramb.mContext.getPackageManager().queryIntentServices(localIntent, 0);
    if ((localList != null) && (!localList.isEmpty()))
    {
      paramb.mContext.bindService(localIntent, paramb.clJ, 1);
      return;
    }
    paramContext.b(new d(3, "Billing service unavailable on device."));
  }
  
  final void ej(String paramString)
  {
    if (this.clm != null)
    {
      Object localObject = new ArrayList(this.clm);
      this.clm = null;
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        b localb = (b)((Iterator)localObject).next();
        localb.bUL = paramString;
        localb.run();
      }
    }
  }
  
  public final void g(Application paramApplication)
  {
    c localc;
    if (this.cll != null) {
      localc = this.cll;
    }
    synchronized (localc.clG)
    {
      if (localc.clF) {
        localc.clC = true;
      }
      for (;;)
      {
        this.cll = null;
        clg = false;
        ej(paramApplication.getString(2131689977));
        return;
        try
        {
          localc.Fu();
        }
        catch (c.a locala) {}
      }
    }
  }
  
  public final void h(Application paramApplication)
  {
    int i = clk - 1;
    clk = i;
    if (i == 0) {
      g(paramApplication);
    }
  }
  
  public static abstract class a
  {
    public f clx;
    public int cly;
    
    public abstract void aQ(boolean paramBoolean);
  }
  
  abstract class b
    implements Runnable
  {
    String bUL;
    
    b() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */