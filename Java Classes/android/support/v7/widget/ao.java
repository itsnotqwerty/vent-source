package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.v4.view.r;
import android.view.MotionEvent;

final class ao
  extends RecyclerView.h
  implements RecyclerView.m
{
  private static final int[] EMPTY_STATE_SET = new int[0];
  private static final int[] PRESSED_STATE_SET = { 16842919 };
  private int KI = 0;
  final int YI;
  private final StateListDrawable YJ;
  private final Drawable YK;
  private final int YL;
  private final int YM;
  private final StateListDrawable YN;
  private final Drawable YO;
  private final int YP;
  private final int YQ;
  int YR;
  int YS;
  float YT;
  int YU;
  int YV;
  float YW;
  int YX = 0;
  int YY = 0;
  RecyclerView YZ;
  boolean Za = false;
  boolean Zb = false;
  private final int[] Zc = new int[2];
  private final int[] Zd = new int[2];
  final ValueAnimator Ze = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
  int Zf = 0;
  private final Runnable Zg = new Runnable()
  {
    public final void run()
    {
      ao localao = ao.this;
      switch (localao.Zf)
      {
      default: 
        return;
      case 1: 
        localao.Ze.cancel();
      }
      localao.Zf = 3;
      localao.Ze.setFloatValues(new float[] { ((Float)localao.Ze.getAnimatedValue()).floatValue(), 0.0F });
      localao.Ze.setDuration(500L);
      localao.Ze.start();
    }
  };
  private final RecyclerView.n Zh = new RecyclerView.n()
  {
    public final void onScrolled(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      ao localao = ao.this;
      paramAnonymousInt1 = paramAnonymousRecyclerView.computeHorizontalScrollOffset();
      paramAnonymousInt2 = paramAnonymousRecyclerView.computeVerticalScrollOffset();
      int i = localao.YZ.computeVerticalScrollRange();
      int j = localao.YY;
      boolean bool;
      int k;
      int m;
      if ((i - j > 0) && (localao.YY >= localao.YI))
      {
        bool = true;
        localao.Za = bool;
        k = localao.YZ.computeHorizontalScrollRange();
        m = localao.YX;
        if ((k - m <= 0) || (localao.YX < localao.YI)) {
          break label149;
        }
        bool = true;
        label105:
        localao.Zb = bool;
        if ((localao.Za) || (localao.Zb)) {
          break label155;
        }
        if (localao.mState != 0) {
          localao.setState(0);
        }
      }
      label149:
      label155:
      do
      {
        return;
        bool = false;
        break;
        bool = false;
        break label105;
        if (localao.Za)
        {
          localao.YS = ((int)((paramAnonymousInt2 + j / 2.0F) * j / i));
          localao.YR = Math.min(j, j * j / i);
        }
        if (localao.Zb)
        {
          localao.YV = ((int)((paramAnonymousInt1 + m / 2.0F) * m / k));
          localao.YU = Math.min(m, m * m / k);
        }
      } while ((localao.mState != 0) && (localao.mState != 1));
      localao.setState(1);
    }
  };
  private final int fy;
  int mState = 0;
  
  ao(RecyclerView paramRecyclerView, StateListDrawable paramStateListDrawable1, Drawable paramDrawable1, StateListDrawable paramStateListDrawable2, Drawable paramDrawable2, int paramInt1, int paramInt2, int paramInt3)
  {
    this.YJ = paramStateListDrawable1;
    this.YK = paramDrawable1;
    this.YN = paramStateListDrawable2;
    this.YO = paramDrawable2;
    this.YL = Math.max(paramInt1, paramStateListDrawable1.getIntrinsicWidth());
    this.YM = Math.max(paramInt1, paramDrawable1.getIntrinsicWidth());
    this.YP = Math.max(paramInt1, paramStateListDrawable2.getIntrinsicWidth());
    this.YQ = Math.max(paramInt1, paramDrawable2.getIntrinsicWidth());
    this.YI = paramInt2;
    this.fy = paramInt3;
    this.YJ.setAlpha(255);
    this.YK.setAlpha(255);
    this.Ze.addListener(new a((byte)0));
    this.Ze.addUpdateListener(new b((byte)0));
    if (this.YZ != paramRecyclerView)
    {
      if (this.YZ != null)
      {
        this.YZ.b(this);
        this.YZ.b(this);
        this.YZ.b(this.Zh);
        gG();
      }
      this.YZ = paramRecyclerView;
      if (this.YZ != null)
      {
        this.YZ.a(this);
        this.YZ.a(this);
        this.YZ.a(this.Zh);
      }
    }
  }
  
  private static int a(float paramFloat1, float paramFloat2, int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramArrayOfInt[1] - paramArrayOfInt[0];
    if (i == 0) {}
    do
    {
      return 0;
      paramFloat1 = (paramFloat2 - paramFloat1) / i;
      paramInt1 -= paramInt3;
      paramInt3 = (int)(paramFloat1 * paramInt1);
      paramInt2 += paramInt3;
    } while ((paramInt2 >= paramInt1) || (paramInt2 < 0));
    return paramInt3;
  }
  
  private void bo(int paramInt)
  {
    gG();
    this.YZ.postDelayed(this.Zg, paramInt);
  }
  
  private boolean gF()
  {
    return r.K(this.YZ) == 1;
  }
  
  private void gG()
  {
    this.YZ.removeCallbacks(this.Zg);
  }
  
  private boolean h(float paramFloat1, float paramFloat2)
  {
    if (gF())
    {
      if (paramFloat1 > this.YL / 2) {}
    }
    else {
      while (paramFloat1 >= this.YX - this.YL)
      {
        if ((paramFloat2 < this.YS - this.YR / 2) || (paramFloat2 > this.YS + this.YR / 2)) {
          break;
        }
        return true;
      }
    }
    return false;
  }
  
  private boolean i(float paramFloat1, float paramFloat2)
  {
    return (paramFloat2 >= this.YY - this.YP) && (paramFloat1 >= this.YV - this.YU / 2) && (paramFloat1 <= this.YV + this.YU / 2);
  }
  
  private void show()
  {
    switch (this.Zf)
    {
    case 1: 
    case 2: 
    default: 
      return;
    case 3: 
      this.Ze.cancel();
    }
    this.Zf = 1;
    this.Ze.setFloatValues(new float[] { ((Float)this.Ze.getAnimatedValue()).floatValue(), 1.0F });
    this.Ze.setDuration(500L);
    this.Ze.setStartDelay(0L);
    this.Ze.start();
  }
  
  public final void Q(boolean paramBoolean) {}
  
  public final boolean e(MotionEvent paramMotionEvent)
  {
    if (this.mState == 1)
    {
      bool1 = h(paramMotionEvent.getX(), paramMotionEvent.getY());
      bool2 = i(paramMotionEvent.getX(), paramMotionEvent.getY());
      if ((paramMotionEvent.getAction() == 0) && ((bool1) || (bool2))) {
        if (bool2)
        {
          this.KI = 1;
          this.YW = ((int)paramMotionEvent.getX());
          setState(2);
        }
      }
    }
    while (this.mState == 2)
    {
      for (;;)
      {
        boolean bool1;
        boolean bool2;
        return true;
        if (bool1)
        {
          this.KI = 2;
          this.YT = ((int)paramMotionEvent.getY());
        }
      }
      return false;
    }
    return false;
  }
  
  public final void f(MotionEvent paramMotionEvent)
  {
    if (this.mState == 0) {}
    float f;
    do
    {
      do
      {
        do
        {
          boolean bool1;
          boolean bool2;
          do
          {
            return;
            if (paramMotionEvent.getAction() != 0) {
              break;
            }
            bool1 = h(paramMotionEvent.getX(), paramMotionEvent.getY());
            bool2 = i(paramMotionEvent.getX(), paramMotionEvent.getY());
          } while ((!bool1) && (!bool2));
          if (bool2)
          {
            this.KI = 1;
            this.YW = ((int)paramMotionEvent.getX());
          }
          for (;;)
          {
            setState(2);
            return;
            if (bool1)
            {
              this.KI = 2;
              this.YT = ((int)paramMotionEvent.getY());
            }
          }
          if ((paramMotionEvent.getAction() == 1) && (this.mState == 2))
          {
            this.YT = 0.0F;
            this.YW = 0.0F;
            setState(1);
            this.KI = 0;
            return;
          }
        } while ((paramMotionEvent.getAction() != 2) || (this.mState != 2));
        show();
        if (this.KI == 1)
        {
          f = paramMotionEvent.getX();
          this.Zd[0] = this.fy;
          this.Zd[1] = (this.YX - this.fy);
          int[] arrayOfInt = this.Zd;
          f = Math.max(arrayOfInt[0], Math.min(arrayOfInt[1], f));
          if (Math.abs(this.YV - f) >= 2.0F)
          {
            i = a(this.YW, f, arrayOfInt, this.YZ.computeHorizontalScrollRange(), this.YZ.computeHorizontalScrollOffset(), this.YX);
            if (i != 0) {
              this.YZ.scrollBy(i, 0);
            }
            this.YW = f;
          }
        }
      } while (this.KI != 2);
      f = paramMotionEvent.getY();
      this.Zc[0] = this.fy;
      this.Zc[1] = (this.YY - this.fy);
      paramMotionEvent = this.Zc;
      f = Math.max(paramMotionEvent[0], Math.min(paramMotionEvent[1], f));
    } while (Math.abs(this.YS - f) < 2.0F);
    int i = a(this.YT, f, paramMotionEvent, this.YZ.computeVerticalScrollRange(), this.YZ.computeVerticalScrollOffset(), this.YY);
    if (i != 0) {
      this.YZ.scrollBy(0, i);
    }
    this.YT = f;
  }
  
  public final void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.u paramu)
  {
    if ((this.YX != this.YZ.getWidth()) || (this.YY != this.YZ.getHeight()))
    {
      this.YX = this.YZ.getWidth();
      this.YY = this.YZ.getHeight();
      setState(0);
    }
    for (;;)
    {
      return;
      if (this.Zf != 0)
      {
        int i;
        int j;
        if (this.Za)
        {
          i = this.YX - this.YL;
          j = this.YS - this.YR / 2;
          this.YJ.setBounds(0, 0, this.YL, this.YR);
          this.YK.setBounds(0, 0, this.YM, this.YY);
          if (!gF()) {
            break label301;
          }
          this.YK.draw(paramCanvas);
          paramCanvas.translate(this.YL, j);
          paramCanvas.scale(-1.0F, 1.0F);
          this.YJ.draw(paramCanvas);
          paramCanvas.scale(1.0F, 1.0F);
          paramCanvas.translate(-this.YL, -j);
        }
        while (this.Zb)
        {
          i = this.YY - this.YP;
          j = this.YV - this.YU / 2;
          this.YN.setBounds(0, 0, this.YU, this.YP);
          this.YO.setBounds(0, 0, this.YX, this.YQ);
          paramCanvas.translate(0.0F, i);
          this.YO.draw(paramCanvas);
          paramCanvas.translate(j, 0.0F);
          this.YN.draw(paramCanvas);
          paramCanvas.translate(-j, -i);
          return;
          label301:
          paramCanvas.translate(i, 0.0F);
          this.YK.draw(paramCanvas);
          paramCanvas.translate(0.0F, j);
          this.YJ.draw(paramCanvas);
          paramCanvas.translate(-i, -j);
        }
      }
    }
  }
  
  final void setState(int paramInt)
  {
    if ((paramInt == 2) && (this.mState != 2))
    {
      this.YJ.setState(PRESSED_STATE_SET);
      gG();
    }
    if (paramInt == 0)
    {
      this.YZ.invalidate();
      if ((this.mState != 2) || (paramInt == 2)) {
        break label83;
      }
      this.YJ.setState(EMPTY_STATE_SET);
      bo(1200);
    }
    for (;;)
    {
      this.mState = paramInt;
      return;
      show();
      break;
      label83:
      if (paramInt == 1) {
        bo(1500);
      }
    }
  }
  
  private final class a
    extends AnimatorListenerAdapter
  {
    private boolean tB = false;
    
    private a() {}
    
    public final void onAnimationCancel(Animator paramAnimator)
    {
      this.tB = true;
    }
    
    public final void onAnimationEnd(Animator paramAnimator)
    {
      if (this.tB)
      {
        this.tB = false;
        return;
      }
      if (((Float)ao.a(ao.this).getAnimatedValue()).floatValue() == 0.0F)
      {
        ao.a(ao.this, 0);
        ao.b(ao.this);
        return;
      }
      ao.a(ao.this, 2);
      ao.c(ao.this);
    }
  }
  
  private final class b
    implements ValueAnimator.AnimatorUpdateListener
  {
    private b() {}
    
    public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      int i = (int)(((Float)paramValueAnimator.getAnimatedValue()).floatValue() * 255.0F);
      ao.d(ao.this).setAlpha(i);
      ao.e(ao.this).setAlpha(i);
      ao.c(ao.this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */