package android.support.v4.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.v4.g.l;
import android.support.v4.view.b.b;
import android.util.DisplayMetrics;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

public final class d
  extends Drawable
  implements Animatable
{
  private static final Interpolator Is = new b();
  private static final int[] It = { -16777216 };
  private static final Interpolator iA = new LinearInterpolator();
  final a Iu;
  private float Iv;
  private boolean Iw;
  private float ke;
  private Resources mResources;
  private Animator wV;
  
  public d(final Context paramContext)
  {
    this.mResources = ((Context)l.E(paramContext)).getResources();
    this.Iu = new a();
    this.Iu.setColors(It);
    this.Iu.setStrokeWidth(2.5F);
    invalidateSelf();
    paramContext = this.Iu;
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        d.b(f, paramContext);
        d.a(d.this, f, paramContext, false);
        d.this.invalidateSelf();
      }
    });
    localValueAnimator.setRepeatCount(-1);
    localValueAnimator.setRepeatMode(1);
    localValueAnimator.setInterpolator(iA);
    localValueAnimator.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator)
      {
        d.a(d.this, 1.0F, paramContext, true);
        paramContext.ec();
        d.a locala = paramContext;
        locala.aF(locala.ea());
        if (d.a(d.this))
        {
          d.b(d.this);
          paramAnonymousAnimator.cancel();
          paramAnonymousAnimator.setDuration(1332L);
          paramAnonymousAnimator.start();
          paramContext.y(false);
          return;
        }
        d.a(d.this, d.c(d.this) + 1.0F);
      }
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        d.a(d.this, 0.0F);
      }
    });
    this.wV = localValueAnimator;
  }
  
  private static void a(float paramFloat, a parama)
  {
    if (paramFloat > 0.75F)
    {
      paramFloat = (paramFloat - 0.75F) / 0.25F;
      int n = parama.eb();
      int i = parama.IF[parama.ea()];
      int j = n >> 24 & 0xFF;
      int k = n >> 16 & 0xFF;
      int m = n >> 8 & 0xFF;
      n &= 0xFF;
      int i1 = (int)(((i >> 24 & 0xFF) - j) * paramFloat);
      int i2 = (int)(((i >> 16 & 0xFF) - k) * paramFloat);
      int i3 = (int)(((i >> 8 & 0xFF) - m) * paramFloat);
      parama.BX = ((int)(paramFloat * ((i & 0xFF) - n)) + n | j + i1 << 24 | k + i2 << 16 | i3 + m << 8);
      return;
    }
    parama.BX = parama.eb();
  }
  
  private void b(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    a locala = this.Iu;
    float f = this.mResources.getDisplayMetrics().density;
    locala.setStrokeWidth(paramFloat2 * f);
    locala.IO = (paramFloat1 * f);
    locala.aF(0);
    locala.IP = ((int)(paramFloat3 * f));
    locala.IQ = ((int)(f * paramFloat4));
  }
  
  public final void aE(int paramInt)
  {
    if (paramInt == 0) {
      b(11.0F, 3.0F, 12.0F, 6.0F);
    }
    for (;;)
    {
      invalidateSelf();
      return;
      b(7.5F, 2.5F, 10.0F, 5.0F);
    }
  }
  
  public final void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    paramCanvas.save();
    paramCanvas.rotate(this.ke, localRect.exactCenterX(), localRect.exactCenterY());
    a locala = this.Iu;
    RectF localRectF = locala.Iz;
    float f1 = locala.IO + locala.ra / 2.0F;
    if (locala.IO <= 0.0F) {
      f1 = Math.min(localRect.width(), localRect.height()) / 2.0F - Math.max(locala.IP * locala.IM / 2.0F, locala.ra / 2.0F);
    }
    localRectF.set(localRect.centerX() - f1, localRect.centerY() - f1, localRect.centerX() + f1, f1 + localRect.centerY());
    f1 = (locala.IC + locala.ke) * 360.0F;
    float f2 = (locala.IE + locala.ke) * 360.0F - f1;
    locala.jT.setColor(locala.BX);
    locala.jT.setAlpha(locala.IR);
    float f3 = locala.ra / 2.0F;
    localRectF.inset(f3, f3);
    paramCanvas.drawCircle(localRectF.centerX(), localRectF.centerY(), localRectF.width() / 2.0F, locala.IB);
    localRectF.inset(-f3, -f3);
    paramCanvas.drawArc(localRectF, f1, f2, false, locala.jT);
    if (locala.IK)
    {
      if (locala.IL != null) {
        break label522;
      }
      locala.IL = new Path();
      locala.IL.setFillType(Path.FillType.EVEN_ODD);
    }
    for (;;)
    {
      f3 = Math.min(localRectF.width(), localRectF.height()) / 2.0F;
      float f4 = locala.IP * locala.IM / 2.0F;
      locala.IL.moveTo(0.0F, 0.0F);
      locala.IL.lineTo(locala.IP * locala.IM, 0.0F);
      locala.IL.lineTo(locala.IP * locala.IM / 2.0F, locala.IQ * locala.IM);
      locala.IL.offset(f3 + localRectF.centerX() - f4, localRectF.centerY() + locala.ra / 2.0F);
      locala.IL.close();
      locala.IA.setColor(locala.BX);
      locala.IA.setAlpha(locala.IR);
      paramCanvas.save();
      paramCanvas.rotate(f1 + f2, localRectF.centerX(), localRectF.centerY());
      paramCanvas.drawPath(locala.IL, locala.IA);
      paramCanvas.restore();
      paramCanvas.restore();
      return;
      label522:
      locala.IL.reset();
    }
  }
  
  public final int getAlpha()
  {
    return this.Iu.IR;
  }
  
  public final int getOpacity()
  {
    return -3;
  }
  
  public final boolean isRunning()
  {
    return this.wV.isRunning();
  }
  
  public final void m(float paramFloat)
  {
    a locala = this.Iu;
    if (paramFloat != locala.IM) {
      locala.IM = paramFloat;
    }
    invalidateSelf();
  }
  
  public final void n(float paramFloat)
  {
    this.Iu.IC = 0.0F;
    this.Iu.IE = paramFloat;
    invalidateSelf();
  }
  
  public final void setAlpha(int paramInt)
  {
    this.Iu.IR = paramInt;
    invalidateSelf();
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    this.Iu.jT.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  public final void start()
  {
    this.wV.cancel();
    this.Iu.ec();
    if (this.Iu.IE != this.Iu.IC)
    {
      this.Iw = true;
      this.wV.setDuration(666L);
      this.wV.start();
      return;
    }
    this.Iu.aF(0);
    this.Iu.ed();
    this.wV.setDuration(1332L);
    this.wV.start();
  }
  
  public final void stop()
  {
    this.wV.cancel();
    this.ke = 0.0F;
    this.Iu.y(false);
    this.Iu.aF(0);
    this.Iu.ed();
    invalidateSelf();
  }
  
  public final void x(boolean paramBoolean)
  {
    this.Iu.y(paramBoolean);
    invalidateSelf();
  }
  
  private static final class a
  {
    int BX;
    final Paint IA = new Paint();
    final Paint IB = new Paint();
    float IC = 0.0F;
    float IE = 0.0F;
    int[] IF;
    int IG;
    float IH;
    float II;
    float IJ;
    boolean IK;
    Path IL;
    float IM = 1.0F;
    float IO;
    int IP;
    int IQ;
    int IR = 255;
    final RectF Iz = new RectF();
    final Paint jT = new Paint();
    float ke = 0.0F;
    float ra = 5.0F;
    
    a()
    {
      this.jT.setStrokeCap(Paint.Cap.SQUARE);
      this.jT.setAntiAlias(true);
      this.jT.setStyle(Paint.Style.STROKE);
      this.IA.setStyle(Paint.Style.FILL);
      this.IA.setAntiAlias(true);
      this.IB.setColor(0);
    }
    
    final void aF(int paramInt)
    {
      this.IG = paramInt;
      this.BX = this.IF[this.IG];
    }
    
    final int ea()
    {
      return (this.IG + 1) % this.IF.length;
    }
    
    final int eb()
    {
      return this.IF[this.IG];
    }
    
    final void ec()
    {
      this.IH = this.IC;
      this.II = this.IE;
      this.IJ = this.ke;
    }
    
    final void ed()
    {
      this.IH = 0.0F;
      this.II = 0.0F;
      this.IJ = 0.0F;
      this.IC = 0.0F;
      this.IE = 0.0F;
      this.ke = 0.0F;
    }
    
    final void setColors(int[] paramArrayOfInt)
    {
      this.IF = paramArrayOfInt;
      aF(0);
    }
    
    final void setStrokeWidth(float paramFloat)
    {
      this.ra = paramFloat;
      this.jT.setStrokeWidth(paramFloat);
    }
    
    final void y(boolean paramBoolean)
    {
      if (this.IK != paramBoolean) {
        this.IK = paramBoolean;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */