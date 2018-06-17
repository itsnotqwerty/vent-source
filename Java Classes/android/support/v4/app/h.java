package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

public class h
  extends i
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  int mTheme = 0;
  int wL = 0;
  protected boolean wM = true;
  protected boolean wN = true;
  int wO = -1;
  protected Dialog wP;
  boolean wQ;
  boolean wR;
  boolean wS;
  
  public final void X(int paramInt)
  {
    this.wL = 1;
    if ((this.wL == 2) || (this.wL == 3)) {
      this.mTheme = 16973913;
    }
    if (paramInt != 0) {
      this.mTheme = paramInt;
    }
  }
  
  public void a(n paramn, String paramString)
  {
    this.wR = false;
    this.wS = true;
    paramn = paramn.cG();
    paramn.a(this, paramString);
    paramn.commit();
  }
  
  public Dialog cC()
  {
    return new Dialog(getActivity(), this.mTheme);
  }
  
  public final void o(boolean paramBoolean)
  {
    if (this.wR) {
      return;
    }
    this.wR = true;
    this.wS = false;
    if (this.wP != null) {
      this.wP.dismiss();
    }
    this.wQ = true;
    if (this.wO >= 0)
    {
      getFragmentManager().Z(this.wO);
      this.wO = -1;
      return;
    }
    t localt = getFragmentManager().cG();
    localt.a(this);
    if (paramBoolean)
    {
      localt.commitAllowingStateLoss();
      return;
    }
    localt.commit();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (!this.wN) {}
    do
    {
      do
      {
        return;
        Object localObject = getView();
        if (localObject != null)
        {
          if (((View)localObject).getParent() != null) {
            throw new IllegalStateException("DialogFragment can not be attached to a container view");
          }
          this.wP.setContentView((View)localObject);
        }
        localObject = getActivity();
        if (localObject != null) {
          this.wP.setOwnerActivity((Activity)localObject);
        }
        this.wP.setCancelable(this.wM);
        this.wP.setOnCancelListener(this);
        this.wP.setOnDismissListener(this);
      } while (paramBundle == null);
      paramBundle = paramBundle.getBundle("android:savedDialogState");
    } while (paramBundle == null);
    this.wP.onRestoreInstanceState(paramBundle);
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    if (!this.wS) {
      this.wR = false;
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface) {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (this.mContainerId == 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.wN = bool;
      if (paramBundle != null)
      {
        this.wL = paramBundle.getInt("android:style", 0);
        this.mTheme = paramBundle.getInt("android:theme", 0);
        this.wM = paramBundle.getBoolean("android:cancelable", true);
        this.wN = paramBundle.getBoolean("android:showsDialog", this.wN);
        this.wO = paramBundle.getInt("android:backStackId", -1);
      }
      return;
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (this.wP != null)
    {
      this.wQ = true;
      this.wP.dismiss();
      this.wP = null;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    if ((!this.wS) && (!this.wR)) {
      this.wR = true;
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!this.wQ) {
      o(true);
    }
  }
  
  public LayoutInflater onGetLayoutInflater(Bundle paramBundle)
  {
    if (!this.wN) {
      return super.onGetLayoutInflater(paramBundle);
    }
    this.wP = cC();
    if (this.wP != null)
    {
      paramBundle = this.wP;
      switch (this.wL)
      {
      }
      for (;;)
      {
        return (LayoutInflater)this.wP.getContext().getSystemService("layout_inflater");
        paramBundle.getWindow().addFlags(24);
        paramBundle.requestWindowFeature(1);
      }
    }
    return (LayoutInflater)this.mHost.mContext.getSystemService("layout_inflater");
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.wP != null)
    {
      Bundle localBundle = this.wP.onSaveInstanceState();
      if (localBundle != null) {
        paramBundle.putBundle("android:savedDialogState", localBundle);
      }
    }
    if (this.wL != 0) {
      paramBundle.putInt("android:style", this.wL);
    }
    if (this.mTheme != 0) {
      paramBundle.putInt("android:theme", this.mTheme);
    }
    if (!this.wM) {
      paramBundle.putBoolean("android:cancelable", this.wM);
    }
    if (!this.wN) {
      paramBundle.putBoolean("android:showsDialog", this.wN);
    }
    if (this.wO != -1) {
      paramBundle.putInt("android:backStackId", this.wO);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (this.wP != null)
    {
      this.wQ = false;
      this.wP.show();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (this.wP != null) {
      this.wP.hide();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */