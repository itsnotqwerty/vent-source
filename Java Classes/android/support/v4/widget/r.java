package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;

public final class r
{
  private static final Interpolator Gi = new Interpolator()
  {
    public final float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
    }
  };
  public int KI;
  private float[] KJ;
  private float[] KK;
  private float[] KL;
  private float[] KM;
  private int[] KN;
  private int[] KO;
  private int[] KP;
  private int KQ;
  private float KR;
  private float KS;
  private int KT;
  private int KU;
  private final a KV;
  public View KW;
  private boolean KX;
  private final ViewGroup KY;
  private final Runnable KZ = new Runnable()
  {
    public final void run()
    {
      r.this.aM(0);
    }
  };
  private VelocityTracker jJ;
  public int jK = -1;
  private OverScroller mZ;
  public int nc;
  
  private r(Context paramContext, ViewGroup paramViewGroup, a parama)
  {
    if (paramViewGroup == null) {
      throw new IllegalArgumentException("Parent view may not be null");
    }
    if (parama == null) {
      throw new IllegalArgumentException("Callback may not be null");
    }
    this.KY = paramViewGroup;
    this.KV = parama;
    paramViewGroup = ViewConfiguration.get(paramContext);
    this.KT = ((int)(paramContext.getResources().getDisplayMetrics().density * 20.0F + 0.5F));
    this.nc = paramViewGroup.getScaledTouchSlop();
    this.KR = paramViewGroup.getScaledMaximumFlingVelocity();
    this.KS = paramViewGroup.getScaledMinimumFlingVelocity();
    this.mZ = new OverScroller(paramContext, Gi);
  }
  
  public static r a(ViewGroup paramViewGroup, float paramFloat, a parama)
  {
    paramViewGroup = a(paramViewGroup, parama);
    paramViewGroup.nc = ((int)(paramViewGroup.nc * (1.0F / paramFloat)));
    return paramViewGroup;
  }
  
  public static r a(ViewGroup paramViewGroup, a parama)
  {
    return new r(paramViewGroup.getContext(), paramViewGroup, parama);
  }
  
  private void a(float paramFloat1, float paramFloat2, int paramInt)
  {
    int j = 0;
    if ((this.KJ == null) || (this.KJ.length <= paramInt))
    {
      localObject = new float[paramInt + 1];
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (this.KJ != null)
      {
        System.arraycopy(this.KJ, 0, localObject, 0, this.KJ.length);
        System.arraycopy(this.KK, 0, arrayOfFloat1, 0, this.KK.length);
        System.arraycopy(this.KL, 0, arrayOfFloat2, 0, this.KL.length);
        System.arraycopy(this.KM, 0, arrayOfFloat3, 0, this.KM.length);
        System.arraycopy(this.KN, 0, arrayOfInt1, 0, this.KN.length);
        System.arraycopy(this.KO, 0, arrayOfInt2, 0, this.KO.length);
        System.arraycopy(this.KP, 0, arrayOfInt3, 0, this.KP.length);
      }
      this.KJ = ((float[])localObject);
      this.KK = arrayOfFloat1;
      this.KL = arrayOfFloat2;
      this.KM = arrayOfFloat3;
      this.KN = arrayOfInt1;
      this.KO = arrayOfInt2;
      this.KP = arrayOfInt3;
    }
    Object localObject = this.KJ;
    this.KL[paramInt] = paramFloat1;
    localObject[paramInt] = paramFloat1;
    localObject = this.KK;
    this.KM[paramInt] = paramFloat2;
    localObject[paramInt] = paramFloat2;
    localObject = this.KN;
    int m = (int)paramFloat1;
    int k = (int)paramFloat2;
    if (m < this.KY.getLeft() + this.KT) {
      j = 1;
    }
    int i = j;
    if (k < this.KY.getTop() + this.KT) {
      i = j | 0x4;
    }
    j = i;
    if (m > this.KY.getRight() - this.KT) {
      j = i | 0x2;
    }
    i = j;
    if (k > this.KY.getBottom() - this.KT) {
      i = j | 0x8;
    }
    localObject[paramInt] = i;
    this.KQ |= 1 << paramInt;
  }
  
  private boolean a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    if (((this.KN[paramInt1] & paramInt2) != paramInt2) || ((this.KU & paramInt2) == 0) || ((this.KP[paramInt1] & paramInt2) == paramInt2) || ((this.KO[paramInt1] & paramInt2) == paramInt2) || ((paramFloat1 <= this.nc) && (paramFloat2 <= this.nc))) {}
    while (((this.KO[paramInt1] & paramInt2) != 0) || (paramFloat1 <= this.nc)) {
      return false;
    }
    return true;
  }
  
  private void aK(int paramInt)
  {
    if ((this.KJ == null) || (!aL(paramInt))) {
      return;
    }
    this.KJ[paramInt] = 0.0F;
    this.KK[paramInt] = 0.0F;
    this.KL[paramInt] = 0.0F;
    this.KM[paramInt] = 0.0F;
    this.KN[paramInt] = 0;
    this.KO[paramInt] = 0;
    this.KP[paramInt] = 0;
    this.KQ &= (1 << paramInt ^ 0xFFFFFFFF);
  }
  
  private boolean aL(int paramInt)
  {
    return (this.KQ & 1 << paramInt) != 0;
  }
  
  private boolean aN(int paramInt)
  {
    if (!aL(paramInt))
    {
      Log.e("ViewDragHelper", "Ignoring pointerId=" + paramInt + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
      return false;
    }
    return true;
  }
  
  private void b(float paramFloat1, float paramFloat2, int paramInt)
  {
    int j = 1;
    if (a(paramFloat1, paramFloat2, paramInt, 1)) {}
    for (;;)
    {
      int i = j;
      if (a(paramFloat2, paramFloat1, paramInt, 4)) {
        i = j | 0x4;
      }
      j = i;
      if (a(paramFloat1, paramFloat2, paramInt, 2)) {
        j = i | 0x2;
      }
      i = j;
      if (a(paramFloat2, paramFloat1, paramInt, 8)) {
        i = j | 0x8;
      }
      if (i != 0)
      {
        int[] arrayOfInt = this.KO;
        arrayOfInt[paramInt] = (i | arrayOfInt[paramInt]);
      }
      return;
      j = 0;
    }
  }
  
  private void b(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getPointerCount();
    int i = 0;
    while (i < j)
    {
      int k = paramMotionEvent.getPointerId(i);
      if (aN(k))
      {
        float f1 = paramMotionEvent.getX(i);
        float f2 = paramMotionEvent.getY(i);
        this.KL[k] = f1;
        this.KM[k] = f2;
      }
      i += 1;
    }
  }
  
  private boolean c(View paramView, float paramFloat1, float paramFloat2)
  {
    if (paramView == null) {}
    label20:
    int j;
    label72:
    label78:
    do
    {
      do
      {
        return false;
        int i;
        if (this.KV.q(paramView) > 0)
        {
          i = 1;
          if (this.KV.bo() <= 0) {
            break label72;
          }
        }
        for (j = 1;; j = 0)
        {
          if ((i == 0) || (j == 0)) {
            break label78;
          }
          if (paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2 <= this.nc * this.nc) {
            break;
          }
          return true;
          i = 0;
          break label20;
        }
        if (i == 0) {
          break;
        }
      } while (Math.abs(paramFloat1) <= this.nc);
      return true;
    } while ((j == 0) || (Math.abs(paramFloat2) <= this.nc));
    return true;
  }
  
  private void cancel()
  {
    this.jK = -1;
    if (this.KJ != null)
    {
      Arrays.fill(this.KJ, 0.0F);
      Arrays.fill(this.KK, 0.0F);
      Arrays.fill(this.KL, 0.0F);
      Arrays.fill(this.KM, 0.0F);
      Arrays.fill(this.KN, 0);
      Arrays.fill(this.KO, 0);
      Arrays.fill(this.KP, 0);
      this.KQ = 0;
    }
    if (this.jJ != null)
    {
      this.jJ.recycle();
      this.jJ = null;
    }
  }
  
  private static float d(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f = Math.abs(paramFloat1);
    if (f < paramFloat2) {
      paramFloat2 = 0.0F;
    }
    do
    {
      return paramFloat2;
      if (f <= paramFloat3) {
        break;
      }
      paramFloat2 = paramFloat3;
    } while (paramFloat1 > 0.0F);
    return -paramFloat3;
    return paramFloat1;
  }
  
  private int e(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    int i = this.KY.getWidth();
    int j = i / 2;
    float f3 = Math.min(1.0F, Math.abs(paramInt1) / i);
    float f1 = j;
    float f2 = j;
    f3 = (float)Math.sin((f3 - 0.5F) * 0.47123894F);
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {}
    for (paramInt1 = Math.round(Math.abs((f3 * f2 + f1) / paramInt2) * 1000.0F) * 4;; paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F)) {
      return Math.min(paramInt1, 600);
    }
  }
  
  private void eo()
  {
    this.jJ.computeCurrentVelocity(1000, this.KR);
    g(d(this.jJ.getXVelocity(this.jK), this.KS, this.KR), d(this.jJ.getYVelocity(this.jK), this.KS, this.KR));
  }
  
  private static int f(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = Math.abs(paramInt1);
    if (i < paramInt2) {
      paramInt2 = 0;
    }
    do
    {
      return paramInt2;
      if (i <= paramInt3) {
        break;
      }
      paramInt2 = paramInt3;
    } while (paramInt1 > 0);
    return -paramInt3;
    return paramInt1;
  }
  
  private void g(float paramFloat1, float paramFloat2)
  {
    this.KX = true;
    this.KV.a(this.KW, paramFloat1, paramFloat2);
    this.KX = false;
    if (this.KI == 1) {
      aM(0);
    }
  }
  
  private boolean q(View paramView, int paramInt)
  {
    if ((paramView == this.KW) && (this.jK == paramInt)) {
      return true;
    }
    if ((paramView != null) && (this.KV.a(paramView, paramInt)))
    {
      this.jK = paramInt;
      p(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  private View u(int paramInt1, int paramInt2)
  {
    int i = this.KY.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = this.KY.getChildAt(i);
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom())) {
        return localView;
      }
      i -= 1;
    }
    return null;
  }
  
  final void aM(int paramInt)
  {
    this.KY.removeCallbacks(this.KZ);
    if (this.KI != paramInt)
    {
      this.KI = paramInt;
      this.KV.y(paramInt);
      if (this.KI == 0) {
        this.KW = null;
      }
    }
  }
  
  public final boolean c(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getActionMasked();
    int i = paramMotionEvent.getActionIndex();
    if (j == 0) {
      cancel();
    }
    if (this.jJ == null) {
      this.jJ = VelocityTracker.obtain();
    }
    this.jJ.addMovement(paramMotionEvent);
    switch (j)
    {
    }
    while (this.KI == 1)
    {
      return true;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      i = paramMotionEvent.getPointerId(0);
      a(f1, f2, i);
      paramMotionEvent = u((int)f1, (int)f2);
      if ((paramMotionEvent == this.KW) && (this.KI == 2)) {
        q(paramMotionEvent, i);
      }
      if ((this.KN[i] & this.KU) != 0)
      {
        continue;
        j = paramMotionEvent.getPointerId(i);
        f1 = paramMotionEvent.getX(i);
        f2 = paramMotionEvent.getY(i);
        a(f1, f2, j);
        if ((this.KI != 0) && (this.KI == 2))
        {
          paramMotionEvent = u((int)f1, (int)f2);
          if (paramMotionEvent == this.KW)
          {
            q(paramMotionEvent, j);
            continue;
            if ((this.KJ != null) && (this.KK != null))
            {
              int k = paramMotionEvent.getPointerCount();
              i = 0;
              if (i < k)
              {
                int m = paramMotionEvent.getPointerId(i);
                float f3;
                float f4;
                View localView;
                if (aN(m))
                {
                  f1 = paramMotionEvent.getX(i);
                  f2 = paramMotionEvent.getY(i);
                  f3 = f1 - this.KJ[m];
                  f4 = f2 - this.KK[m];
                  localView = u((int)f1, (int)f2);
                  if ((localView == null) || (!c(localView, f3, f4))) {
                    break label519;
                  }
                }
                label519:
                for (j = 1;; j = 0)
                {
                  if (j != 0)
                  {
                    int n = localView.getLeft();
                    int i1 = (int)f3;
                    i1 = this.KV.d(localView, i1 + n);
                    int i2 = localView.getTop();
                    int i3 = (int)f4;
                    i3 = this.KV.c(localView, i3 + i2);
                    int i4 = this.KV.q(localView);
                    int i5 = this.KV.bo();
                    if (((i4 == 0) || ((i4 > 0) && (i1 == n))) && ((i5 == 0) || ((i5 > 0) && (i3 == i2)))) {
                      break label525;
                    }
                  }
                  b(f3, f4, m);
                  if ((this.KI == 1) || ((j != 0) && (q(localView, m)))) {
                    break label525;
                  }
                  i += 1;
                  break;
                }
              }
              label525:
              b(paramMotionEvent);
              continue;
              aK(paramMotionEvent.getPointerId(i));
              continue;
              cancel();
            }
          }
        }
      }
    }
    return false;
  }
  
  public final void d(MotionEvent paramMotionEvent)
  {
    int k = 0;
    int i = 0;
    int j = 0;
    int n = paramMotionEvent.getActionMasked();
    int m = paramMotionEvent.getActionIndex();
    if (n == 0) {
      cancel();
    }
    if (this.jJ == null) {
      this.jJ = VelocityTracker.obtain();
    }
    this.jJ.addMovement(paramMotionEvent);
    float f1;
    float f2;
    switch (n)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
    case 2: 
      do
      {
        do
        {
          do
          {
            return;
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            i = paramMotionEvent.getPointerId(0);
            paramMotionEvent = u((int)f1, (int)f2);
            a(f1, f2, i);
            q(paramMotionEvent, i);
          } while ((this.KN[i] & this.KU) == 0);
          return;
          k = paramMotionEvent.getPointerId(m);
          f1 = paramMotionEvent.getX(m);
          f2 = paramMotionEvent.getY(m);
          a(f1, f2, k);
          if (this.KI == 0)
          {
            q(u((int)f1, (int)f2), k);
            return;
          }
          m = (int)f1;
          n = (int)f2;
          paramMotionEvent = this.KW;
          i = j;
          if (paramMotionEvent != null)
          {
            i = j;
            if (m >= paramMotionEvent.getLeft())
            {
              i = j;
              if (m < paramMotionEvent.getRight())
              {
                i = j;
                if (n >= paramMotionEvent.getTop())
                {
                  i = j;
                  if (n < paramMotionEvent.getBottom()) {
                    i = 1;
                  }
                }
              }
            }
          }
        } while (i == 0);
        q(this.KW, k);
        return;
        if (this.KI != 1) {
          break;
        }
      } while (!aN(this.jK));
      i = paramMotionEvent.findPointerIndex(this.jK);
      f1 = paramMotionEvent.getX(i);
      f2 = paramMotionEvent.getY(i);
      k = (int)(f1 - this.KL[this.jK]);
      m = (int)(f2 - this.KM[this.jK]);
      j = this.KW.getLeft() + k;
      int i1 = this.KW.getTop();
      int i2 = this.KW.getLeft();
      n = this.KW.getTop();
      i = j;
      if (k != 0)
      {
        i = this.KV.d(this.KW, j);
        android.support.v4.view.r.n(this.KW, i - i2);
      }
      if (m != 0)
      {
        j = this.KV.c(this.KW, i1 + m);
        android.support.v4.view.r.m(this.KW, j - n);
      }
      if ((k != 0) || (m != 0)) {
        this.KV.b(this.KW, i);
      }
      b(paramMotionEvent);
      return;
      j = paramMotionEvent.getPointerCount();
      i = k;
      while (i < j)
      {
        k = paramMotionEvent.getPointerId(i);
        if (aN(k))
        {
          f1 = paramMotionEvent.getX(i);
          f2 = paramMotionEvent.getY(i);
          float f3 = f1 - this.KJ[k];
          float f4 = f2 - this.KK[k];
          b(f3, f4, k);
          if (this.KI == 1) {
            break;
          }
          View localView = u((int)f1, (int)f2);
          if ((c(localView, f3, f4)) && (q(localView, k))) {
            break;
          }
        }
        i += 1;
      }
      b(paramMotionEvent);
      return;
    case 6: 
      j = paramMotionEvent.getPointerId(m);
      if ((this.KI == 1) && (j == this.jK))
      {
        k = paramMotionEvent.getPointerCount();
        if (i >= k) {
          break label813;
        }
        m = paramMotionEvent.getPointerId(i);
        if (m == this.jK) {
          break label768;
        }
        f1 = paramMotionEvent.getX(i);
        f2 = paramMotionEvent.getY(i);
        if ((u((int)f1, (int)f2) != this.KW) || (!q(this.KW, m))) {
          break label768;
        }
      }
      break;
    }
    label768:
    label813:
    for (i = this.jK;; i = -1)
    {
      if (i == -1) {
        eo();
      }
      aK(j);
      return;
      i += 1;
      break;
      if (this.KI == 1) {
        eo();
      }
      cancel();
      return;
      if (this.KI == 1) {
        g(0.0F, 0.0F);
      }
      cancel();
      return;
    }
  }
  
  public final boolean en()
  {
    boolean bool2 = false;
    if (this.KI == 2)
    {
      boolean bool3 = this.mZ.computeScrollOffset();
      int i = this.mZ.getCurrX();
      int j = this.mZ.getCurrY();
      int k = i - this.KW.getLeft();
      int m = j - this.KW.getTop();
      if (k != 0) {
        android.support.v4.view.r.n(this.KW, k);
      }
      if (m != 0) {
        android.support.v4.view.r.m(this.KW, m);
      }
      if ((k != 0) || (m != 0)) {
        this.KV.b(this.KW, i);
      }
      bool1 = bool3;
      if (bool3)
      {
        bool1 = bool3;
        if (i == this.mZ.getFinalX())
        {
          bool1 = bool3;
          if (j == this.mZ.getFinalY())
          {
            this.mZ.abortAnimation();
            bool1 = false;
          }
        }
      }
      if (!bool1) {
        this.KY.post(this.KZ);
      }
    }
    boolean bool1 = bool2;
    if (this.KI == 2) {
      bool1 = true;
    }
    return bool1;
  }
  
  public final boolean g(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.KW.getLeft();
    int j = this.KW.getTop();
    paramInt1 -= i;
    paramInt2 -= j;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.mZ.abortAnimation();
      aM(0);
      return false;
    }
    View localView = this.KW;
    paramInt3 = f(paramInt3, (int)this.KS, (int)this.KR);
    paramInt4 = f(paramInt4, (int)this.KS, (int)this.KR);
    int k = Math.abs(paramInt1);
    int m = Math.abs(paramInt2);
    int n = Math.abs(paramInt3);
    int i1 = Math.abs(paramInt4);
    int i2 = n + i1;
    int i3 = k + m;
    float f1;
    if (paramInt3 != 0)
    {
      f1 = n / i2;
      if (paramInt4 == 0) {
        break label237;
      }
    }
    label237:
    for (float f2 = i1 / i2;; f2 = m / i3)
    {
      paramInt3 = e(paramInt1, paramInt3, this.KV.q(localView));
      paramInt4 = e(paramInt2, paramInt4, this.KV.bo());
      float f3 = paramInt3;
      paramInt3 = (int)(f2 * paramInt4 + f1 * f3);
      this.mZ.startScroll(i, j, paramInt1, paramInt2, paramInt3);
      aM(2);
      return true;
      f1 = k / i3;
      break;
    }
  }
  
  public final void p(View paramView, int paramInt)
  {
    if (paramView.getParent() != this.KY) {
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.KY + ")");
    }
    this.KW = paramView;
    this.jK = paramInt;
    this.KV.j(paramView, paramInt);
    aM(1);
  }
  
  public final boolean t(int paramInt1, int paramInt2)
  {
    if (!this.KX) {
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }
    return g(paramInt1, paramInt2, (int)this.jJ.getXVelocity(this.jK), (int)this.jJ.getYVelocity(this.jK));
  }
  
  public static abstract class a
  {
    public void a(View paramView, float paramFloat1, float paramFloat2) {}
    
    public abstract boolean a(View paramView, int paramInt);
    
    public void b(View paramView, int paramInt) {}
    
    public int bo()
    {
      return 0;
    }
    
    public int c(View paramView, int paramInt)
    {
      return 0;
    }
    
    public int d(View paramView, int paramInt)
    {
      return 0;
    }
    
    public void j(View paramView, int paramInt) {}
    
    public int q(View paramView)
    {
      return 0;
    }
    
    public void y(int paramInt) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */