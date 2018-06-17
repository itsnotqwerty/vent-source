package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.view.r;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public abstract class a
  implements View.OnTouchListener
{
  private static final int HZ = ;
  private Runnable AC;
  final a HJ = new a();
  private final Interpolator HK = new AccelerateInterpolator();
  final View HL;
  private float[] HM = { 0.0F, 0.0F };
  private float[] HN = { Float.MAX_VALUE, Float.MAX_VALUE };
  private int HO;
  private int HP;
  private float[] HQ = { 0.0F, 0.0F };
  private float[] HR = { 0.0F, 0.0F };
  private float[] HS = { Float.MAX_VALUE, Float.MAX_VALUE };
  private boolean HT;
  boolean HU;
  boolean HV;
  boolean HW;
  private boolean HX;
  private boolean HY;
  
  public a(View paramView)
  {
    this.HL = paramView;
    paramView = Resources.getSystem().getDisplayMetrics();
    int i = (int)(1575.0F * paramView.density + 0.5F);
    int j = (int)(paramView.density * 315.0F + 0.5F);
    float f = i;
    this.HS[0] = (f / 1000.0F);
    this.HS[1] = (f / 1000.0F);
    f = j;
    this.HR[0] = (f / 1000.0F);
    this.HR[1] = (f / 1000.0F);
    this.HO = 1;
    this.HN[0] = Float.MAX_VALUE;
    this.HN[1] = Float.MAX_VALUE;
    this.HM[0] = 0.2F;
    this.HM[1] = 0.2F;
    this.HQ[0] = 0.001F;
    this.HQ[1] = 0.001F;
    this.HP = HZ;
    this.HJ.Ia = 500;
    this.HJ.Ib = 500;
  }
  
  private float a(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = c(this.HM[paramInt] * paramFloat2, 0.0F, this.HN[paramInt]);
    float f2 = f(paramFloat1, f1);
    paramFloat1 = f(paramFloat2 - paramFloat1, f1) - f2;
    if (paramFloat1 < 0.0F) {
      paramFloat1 = -this.HK.getInterpolation(-paramFloat1);
    }
    for (paramFloat1 = c(paramFloat1, -1.0F, 1.0F);; paramFloat1 = 0.0F)
    {
      if (paramFloat1 != 0.0F) {
        break label102;
      }
      return 0.0F;
      if (paramFloat1 > 0.0F)
      {
        paramFloat1 = this.HK.getInterpolation(paramFloat1);
        break;
      }
    }
    label102:
    f2 = this.HQ[paramInt];
    paramFloat2 = this.HR[paramInt];
    f1 = this.HS[paramInt];
    paramFloat3 = f2 * paramFloat3;
    if (paramFloat1 > 0.0F) {
      return c(paramFloat1 * paramFloat3, paramFloat2, f1);
    }
    return -c(-paramFloat1 * paramFloat3, paramFloat2, f1);
  }
  
  static float c(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 > paramFloat3) {
      return paramFloat3;
    }
    if (paramFloat1 < paramFloat2) {
      return paramFloat2;
    }
    return paramFloat1;
  }
  
  private void dY()
  {
    if (this.HU)
    {
      this.HW = false;
      return;
    }
    a locala = this.HJ;
    long l = AnimationUtils.currentAnimationTimeMillis();
    int i = (int)(l - locala.Ie);
    int j = locala.Ib;
    if (i > j) {
      i = j;
    }
    for (;;)
    {
      locala.Ik = i;
      locala.Ij = locala.f(l);
      locala.Ii = l;
      return;
      if (i < 0) {
        i = 0;
      }
    }
  }
  
  private float f(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 == 0.0F) {}
    do
    {
      do
      {
        do
        {
          return 0.0F;
          switch (this.HO)
          {
          default: 
            return 0.0F;
          }
        } while (paramFloat1 >= paramFloat2);
        if (paramFloat1 >= 0.0F) {
          return 1.0F - paramFloat1 / paramFloat2;
        }
      } while ((!this.HW) || (this.HO != 1));
      return 1.0F;
    } while (paramFloat1 >= 0.0F);
    return paramFloat1 / -paramFloat2;
  }
  
  public abstract void aB(int paramInt);
  
  public abstract boolean aC(int paramInt);
  
  final boolean bj()
  {
    a locala = this.HJ;
    int i = (int)(locala.Id / Math.abs(locala.Id));
    int j = (int)(locala.Ic / Math.abs(locala.Ic));
    if ((i == 0) || (!aC(i)))
    {
      if (j != 0) {}
      return false;
    }
    return true;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!this.HX) {}
    for (;;)
    {
      return false;
      switch (paramMotionEvent.getActionMasked())
      {
      }
      while ((this.HY) && (this.HW))
      {
        return true;
        this.HV = true;
        this.HT = false;
        float f1 = a(0, paramMotionEvent.getX(), paramView.getWidth(), this.HL.getWidth());
        float f2 = a(1, paramMotionEvent.getY(), paramView.getHeight(), this.HL.getHeight());
        paramView = this.HJ;
        paramView.Ic = f1;
        paramView.Id = f2;
        if ((!this.HW) && (bj()))
        {
          if (this.AC == null) {
            this.AC = new b();
          }
          this.HW = true;
          this.HU = true;
          if ((!this.HT) && (this.HP > 0)) {
            r.a(this.HL, this.AC, this.HP);
          }
          for (;;)
          {
            this.HT = true;
            break;
            this.AC.run();
          }
          dY();
        }
      }
    }
  }
  
  public final a w(boolean paramBoolean)
  {
    if ((this.HX) && (!paramBoolean)) {
      dY();
    }
    this.HX = paramBoolean;
    return this;
  }
  
  private static final class a
  {
    int Ia;
    int Ib;
    float Ic;
    float Id;
    long Ie = Long.MIN_VALUE;
    long If = 0L;
    int Ig = 0;
    int Ih = 0;
    long Ii = -1L;
    float Ij;
    int Ik;
    
    final float f(long paramLong)
    {
      if (paramLong < this.Ie) {
        return 0.0F;
      }
      if ((this.Ii < 0L) || (paramLong < this.Ii)) {
        return a.c((float)(paramLong - this.Ie) / this.Ia, 0.0F, 1.0F) * 0.5F;
      }
      long l = this.Ii;
      float f1 = this.Ij;
      float f2 = this.Ij;
      return a.c((float)(paramLong - l) / this.Ik, 0.0F, 1.0F) * f2 + (1.0F - f1);
    }
  }
  
  private final class b
    implements Runnable
  {
    b() {}
    
    public final void run()
    {
      if (!a.this.HW) {
        return;
      }
      if (a.this.HU)
      {
        a.this.HU = false;
        locala = a.this.HJ;
        locala.Ie = AnimationUtils.currentAnimationTimeMillis();
        locala.Ii = -1L;
        locala.If = locala.Ie;
        locala.Ij = 0.5F;
        locala.Ig = 0;
        locala.Ih = 0;
      }
      a.a locala = a.this.HJ;
      if ((locala.Ii > 0L) && (AnimationUtils.currentAnimationTimeMillis() > locala.Ii + locala.Ik)) {}
      for (int i = 1; (i != 0) || (!a.this.bj()); i = 0)
      {
        a.this.HW = false;
        return;
      }
      if (a.this.HV)
      {
        a.this.HV = false;
        a locala1 = a.this;
        l1 = SystemClock.uptimeMillis();
        MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        locala1.HL.onTouchEvent(localMotionEvent);
        localMotionEvent.recycle();
      }
      if (locala.If == 0L) {
        throw new RuntimeException("Cannot compute scroll delta before calling start()");
      }
      long l1 = AnimationUtils.currentAnimationTimeMillis();
      float f = locala.f(l1);
      f = f * 4.0F + -4.0F * f * f;
      long l2 = l1 - locala.If;
      locala.If = l1;
      locala.Ig = ((int)((float)l2 * f * locala.Ic));
      locala.Ih = ((int)((float)l2 * f * locala.Id));
      i = locala.Ih;
      a.this.aB(i);
      r.b(a.this.HL, this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */