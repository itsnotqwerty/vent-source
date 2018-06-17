package com.google.android.gms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import com.google.android.gms.common.internal.ae;

public final class b
  extends DialogFragment
{
  private DialogInterface.OnCancelListener aCm = null;
  private Dialog wP = null;
  
  public static b a(Dialog paramDialog, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    b localb = new b();
    paramDialog = (Dialog)ae.g(paramDialog, "Cannot display null dialog");
    paramDialog.setOnCancelListener(null);
    paramDialog.setOnDismissListener(null);
    localb.wP = paramDialog;
    if (paramOnCancelListener != null) {
      localb.aCm = paramOnCancelListener;
    }
    return localb;
  }
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.aCm != null) {
      this.aCm.onCancel(paramDialogInterface);
    }
  }
  
  public final Dialog onCreateDialog(Bundle paramBundle)
  {
    if (this.wP == null) {
      setShowsDialog(false);
    }
    return this.wP;
  }
  
  public final void show(FragmentManager paramFragmentManager, String paramString)
  {
    super.show(paramFragmentManager, paramString);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */