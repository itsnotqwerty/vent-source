package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.g.b;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.ah;
import com.google.android.gms.common.api.internal.aj;
import com.google.android.gms.common.api.internal.ar;
import com.google.android.gms.common.api.internal.av;
import com.google.android.gms.common.api.internal.bh;
import com.google.android.gms.common.api.internal.bm;
import com.google.android.gms.common.api.internal.bq;
import com.google.android.gms.common.api.internal.ca;
import com.google.android.gms.common.api.internal.cb;
import com.google.android.gms.common.api.internal.cg;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.internal.az;
import java.util.Collection;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicInteger;

public class e<O extends a.a>
{
  private final O aCA;
  public final cb<O> aCB;
  public final Looper aCC;
  private final f aCD;
  private final bq aCE;
  protected final ah aCF;
  public final a<O> aCz;
  private final Context mContext;
  public final int yo;
  
  protected e(Context paramContext, a<O> parama, Looper paramLooper)
  {
    ae.g(paramContext, "Null context is not permitted.");
    ae.g(parama, "Api must not be null.");
    ae.g(paramLooper, "Looper must not be null.");
    this.mContext = paramContext.getApplicationContext();
    this.aCz = parama;
    this.aCA = null;
    this.aCC = paramLooper;
    this.aCB = new cb(parama);
    this.aCD = new ar(this);
    this.aCF = ah.y(this.mContext);
    this.yo = this.aCF.aFe.getAndIncrement();
    this.aCE = new ca();
  }
  
  private final az na()
  {
    az localaz = new az();
    if ((this.aCA instanceof a.a.b))
    {
      localObject = ((a.a.b)this.aCA).mW();
      if (localObject != null)
      {
        if (((GoogleSignInAccount)localObject).aBT == null) {
          break label148;
        }
        localObject = new Account(((GoogleSignInAccount)localObject).aBT, "com.google");
        localaz.aCI = ((Account)localObject);
        if (!(this.aCA instanceof a.a.b)) {
          break label153;
        }
        localObject = ((a.a.b)this.aCA).mW();
        if (localObject == null) {
          break label153;
        }
      }
    }
    label148:
    label153:
    for (Object localObject = ((GoogleSignInAccount)localObject).mO();; localObject = Collections.emptySet())
    {
      if (localaz.aIA == null) {
        localaz.aIA = new b();
      }
      localaz.aIA.addAll((Collection)localObject);
      return localaz;
      if ((this.aCA instanceof a.a.a))
      {
        localObject = ((a.a.a)this.aCA).mV();
        break;
      }
      localObject = null;
      break;
    }
  }
  
  public a.f a(Looper paramLooper, aj<O> paramaj)
  {
    Object localObject = na();
    ((az)localObject).aCN = this.mContext.getPackageName();
    ((az)localObject).aCO = this.mContext.getClass().getName();
    localObject = ((az)localObject).ov();
    return this.aCz.mT().a(this.mContext, paramLooper, (ay)localObject, this.aCA, paramaj, paramaj);
  }
  
  public bm a(Context paramContext, Handler paramHandler)
  {
    return new bm(paramContext, paramHandler, na().ov());
  }
  
  public final <A extends a.c, T extends cg<? extends i, A>> T a(T paramT)
  {
    paramT.ni();
    ah localah = this.aCF;
    av localav = new av(paramT);
    localah.mHandler.sendMessage(localah.mHandler.obtainMessage(4, new bh(localav, localah.aFf.get(), this)));
    return paramT;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */