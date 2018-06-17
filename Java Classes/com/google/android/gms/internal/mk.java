package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.a.a;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.af;
import com.google.android.gms.common.internal.al;
import com.google.android.gms.common.internal.au;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.n;

public final class mk
  extends c<mi>
  implements ma
{
  private final ay aDG;
  private Integer aIz;
  private final boolean aZm = true;
  private final Bundle aZn;
  
  private mk(Context paramContext, Looper paramLooper, ay paramay, Bundle paramBundle, f.b paramb, f.c paramc)
  {
    super(paramContext, paramLooper, 44, paramay, paramb, paramc);
    this.aDG = paramay;
    this.aZn = paramBundle;
    this.aIz = paramay.aIz;
  }
  
  public mk(Context paramContext, Looper paramLooper, ay paramay, f.b paramb, f.c paramc)
  {
    this(paramContext, paramLooper, paramay, localBundle, paramb, paramc);
  }
  
  public final void a(n paramn, boolean paramBoolean)
  {
    try
    {
      ((mi)or()).a(paramn, this.aIz.intValue(), paramBoolean);
      return;
    }
    catch (RemoteException paramn)
    {
      Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
    }
  }
  
  public final void a(mg parammg)
  {
    ae.g(parammg, "Expecting a valid ISignInCallbacks");
    try
    {
      Object localObject1 = this.aDG;
      if (((ay)localObject1).aCI != null) {}
      for (localObject1 = ((ay)localObject1).aCI;; localObject1 = new Account("<<default account>>", "com.google"))
      {
        Object localObject2 = null;
        if ("<<default account>>".equals(((Account)localObject1).name))
        {
          localObject2 = a.v(this.mContext);
          localObject2 = ((a)localObject2).bb(((a)localObject2).bc("defaultGoogleSignInAccount"));
        }
        localObject1 = new af((Account)localObject1, this.aIz.intValue(), (GoogleSignInAccount)localObject2);
        ((mi)or()).a(new ml((af)localObject1), parammg);
        return;
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
      try
      {
        parammg.a(new mn());
        return;
      }
      catch (RemoteException parammg)
      {
        Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", localRemoteException);
      }
    }
  }
  
  public final void connect()
  {
    a(new au(this));
  }
  
  public final boolean mX()
  {
    return this.aZm;
  }
  
  protected final String oi()
  {
    return "com.google.android.gms.signin.service.START";
  }
  
  protected final String oj()
  {
    return "com.google.android.gms.signin.internal.ISignInService";
  }
  
  protected final Bundle op()
  {
    String str = this.aDG.aCN;
    if (!this.mContext.getPackageName().equals(str)) {
      this.aZn.putString("com.google.android.gms.signin.internal.realClientPackageName", this.aDG.aCN);
    }
    return this.aZn;
  }
  
  public final void sE()
  {
    try
    {
      ((mi)or()).cS(this.aIz.intValue());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/mk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */