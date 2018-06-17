package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.PrintWriter;

public abstract class m<E>
  extends k
{
  final Context mContext;
  final o mFragmentManager = new o();
  final Handler mHandler;
  final Activity xs;
  final int xt;
  
  private m(Activity paramActivity, Context paramContext, Handler paramHandler)
  {
    this.xs = paramActivity;
    this.mContext = paramContext;
    this.mHandler = paramHandler;
    this.xt = 0;
  }
  
  m(j paramj)
  {
    this(paramj, paramj, paramj.mHandler);
  }
  
  public void a(i parami, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (paramInt != -1) {
      throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }
    this.mContext.startActivity(paramIntent);
  }
  
  public void a(i parami, IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    if (paramInt1 != -1) {
      throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
    }
    a.a(this.xs, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
  }
  
  public void a(i parami, String[] paramArrayOfString, int paramInt) {}
  
  public void a(String paramString, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public boolean cE()
  {
    return true;
  }
  
  public void cF() {}
  
  void onAttachFragment(i parami) {}
  
  public View onFindViewById(int paramInt)
  {
    return null;
  }
  
  public abstract E onGetHost();
  
  public LayoutInflater onGetLayoutInflater()
  {
    return LayoutInflater.from(this.mContext);
  }
  
  public int onGetWindowAnimations()
  {
    return this.xt;
  }
  
  public boolean onHasView()
  {
    return true;
  }
  
  public boolean onHasWindowAnimations()
  {
    return true;
  }
  
  public boolean v(String paramString)
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */