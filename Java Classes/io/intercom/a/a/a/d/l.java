package io.intercom.a.a.a.d;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.n;
import android.support.v4.app.t;
import android.support.v4.g.a;
import android.util.Log;
import android.view.View;
import io.intercom.a.a.a.c;
import java.util.HashMap;
import java.util.Map;

public final class l
  implements Handler.Callback
{
  private static final a cPt = new a()
  {
    public final io.intercom.a.a.a.j a(c paramAnonymousc, h paramAnonymoush, m paramAnonymousm, Context paramAnonymousContext)
    {
      return new io.intercom.a.a.a.j(paramAnonymousc, paramAnonymoush, paramAnonymousm, paramAnonymousContext);
    }
  };
  private volatile io.intercom.a.a.a.j cPm;
  final Map<FragmentManager, k> cPn = new HashMap();
  final Map<n, o> cPo = new HashMap();
  private final a cPp;
  private final a<View, android.support.v4.app.i> cPq = new a();
  private final a<View, Fragment> cPr = new a();
  private final Bundle cPs = new Bundle();
  private final Handler handler;
  
  public l(a parama)
  {
    if (parama != null) {}
    for (;;)
    {
      this.cPp = parama;
      this.handler = new Handler(Looper.getMainLooper(), this);
      return;
      parama = cPt;
    }
  }
  
  private io.intercom.a.a.a.j cc(Context paramContext)
  {
    if (this.cPm == null) {}
    try
    {
      if (this.cPm == null)
      {
        c localc = c.bY(paramContext.getApplicationContext());
        this.cPm = this.cPp.a(localc, new b(), new g(), paramContext.getApplicationContext());
      }
      return this.cPm;
    }
    finally {}
  }
  
  @TargetApi(17)
  private static void y(Activity paramActivity)
  {
    if ((Build.VERSION.SDK_INT >= 17) && (paramActivity.isDestroyed())) {
      throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }
  }
  
  @TargetApi(17)
  final k a(FragmentManager paramFragmentManager)
  {
    k localk2 = (k)paramFragmentManager.findFragmentByTag("io.intercom.com.bumptech.glide.manager");
    k localk1 = localk2;
    if (localk2 == null)
    {
      localk2 = (k)this.cPn.get(paramFragmentManager);
      localk1 = localk2;
      if (localk2 == null)
      {
        localk1 = new k();
        localk1.cPk = null;
        this.cPn.put(paramFragmentManager, localk1);
        paramFragmentManager.beginTransaction().add(localk1, "io.intercom.com.bumptech.glide.manager").commitAllowingStateLoss();
        this.handler.obtainMessage(1, paramFragmentManager).sendToTarget();
      }
    }
    return localk1;
  }
  
  final o a(n paramn, android.support.v4.app.i parami)
  {
    o localo2 = (o)paramn.w("io.intercom.com.bumptech.glide.manager");
    o localo1 = localo2;
    if (localo2 == null)
    {
      localo2 = (o)this.cPo.get(paramn);
      localo1 = localo2;
      if (localo2 == null)
      {
        localo1 = new o();
        localo1.cPy = parami;
        if ((parami != null) && (parami.getActivity() != null)) {
          localo1.d(parami.getActivity());
        }
        this.cPo.put(paramn, localo1);
        paramn.cG().a(localo1, "io.intercom.com.bumptech.glide.manager").commitAllowingStateLoss();
        this.handler.obtainMessage(2, paramn).sendToTarget();
      }
    }
    return localo1;
  }
  
  public final io.intercom.a.a.a.j a(Context paramContext, n paramn, android.support.v4.app.i parami)
  {
    o localo = a(paramn, parami);
    parami = localo.requestManager;
    paramn = parami;
    if (parami == null)
    {
      paramn = c.bY(paramContext);
      paramn = this.cPp.a(paramn, localo.cPg, localo.cPh, paramContext);
      localo.requestManager = paramn;
    }
    return paramn;
  }
  
  public final io.intercom.a.a.a.j c(android.support.v4.app.j paramj)
  {
    if (io.intercom.a.a.a.i.i.JV()) {
      return cd(paramj.getApplicationContext());
    }
    y(paramj);
    return a(paramj, paramj.getSupportFragmentManager(), null);
  }
  
  public final io.intercom.a.a.a.j cd(Context paramContext)
  {
    Object localObject2;
    for (;;)
    {
      if (paramContext == null) {
        throw new IllegalArgumentException("You cannot start a load on a null Context");
      }
      if ((!io.intercom.a.a.a.i.i.JU()) || ((paramContext instanceof Application))) {
        break;
      }
      if ((paramContext instanceof android.support.v4.app.j)) {
        return c((android.support.v4.app.j)paramContext);
      }
      if ((paramContext instanceof Activity))
      {
        Object localObject1 = (Activity)paramContext;
        if (io.intercom.a.a.a.i.i.JV())
        {
          paramContext = ((Activity)localObject1).getApplicationContext();
        }
        else
        {
          y((Activity)localObject1);
          paramContext = a(((Activity)localObject1).getFragmentManager());
          localObject2 = paramContext.requestManager;
          if (localObject2 != null) {
            return localObject2;
          }
          localObject2 = c.bY((Context)localObject1);
          localObject1 = this.cPp.a((c)localObject2, paramContext.cPg, paramContext.cPh, (Context)localObject1);
          paramContext.requestManager = ((io.intercom.a.a.a.j)localObject1);
          return (io.intercom.a.a.a.j)localObject1;
        }
      }
      else
      {
        if (!(paramContext instanceof ContextWrapper)) {
          break;
        }
        paramContext = ((ContextWrapper)paramContext).getBaseContext();
      }
    }
    return cc(paramContext);
    return (io.intercom.a.a.a.j)localObject2;
  }
  
  public final boolean handleMessage(Message paramMessage)
  {
    boolean bool = true;
    Object localObject;
    switch (paramMessage.what)
    {
    default: 
      bool = false;
      paramMessage = null;
      localObject = null;
    }
    for (;;)
    {
      if ((bool) && (localObject == null) && (Log.isLoggable("RMRetriever", 5))) {
        Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + paramMessage);
      }
      return bool;
      paramMessage = (FragmentManager)paramMessage.obj;
      localObject = this.cPn.remove(paramMessage);
      continue;
      paramMessage = (n)paramMessage.obj;
      localObject = this.cPo.remove(paramMessage);
    }
  }
  
  public static abstract interface a
  {
    public abstract io.intercom.a.a.a.j a(c paramc, h paramh, m paramm, Context paramContext);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/d/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */