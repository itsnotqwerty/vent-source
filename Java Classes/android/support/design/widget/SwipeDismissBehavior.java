package android.support.design.widget;

import android.support.v4.widget.r.a;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

public class SwipeDismissBehavior<V extends View>
  extends CoordinatorLayout.b<V>
{
  android.support.v4.widget.r jC;
  private final r.a jN = new r.a()
  {
    private int jK = -1;
    private int nX;
    
    public final void a(View paramAnonymousView, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      boolean bool = true;
      this.jK = -1;
      int j = paramAnonymousView.getWidth();
      int i;
      if (paramAnonymousFloat1 != 0.0F) {
        if (android.support.v4.view.r.K(paramAnonymousView) == 1)
        {
          i = 1;
          if (SwipeDismissBehavior.this.nT != 2) {
            break label114;
          }
          i = 1;
          label45:
          if (i == 0) {
            break label290;
          }
          if (paramAnonymousView.getLeft() >= this.nX) {
            break label278;
          }
          i = this.nX - j;
          label70:
          if (!SwipeDismissBehavior.this.jC.t(i, paramAnonymousView.getTop())) {
            break label302;
          }
          android.support.v4.view.r.b(paramAnonymousView, new SwipeDismissBehavior.b(SwipeDismissBehavior.this, paramAnonymousView, bool));
        }
      }
      label114:
      label278:
      label290:
      label302:
      while ((!bool) || (SwipeDismissBehavior.this.nP == null))
      {
        return;
        i = 0;
        break;
        if (SwipeDismissBehavior.this.nT == 0)
        {
          if (i != 0)
          {
            if (paramAnonymousFloat1 < 0.0F)
            {
              i = 1;
              break label45;
            }
            i = 0;
            break label45;
          }
          if (paramAnonymousFloat1 > 0.0F)
          {
            i = 1;
            break label45;
          }
          i = 0;
          break label45;
        }
        if (SwipeDismissBehavior.this.nT == 1)
        {
          if (i != 0)
          {
            if (paramAnonymousFloat1 > 0.0F)
            {
              i = 1;
              break label45;
            }
            i = 0;
            break label45;
          }
          if (paramAnonymousFloat1 < 0.0F)
          {
            i = 1;
            break label45;
          }
          i = 0;
          break label45;
          i = paramAnonymousView.getLeft();
          int k = this.nX;
          int m = Math.round(paramAnonymousView.getWidth() * SwipeDismissBehavior.this.nU);
          if (Math.abs(i - k) >= m)
          {
            i = 1;
            break label45;
          }
          i = 0;
          break label45;
        }
        i = 0;
        break label45;
        i = this.nX + j;
        break label70;
        i = this.nX;
        bool = false;
        break label70;
      }
      SwipeDismissBehavior.this.nP.g(paramAnonymousView);
    }
    
    public final boolean a(View paramAnonymousView, int paramAnonymousInt)
    {
      return (this.jK == -1) && (SwipeDismissBehavior.this.h(paramAnonymousView));
    }
    
    public final void b(View paramAnonymousView, int paramAnonymousInt)
    {
      float f1 = this.nX + paramAnonymousView.getWidth() * SwipeDismissBehavior.this.nV;
      float f2 = this.nX + paramAnonymousView.getWidth() * SwipeDismissBehavior.this.nW;
      if (paramAnonymousInt <= f1)
      {
        paramAnonymousView.setAlpha(1.0F);
        return;
      }
      if (paramAnonymousInt >= f2)
      {
        paramAnonymousView.setAlpha(0.0F);
        return;
      }
      paramAnonymousView.setAlpha(SwipeDismissBehavior.h(1.0F - SwipeDismissBehavior.b(f1, f2, paramAnonymousInt)));
    }
    
    public final int c(View paramAnonymousView, int paramAnonymousInt)
    {
      return paramAnonymousView.getTop();
    }
    
    public final int d(View paramAnonymousView, int paramAnonymousInt)
    {
      int i;
      int j;
      if (android.support.v4.view.r.K(paramAnonymousView) == 1)
      {
        i = 1;
        if (SwipeDismissBehavior.this.nT != 0) {
          break label72;
        }
        if (i == 0) {
          break label53;
        }
        i = this.nX - paramAnonymousView.getWidth();
        j = this.nX;
      }
      for (;;)
      {
        return SwipeDismissBehavior.b(i, paramAnonymousInt, j);
        i = 0;
        break;
        label53:
        i = this.nX;
        j = this.nX + paramAnonymousView.getWidth();
        continue;
        label72:
        if (SwipeDismissBehavior.this.nT == 1)
        {
          if (i != 0)
          {
            i = this.nX;
            j = this.nX + paramAnonymousView.getWidth();
          }
          else
          {
            i = this.nX - paramAnonymousView.getWidth();
            j = this.nX;
          }
        }
        else
        {
          i = this.nX - paramAnonymousView.getWidth();
          j = this.nX + paramAnonymousView.getWidth();
        }
      }
    }
    
    public final void j(View paramAnonymousView, int paramAnonymousInt)
    {
      this.jK = paramAnonymousInt;
      this.nX = paramAnonymousView.getLeft();
      paramAnonymousView = paramAnonymousView.getParent();
      if (paramAnonymousView != null) {
        paramAnonymousView.requestDisallowInterceptTouchEvent(true);
      }
    }
    
    public final int q(View paramAnonymousView)
    {
      return paramAnonymousView.getWidth();
    }
    
    public final void y(int paramAnonymousInt)
    {
      if (SwipeDismissBehavior.this.nP != null) {
        SwipeDismissBehavior.this.nP.u(paramAnonymousInt);
      }
    }
  };
  a nP;
  private boolean nQ;
  private float nR = 0.0F;
  private boolean nS;
  int nT = 2;
  float nU = 0.5F;
  float nV = 0.0F;
  float nW = 0.5F;
  
  static float b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1);
  }
  
  static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    return Math.min(Math.max(paramInt1, paramInt2), paramInt3);
  }
  
  static float h(float paramFloat)
  {
    return Math.min(Math.max(0.0F, paramFloat), 1.0F);
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool3 = this.nQ;
    boolean bool1 = bool3;
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      bool1 = bool3;
    case 2: 
      if (bool1) {
        if (this.jC == null) {
          if (!this.nS) {
            break label142;
          }
        }
      }
      break;
    }
    label142:
    for (paramCoordinatorLayout = android.support.v4.widget.r.a(paramCoordinatorLayout, this.nR, this.jN);; paramCoordinatorLayout = android.support.v4.widget.r.a(paramCoordinatorLayout, this.jN))
    {
      this.jC = paramCoordinatorLayout;
      bool2 = this.jC.c(paramMotionEvent);
      return bool2;
      this.nQ = paramCoordinatorLayout.a(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      bool1 = this.nQ;
      break;
      this.nQ = false;
      bool1 = bool3;
      break;
    }
  }
  
  public final boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (this.jC != null)
    {
      this.jC.d(paramMotionEvent);
      return true;
    }
    return false;
  }
  
  public boolean h(View paramView)
  {
    return true;
  }
  
  public static abstract interface a
  {
    public abstract void g(View paramView);
    
    public abstract void u(int paramInt);
  }
  
  private final class b
    implements Runnable
  {
    private final View mView;
    private final boolean nZ;
    
    b(View paramView, boolean paramBoolean)
    {
      this.mView = paramView;
      this.nZ = paramBoolean;
    }
    
    public final void run()
    {
      if ((SwipeDismissBehavior.this.jC != null) && (SwipeDismissBehavior.this.jC.en())) {
        android.support.v4.view.r.b(this.mView, this);
      }
      while ((!this.nZ) || (SwipeDismissBehavior.this.nP == null)) {
        return;
      }
      SwipeDismissBehavior.this.nP.g(this.mView);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/SwipeDismissBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */