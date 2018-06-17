package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ar;
import com.google.android.gms.common.internal.n;
import java.util.Map;
import java.util.Set;

final class ap
  implements bp, ar
{
  final cb<?> aCB;
  private n aEi = null;
  final a.f aFl;
  private Set<Scope> aFx = null;
  boolean aFy = false;
  
  public ap(a.f paramf, cb<?> paramcb)
  {
    this.aFl = paramcb;
    cb localcb;
    this.aCB = localcb;
  }
  
  public final void b(n paramn, Set<Scope> paramSet)
  {
    if ((paramn == null) || (paramSet == null))
    {
      Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
      h(new a(4));
      return;
    }
    this.aEi = paramn;
    this.aFx = paramSet;
    nM();
  }
  
  public final void d(a parama)
  {
    ah.a(this.aFj).post(new aq(this, parama));
  }
  
  public final void h(a parama)
  {
    aj localaj = (aj)ah.j(this.aFj).get(this.aCB);
    ae.a(ah.a(localaj.aFj));
    localaj.aFl.disconnect();
    localaj.a(parama);
  }
  
  final void nM()
  {
    if ((this.aFy) && (this.aEi != null)) {
      this.aFl.a(this.aEi, this.aFx);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */