package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.a;
import com.google.android.gms.common.c;
import com.google.android.gms.common.m;
import java.util.concurrent.atomic.AtomicReference;

public abstract class ci
  extends LifecycleCallback
  implements DialogInterface.OnCancelListener
{
  protected final c aCU;
  protected final AtomicReference<cj> aGK = new AtomicReference(null);
  private final Handler aGL = new Handler(Looper.getMainLooper());
  protected volatile boolean uY;
  
  protected ci(az paramaz)
  {
    this(paramaz, c.mR());
  }
  
  private ci(az paramaz, c paramc)
  {
    super(paramaz);
    this.aCU = paramc;
  }
  
  private static int a(cj paramcj)
  {
    if (paramcj == null) {
      return -1;
    }
    return paramcj.aGM;
  }
  
  protected abstract void a(a parama, int paramInt);
  
  public final void c(a parama, int paramInt)
  {
    parama = new cj(parama, paramInt);
    if (this.aGK.compareAndSet(null, parama)) {
      this.aGL.post(new ck(this, parama));
    }
  }
  
  protected final void nS()
  {
    this.aGK.set(null);
    nl();
  }
  
  protected abstract void nl();
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 13;
    cj localcj = (cj)this.aGK.get();
    switch (paramInt1)
    {
    default: 
      paramInt1 = 0;
      paramIntent = localcj;
      if (paramInt1 != 0)
      {
        nS();
        return;
      }
      break;
    case 2: 
      label45:
      label53:
      i = this.aCU.w(getActivity());
      if (i != 0) {}
      break;
    }
    for (paramInt2 = 1;; paramInt2 = 0)
    {
      if (localcj == null) {
        break label53;
      }
      paramIntent = localcj;
      paramInt1 = paramInt2;
      if (localcj.aGN.aCj != 18) {
        break label45;
      }
      paramIntent = localcj;
      paramInt1 = paramInt2;
      if (i != 18) {
        break label45;
      }
      return;
      if (paramInt2 == -1)
      {
        paramInt1 = 1;
        paramIntent = localcj;
        break label45;
      }
      if (paramInt2 != 0) {
        break;
      }
      paramInt1 = i;
      if (paramIntent != null) {
        paramInt1 = paramIntent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13);
      }
      paramIntent = new cj(new a(paramInt1, null), a(localcj));
      this.aGK.set(paramIntent);
      paramInt1 = 0;
      break label45;
      if (paramIntent == null) {
        break label53;
      }
      a(paramIntent.aGN, paramIntent.aGM);
      return;
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    a(new a(13, null), a((cj)this.aGK.get()));
    nS();
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AtomicReference localAtomicReference;
    if (paramBundle != null)
    {
      localAtomicReference = this.aGK;
      if (!paramBundle.getBoolean("resolving_error", false)) {
        break label67;
      }
    }
    label67:
    for (paramBundle = new cj(new a(paramBundle.getInt("failed_status"), (PendingIntent)paramBundle.getParcelable("failed_resolution")), paramBundle.getInt("failed_client_id", -1));; paramBundle = null)
    {
      localAtomicReference.set(paramBundle);
      return;
    }
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    cj localcj = (cj)this.aGK.get();
    if (localcj != null)
    {
      paramBundle.putBoolean("resolving_error", true);
      paramBundle.putInt("failed_client_id", localcj.aGM);
      paramBundle.putInt("failed_status", localcj.aGN.aCj);
      paramBundle.putParcelable("failed_resolution", localcj.aGN.aCk);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    this.uY = true;
  }
  
  public void onStop()
  {
    super.onStop();
    this.uY = false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ci.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */