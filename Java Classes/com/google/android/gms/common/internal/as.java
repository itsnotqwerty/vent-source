package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

public final class as
  extends v
{
  private al aIt;
  private final int aIu;
  
  public as(al paramal, int paramInt)
  {
    this.aIt = paramal;
    this.aIu = paramInt;
  }
  
  public final void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    ae.g(this.aIt, "onPostInitComplete can be called only once per call to getRemoteService");
    this.aIt.a(paramInt, paramIBinder, paramBundle, this.aIu);
    this.aIt = null;
  }
  
  public final void og()
  {
    Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */