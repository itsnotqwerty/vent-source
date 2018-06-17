package io.intercom.android.sdk.utilities;

import android.os.Build.VERSION;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.EdgeEffect;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ViewUtils
{
  private static final Twig twig = ;
  
  public static void removeGlobalLayoutListener(View paramView, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.getViewTreeObserver().removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
      return;
    }
    paramView.getViewTreeObserver().removeGlobalOnLayoutListener(paramOnGlobalLayoutListener);
  }
  
  public static void requestLayoutIfPossible(View paramView)
  {
    if ((Build.VERSION.SDK_INT < 18) || (!paramView.isInLayout())) {
      paramView.requestLayout();
    }
  }
  
  public static void setOverScrollColour(RecyclerView paramRecyclerView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      int i = 0;
      for (;;)
      {
        if (i < 2) {}
        try
        {
          localObject = RecyclerView.class.getDeclaredMethod(new String[] { "ensureTopGlow", "ensureBottomGlow" }[i], new Class[0]);
          ((Method)localObject).setAccessible(true);
          ((Method)localObject).invoke(paramRecyclerView, new Object[0]);
          i += 1;
        }
        catch (Exception paramRecyclerView)
        {
          Object localObject;
          twig.d("Could not set overscroll colour", new Object[0]);
        }
      }
      i = 0;
      while (i < 2)
      {
        localObject = RecyclerView.class.getDeclaredField(new String[] { "mTopGlow", "mBottomGlow" }[i]);
        ((Field)localObject).setAccessible(true);
        localObject = ((Field)localObject).get(paramRecyclerView);
        Field localField = localObject.getClass().getDeclaredField("mEdgeEffect");
        localField.setAccessible(true);
        ((EdgeEffect)localField.get(localObject)).setColor(paramInt);
        i += 1;
      }
    }
  }
  
  public static void waitForViewAttachment(View paramView, final Runnable paramRunnable)
  {
    if (paramView.getHeight() == 0)
    {
      paramView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
      {
        public final void onGlobalLayout()
        {
          ViewUtils.removeGlobalLayoutListener(this.val$view, this);
          paramRunnable.run();
        }
      });
      return;
    }
    paramRunnable.run();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/ViewUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */