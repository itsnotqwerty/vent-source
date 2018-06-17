package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.lang.ref.WeakReference;

public final class v
{
  public WeakReference<View> Hr;
  Runnable Hs = null;
  Runnable Ht = null;
  int Hu = -1;
  
  v(View paramView)
  {
    this.Hr = new WeakReference(paramView);
  }
  
  private void a(final View paramView, final w paramw)
  {
    if (paramw != null)
    {
      paramView.animate().setListener(new AnimatorListenerAdapter()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          paramw.aq(paramView);
        }
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          paramw.ap(paramView);
        }
        
        public final void onAnimationStart(Animator paramAnonymousAnimator)
        {
          paramw.ao(paramView);
        }
      });
      return;
    }
    paramView.animate().setListener(null);
  }
  
  public final v a(w paramw)
  {
    View localView = (View)this.Hr.get();
    if (localView != null)
    {
      if (Build.VERSION.SDK_INT >= 16) {
        a(localView, paramw);
      }
    }
    else {
      return this;
    }
    localView.setTag(2113929216, paramw);
    a(localView, new a(this));
    return this;
  }
  
  public final v a(final y paramy)
  {
    final View localView = (View)this.Hr.get();
    if ((localView != null) && (Build.VERSION.SDK_INT >= 19))
    {
      ValueAnimator.AnimatorUpdateListener local2 = null;
      if (paramy != null) {
        local2 = new ValueAnimator.AnimatorUpdateListener()
        {
          public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
          {
            paramy.dX();
          }
        };
      }
      localView.animate().setUpdateListener(local2);
    }
    return this;
  }
  
  public final void cancel()
  {
    View localView = (View)this.Hr.get();
    if (localView != null) {
      localView.animate().cancel();
    }
  }
  
  public final v e(long paramLong)
  {
    View localView = (View)this.Hr.get();
    if (localView != null) {
      localView.animate().setDuration(paramLong);
    }
    return this;
  }
  
  public final v k(float paramFloat)
  {
    View localView = (View)this.Hr.get();
    if (localView != null) {
      localView.animate().alpha(paramFloat);
    }
    return this;
  }
  
  public final v l(float paramFloat)
  {
    View localView = (View)this.Hr.get();
    if (localView != null) {
      localView.animate().translationY(paramFloat);
    }
    return this;
  }
  
  static final class a
    implements w
  {
    v Hy;
    boolean Hz;
    
    a(v paramv)
    {
      this.Hy = paramv;
    }
    
    public final void ao(View paramView)
    {
      this.Hz = false;
      if (this.Hy.Hu >= 0) {
        paramView.setLayerType(2, null);
      }
      if (this.Hy.Hs != null)
      {
        localObject = this.Hy.Hs;
        this.Hy.Hs = null;
        ((Runnable)localObject).run();
      }
      Object localObject = paramView.getTag(2113929216);
      if ((localObject instanceof w)) {}
      for (localObject = (w)localObject;; localObject = null)
      {
        if (localObject != null) {
          ((w)localObject).ao(paramView);
        }
        return;
      }
    }
    
    public final void ap(View paramView)
    {
      if (this.Hy.Hu >= 0)
      {
        paramView.setLayerType(this.Hy.Hu, null);
        this.Hy.Hu = -1;
      }
      if ((Build.VERSION.SDK_INT >= 16) || (!this.Hz))
      {
        if (this.Hy.Ht != null)
        {
          localObject = this.Hy.Ht;
          this.Hy.Ht = null;
          ((Runnable)localObject).run();
        }
        localObject = paramView.getTag(2113929216);
        if (!(localObject instanceof w)) {
          break label113;
        }
      }
      label113:
      for (Object localObject = (w)localObject;; localObject = null)
      {
        if (localObject != null) {
          ((w)localObject).ap(paramView);
        }
        this.Hz = true;
        return;
      }
    }
    
    public final void aq(View paramView)
    {
      Object localObject = paramView.getTag(2113929216);
      if ((localObject instanceof w)) {}
      for (localObject = (w)localObject;; localObject = null)
      {
        if (localObject != null) {
          ((w)localObject).aq(paramView);
        }
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */