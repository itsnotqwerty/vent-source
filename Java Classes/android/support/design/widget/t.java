package android.support.design.widget;

import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.design.a.b;
import android.support.design.a.g;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;

final class t
{
  private static final int[] qj = { 16843848 };
  
  static void a(View paramView, AttributeSet paramAttributeSet, int paramInt)
  {
    Context localContext = paramView.getContext();
    paramAttributeSet = localContext.obtainStyledAttributes(paramAttributeSet, qj, 0, paramInt);
    try
    {
      if (paramAttributeSet.hasValue(0)) {
        paramView.setStateListAnimator(AnimatorInflater.loadStateListAnimator(localContext, paramAttributeSet.getResourceId(0, 0)));
      }
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  static void b(View paramView, float paramFloat)
  {
    int i = paramView.getResources().getInteger(a.g.app_bar_elevation_anim_duration);
    StateListAnimator localStateListAnimator = new StateListAnimator();
    int j = a.b.state_collapsible;
    int k = -a.b.state_collapsed;
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(paramView, "elevation", new float[] { 0.0F }).setDuration(i);
    localStateListAnimator.addState(new int[] { 16842766, j, k }, localObjectAnimator);
    localObjectAnimator = ObjectAnimator.ofFloat(paramView, "elevation", new float[] { paramFloat }).setDuration(i);
    localStateListAnimator.addState(new int[] { 16842766 }, localObjectAnimator);
    localObjectAnimator = ObjectAnimator.ofFloat(paramView, "elevation", new float[] { 0.0F }).setDuration(0L);
    localStateListAnimator.addState(new int[0], localObjectAnimator);
    paramView.setStateListAnimator(localStateListAnimator);
  }
  
  static void s(View paramView)
  {
    paramView.setOutlineProvider(ViewOutlineProvider.BOUNDS);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */