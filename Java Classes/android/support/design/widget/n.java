package android.support.design.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;

final class n
{
  final ArrayList<a> nI = new ArrayList();
  a nJ = null;
  ValueAnimator nK = null;
  private final Animator.AnimatorListener nL = new AnimatorListenerAdapter()
  {
    public final void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      if (n.this.nK == paramAnonymousAnimator) {
        n.this.nK = null;
      }
    }
  };
  
  public final void a(int[] paramArrayOfInt, ValueAnimator paramValueAnimator)
  {
    paramArrayOfInt = new a(paramArrayOfInt, paramValueAnimator);
    paramValueAnimator.addListener(this.nL);
    this.nI.add(paramArrayOfInt);
  }
  
  static final class a
  {
    final int[] nN;
    final ValueAnimator nO;
    
    a(int[] paramArrayOfInt, ValueAnimator paramValueAnimator)
    {
      this.nN = paramArrayOfInt;
      this.nO = paramValueAnimator;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */