package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build.VERSION;

final class a
{
  private static final d td = new b();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      td = new c();
      return;
    }
  }
  
  static void a(Animator paramAnimator, AnimatorListenerAdapter paramAnimatorListenerAdapter)
  {
    td.a(paramAnimator, paramAnimatorListenerAdapter);
  }
  
  static void b(Animator paramAnimator)
  {
    td.b(paramAnimator);
  }
  
  static void c(Animator paramAnimator)
  {
    td.c(paramAnimator);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */