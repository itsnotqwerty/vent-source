package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.support.v4.app.h;
import android.support.v4.app.n;
import com.google.android.gms.common.internal.ae;

public final class g
  extends h
{
  private DialogInterface.OnCancelListener aCm = null;
  private Dialog wP = null;
  
  public static g b(Dialog paramDialog, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    g localg = new g();
    paramDialog = (Dialog)ae.g(paramDialog, "Cannot display null dialog");
    paramDialog.setOnCancelListener(null);
    paramDialog.setOnDismissListener(null);
    localg.wP = paramDialog;
    if (paramOnCancelListener != null) {
      localg.aCm = paramOnCancelListener;
    }
    return localg;
  }
  
  public final void a(n paramn, String paramString)
  {
    super.a(paramn, paramString);
  }
  
  public final Dialog cC()
  {
    if (this.wP == null) {
      this.wN = false;
    }
    return this.wP;
  }
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.aCm != null) {
      this.aCm.onCancel(paramDialogInterface);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */