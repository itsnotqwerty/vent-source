package android.support.v7.widget.a;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.d;
import android.support.v4.view.r;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.d;
import android.support.v7.widget.RecyclerView.f;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.i;
import android.support.v7.widget.RecyclerView.k;
import android.support.v7.widget.RecyclerView.m;
import android.support.v7.widget.RecyclerView.u;
import android.support.v7.widget.RecyclerView.x;
import android.support.v7.widget.ai;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

public final class a
  extends RecyclerView.h
  implements RecyclerView.k
{
  RecyclerView YZ;
  private RecyclerView.d aeM = null;
  private int aia;
  final List<View> akP = new ArrayList();
  private final float[] akQ = new float[2];
  RecyclerView.x akR = null;
  float akS;
  float akT;
  float akU;
  float akV;
  float akW;
  float akX;
  float akY;
  float akZ;
  a ala;
  int alb = 0;
  int alc;
  List<c> ald = new ArrayList();
  final Runnable ale = new Runnable()
  {
    public final void run()
    {
      int k = 0;
      a locala;
      long l2;
      long l1;
      Object localObject;
      int j;
      int i;
      label149:
      int m;
      label206:
      RecyclerView localRecyclerView;
      if (a.this.akR != null)
      {
        locala = a.this;
        if (locala.akR == null) {
          break label550;
        }
        l2 = System.currentTimeMillis();
        if (locala.alm != Long.MIN_VALUE) {
          break label409;
        }
        l1 = 0L;
        localObject = locala.YZ.getLayoutManager();
        if (locala.lg == null) {
          locala.lg = new Rect();
        }
        ((RecyclerView.i)localObject).f(locala.akR.itemView, locala.lg);
        if (!((RecyclerView.i)localObject).hg()) {
          break label479;
        }
        j = (int)(locala.akY + locala.akW);
        i = j - locala.lg.left - locala.YZ.getPaddingLeft();
        if ((locala.akW >= 0.0F) || (i >= 0)) {
          break label422;
        }
        if (!((RecyclerView.i)localObject).hh()) {
          break label545;
        }
        m = (int)(locala.akZ + locala.akX);
        j = m - locala.lg.top - locala.YZ.getPaddingTop();
        if ((locala.akX >= 0.0F) || (j >= 0)) {
          break label484;
        }
        if (i == 0) {
          break label566;
        }
        localObject = locala.ala;
        localRecyclerView = locala.YZ;
        m = locala.akR.itemView.getWidth();
        locala.YZ.getWidth();
        i = ((a.a)localObject).a(localRecyclerView, m, i, l1);
      }
      label409:
      label422:
      label479:
      label484:
      label545:
      label550:
      label566:
      for (;;)
      {
        if (j != 0)
        {
          localObject = locala.ala;
          localRecyclerView = locala.YZ;
          m = locala.akR.itemView.getHeight();
          locala.YZ.getHeight();
          j = ((a.a)localObject).a(localRecyclerView, m, j, l1);
        }
        for (;;)
        {
          if ((i != 0) || (j != 0))
          {
            if (locala.alm == Long.MIN_VALUE) {
              locala.alm = l2;
            }
            locala.YZ.scrollBy(i, j);
          }
          for (i = 1;; i = k)
          {
            if (i != 0)
            {
              if (a.this.akR != null) {
                a.this.u(a.this.akR);
              }
              a.this.YZ.removeCallbacks(a.this.ale);
              r.b(a.this.YZ, this);
            }
            return;
            l1 = l2 - locala.alm;
            break;
            if (locala.akW > 0.0F)
            {
              j = j + locala.akR.itemView.getWidth() + locala.lg.right - (locala.YZ.getWidth() - locala.YZ.getPaddingRight());
              i = j;
              if (j > 0) {
                break label149;
              }
            }
            i = 0;
            break label149;
            if (locala.akX > 0.0F)
            {
              m = m + locala.akR.itemView.getHeight() + locala.lg.bottom - (locala.YZ.getHeight() - locala.YZ.getPaddingBottom());
              j = m;
              if (m > 0) {
                break label206;
              }
            }
            j = 0;
            break label206;
            locala.alm = Long.MIN_VALUE;
          }
        }
      }
    }
  };
  private List<RecyclerView.x> alf;
  private List<Integer> alg;
  View alh = null;
  int ali = -1;
  d alj;
  private b alk;
  private final RecyclerView.m all = new RecyclerView.m()
  {
    public final void Q(boolean paramAnonymousBoolean)
    {
      if (!paramAnonymousBoolean) {
        return;
      }
      a.this.c(null, 0);
    }
    
    public final boolean e(MotionEvent paramAnonymousMotionEvent)
    {
      a.this.alj.onTouchEvent(paramAnonymousMotionEvent);
      int i = paramAnonymousMotionEvent.getActionMasked();
      Object localObject;
      if (i == 0)
      {
        a.this.jK = paramAnonymousMotionEvent.getPointerId(0);
        a.this.akS = paramAnonymousMotionEvent.getX();
        a.this.akT = paramAnonymousMotionEvent.getY();
        localObject = a.this;
        if (((a)localObject).jJ != null) {
          ((a)localObject).jJ.recycle();
        }
        ((a)localObject).jJ = VelocityTracker.obtain();
        if (a.this.akR == null)
        {
          a locala = a.this;
          if (locala.ald.isEmpty()) {
            break label335;
          }
          View localView = locala.h(paramAnonymousMotionEvent);
          i = locala.ald.size() - 1;
          if (i < 0) {
            break label335;
          }
          localObject = (a.c)locala.ald.get(i);
          if (((a.c)localObject).afr.itemView != localView) {
            break label328;
          }
          label168:
          if (localObject != null)
          {
            locala = a.this;
            locala.akS -= ((a.c)localObject).alE;
            locala = a.this;
            locala.akT -= ((a.c)localObject).alF;
            a.this.b(((a.c)localObject).afr, true);
            if (a.this.akP.remove(((a.c)localObject).afr.itemView)) {
              a.a.x(((a.c)localObject).afr);
            }
            a.this.c(((a.c)localObject).afr, ((a.c)localObject).alb);
            a.this.a(paramAnonymousMotionEvent, a.this.alc, 0);
          }
        }
      }
      for (;;)
      {
        if (a.this.jJ != null) {
          a.this.jJ.addMovement(paramAnonymousMotionEvent);
        }
        if (a.this.akR == null) {
          break label412;
        }
        return true;
        label328:
        i -= 1;
        break;
        label335:
        localObject = null;
        break label168;
        if ((i == 3) || (i == 1))
        {
          a.this.jK = -1;
          a.this.c(null, 0);
        }
        else if (a.this.jK != -1)
        {
          int j = paramAnonymousMotionEvent.findPointerIndex(a.this.jK);
          if (j >= 0) {
            a.this.a(i, paramAnonymousMotionEvent, j);
          }
        }
      }
      label412:
      return false;
    }
    
    public final void f(MotionEvent paramAnonymousMotionEvent)
    {
      int i = 0;
      a.this.alj.onTouchEvent(paramAnonymousMotionEvent);
      if (a.this.jJ != null) {
        a.this.jJ.addMovement(paramAnonymousMotionEvent);
      }
      if (a.this.jK == -1) {}
      int j;
      do
      {
        int k;
        RecyclerView.x localx;
        do
        {
          return;
          j = paramAnonymousMotionEvent.getActionMasked();
          k = paramAnonymousMotionEvent.findPointerIndex(a.this.jK);
          if (k >= 0) {
            a.this.a(j, paramAnonymousMotionEvent, k);
          }
          localx = a.this.akR;
        } while (localx == null);
        switch (j)
        {
        case 4: 
        case 5: 
        default: 
          return;
        case 1: 
        case 2: 
        case 3: 
          for (;;)
          {
            a.this.c(null, 0);
            a.this.jK = -1;
            return;
            if (k < 0) {
              break;
            }
            a.this.a(paramAnonymousMotionEvent, a.this.alc, k);
            a.this.u(localx);
            a.this.YZ.removeCallbacks(a.this.ale);
            a.this.ale.run();
            a.this.YZ.invalidate();
            return;
            if (a.this.jJ != null) {
              a.this.jJ.clear();
            }
          }
        }
        j = paramAnonymousMotionEvent.getActionIndex();
      } while (paramAnonymousMotionEvent.getPointerId(j) != a.this.jK);
      if (j == 0) {
        i = 1;
      }
      a.this.jK = paramAnonymousMotionEvent.getPointerId(i);
      a.this.a(paramAnonymousMotionEvent, a.this.alc, j);
    }
  };
  long alm;
  VelocityTracker jJ;
  int jK = -1;
  Rect lg;
  
  public a(a parama)
  {
    this.ala = parama;
  }
  
  private static boolean a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return (paramFloat1 >= paramFloat3) && (paramFloat1 <= paramView.getWidth() + paramFloat3) && (paramFloat2 >= paramFloat4) && (paramFloat2 <= paramView.getHeight() + paramFloat4);
  }
  
  private void b(float[] paramArrayOfFloat)
  {
    if ((this.alc & 0xC) != 0) {
      paramArrayOfFloat[0] = (this.akY + this.akW - this.akR.itemView.getLeft());
    }
    while ((this.alc & 0x3) != 0)
    {
      paramArrayOfFloat[1] = (this.akZ + this.akX - this.akR.itemView.getTop());
      return;
      paramArrayOfFloat[0] = this.akR.itemView.getTranslationX();
    }
    paramArrayOfFloat[1] = this.akR.itemView.getTranslationY();
  }
  
  private int ci(int paramInt)
  {
    int j = 8;
    if ((paramInt & 0xC) != 0)
    {
      int i;
      if (this.akW > 0.0F)
      {
        i = 8;
        if ((this.jJ == null) || (this.jK < 0)) {
          break label140;
        }
        this.jJ.computeCurrentVelocity(1000, a.t(this.akV));
        f2 = this.jJ.getXVelocity(this.jK);
        f1 = this.jJ.getYVelocity(this.jK);
        if (f2 <= 0.0F) {
          break label134;
        }
      }
      for (;;)
      {
        f2 = Math.abs(f2);
        if (((j & paramInt) == 0) || (i != j) || (f2 < a.s(this.akU)) || (f2 <= Math.abs(f1))) {
          break label140;
        }
        return j;
        i = 4;
        break;
        label134:
        j = 4;
      }
      label140:
      float f1 = this.YZ.getWidth();
      float f2 = a.jl();
      if (((paramInt & i) != 0) && (Math.abs(this.akW) > f1 * f2)) {
        return i;
      }
    }
    return 0;
  }
  
  private int cj(int paramInt)
  {
    int j = 2;
    if ((paramInt & 0x3) != 0)
    {
      int i;
      if (this.akX > 0.0F)
      {
        i = 2;
        if ((this.jJ == null) || (this.jK < 0)) {
          break label137;
        }
        this.jJ.computeCurrentVelocity(1000, a.t(this.akV));
        f1 = this.jJ.getXVelocity(this.jK);
        f2 = this.jJ.getYVelocity(this.jK);
        if (f2 <= 0.0F) {
          break label131;
        }
      }
      for (;;)
      {
        f2 = Math.abs(f2);
        if (((j & paramInt) == 0) || (j != i) || (f2 < a.s(this.akU)) || (f2 <= Math.abs(f1))) {
          break label137;
        }
        return j;
        i = 1;
        break;
        label131:
        j = 1;
      }
      label137:
      float f1 = this.YZ.getHeight();
      float f2 = a.jl();
      if (((paramInt & i) != 0) && (Math.abs(this.akX) > f1 * f2)) {
        return i;
      }
    }
    return 0;
  }
  
  private void jf()
  {
    if (this.jJ != null)
    {
      this.jJ.recycle();
      this.jJ = null;
    }
  }
  
  final void a(MotionEvent paramMotionEvent, int paramInt1, int paramInt2)
  {
    float f1 = paramMotionEvent.getX(paramInt2);
    float f2 = paramMotionEvent.getY(paramInt2);
    this.akW = (f1 - this.akS);
    this.akX = (f2 - this.akT);
    if ((paramInt1 & 0x4) == 0) {
      this.akW = Math.max(0.0F, this.akW);
    }
    if ((paramInt1 & 0x8) == 0) {
      this.akW = Math.min(0.0F, this.akW);
    }
    if ((paramInt1 & 0x1) == 0) {
      this.akX = Math.max(0.0F, this.akX);
    }
    if ((paramInt1 & 0x2) == 0) {
      this.akX = Math.min(0.0F, this.akX);
    }
  }
  
  final boolean a(int paramInt1, MotionEvent paramMotionEvent, int paramInt2)
  {
    Object localObject2 = null;
    if ((this.akR == null) && (paramInt1 == 2) && (this.alb != 2))
    {
      a.jj();
      if (this.YZ.getScrollState() != 1) {
        break label40;
      }
    }
    label40:
    Object localObject3;
    Object localObject1;
    label61:
    float f1;
    float f2;
    float f3;
    float f4;
    do
    {
      do
      {
        do
        {
          return false;
          localObject3 = this.YZ.getLayoutManager();
          if (this.jK != -1) {
            break;
          }
          localObject1 = localObject2;
          if (localObject1 == null) {
            break label370;
          }
          paramInt1 = (this.ala.a(this.YZ, (RecyclerView.x)localObject1) & 0xFF00) >> 8;
        } while (paramInt1 == 0);
        f1 = paramMotionEvent.getX(paramInt2);
        f2 = paramMotionEvent.getY(paramInt2);
        f1 -= this.akS;
        f2 -= this.akT;
        f3 = Math.abs(f1);
        f4 = Math.abs(f2);
      } while ((f3 < this.aia) && (f4 < this.aia));
      if (f3 <= f4) {
        break label372;
      }
    } while (((f1 < 0.0F) && ((paramInt1 & 0x4) == 0)) || ((f1 > 0.0F) && ((paramInt1 & 0x8) == 0)));
    label370:
    label372:
    do
    {
      this.akX = 0.0F;
      this.akW = 0.0F;
      this.jK = paramMotionEvent.getPointerId(0);
      c((RecyclerView.x)localObject1, 1);
      return true;
      paramInt1 = paramMotionEvent.findPointerIndex(this.jK);
      f3 = paramMotionEvent.getX(paramInt1);
      f4 = this.akS;
      f1 = paramMotionEvent.getY(paramInt1);
      f2 = this.akT;
      f3 = Math.abs(f3 - f4);
      f1 = Math.abs(f1 - f2);
      if (f3 < this.aia)
      {
        localObject1 = localObject2;
        if (f1 < this.aia) {
          break label61;
        }
      }
      if (f3 > f1)
      {
        localObject1 = localObject2;
        if (((RecyclerView.i)localObject3).hg()) {
          break label61;
        }
      }
      if (f1 > f3)
      {
        localObject1 = localObject2;
        if (((RecyclerView.i)localObject3).hh()) {
          break label61;
        }
      }
      localObject3 = h(paramMotionEvent);
      localObject1 = localObject2;
      if (localObject3 == null) {
        break label61;
      }
      localObject1 = this.YZ.aB((View)localObject3);
      break label61;
      break;
      if ((f2 < 0.0F) && ((paramInt1 & 0x1) == 0)) {
        break;
      }
    } while ((f2 <= 0.0F) || ((paramInt1 & 0x2) != 0));
    return false;
  }
  
  final int b(RecyclerView.x paramx, boolean paramBoolean)
  {
    int i = this.ald.size() - 1;
    while (i >= 0)
    {
      c localc = (c)this.ald.get(i);
      if (localc.afr == paramx)
      {
        localc.alG |= paramBoolean;
        if (!localc.uF) {
          localc.alB.cancel();
        }
        this.ald.remove(i);
        return localc.alC;
      }
      i -= 1;
    }
    return 0;
  }
  
  public final void bc(View paramView)
  {
    bl(paramView);
    paramView = this.YZ.aB(paramView);
    if (paramView == null) {}
    do
    {
      return;
      if ((this.akR != null) && (paramView == this.akR))
      {
        c(null, 0);
        return;
      }
      b(paramView, false);
    } while (!this.akP.remove(paramView.itemView));
    a.x(paramView);
  }
  
  final void bl(View paramView)
  {
    if (paramView == this.alh)
    {
      this.alh = null;
      if (this.aeM != null) {
        this.YZ.setChildDrawingOrderCallback(null);
      }
    }
  }
  
  final void c(RecyclerView.x paramx, int paramInt)
  {
    if ((paramx == this.akR) && (paramInt == this.alb)) {
      return;
    }
    this.alm = Long.MIN_VALUE;
    int k = this.alb;
    b(paramx, true);
    this.alb = paramInt;
    if (paramInt == 2)
    {
      this.alh = paramx.itemView;
      if (Build.VERSION.SDK_INT < 21)
      {
        if (this.aeM == null) {
          this.aeM = new RecyclerView.d()
          {
            public final int ad(int paramAnonymousInt1, int paramAnonymousInt2)
            {
              if (a.this.alh == null) {}
              int i;
              do
              {
                return paramAnonymousInt2;
                int j = a.this.ali;
                i = j;
                if (j == -1)
                {
                  i = a.this.YZ.indexOfChild(a.this.alh);
                  a.this.ali = i;
                }
                if (paramAnonymousInt2 == paramAnonymousInt1 - 1) {
                  return i;
                }
              } while (paramAnonymousInt2 < i);
              return paramAnonymousInt2 + 1;
            }
          };
        }
        this.YZ.setChildDrawingOrderCallback(this.aeM);
      }
    }
    final int i = 0;
    int j = 0;
    final Object localObject;
    int m;
    int n;
    float f1;
    float f2;
    if (this.akR != null)
    {
      localObject = this.akR;
      if (((RecyclerView.x)localObject).itemView.getParent() == null) {
        break label713;
      }
      if ((k == 2) || (this.alb == 2)) {
        break label585;
      }
      i = this.ala.v((RecyclerView.x)localObject);
      m = (a.aq(i, r.K(this.YZ)) & 0xFF00) >> 8;
      if (m == 0) {
        break label585;
      }
      n = (i & 0xFF00) >> 8;
      if (Math.abs(this.akW) <= Math.abs(this.akX)) {
        break label591;
      }
      j = ci(m);
      if (j > 0)
      {
        i = j;
        if ((n & j) == 0) {
          i = a.ap(j, r.K(this.YZ));
        }
        jf();
      }
    }
    else
    {
      switch (i)
      {
      default: 
        f1 = 0.0F;
        f2 = 0.0F;
        label309:
        if (k == 2)
        {
          j = 8;
          label319:
          b(this.akQ);
          localObject = new c((RecyclerView.x)localObject, j, k, this.akQ[0], this.akQ[1], f1, f2)
          {
            public final void onAnimationEnd(Animator paramAnonymousAnimator)
            {
              super.onAnimationEnd(paramAnonymousAnimator);
              if (this.alG) {}
              for (;;)
              {
                return;
                if (i <= 0) {
                  a.a.x(localObject);
                }
                while (a.this.alh == localObject.itemView)
                {
                  a.this.bl(localObject.itemView);
                  return;
                  a.this.akP.add(localObject.itemView);
                  this.alD = true;
                  if (i > 0)
                  {
                    paramAnonymousAnimator = a.this;
                    int i = i;
                    paramAnonymousAnimator.YZ.post(new a.4(paramAnonymousAnimator, this, i));
                  }
                }
              }
            }
          };
          long l = a.c(this.YZ, j);
          ((c)localObject).alB.setDuration(l);
          this.ald.add(localObject);
          ((c)localObject).afr.setIsRecyclable(false);
          ((c)localObject).alB.start();
          i = 1;
          label416:
          this.akR = null;
          if (paramx != null)
          {
            this.alc = ((this.ala.a(this.YZ, paramx) & (1 << paramInt * 8 + 8) - 1) >> this.alb * 8);
            this.akY = paramx.itemView.getLeft();
            this.akZ = paramx.itemView.getTop();
            this.akR = paramx;
            if (paramInt == 2) {
              this.akR.itemView.performHapticFeedback(0);
            }
          }
          paramx = this.YZ.getParent();
          if (paramx != null) {
            if (this.akR == null) {
              break label734;
            }
          }
        }
        break;
      }
    }
    label585:
    label591:
    label713:
    label734:
    for (boolean bool = true;; bool = false)
    {
      paramx.requestDisallowInterceptTouchEvent(bool);
      if (i == 0) {
        this.YZ.getLayoutManager().afg = true;
      }
      a.w(this.akR);
      this.YZ.invalidate();
      return;
      j = cj(m);
      i = j;
      if (j > 0) {
        break;
      }
      do
      {
        i = 0;
        break;
        j = cj(m);
        i = j;
        if (j > 0) {
          break;
        }
        j = ci(m);
      } while (j <= 0);
      i = j;
      if ((n & j) != 0) {
        break;
      }
      i = a.ap(j, r.K(this.YZ));
      break;
      f2 = 0.0F;
      f1 = Math.signum(this.akW) * this.YZ.getWidth();
      break label309;
      f1 = 0.0F;
      f2 = Math.signum(this.akX) * this.YZ.getHeight();
      break label309;
      if (i > 0)
      {
        j = 2;
        break label319;
      }
      j = 4;
      break label319;
      bl(((RecyclerView.x)localObject).itemView);
      a.x((RecyclerView.x)localObject);
      i = j;
      break label416;
    }
  }
  
  public final void g(RecyclerView paramRecyclerView)
  {
    if (this.YZ == paramRecyclerView) {}
    do
    {
      return;
      if (this.YZ != null)
      {
        this.YZ.b(this);
        this.YZ.b(this.all);
        RecyclerView localRecyclerView = this.YZ;
        if (localRecyclerView.aef != null) {
          localRecyclerView.aef.remove(this);
        }
        int i = this.ald.size() - 1;
        while (i >= 0)
        {
          a.x(((c)this.ald.get(0)).afr);
          i -= 1;
        }
        this.ald.clear();
        this.alh = null;
        this.ali = -1;
        jf();
        if (this.alk != null)
        {
          this.alk.alw = false;
          this.alk = null;
        }
        if (this.alj != null) {
          this.alj = null;
        }
      }
      this.YZ = paramRecyclerView;
    } while (paramRecyclerView == null);
    paramRecyclerView = paramRecyclerView.getResources();
    this.akU = paramRecyclerView.getDimension(android.support.v7.f.a.a.item_touch_helper_swipe_escape_velocity);
    this.akV = paramRecyclerView.getDimension(android.support.v7.f.a.a.item_touch_helper_swipe_escape_max_velocity);
    this.aia = ViewConfiguration.get(this.YZ.getContext()).getScaledTouchSlop();
    this.YZ.a(this);
    this.YZ.a(this.all);
    paramRecyclerView = this.YZ;
    if (paramRecyclerView.aef == null) {
      paramRecyclerView.aef = new ArrayList();
    }
    paramRecyclerView.aef.add(this);
    this.alk = new b();
    this.alj = new d(this.YZ.getContext(), this.alk);
  }
  
  public final void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.u paramu)
  {
    paramRect.setEmpty();
  }
  
  final View h(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    if (this.akR != null)
    {
      paramMotionEvent = this.akR.itemView;
      if (a(paramMotionEvent, f1, f2, this.akY + this.akW, this.akZ + this.akX)) {
        return paramMotionEvent;
      }
    }
    int i = this.ald.size() - 1;
    View localView;
    while (i >= 0)
    {
      paramMotionEvent = (c)this.ald.get(i);
      localView = paramMotionEvent.afr.itemView;
      if (a(localView, f1, f2, paramMotionEvent.alE, paramMotionEvent.alF)) {
        return localView;
      }
      i -= 1;
    }
    RecyclerView localRecyclerView = this.YZ;
    i = localRecyclerView.adK.getChildCount() - 1;
    for (;;)
    {
      if (i < 0) {
        break label243;
      }
      localView = localRecyclerView.adK.getChildAt(i);
      float f3 = localView.getTranslationX();
      float f4 = localView.getTranslationY();
      if ((f1 >= localView.getLeft() + f3) && (f1 <= f3 + localView.getRight()) && (f2 >= localView.getTop() + f4))
      {
        paramMotionEvent = localView;
        if (f2 <= localView.getBottom() + f4) {
          break;
        }
      }
      i -= 1;
    }
    label243:
    return null;
  }
  
  public final void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.u paramu)
  {
    this.ali = -1;
    float f2;
    float f1;
    if (this.akR != null)
    {
      b(this.akQ);
      f2 = this.akQ[0];
      f1 = this.akQ[1];
    }
    for (;;)
    {
      paramu = this.ala;
      RecyclerView.x localx = this.akR;
      List localList = this.ald;
      int j = this.alb;
      int k = localList.size();
      int i = 0;
      if (i < k)
      {
        c localc = (c)localList.get(i);
        if (localc.alx == localc.alz)
        {
          localc.alE = localc.afr.itemView.getTranslationX();
          label122:
          if (localc.aly != localc.alA) {
            break label231;
          }
        }
        label231:
        for (localc.alF = localc.afr.itemView.getTranslationY();; localc.alF = (localc.aly + localc.alH * (localc.alA - localc.aly)))
        {
          int m = paramCanvas.save();
          paramu.a(paramCanvas, paramRecyclerView, localc.afr, localc.alE, localc.alF, localc.alb, false);
          paramCanvas.restoreToCount(m);
          i += 1;
          break;
          localc.alE = (localc.alx + localc.alH * (localc.alz - localc.alx));
          break label122;
        }
      }
      if (localx != null)
      {
        i = paramCanvas.save();
        paramu.a(paramCanvas, paramRecyclerView, localx, f2, f1, j, true);
        paramCanvas.restoreToCount(i);
      }
      return;
      f1 = 0.0F;
      f2 = 0.0F;
    }
  }
  
  public final void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.u paramu)
  {
    int k = 0;
    if (this.akR != null) {
      b(this.akQ);
    }
    a locala = this.ala;
    RecyclerView.x localx = this.akR;
    paramu = this.ald;
    int j = paramu.size();
    int i = 0;
    while (i < j)
    {
      c localc = (c)paramu.get(i);
      int m = paramCanvas.save();
      locala.y(localc.afr);
      paramCanvas.restoreToCount(m);
      i += 1;
    }
    if (localx != null)
    {
      i = paramCanvas.save();
      locala.y(localx);
      paramCanvas.restoreToCount(i);
    }
    j -= 1;
    i = k;
    if (j >= 0)
    {
      paramCanvas = (c)paramu.get(j);
      if ((paramCanvas.uF) && (!paramCanvas.alD)) {
        paramu.remove(j);
      }
    }
    for (;;)
    {
      j -= 1;
      break;
      if (!paramCanvas.uF)
      {
        i = 1;
        continue;
        if (i != 0) {
          paramRecyclerView.invalidate();
        }
        return;
      }
    }
  }
  
  final void u(RecyclerView.x paramx)
  {
    if (this.YZ.isLayoutRequested()) {}
    int m;
    int n;
    label483:
    do
    {
      do
      {
        do
        {
          return;
        } while (this.alb != 2);
        a.jm();
        m = (int)(this.akY + this.akW);
        n = (int)(this.akZ + this.akX);
      } while ((Math.abs(n - paramx.itemView.getTop()) < paramx.itemView.getHeight() * 0.5F) && (Math.abs(m - paramx.itemView.getLeft()) < paramx.itemView.getWidth() * 0.5F));
      int i1;
      int i2;
      int i3;
      int i4;
      int i5;
      int i6;
      int i7;
      int i;
      if (this.alf == null)
      {
        this.alf = new ArrayList();
        this.alg = new ArrayList();
        a.jk();
        i1 = Math.round(this.akY + this.akW) + 0;
        i2 = Math.round(this.akZ + this.akX) + 0;
        i3 = paramx.itemView.getWidth() + i1 + 0;
        i4 = paramx.itemView.getHeight() + i2 + 0;
        i5 = (i1 + i3) / 2;
        i6 = (i2 + i4) / 2;
        localObject = this.YZ.getLayoutManager();
        i7 = ((RecyclerView.i)localObject).getChildCount();
        i = 0;
      }
      for (;;)
      {
        if (i >= i7) {
          break label483;
        }
        View localView = ((RecyclerView.i)localObject).getChildAt(i);
        if ((localView != paramx.itemView) && (localView.getBottom() >= i2) && (localView.getTop() <= i4) && (localView.getRight() >= i1) && (localView.getLeft() <= i3))
        {
          RecyclerView.x localx = this.YZ.aB(localView);
          a.jg();
          int j = Math.abs(i5 - (localView.getLeft() + localView.getRight()) / 2);
          int k = localView.getTop();
          k = Math.abs(i6 - (localView.getBottom() + k) / 2);
          int i8 = j * j + k * k;
          k = 0;
          int i9 = this.alf.size();
          j = 0;
          for (;;)
          {
            if ((j < i9) && (i8 > ((Integer)this.alg.get(j)).intValue()))
            {
              k += 1;
              j += 1;
              continue;
              this.alf.clear();
              this.alg.clear();
              break;
            }
          }
          this.alf.add(k, localx);
          this.alg.add(k, Integer.valueOf(i8));
        }
        i += 1;
      }
      localObject = this.alf;
    } while (((List)localObject).size() == 0);
    Object localObject = a.a(paramx, (List)localObject, m, n);
    if (localObject == null)
    {
      this.alf.clear();
      this.alg.clear();
      return;
    }
    ((RecyclerView.x)localObject).getAdapterPosition();
    paramx.getAdapterPosition();
    this.ala.jh();
  }
  
  public static abstract class a
  {
    private static final b alr = new c.b();
    private static final Interpolator als = new Interpolator()
    {
      public final float getInterpolation(float paramAnonymousFloat)
      {
        return paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat;
      }
    };
    private static final Interpolator alu = new Interpolator()
    {
      public final float getInterpolation(float paramAnonymousFloat)
      {
        paramAnonymousFloat -= 1.0F;
        return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
      }
    };
    private int alv = -1;
    
    static
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        alr = new c.a();
        return;
      }
    }
    
    public static RecyclerView.x a(RecyclerView.x paramx, List<RecyclerView.x> paramList, int paramInt1, int paramInt2)
    {
      int m = paramx.itemView.getWidth();
      int n = paramx.itemView.getHeight();
      int i = -1;
      int i1 = paramInt1 - paramx.itemView.getLeft();
      int i2 = paramInt2 - paramx.itemView.getTop();
      int i3 = paramList.size();
      int j = 0;
      Object localObject2 = null;
      Object localObject1;
      int k;
      if (j < i3)
      {
        localObject1 = (RecyclerView.x)paramList.get(j);
        if (i1 <= 0) {
          break label343;
        }
        k = ((RecyclerView.x)localObject1).itemView.getRight() - (paramInt1 + m);
        if ((k >= 0) || (((RecyclerView.x)localObject1).itemView.getRight() <= paramx.itemView.getRight())) {
          break label343;
        }
        k = Math.abs(k);
        if (k <= i) {
          break label343;
        }
        localObject2 = localObject1;
        i = k;
        label142:
        if (i1 >= 0) {
          break label356;
        }
        k = ((RecyclerView.x)localObject1).itemView.getLeft() - paramInt1;
        if ((k <= 0) || (((RecyclerView.x)localObject1).itemView.getLeft() >= paramx.itemView.getLeft())) {
          break label356;
        }
        k = Math.abs(k);
        if (k <= i) {
          break label356;
        }
        localObject2 = localObject1;
        i = k;
      }
      label343:
      label356:
      for (;;)
      {
        if (i2 < 0)
        {
          k = ((RecyclerView.x)localObject1).itemView.getTop() - paramInt2;
          if ((k > 0) && (((RecyclerView.x)localObject1).itemView.getTop() < paramx.itemView.getTop()))
          {
            k = Math.abs(k);
            if (k > i)
            {
              localObject2 = localObject1;
              i = k;
            }
          }
        }
        for (;;)
        {
          if (i2 > 0)
          {
            k = ((RecyclerView.x)localObject1).itemView.getBottom() - (paramInt2 + n);
            if ((k < 0) && (((RecyclerView.x)localObject1).itemView.getBottom() > paramx.itemView.getBottom()))
            {
              k = Math.abs(k);
              if (k > i) {
                i = k;
              }
            }
          }
          for (;;)
          {
            j += 1;
            localObject2 = localObject1;
            break;
            return (RecyclerView.x)localObject2;
            break label142;
            localObject1 = localObject2;
          }
        }
      }
    }
    
    public static int ap(int paramInt1, int paramInt2)
    {
      int i = paramInt1 & 0xC0C0C;
      if (i == 0) {
        return paramInt1;
      }
      paramInt1 = (i ^ 0xFFFFFFFF) & paramInt1;
      if (paramInt2 == 0) {
        return paramInt1 | i << 2;
      }
      return paramInt1 | i << 1 & 0xFFF3F3F3 | (i << 1 & 0xC0C0C) << 2;
    }
    
    public static int aq(int paramInt1, int paramInt2)
    {
      int i = paramInt1 & 0x303030;
      if (i == 0) {
        return paramInt1;
      }
      paramInt1 = (i ^ 0xFFFFFFFF) & paramInt1;
      if (paramInt2 == 0) {
        return paramInt1 | i >> 2;
      }
      return paramInt1 | i >> 1 & 0xFFCFCFCF | (i >> 1 & 0x303030) >> 2;
    }
    
    public static long c(RecyclerView paramRecyclerView, int paramInt)
    {
      paramRecyclerView = paramRecyclerView.getItemAnimator();
      if (paramRecyclerView == null)
      {
        if (paramInt == 8) {
          return 200L;
        }
        return 250L;
      }
      if (paramInt == 8) {
        return paramRecyclerView.aeZ;
      }
      return paramRecyclerView.aeY;
    }
    
    public static int ck(int paramInt)
    {
      return (paramInt | 0x0) << 0 | paramInt << 8 | 0x0;
    }
    
    public static boolean jg()
    {
      return true;
    }
    
    public static boolean ji()
    {
      return true;
    }
    
    public static boolean jj()
    {
      return true;
    }
    
    public static int jk()
    {
      return 0;
    }
    
    public static float jl()
    {
      return 0.5F;
    }
    
    public static float jm()
    {
      return 0.5F;
    }
    
    public static float s(float paramFloat)
    {
      return paramFloat;
    }
    
    public static float t(float paramFloat)
    {
      return paramFloat;
    }
    
    public static void w(RecyclerView.x paramx)
    {
      if (paramx != null) {
        paramx = paramx.itemView;
      }
    }
    
    public static void x(RecyclerView.x paramx)
    {
      alr.bm(paramx.itemView);
    }
    
    public final int a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, long paramLong)
    {
      float f1 = 1.0F;
      if (this.alv == -1) {
        this.alv = paramRecyclerView.getResources().getDimensionPixelSize(android.support.v7.f.a.a.item_touch_helper_max_drag_scroll_per_frame);
      }
      int i = this.alv;
      int j = Math.abs(paramInt2);
      int k = (int)Math.signum(paramInt2);
      float f2 = Math.min(1.0F, j * 1.0F / paramInt1);
      paramInt1 = (int)(i * k * alu.getInterpolation(f2));
      if (paramLong > 2000L) {}
      for (;;)
      {
        f2 = paramInt1;
        i = (int)(als.getInterpolation(f1) * f2);
        paramInt1 = i;
        if (i == 0)
        {
          if (paramInt2 <= 0) {
            break;
          }
          paramInt1 = 1;
        }
        return paramInt1;
        f1 = (float)paramLong / 2000.0F;
      }
      return -1;
    }
    
    final int a(RecyclerView paramRecyclerView, RecyclerView.x paramx)
    {
      return aq(v(paramx), r.K(paramRecyclerView));
    }
    
    public void a(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.x paramx, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
    {
      alr.a(paramCanvas, paramRecyclerView, paramx.itemView, paramFloat1, paramFloat2, paramInt, paramBoolean);
    }
    
    public abstract void d(RecyclerView.x paramx, int paramInt);
    
    public abstract boolean jh();
    
    public abstract int v(RecyclerView.x paramx);
    
    public void y(RecyclerView.x paramx)
    {
      paramx = paramx.itemView;
    }
  }
  
  private final class b
    extends GestureDetector.SimpleOnGestureListener
  {
    boolean alw = true;
    
    b() {}
    
    public final boolean onDown(MotionEvent paramMotionEvent)
    {
      return true;
    }
    
    public final void onLongPress(MotionEvent paramMotionEvent)
    {
      if (!this.alw) {}
      for (;;)
      {
        return;
        Object localObject = a.this.h(paramMotionEvent);
        if (localObject != null)
        {
          localObject = a.this.YZ.aB((View)localObject);
          if (localObject != null)
          {
            if ((a.this.ala.a(a.this.YZ, (RecyclerView.x)localObject) & 0xFF0000) != 0) {}
            for (int i = 1; (i != 0) && (paramMotionEvent.getPointerId(0) == a.this.jK); i = 0)
            {
              i = paramMotionEvent.findPointerIndex(a.this.jK);
              float f1 = paramMotionEvent.getX(i);
              float f2 = paramMotionEvent.getY(i);
              a.this.akS = f1;
              a.this.akT = f2;
              paramMotionEvent = a.this;
              a.this.akX = 0.0F;
              paramMotionEvent.akW = 0.0F;
              a.a.ji();
              a.this.c((RecyclerView.x)localObject, 2);
              return;
            }
          }
        }
      }
    }
  }
  
  private static class c
    implements Animator.AnimatorListener
  {
    final RecyclerView.x afr;
    final float alA;
    final ValueAnimator alB;
    final int alC;
    public boolean alD;
    float alE;
    float alF;
    boolean alG = false;
    float alH;
    final int alb;
    final float alx;
    final float aly;
    final float alz;
    boolean uF = false;
    
    c(RecyclerView.x paramx, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      this.alb = paramInt2;
      this.alC = paramInt1;
      this.afr = paramx;
      this.alx = paramFloat1;
      this.aly = paramFloat2;
      this.alz = paramFloat3;
      this.alA = paramFloat4;
      this.alB = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
      this.alB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          a.c.this.alH = paramAnonymousValueAnimator.getAnimatedFraction();
        }
      });
      this.alB.setTarget(paramx.itemView);
      this.alB.addListener(this);
      this.alH = 0.0F;
    }
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      this.alH = 1.0F;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      if (!this.uF) {
        this.afr.setIsRecyclable(true);
      }
      this.uF = true;
    }
    
    public void onAnimationRepeat(Animator paramAnimator) {}
    
    public void onAnimationStart(Animator paramAnimator) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */