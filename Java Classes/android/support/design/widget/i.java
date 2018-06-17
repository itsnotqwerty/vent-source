package android.support.design.widget;

import android.content.Context;
import android.support.v4.c.a;
import android.support.v4.view.r;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;

abstract class i<V extends View>
  extends q<V>
{
  private VelocityTracker jJ;
  private int jK = -1;
  private Runnable mY;
  OverScroller mZ;
  private boolean na;
  private int nb;
  private int nc = -1;
  
  public i() {}
  
  public i(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void bM()
  {
    if (this.jJ == null) {
      this.jJ = VelocityTracker.obtain();
    }
  }
  
  int a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3)
  {
    int k = be();
    int j = 0;
    int i = j;
    if (paramInt2 != 0)
    {
      i = j;
      if (k >= paramInt2)
      {
        i = j;
        if (k <= paramInt3)
        {
          paramInt1 = a.b(paramInt1, paramInt2, paramInt3);
          i = j;
          if (k != paramInt1)
          {
            r(paramInt1);
            i = k - paramInt1;
          }
        }
      }
    }
    return i;
  }
  
  void a(CoordinatorLayout paramCoordinatorLayout, V paramV) {}
  
  public final boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (this.nc < 0) {
      this.nc = ViewConfiguration.get(paramCoordinatorLayout.getContext()).getScaledTouchSlop();
    }
    if ((paramMotionEvent.getAction() == 2) && (this.na)) {
      return true;
    }
    switch (paramMotionEvent.getActionMasked())
    {
    }
    for (;;)
    {
      if (this.jJ != null) {
        this.jJ.addMovement(paramMotionEvent);
      }
      return this.na;
      this.na = false;
      int i = (int)paramMotionEvent.getX();
      int j = (int)paramMotionEvent.getY();
      if ((bd()) && (paramCoordinatorLayout.a(paramV, i, j)))
      {
        this.nb = j;
        this.jK = paramMotionEvent.getPointerId(0);
        bM();
        continue;
        i = this.jK;
        if (i != -1)
        {
          i = paramMotionEvent.findPointerIndex(i);
          if (i != -1)
          {
            i = (int)paramMotionEvent.getY(i);
            if (Math.abs(i - this.nb) > this.nc)
            {
              this.na = true;
              this.nb = i;
              continue;
              this.na = false;
              this.jK = -1;
              if (this.jJ != null)
              {
                this.jJ.recycle();
                this.jJ = null;
              }
            }
          }
        }
      }
    }
  }
  
  final int b(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3)
  {
    return a(paramCoordinatorLayout, paramV, bc() - paramInt1, paramInt2, paramInt3);
  }
  
  int b(V paramV)
  {
    return paramV.getHeight();
  }
  
  public final boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (this.nc < 0) {
      this.nc = ViewConfiguration.get(paramCoordinatorLayout.getContext()).getScaledTouchSlop();
    }
    int i;
    int j;
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
    case 0: 
      for (;;)
      {
        if (this.jJ != null) {
          this.jJ.addMovement(paramMotionEvent);
        }
        return true;
        i = (int)paramMotionEvent.getX();
        j = (int)paramMotionEvent.getY();
        if ((!paramCoordinatorLayout.a(paramV, i, j)) || (!bd())) {
          break;
        }
        this.nb = j;
        this.jK = paramMotionEvent.getPointerId(0);
        bM();
      }
      return false;
    case 2: 
      i = paramMotionEvent.findPointerIndex(this.jK);
      if (i == -1) {
        return false;
      }
      int k = (int)paramMotionEvent.getY(i);
      j = this.nb - k;
      i = j;
      if (!this.na)
      {
        i = j;
        if (Math.abs(j) > this.nc)
        {
          this.na = true;
          if (j <= 0) {
            break label243;
          }
        }
      }
      for (i = j - this.nc; this.na; i = j + this.nc)
      {
        this.nb = k;
        b(paramCoordinatorLayout, paramV, i, c(paramV), 0);
        break;
      }
    case 1: 
      label243:
      if (this.jJ != null)
      {
        this.jJ.addMovement(paramMotionEvent);
        this.jJ.computeCurrentVelocity(1000);
        float f = this.jJ.getYVelocity(this.jK);
        i = -b(paramV);
        if (this.mY != null)
        {
          paramV.removeCallbacks(this.mY);
          this.mY = null;
        }
        if (this.mZ == null) {
          this.mZ = new OverScroller(paramV.getContext());
        }
        this.mZ.fling(0, be(), 0, Math.round(f), 0, 0, i, 0);
        if (!this.mZ.computeScrollOffset()) {
          break label431;
        }
        this.mY = new a(paramCoordinatorLayout, paramV);
        r.b(paramV, this.mY);
      }
      break;
    }
    for (;;)
    {
      this.na = false;
      this.jK = -1;
      if (this.jJ == null) {
        break;
      }
      this.jJ.recycle();
      this.jJ = null;
      break;
      label431:
      a(paramCoordinatorLayout, paramV);
    }
  }
  
  int bc()
  {
    return be();
  }
  
  boolean bd()
  {
    return false;
  }
  
  final int c(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    return a(paramCoordinatorLayout, paramV, paramInt, Integer.MIN_VALUE, Integer.MAX_VALUE);
  }
  
  int c(V paramV)
  {
    return -paramV.getHeight();
  }
  
  private final class a
    implements Runnable
  {
    private final CoordinatorLayout nd;
    private final V ne;
    
    a(V paramV)
    {
      this.nd = paramV;
      View localView;
      this.ne = localView;
    }
    
    public final void run()
    {
      if ((this.ne != null) && (i.this.mZ != null))
      {
        if (i.this.mZ.computeScrollOffset())
        {
          i.this.c(this.nd, this.ne, i.this.mZ.getCurrY());
          r.b(this.ne, this);
        }
      }
      else {
        return;
      }
      i.this.a(this.nd, this.ne);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */