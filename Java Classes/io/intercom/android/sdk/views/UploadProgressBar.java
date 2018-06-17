package io.intercom.android.sdk.views;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class UploadProgressBar
  extends View
{
  private static final int MAX = 100;
  private static final int START_ANGLE = -90;
  private static final int STROKE_WIDTH = 8;
  private final Paint backgroundPaint = new Paint(1);
  private final Paint foregroundPaint;
  private int progress = 0;
  private final RectF rectF = new RectF();
  private final Twig twig = LumberMill.getLogger();
  
  public UploadProgressBar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public UploadProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.backgroundPaint.setColor(-2013265920);
    this.backgroundPaint.setStyle(Paint.Style.FILL_AND_STROKE);
    this.backgroundPaint.setStrokeWidth(8.0F);
    this.foregroundPaint = new Paint(1);
    this.foregroundPaint.setColor(-1);
    this.foregroundPaint.setStyle(Paint.Style.STROKE);
    this.foregroundPaint.setStrokeWidth(8.0F);
  }
  
  private ObjectAnimator getObjectAnimator()
  {
    this.twig.internal("animation", "starting upload end animation");
    return ObjectAnimator.ofInt(this, "progress", new int[] { 90, 99 }).setDuration(1000L);
  }
  
  private void showBar()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this, "alpha", new float[] { 0.0F, 1.0F }).setDuration(300L);
    localObjectAnimator.setInterpolator(new DecelerateInterpolator());
    localObjectAnimator.start();
  }
  
  public void hideBar()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this, "alpha", new float[] { 1.0F, 0.0F }).setDuration(300L);
    localObjectAnimator.setInterpolator(new DecelerateInterpolator());
    localObjectAnimator.start();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    float f = this.progress * 360 / 100;
    paramCanvas.drawOval(this.rectF, this.backgroundPaint);
    paramCanvas.drawArc(this.rectF, -90.0F, f, false, this.foregroundPaint);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = getDefaultSize(getSuggestedMinimumHeight(), paramInt2);
    paramInt1 = Math.min(getDefaultSize(getSuggestedMinimumWidth(), paramInt1), paramInt2);
    setMeasuredDimension(paramInt1, paramInt1);
    this.rectF.set(4.0F, 4.0F, paramInt1 - 4, paramInt1 - 4);
  }
  
  public void setProgress(int paramInt)
  {
    this.twig.internal("animation", "received progress of  " + paramInt);
    if (paramInt > this.progress)
    {
      this.progress = paramInt;
      invalidate();
    }
  }
  
  public void smoothEndAnimation()
  {
    ObjectAnimator localObjectAnimator = getObjectAnimator();
    localObjectAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        UploadProgressBar.this.hideBar();
      }
    });
    localObjectAnimator.start();
  }
  
  public void smoothEndAnimation(Animator.AnimatorListener paramAnimatorListener)
  {
    ObjectAnimator localObjectAnimator = getObjectAnimator();
    localObjectAnimator.addListener(paramAnimatorListener);
    localObjectAnimator.start();
  }
  
  public void smoothStartAnimation()
  {
    if (getAlpha() < 1.0F) {
      showBar();
    }
    this.twig.internal("animation", "starting upload start animation");
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt(this, "progress", new int[] { 0, 10 });
    localObjectAnimator.setDuration(1000L);
    localObjectAnimator.start();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/UploadProgressBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */