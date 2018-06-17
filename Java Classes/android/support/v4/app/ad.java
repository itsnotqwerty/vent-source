package android.support.v4.app;

import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class ad
  implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener
{
  private ViewTreeObserver AB;
  private final Runnable AC;
  private final View mView;
  
  private ad(View paramView, Runnable paramRunnable)
  {
    this.mView = paramView;
    this.AB = paramView.getViewTreeObserver();
    this.AC = paramRunnable;
  }
  
  public static ad a(View paramView, Runnable paramRunnable)
  {
    paramRunnable = new ad(paramView, paramRunnable);
    paramView.getViewTreeObserver().addOnPreDrawListener(paramRunnable);
    paramView.addOnAttachStateChangeListener(paramRunnable);
    return paramRunnable;
  }
  
  private void da()
  {
    if (this.AB.isAlive()) {
      this.AB.removeOnPreDrawListener(this);
    }
    for (;;)
    {
      this.mView.removeOnAttachStateChangeListener(this);
      return;
      this.mView.getViewTreeObserver().removeOnPreDrawListener(this);
    }
  }
  
  public final boolean onPreDraw()
  {
    da();
    this.AC.run();
    return true;
  }
  
  public final void onViewAttachedToWindow(View paramView)
  {
    this.AB = paramView.getViewTreeObserver();
  }
  
  public final void onViewDetachedFromWindow(View paramView)
  {
    da();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */