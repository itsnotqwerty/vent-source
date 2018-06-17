package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class c
  implements d
{
  public final void a(Animator paramAnimator, AnimatorListenerAdapter paramAnimatorListenerAdapter)
  {
    paramAnimator.addPauseListener(paramAnimatorListenerAdapter);
  }
  
  public final void b(Animator paramAnimator)
  {
    paramAnimator.pause();
  }
  
  public final void c(Animator paramAnimator)
  {
    paramAnimator.resume();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */