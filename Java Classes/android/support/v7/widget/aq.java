package android.support.v7.widget;

import android.os.SystemClock;
import android.support.v7.view.menu.s;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;

public abstract class aq
  implements View.OnAttachStateChangeListener, View.OnTouchListener
{
  private final float Zk;
  private final int Zl;
  private final int Zm;
  final View Zn;
  private Runnable Zo;
  private Runnable Zp;
  boolean Zq;
  private final int[] Zr = new int[2];
  private int jK;
  
  public aq(View paramView)
  {
    this.Zn = paramView;
    paramView.setLongClickable(true);
    paramView.addOnAttachStateChangeListener(this);
    this.Zk = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    this.Zl = ViewConfiguration.getTapTimeout();
    this.Zm = ((this.Zl + ViewConfiguration.getLongPressTimeout()) / 2);
  }
  
  public abstract s eY();
  
  public boolean eZ()
  {
    s locals = eY();
    if ((locals != null) && (!locals.isShowing())) {
      locals.show();
    }
    return true;
  }
  
  protected boolean fK()
  {
    s locals = eY();
    if ((locals != null) && (locals.isShowing())) {
      locals.dismiss();
    }
    return true;
  }
  
  final void gH()
  {
    if (this.Zp != null) {
      this.Zn.removeCallbacks(this.Zp);
    }
    if (this.Zo != null) {
      this.Zn.removeCallbacks(this.Zo);
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool3 = this.Zq;
    int i;
    if (bool3)
    {
      paramView = this.Zn;
      Object localObject = eY();
      if ((localObject == null) || (!((s)localObject).isShowing()))
      {
        i = 0;
        if ((i == 0) && (fK())) {
          break label241;
        }
      }
      label235:
      label241:
      for (bool1 = true;; bool1 = false)
      {
        this.Zq = bool1;
        if (!bool1)
        {
          bool1 = bool2;
          if (!bool3) {}
        }
        else
        {
          bool1 = true;
        }
        return bool1;
        localObject = (an)((s)localObject).getListView();
        if ((localObject == null) || (!((an)localObject).isShown()))
        {
          i = 0;
          break;
        }
        MotionEvent localMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
        int[] arrayOfInt = this.Zr;
        paramView.getLocationOnScreen(arrayOfInt);
        localMotionEvent.offsetLocation(arrayOfInt[0], arrayOfInt[1]);
        paramView = this.Zr;
        ((View)localObject).getLocationOnScreen(paramView);
        localMotionEvent.offsetLocation(-paramView[0], -paramView[1]);
        bool1 = ((an)localObject).b(localMotionEvent, this.jK);
        localMotionEvent.recycle();
        i = paramMotionEvent.getActionMasked();
        if ((i != 1) && (i != 3)) {}
        for (i = 1;; i = 0)
        {
          if ((!bool1) || (i == 0)) {
            break label235;
          }
          i = 1;
          break;
        }
        i = 0;
        break;
      }
    }
    paramView = this.Zn;
    if (paramView.isEnabled()) {}
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      label292:
      i = 0;
      label295:
      if ((i == 0) || (!eZ())) {
        break;
      }
    }
    for (boolean bool1 = true;; bool1 = false)
    {
      if (bool1)
      {
        long l = SystemClock.uptimeMillis();
        paramView = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        this.Zn.onTouchEvent(paramView);
        paramView.recycle();
      }
      break;
      this.jK = paramMotionEvent.getPointerId(0);
      if (this.Zo == null) {
        this.Zo = new a();
      }
      paramView.postDelayed(this.Zo, this.Zl);
      if (this.Zp == null) {
        this.Zp = new b();
      }
      paramView.postDelayed(this.Zp, this.Zm);
      break label292;
      i = paramMotionEvent.findPointerIndex(this.jK);
      if (i < 0) {
        break label292;
      }
      float f1 = paramMotionEvent.getX(i);
      float f2 = paramMotionEvent.getY(i);
      float f3 = this.Zk;
      if ((f1 >= -f3) && (f2 >= -f3) && (f1 < paramView.getRight() - paramView.getLeft() + f3) && (f2 < paramView.getBottom() - paramView.getTop() + f3)) {}
      for (i = 1; i == 0; i = 0)
      {
        gH();
        paramView.getParent().requestDisallowInterceptTouchEvent(true);
        i = 1;
        break label295;
      }
      gH();
      break label292;
    }
  }
  
  public void onViewAttachedToWindow(View paramView) {}
  
  public void onViewDetachedFromWindow(View paramView)
  {
    this.Zq = false;
    this.jK = -1;
    if (this.Zo != null) {
      this.Zn.removeCallbacks(this.Zo);
    }
  }
  
  private final class a
    implements Runnable
  {
    a() {}
    
    public final void run()
    {
      ViewParent localViewParent = aq.this.Zn.getParent();
      if (localViewParent != null) {
        localViewParent.requestDisallowInterceptTouchEvent(true);
      }
    }
  }
  
  private final class b
    implements Runnable
  {
    b() {}
    
    public final void run()
    {
      aq localaq = aq.this;
      localaq.gH();
      View localView = localaq.Zn;
      if ((!localView.isEnabled()) || (localView.isLongClickable())) {}
      while (!localaq.eZ()) {
        return;
      }
      localView.getParent().requestDisallowInterceptTouchEvent(true);
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      localView.onTouchEvent(localMotionEvent);
      localMotionEvent.recycle();
      localaq.Zq = true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */