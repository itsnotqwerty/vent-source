package com.theartofdev.edmodo.cropper;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Transformation;
import android.widget.ImageView;

final class e
  extends Animation
  implements Animation.AnimationListener
{
  final CropOverlayView bPU;
  final float[] bPV = new float[8];
  final float[] bPW = new float[8];
  final RectF bPX = new RectF();
  final RectF bPY = new RectF();
  final float[] bPZ = new float[9];
  final float[] bQa = new float[9];
  private final RectF bQb = new RectF();
  private final float[] bQc = new float[8];
  private final float[] bQd = new float[9];
  private final ImageView boV;
  
  public e(ImageView paramImageView, CropOverlayView paramCropOverlayView)
  {
    this.boV = paramImageView;
    this.bPU = paramCropOverlayView;
    setDuration(300L);
    setFillAfter(true);
    setInterpolator(new AccelerateDecelerateInterpolator());
    setAnimationListener(this);
  }
  
  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    int j = 0;
    this.bQb.left = (this.bPX.left + (this.bPY.left - this.bPX.left) * paramFloat);
    this.bQb.top = (this.bPX.top + (this.bPY.top - this.bPX.top) * paramFloat);
    this.bQb.right = (this.bPX.right + (this.bPY.right - this.bPX.right) * paramFloat);
    this.bQb.bottom = (this.bPX.bottom + (this.bPY.bottom - this.bPX.bottom) * paramFloat);
    this.bPU.setCropWindowRect(this.bQb);
    int i = 0;
    while (i < this.bQc.length)
    {
      this.bQc[i] = (this.bPV[i] + (this.bPW[i] - this.bPV[i]) * paramFloat);
      i += 1;
    }
    this.bPU.a(this.bQc, this.boV.getWidth(), this.boV.getHeight());
    i = j;
    while (i < this.bQd.length)
    {
      this.bQd[i] = (this.bPZ[i] + (this.bQa[i] - this.bPZ[i]) * paramFloat);
      i += 1;
    }
    paramTransformation = this.boV.getImageMatrix();
    paramTransformation.setValues(this.bQd);
    this.boV.setImageMatrix(paramTransformation);
    this.boV.invalidate();
    this.bPU.invalidate();
  }
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    this.boV.clearAnimation();
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */