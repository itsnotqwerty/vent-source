package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.support.v4.view.r;
import android.view.View;
import java.util.Map;

public final class g
  extends as
{
  public g() {}
  
  public g(int paramInt)
  {
    if ((paramInt & 0xFFFFFFFC) != 0) {
      throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }
    this.ow = paramInt;
  }
  
  private static float a(z paramz, float paramFloat)
  {
    float f = paramFloat;
    if (paramz != null)
    {
      paramz = (Float)paramz.values.get("android:fade:transitionAlpha");
      f = paramFloat;
      if (paramz != null) {
        f = paramz.floatValue();
      }
    }
    return f;
  }
  
  private Animator b(final View paramView, float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 == paramFloat2) {
      return null;
    }
    al.c(paramView, paramFloat1);
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(paramView, al.vB, new float[] { paramFloat2 });
    localObjectAnimator.addListener(new a(paramView));
    a(new v()
    {
      public final void a(u paramAnonymousu)
      {
        al.c(paramView, 1.0F);
        al.E(paramView);
        paramAnonymousu.b(this);
      }
    });
    return localObjectAnimator;
  }
  
  public final Animator a(View paramView, z paramz)
  {
    float f1 = 0.0F;
    float f2 = a(paramz, 0.0F);
    if (f2 == 1.0F) {}
    for (;;)
    {
      return b(paramView, f1, 1.0F);
      f1 = f2;
    }
  }
  
  public final Animator b(View paramView, z paramz)
  {
    al.D(paramView);
    return b(paramView, a(paramz, 1.0F), 0.0F);
  }
  
  public final void b(z paramz)
  {
    super.b(paramz);
    paramz.values.put("android:fade:transitionAlpha", Float.valueOf(al.C(paramz.view)));
  }
  
  private static final class a
    extends AnimatorListenerAdapter
  {
    private final View mView;
    private boolean tK = false;
    
    a(View paramView)
    {
      this.mView = paramView;
    }
    
    public final void onAnimationEnd(Animator paramAnimator)
    {
      al.c(this.mView, 1.0F);
      if (this.tK) {
        this.mView.setLayerType(0, null);
      }
    }
    
    public final void onAnimationStart(Animator paramAnimator)
    {
      if ((r.Y(this.mView)) && (this.mView.getLayerType() == 0))
      {
        this.tK = true;
        this.mView.setLayerType(2, null);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */