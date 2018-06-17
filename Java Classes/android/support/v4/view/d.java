package android.support.v4.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

public final class d
{
  private final a Fe;
  
  public d(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    this(paramContext, paramOnGestureListener, (byte)0);
  }
  
  private d(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, byte paramByte)
  {
    if (Build.VERSION.SDK_INT > 17)
    {
      this.Fe = new c(paramContext, paramOnGestureListener);
      return;
    }
    this.Fe = new b(paramContext, paramOnGestureListener);
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return this.Fe.onTouchEvent(paramMotionEvent);
  }
  
  static abstract interface a
  {
    public abstract boolean onTouchEvent(MotionEvent paramMotionEvent);
  }
  
  static final class b
    implements d.a
  {
    private static final int Fj = ;
    private static final int Fk = ViewConfiguration.getTapTimeout();
    private static final int Fl = ViewConfiguration.getDoubleTapTimeout();
    private boolean FA;
    private int Ff;
    private int Fg;
    private int Fh;
    private int Fi;
    final GestureDetector.OnGestureListener Fm;
    GestureDetector.OnDoubleTapListener Fn;
    boolean Fo;
    boolean Fp;
    boolean Fq;
    private boolean Fr;
    private boolean Fs;
    MotionEvent Ft;
    private MotionEvent Fu;
    private boolean Fv;
    private float Fw;
    private float Fx;
    private float Fy;
    private float Fz;
    private VelocityTracker jJ;
    final Handler mHandler = new a();
    
    b(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
    {
      this.Fm = paramOnGestureListener;
      if ((paramOnGestureListener instanceof GestureDetector.OnDoubleTapListener)) {
        this.Fn = ((GestureDetector.OnDoubleTapListener)paramOnGestureListener);
      }
      if (paramContext == null) {
        throw new IllegalArgumentException("Context must not be null");
      }
      if (this.Fm == null) {
        throw new IllegalArgumentException("OnGestureListener must not be null");
      }
      this.FA = true;
      paramContext = ViewConfiguration.get(paramContext);
      int i = paramContext.getScaledTouchSlop();
      int j = paramContext.getScaledDoubleTapSlop();
      this.Fh = paramContext.getScaledMinimumFlingVelocity();
      this.Fi = paramContext.getScaledMaximumFlingVelocity();
      this.Ff = (i * i);
      this.Fg = (j * j);
    }
    
    public final boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      int i1 = paramMotionEvent.getAction();
      if (this.jJ == null) {
        this.jJ = VelocityTracker.obtain();
      }
      this.jJ.addMovement(paramMotionEvent);
      int i;
      if ((i1 & 0xFF) == 6)
      {
        i = 1;
        if (i == 0) {
          break label127;
        }
      }
      int n;
      int m;
      float f1;
      float f2;
      float f4;
      float f3;
      label127:
      for (int k = paramMotionEvent.getActionIndex();; k = -1)
      {
        n = paramMotionEvent.getPointerCount();
        m = 0;
        f1 = 0.0F;
        for (f2 = 0.0F; m < n; f2 = f3)
        {
          f4 = f1;
          f3 = f2;
          if (k != m)
          {
            f3 = f2 + paramMotionEvent.getX(m);
            f4 = f1 + paramMotionEvent.getY(m);
          }
          m += 1;
          f1 = f4;
        }
        i = 0;
        break;
      }
      if (i != 0)
      {
        i = n - 1;
        f2 /= i;
        f1 /= i;
      }
      boolean bool2;
      MotionEvent localMotionEvent;
      Object localObject;
      label757:
      int j;
      switch (i1 & 0xFF)
      {
      case 4: 
      default: 
      case 5: 
      case 6: 
      case 0: 
      case 2: 
        do
        {
          do
          {
            return false;
            i = n;
            break;
            this.Fw = f2;
            this.Fy = f2;
            this.Fx = f1;
            this.Fz = f1;
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.Fv = false;
            this.Fr = false;
            this.Fs = false;
            this.Fp = false;
          } while (!this.Fq);
          this.Fq = false;
          return false;
          this.Fw = f2;
          this.Fy = f2;
          this.Fx = f1;
          this.Fz = f1;
          this.jJ.computeCurrentVelocity(1000, this.Fi);
          k = paramMotionEvent.getActionIndex();
          i = paramMotionEvent.getPointerId(k);
          f1 = this.jJ.getXVelocity(i);
          f2 = this.jJ.getYVelocity(i);
          i = 0;
          while (i < n)
          {
            if (i != k)
            {
              m = paramMotionEvent.getPointerId(i);
              f3 = this.jJ.getXVelocity(m);
              if (this.jJ.getYVelocity(m) * f2 + f3 * f1 < 0.0F)
              {
                this.jJ.clear();
                return false;
              }
            }
            i += 1;
          }
          if (this.Fn != null)
          {
            bool2 = this.mHandler.hasMessages(3);
            if (bool2) {
              this.mHandler.removeMessages(3);
            }
            if ((this.Ft != null) && (this.Fu != null) && (bool2))
            {
              localMotionEvent = this.Ft;
              localObject = this.Fu;
              if ((this.Fs) && (paramMotionEvent.getEventTime() - ((MotionEvent)localObject).getEventTime() <= Fl))
              {
                i = (int)localMotionEvent.getX() - (int)paramMotionEvent.getX();
                k = (int)localMotionEvent.getY() - (int)paramMotionEvent.getY();
                if (k * k + i * i < this.Fg)
                {
                  i = 1;
                  if (i == 0) {
                    break label757;
                  }
                  this.Fv = true;
                }
              }
            }
          }
          for (boolean bool1 = this.Fn.onDoubleTap(this.Ft) | false | this.Fn.onDoubleTapEvent(paramMotionEvent);; bool1 = false)
          {
            this.Fw = f2;
            this.Fy = f2;
            this.Fx = f1;
            this.Fz = f1;
            if (this.Ft != null) {
              this.Ft.recycle();
            }
            this.Ft = MotionEvent.obtain(paramMotionEvent);
            this.Fr = true;
            this.Fs = true;
            this.Fo = true;
            this.Fq = false;
            this.Fp = false;
            if (this.FA)
            {
              this.mHandler.removeMessages(2);
              this.mHandler.sendEmptyMessageAtTime(2, this.Ft.getDownTime() + Fk + Fj);
            }
            this.mHandler.sendEmptyMessageAtTime(1, this.Ft.getDownTime() + Fk);
            return bool1 | this.Fm.onDown(paramMotionEvent);
            bool1 = false;
            break;
            this.mHandler.sendEmptyMessageDelayed(3, Fl);
          }
        } while (this.Fq);
        f3 = this.Fw - f2;
        f4 = this.Fx - f1;
        if (this.Fv) {
          return this.Fn.onDoubleTapEvent(paramMotionEvent) | false;
        }
        if (this.Fr)
        {
          j = (int)(f2 - this.Fy);
          k = (int)(f1 - this.Fz);
          j = j * j + k * k;
          if (j <= this.Ff) {
            break label1350;
          }
          bool2 = this.Fm.onScroll(this.Ft, paramMotionEvent, f3, f4);
          this.Fw = f2;
          this.Fx = f1;
          this.Fr = false;
          this.mHandler.removeMessages(3);
          this.mHandler.removeMessages(1);
          this.mHandler.removeMessages(2);
        }
        break;
      }
      for (;;)
      {
        if (j > this.Ff) {
          this.Fs = false;
        }
        return bool2;
        if ((Math.abs(f3) < 1.0F) && (Math.abs(f4) < 1.0F)) {
          break;
        }
        bool2 = this.Fm.onScroll(this.Ft, paramMotionEvent, f3, f4);
        this.Fw = f2;
        this.Fx = f1;
        return bool2;
        this.Fo = false;
        localMotionEvent = MotionEvent.obtain(paramMotionEvent);
        if (this.Fv) {
          bool2 = this.Fn.onDoubleTapEvent(paramMotionEvent) | false;
        }
        for (;;)
        {
          if (this.Fu != null) {
            this.Fu.recycle();
          }
          this.Fu = localMotionEvent;
          if (this.jJ != null)
          {
            this.jJ.recycle();
            this.jJ = null;
          }
          this.Fv = false;
          this.Fp = false;
          this.mHandler.removeMessages(1);
          this.mHandler.removeMessages(2);
          return bool2;
          if (this.Fq)
          {
            this.mHandler.removeMessages(3);
            this.Fq = false;
            bool2 = false;
          }
          else if (this.Fr)
          {
            boolean bool3 = this.Fm.onSingleTapUp(paramMotionEvent);
            bool2 = bool3;
            if (this.Fp)
            {
              bool2 = bool3;
              if (this.Fn != null)
              {
                this.Fn.onSingleTapConfirmed(paramMotionEvent);
                bool2 = bool3;
              }
            }
          }
          else
          {
            localObject = this.jJ;
            j = paramMotionEvent.getPointerId(0);
            ((VelocityTracker)localObject).computeCurrentVelocity(1000, this.Fi);
            f1 = ((VelocityTracker)localObject).getYVelocity(j);
            f2 = ((VelocityTracker)localObject).getXVelocity(j);
            if ((Math.abs(f1) > this.Fh) || (Math.abs(f2) > this.Fh))
            {
              bool2 = this.Fm.onFling(this.Ft, paramMotionEvent, f2, f1);
              continue;
              this.mHandler.removeMessages(1);
              this.mHandler.removeMessages(2);
              this.mHandler.removeMessages(3);
              this.jJ.recycle();
              this.jJ = null;
              this.Fv = false;
              this.Fo = false;
              this.Fr = false;
              this.Fs = false;
              this.Fp = false;
              if (!this.Fq) {
                break;
              }
              this.Fq = false;
              return false;
            }
            bool2 = false;
          }
        }
        label1350:
        bool2 = false;
      }
    }
    
    private final class a
      extends Handler
    {
      a() {}
      
      public final void handleMessage(Message paramMessage)
      {
        switch (paramMessage.what)
        {
        default: 
          throw new RuntimeException("Unknown message " + paramMessage);
        case 1: 
          d.b.this.Fm.onShowPress(d.b.this.Ft);
        }
        do
        {
          return;
          paramMessage = d.b.this;
          paramMessage.mHandler.removeMessages(3);
          paramMessage.Fp = false;
          paramMessage.Fq = true;
          paramMessage.Fm.onLongPress(paramMessage.Ft);
          return;
        } while (d.b.this.Fn == null);
        if (!d.b.this.Fo)
        {
          d.b.this.Fn.onSingleTapConfirmed(d.b.this.Ft);
          return;
        }
        d.b.this.Fp = true;
      }
    }
  }
  
  static final class c
    implements d.a
  {
    private final GestureDetector FC;
    
    c(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
    {
      this.FC = new GestureDetector(paramContext, paramOnGestureListener, null);
    }
    
    public final boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      return this.FC.onTouchEvent(paramMotionEvent);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */