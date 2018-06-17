package android.support.transition;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;

final class b
  implements d
{
  public final void a(Animator paramAnimator, AnimatorListenerAdapter paramAnimatorListenerAdapter) {}
  
  public final void b(Animator paramAnimator)
  {
    ArrayList localArrayList = paramAnimator.getListeners();
    if (localArrayList != null)
    {
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        Animator.AnimatorListener localAnimatorListener = (Animator.AnimatorListener)localArrayList.get(i);
        if ((localAnimatorListener instanceof a)) {
          ((a)localAnimatorListener).onAnimationPause(paramAnimator);
        }
        i += 1;
      }
    }
  }
  
  public final void c(Animator paramAnimator)
  {
    ArrayList localArrayList = paramAnimator.getListeners();
    if (localArrayList != null)
    {
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        Animator.AnimatorListener localAnimatorListener = (Animator.AnimatorListener)localArrayList.get(i);
        if ((localAnimatorListener instanceof a)) {
          ((a)localAnimatorListener).onAnimationResume(paramAnimator);
        }
        i += 1;
      }
    }
  }
  
  static abstract interface a
  {
    public abstract void onAnimationPause(Animator paramAnimator);
    
    public abstract void onAnimationResume(Animator paramAnimator);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */