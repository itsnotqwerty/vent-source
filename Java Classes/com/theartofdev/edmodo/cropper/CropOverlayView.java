package com.theartofdev.edmodo.cropper;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;
import android.view.View;
import android.view.ViewParent;
import java.util.Arrays;

public class CropOverlayView
  extends View
{
  boolean bPt;
  private int bPu;
  private int bPv;
  private CropImageView.b bSA;
  private final Rect bSB = new Rect();
  private boolean bSC;
  private Integer bSD;
  private ScaleGestureDetector bSf;
  private boolean bSg;
  final g bSh = new g();
  private a bSi;
  private final RectF bSj = new RectF();
  private Paint bSk;
  private Paint bSl;
  private Paint bSm;
  private Paint bSn;
  private final float[] bSo = new float[8];
  private final RectF bSp = new RectF();
  private int bSq;
  private int bSr;
  private float bSs;
  private float bSt;
  private float bSu;
  private float bSv;
  private float bSw;
  private h bSx;
  private float bSy = this.bPu / this.bPv;
  private CropImageView.c bSz;
  private Path rx = new Path();
  
  public CropOverlayView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CropOverlayView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void AP()
  {
    float f1 = Math.max(c.c(this.bSo), 0.0F);
    float f2 = Math.max(c.d(this.bSo), 0.0F);
    float f3 = Math.min(c.e(this.bSo), getWidth());
    float f4 = Math.min(c.f(this.bSo), getHeight());
    if ((f3 <= f1) || (f4 <= f2)) {
      return;
    }
    RectF localRectF = new RectF();
    this.bSC = true;
    float f5 = this.bSu * (f3 - f1);
    float f6 = this.bSu * (f4 - f2);
    if ((this.bSB.width() > 0) && (this.bSB.height() > 0))
    {
      localRectF.left = (this.bSB.left / this.bSh.bSP + f1);
      localRectF.top = (this.bSB.top / this.bSh.bSQ + f2);
      localRectF.right = (localRectF.left + this.bSB.width() / this.bSh.bSP);
      localRectF.bottom = (localRectF.top + this.bSB.height() / this.bSh.bSQ);
      localRectF.left = Math.max(f1, localRectF.left);
      localRectF.top = Math.max(f2, localRectF.top);
      localRectF.right = Math.min(f3, localRectF.right);
      localRectF.bottom = Math.min(f4, localRectF.bottom);
    }
    for (;;)
    {
      a(localRectF);
      this.bSh.c(localRectF);
      return;
      if ((this.bPt) && (f3 > f1) && (f4 > f2))
      {
        if ((f3 - f1) / (f4 - f2) > this.bSy)
        {
          localRectF.top = (f2 + f6);
          localRectF.bottom = (f4 - f6);
          f1 = getWidth() / 2.0F;
          this.bSy = (this.bPu / this.bPv);
          f2 = Math.max(this.bSh.AS(), localRectF.height() * this.bSy) / 2.0F;
          localRectF.left = (f1 - f2);
          localRectF.right = (f1 + f2);
        }
        else
        {
          localRectF.left = (f1 + f5);
          localRectF.right = (f3 - f5);
          f1 = getHeight() / 2.0F;
          f2 = Math.max(this.bSh.AT(), localRectF.width() / this.bSy) / 2.0F;
          localRectF.top = (f1 - f2);
          localRectF.bottom = (f1 + f2);
        }
      }
      else
      {
        localRectF.left = (f1 + f5);
        localRectF.top = (f2 + f6);
        localRectF.right = (f3 - f5);
        localRectF.bottom = (f4 - f6);
      }
    }
  }
  
  private boolean AQ()
  {
    return (this.bSo[0] != this.bSo[6]) && (this.bSo[1] != this.bSo[7]);
  }
  
  private static Paint a(float paramFloat, int paramInt)
  {
    if (paramFloat > 0.0F)
    {
      Paint localPaint = new Paint();
      localPaint.setColor(paramInt);
      localPaint.setStrokeWidth(paramFloat);
      localPaint.setStyle(Paint.Style.STROKE);
      localPaint.setAntiAlias(true);
      return localPaint;
    }
    return null;
  }
  
  private void a(RectF paramRectF)
  {
    if (paramRectF.width() < this.bSh.AS())
    {
      f1 = (this.bSh.AS() - paramRectF.width()) / 2.0F;
      paramRectF.left -= f1;
      paramRectF.right = (f1 + paramRectF.right);
    }
    if (paramRectF.height() < this.bSh.AT())
    {
      f1 = (this.bSh.AT() - paramRectF.height()) / 2.0F;
      paramRectF.top -= f1;
      paramRectF.bottom = (f1 + paramRectF.bottom);
    }
    if (paramRectF.width() > this.bSh.AU())
    {
      f1 = (paramRectF.width() - this.bSh.AU()) / 2.0F;
      paramRectF.left += f1;
      paramRectF.right -= f1;
    }
    if (paramRectF.height() > this.bSh.AV())
    {
      f1 = (paramRectF.height() - this.bSh.AV()) / 2.0F;
      paramRectF.top += f1;
      paramRectF.bottom -= f1;
    }
    b(paramRectF);
    if ((this.bSp.width() > 0.0F) && (this.bSp.height() > 0.0F))
    {
      f1 = Math.max(this.bSp.left, 0.0F);
      float f2 = Math.max(this.bSp.top, 0.0F);
      float f3 = Math.min(this.bSp.right, getWidth());
      float f4 = Math.min(this.bSp.bottom, getHeight());
      if (paramRectF.left < f1) {
        paramRectF.left = f1;
      }
      if (paramRectF.top < f2) {
        paramRectF.top = f2;
      }
      if (paramRectF.right > f3) {
        paramRectF.right = f3;
      }
      if (paramRectF.bottom > f4) {
        paramRectF.bottom = f4;
      }
    }
    if ((this.bPt) && (Math.abs(paramRectF.width() - paramRectF.height() * this.bSy) > 0.1D))
    {
      if (paramRectF.width() > paramRectF.height() * this.bSy)
      {
        f1 = Math.abs(paramRectF.height() * this.bSy - paramRectF.width()) / 2.0F;
        paramRectF.left += f1;
        paramRectF.right -= f1;
      }
    }
    else {
      return;
    }
    float f1 = Math.abs(paramRectF.width() / this.bSy - paramRectF.height()) / 2.0F;
    paramRectF.top += f1;
    paramRectF.bottom -= f1;
  }
  
  private void aP(boolean paramBoolean)
  {
    try
    {
      if (this.bSi != null) {
        this.bSi.aN(paramBoolean);
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("AIC", "Exception in crop window changed", localException);
    }
  }
  
  private void b(Canvas paramCanvas)
  {
    if (this.bSm != null) {
      if (this.bSk == null) {
        break label318;
      }
    }
    RectF localRectF;
    float f4;
    label318:
    for (float f1 = this.bSk.getStrokeWidth();; f1 = 0.0F)
    {
      localRectF = this.bSh.AR();
      localRectF.inset(f1, f1);
      f4 = localRectF.width() / 3.0F;
      f2 = localRectF.height() / 3.0F;
      if (this.bSA != CropImageView.b.bRO) {
        break;
      }
      f3 = localRectF.width() / 2.0F - f1;
      f1 = localRectF.height() / 2.0F - f1;
      float f5 = localRectF.left + f4;
      float f6 = localRectF.right - f4;
      double d = f1;
      f4 = (float)(Math.sin(Math.acos((f3 - f4) / f3)) * d);
      paramCanvas.drawLine(f5, localRectF.top + f1 - f4, f5, localRectF.bottom - f1 + f4, this.bSm);
      paramCanvas.drawLine(f6, localRectF.top + f1 - f4, f6, localRectF.bottom - f1 + f4, this.bSm);
      f4 = localRectF.top + f2;
      f5 = localRectF.bottom - f2;
      f1 = (float)(f3 * Math.cos(Math.asin((f1 - f2) / f1)));
      paramCanvas.drawLine(localRectF.left + f3 - f1, f4, localRectF.right - f3 + f1, f4, this.bSm);
      paramCanvas.drawLine(localRectF.left + f3 - f1, f5, localRectF.right - f3 + f1, f5, this.bSm);
      return;
    }
    f1 = localRectF.left + f4;
    float f3 = localRectF.right - f4;
    paramCanvas.drawLine(f1, localRectF.top, f1, localRectF.bottom, this.bSm);
    paramCanvas.drawLine(f3, localRectF.top, f3, localRectF.bottom, this.bSm);
    f1 = localRectF.top + f2;
    float f2 = localRectF.bottom - f2;
    paramCanvas.drawLine(localRectF.left, f1, localRectF.right, f1, this.bSm);
    paramCanvas.drawLine(localRectF.left, f2, localRectF.right, f2, this.bSm);
  }
  
  private boolean b(RectF paramRectF)
  {
    float f8 = c.c(this.bSo);
    float f10 = c.d(this.bSo);
    float f7 = c.e(this.bSo);
    float f9 = c.f(this.bSo);
    if (!AQ())
    {
      this.bSp.set(f8, f10, f7, f9);
      return false;
    }
    float f6 = this.bSo[0];
    float f5 = this.bSo[1];
    float f3 = this.bSo[4];
    float f1 = this.bSo[5];
    float f4 = this.bSo[6];
    float f2 = this.bSo[7];
    float f11;
    float f12;
    float f13;
    float f14;
    if (this.bSo[7] < this.bSo[1]) {
      if (this.bSo[1] < this.bSo[3])
      {
        f6 = this.bSo[6];
        f5 = this.bSo[7];
        f3 = this.bSo[2];
        f1 = this.bSo[3];
        f4 = this.bSo[4];
        f2 = this.bSo[5];
        f4 = (f2 - f5) / (f4 - f6);
        f11 = -1.0F / f4;
        f12 = f5 - f4 * f6;
        f6 = f5 - f11 * f6;
        f5 = f1 - f4 * f3;
        f3 = f1 - f11 * f3;
        f13 = (paramRectF.centerY() - paramRectF.top) / (paramRectF.centerX() - paramRectF.left);
        float f15 = -f13;
        f14 = paramRectF.top - paramRectF.left * f13;
        float f16 = paramRectF.top - paramRectF.right * f15;
        if ((f14 - f12) / (f4 - f13) >= paramRectF.right) {
          break label727;
        }
        f1 = (f14 - f12) / (f4 - f13);
        label332:
        f2 = Math.max(f8, f1);
        if ((f14 - f6) / (f11 - f13) >= paramRectF.right) {
          break label733;
        }
        f1 = (f14 - f6) / (f11 - f13);
        label370:
        f2 = Math.max(f2, f1);
        if ((f16 - f3) / (f11 - f15) >= paramRectF.right) {
          break label738;
        }
        f1 = (f16 - f3) / (f11 - f15);
        label407:
        f8 = Math.max(f2, f1);
        if ((f16 - f6) / (f11 - f15) <= paramRectF.left) {
          break label743;
        }
        f1 = (f16 - f6) / (f11 - f15);
        label445:
        f2 = Math.min(f7, f1);
        if ((f16 - f5) / (f4 - f15) <= paramRectF.left) {
          break label749;
        }
        f1 = (f16 - f5) / (f4 - f15);
        label483:
        f2 = Math.min(f2, f1);
        if ((f14 - f5) / (f4 - f13) <= paramRectF.left) {
          break label754;
        }
      }
    }
    label727:
    label733:
    label738:
    label743:
    label749:
    label754:
    for (f1 = (f14 - f5) / (f4 - f13);; f1 = f2)
    {
      f1 = Math.min(f2, f1);
      f2 = Math.max(f10, Math.max(f4 * f8 + f12, f11 * f1 + f6));
      f3 = Math.min(f9, Math.min(f3 + f11 * f8, f4 * f1 + f5));
      this.bSp.left = f8;
      this.bSp.top = f2;
      this.bSp.right = f1;
      this.bSp.bottom = f3;
      return true;
      f6 = this.bSo[4];
      f5 = this.bSo[5];
      f3 = this.bSo[0];
      f1 = this.bSo[1];
      f4 = this.bSo[2];
      f2 = this.bSo[3];
      break;
      if (this.bSo[1] <= this.bSo[3]) {
        break;
      }
      f6 = this.bSo[2];
      f5 = this.bSo[3];
      f3 = this.bSo[6];
      f1 = this.bSo[7];
      f4 = this.bSo[0];
      f2 = this.bSo[1];
      break;
      f1 = f8;
      break label332;
      f1 = f2;
      break label370;
      f1 = f2;
      break label407;
      f1 = f7;
      break label445;
      f1 = f2;
      break label483;
    }
  }
  
  public final void AN()
  {
    RectF localRectF = getCropWindowRect();
    a(localRectF);
    this.bSh.c(localRectF);
  }
  
  public final void AO()
  {
    if (this.bSC)
    {
      setCropWindowRect(c.bPJ);
      AP();
      invalidate();
    }
  }
  
  public final void a(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    if ((paramArrayOfFloat == null) || (!Arrays.equals(this.bSo, paramArrayOfFloat)))
    {
      if (paramArrayOfFloat != null) {
        break label68;
      }
      Arrays.fill(this.bSo, 0.0F);
    }
    for (;;)
    {
      this.bSq = paramInt1;
      this.bSr = paramInt2;
      paramArrayOfFloat = this.bSh.AR();
      if ((paramArrayOfFloat.width() == 0.0F) || (paramArrayOfFloat.height() == 0.0F)) {
        AP();
      }
      return;
      label68:
      System.arraycopy(paramArrayOfFloat, 0, this.bSo, 0, paramArrayOfFloat.length);
    }
  }
  
  public final boolean aO(boolean paramBoolean)
  {
    boolean bool = false;
    if (this.bSg != paramBoolean)
    {
      this.bSg = paramBoolean;
      if ((this.bSg) && (this.bSf == null)) {
        this.bSf = new ScaleGestureDetector(getContext(), new b((byte)0));
      }
      bool = true;
    }
    return bool;
  }
  
  public int getAspectRatioX()
  {
    return this.bPu;
  }
  
  public int getAspectRatioY()
  {
    return this.bPv;
  }
  
  public CropImageView.b getCropShape()
  {
    return this.bSA;
  }
  
  public RectF getCropWindowRect()
  {
    return this.bSh.AR();
  }
  
  public CropImageView.c getGuidelines()
  {
    return this.bSz;
  }
  
  public Rect getInitialCropWindowRect()
  {
    return this.bSB;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    float f2 = 0.0F;
    super.onDraw(paramCanvas);
    RectF localRectF = this.bSh.AR();
    float f1 = Math.max(c.c(this.bSo), 0.0F);
    float f3 = Math.max(c.d(this.bSo), 0.0F);
    float f4 = Math.min(c.e(this.bSo), getWidth());
    float f5 = Math.min(c.f(this.bSo), getHeight());
    if (this.bSA == CropImageView.b.bRN) {
      if ((!AQ()) || (Build.VERSION.SDK_INT <= 17))
      {
        paramCanvas.drawRect(f1, f3, f4, localRectF.top, this.bSn);
        paramCanvas.drawRect(f1, localRectF.bottom, f4, f5, this.bSn);
        paramCanvas.drawRect(f1, localRectF.top, localRectF.left, localRectF.bottom, this.bSn);
        paramCanvas.drawRect(localRectF.right, localRectF.top, f4, localRectF.bottom, this.bSn);
        if (this.bSh.AW())
        {
          if (this.bSz != CropImageView.c.bRS) {
            break label1005;
          }
          b(paramCanvas);
        }
        label210:
        if (this.bSk != null)
        {
          f1 = this.bSk.getStrokeWidth();
          localRectF = this.bSh.AR();
          localRectF.inset(f1 / 2.0F, f1 / 2.0F);
          if (this.bSA != CropImageView.b.bRN) {
            break label1030;
          }
          paramCanvas.drawRect(localRectF, this.bSk);
        }
        label265:
        if (this.bSl != null) {
          if (this.bSk == null) {
            break label1043;
          }
        }
      }
    }
    label1005:
    label1030:
    label1043:
    for (f1 = this.bSk.getStrokeWidth();; f1 = 0.0F)
    {
      f3 = this.bSl.getStrokeWidth();
      f4 = f3 / 2.0F;
      if (this.bSA == CropImageView.b.bRN) {
        f2 = this.bSs;
      }
      f2 = f4 + f2;
      localRectF = this.bSh.AR();
      localRectF.inset(f2, f2);
      f1 = (f3 - f1) / 2.0F;
      f2 = f3 / 2.0F + f1;
      f3 = localRectF.left;
      f4 = localRectF.top;
      f5 = localRectF.left;
      float f6 = localRectF.top;
      paramCanvas.drawLine(f3 - f1, f4 - f2, f5 - f1, this.bSt + f6, this.bSl);
      f3 = localRectF.left;
      f4 = localRectF.top;
      f5 = localRectF.left;
      paramCanvas.drawLine(f3 - f2, f4 - f1, this.bSt + f5, localRectF.top - f1, this.bSl);
      f3 = localRectF.right;
      f4 = localRectF.top;
      f5 = localRectF.right;
      f6 = localRectF.top;
      paramCanvas.drawLine(f3 + f1, f4 - f2, f5 + f1, this.bSt + f6, this.bSl);
      paramCanvas.drawLine(localRectF.right + f2, localRectF.top - f1, localRectF.right - this.bSt, localRectF.top - f1, this.bSl);
      paramCanvas.drawLine(localRectF.left - f1, localRectF.bottom + f2, localRectF.left - f1, localRectF.bottom - this.bSt, this.bSl);
      f3 = localRectF.left;
      f4 = localRectF.bottom;
      f5 = localRectF.left;
      paramCanvas.drawLine(f3 - f2, f4 + f1, this.bSt + f5, localRectF.bottom + f1, this.bSl);
      paramCanvas.drawLine(localRectF.right + f1, localRectF.bottom + f2, localRectF.right + f1, localRectF.bottom - this.bSt, this.bSl);
      paramCanvas.drawLine(localRectF.right + f2, localRectF.bottom + f1, localRectF.right - this.bSt, localRectF.bottom + f1, this.bSl);
      return;
      this.rx.reset();
      this.rx.moveTo(this.bSo[0], this.bSo[1]);
      this.rx.lineTo(this.bSo[2], this.bSo[3]);
      this.rx.lineTo(this.bSo[4], this.bSo[5]);
      this.rx.lineTo(this.bSo[6], this.bSo[7]);
      this.rx.close();
      paramCanvas.save();
      paramCanvas.clipPath(this.rx, Region.Op.INTERSECT);
      paramCanvas.clipRect(localRectF, Region.Op.XOR);
      paramCanvas.drawRect(f1, f3, f4, f5, this.bSn);
      paramCanvas.restore();
      break;
      this.rx.reset();
      if ((Build.VERSION.SDK_INT <= 17) && (this.bSA == CropImageView.b.bRO)) {
        this.bSj.set(localRectF.left + 2.0F, localRectF.top + 2.0F, localRectF.right - 2.0F, localRectF.bottom - 2.0F);
      }
      for (;;)
      {
        this.rx.addOval(this.bSj, Path.Direction.CW);
        paramCanvas.save();
        paramCanvas.clipPath(this.rx, Region.Op.XOR);
        paramCanvas.drawRect(f1, f3, f4, f5, this.bSn);
        paramCanvas.restore();
        break;
        this.bSj.set(localRectF.left, localRectF.top, localRectF.right, localRectF.bottom);
      }
      if ((this.bSz != CropImageView.c.bRR) || (this.bSx == null)) {
        break label210;
      }
      b(paramCanvas);
      break label210;
      paramCanvas.drawOval(localRectF, this.bSk);
      break label265;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1;
    float f2;
    float f3;
    float f4;
    float f5;
    int i;
    if (isEnabled())
    {
      if (this.bSg) {
        this.bSf.onTouchEvent(paramMotionEvent);
      }
      switch (paramMotionEvent.getAction())
      {
      default: 
        return false;
      case 0: 
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        paramMotionEvent = this.bSh;
        f3 = this.bSv;
        if (this.bSA == CropImageView.b.bRO)
        {
          f3 = paramMotionEvent.bSF.width() / 6.0F;
          f4 = paramMotionEvent.bSF.left;
          f5 = paramMotionEvent.bSF.left;
          float f7 = paramMotionEvent.bSF.height() / 6.0F;
          float f6 = paramMotionEvent.bSF.top + f7;
          f7 = f7 * 5.0F + paramMotionEvent.bSF.top;
          if (f1 < f4 + f3) {
            if (f2 < f6) {
              i = h.a.bSZ;
            }
          }
          while (i != 0)
          {
            paramMotionEvent = new h(i, paramMotionEvent, f1, f2);
            label201:
            this.bSx = paramMotionEvent;
            if (this.bSx != null) {
              invalidate();
            }
            return true;
            if (f2 < f7)
            {
              i = h.a.bTd;
            }
            else
            {
              i = h.a.bTb;
              continue;
              if (f1 < f3 * 5.0F + f5)
              {
                if (f2 < f6) {
                  i = h.a.bTe;
                } else if (f2 < f7) {
                  i = h.a.bTh;
                } else {
                  i = h.a.bTg;
                }
              }
              else if (f2 < f6) {
                i = h.a.bTa;
              } else if (f2 < f7) {
                i = h.a.bTf;
              } else {
                i = h.a.bTc;
              }
            }
          }
        }
        if (g.a(f1, f2, paramMotionEvent.bSF.left, paramMotionEvent.bSF.top, f3)) {
          i = h.a.bSZ;
        }
        break;
      }
    }
    for (;;)
    {
      break;
      if (g.a(f1, f2, paramMotionEvent.bSF.right, paramMotionEvent.bSF.top, f3))
      {
        i = h.a.bTa;
      }
      else if (g.a(f1, f2, paramMotionEvent.bSF.left, paramMotionEvent.bSF.bottom, f3))
      {
        i = h.a.bTb;
      }
      else if (g.a(f1, f2, paramMotionEvent.bSF.right, paramMotionEvent.bSF.bottom, f3))
      {
        i = h.a.bTc;
      }
      else if ((g.c(f1, f2, paramMotionEvent.bSF.left, paramMotionEvent.bSF.top, paramMotionEvent.bSF.right, paramMotionEvent.bSF.bottom)) && (paramMotionEvent.AX()))
      {
        i = h.a.bTh;
      }
      else if (g.a(f1, f2, paramMotionEvent.bSF.left, paramMotionEvent.bSF.right, paramMotionEvent.bSF.top, f3))
      {
        i = h.a.bTe;
      }
      else if (g.a(f1, f2, paramMotionEvent.bSF.left, paramMotionEvent.bSF.right, paramMotionEvent.bSF.bottom, f3))
      {
        i = h.a.bTg;
      }
      else if (g.b(f1, f2, paramMotionEvent.bSF.left, paramMotionEvent.bSF.top, paramMotionEvent.bSF.bottom, f3))
      {
        i = h.a.bTd;
      }
      else if (g.b(f1, f2, paramMotionEvent.bSF.right, paramMotionEvent.bSF.top, paramMotionEvent.bSF.bottom, f3))
      {
        i = h.a.bTf;
      }
      else
      {
        if ((g.c(f1, f2, paramMotionEvent.bSF.left, paramMotionEvent.bSF.top, paramMotionEvent.bSF.right, paramMotionEvent.bSF.bottom)) && (!paramMotionEvent.AX()))
        {
          i = h.a.bTh;
          continue;
          paramMotionEvent = null;
          break label201;
          getParent().requestDisallowInterceptTouchEvent(false);
          if (this.bSx != null)
          {
            this.bSx = null;
            aP(false);
            invalidate();
          }
          return true;
          f3 = paramMotionEvent.getX();
          f2 = paramMotionEvent.getY();
          Object localObject;
          RectF localRectF;
          int j;
          boolean bool;
          if (this.bSx != null)
          {
            f1 = this.bSw;
            paramMotionEvent = this.bSh.AR();
            if (b(paramMotionEvent)) {
              f1 = 0.0F;
            }
            localObject = this.bSx;
            localRectF = this.bSp;
            i = this.bSq;
            j = this.bSr;
            bool = this.bPt;
            f4 = this.bSy;
            f3 = ((h)localObject).bSX.x + f3;
            f5 = ((h)localObject).bSX.y + f2;
            if (((h)localObject).bSW != h.a.bTh) {
              break label1098;
            }
            f2 = f3 - paramMotionEvent.centerX();
            f3 = f5 - paramMotionEvent.centerY();
            if ((paramMotionEvent.left + f2 >= 0.0F) && (paramMotionEvent.right + f2 <= i) && (paramMotionEvent.left + f2 >= localRectF.left) && (paramMotionEvent.right + f2 <= localRectF.right)) {
              break label1824;
            }
            f2 /= 1.05F;
            PointF localPointF = ((h)localObject).bSX;
            localPointF.x -= f2 / 2.0F;
          }
          label1098:
          label1824:
          for (;;)
          {
            if ((paramMotionEvent.top + f3 < 0.0F) || (paramMotionEvent.bottom + f3 > j) || (paramMotionEvent.top + f3 < localRectF.top) || (paramMotionEvent.bottom + f3 > localRectF.bottom))
            {
              f3 /= 1.05F;
              localObject = ((h)localObject).bSX;
              ((PointF)localObject).y -= f3 / 2.0F;
            }
            for (;;)
            {
              paramMotionEvent.offset(f2, f3);
              h.a(paramMotionEvent, localRectF, f1);
              for (;;)
              {
                this.bSh.c(paramMotionEvent);
                aP(true);
                invalidate();
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
                if (bool) {
                  switch (h.1.bSY[(localObject.bSW - 1)])
                  {
                  default: 
                    break;
                  case 1: 
                    if (h.d(f3, f5, paramMotionEvent.right, paramMotionEvent.bottom) < f4)
                    {
                      ((h)localObject).b(paramMotionEvent, f5, localRectF, f1, f4, true, false);
                      h.a(paramMotionEvent, f4);
                      continue;
                    }
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, f1, f4, true, false);
                    h.b(paramMotionEvent, f4);
                    break;
                  case 2: 
                    if (h.d(paramMotionEvent.left, f5, f3, paramMotionEvent.bottom) < f4)
                    {
                      ((h)localObject).b(paramMotionEvent, f5, localRectF, f1, f4, false, true);
                      h.c(paramMotionEvent, f4);
                      continue;
                    }
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, i, f1, f4, true, false);
                    h.b(paramMotionEvent, f4);
                    break;
                  case 3: 
                    if (h.d(f3, paramMotionEvent.top, paramMotionEvent.right, f5) < f4)
                    {
                      ((h)localObject).b(paramMotionEvent, f5, localRectF, j, f1, f4, true, false);
                      h.a(paramMotionEvent, f4);
                      continue;
                    }
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, f1, f4, false, true);
                    h.d(paramMotionEvent, f4);
                    break;
                  case 4: 
                    if (h.d(paramMotionEvent.left, paramMotionEvent.top, f3, f5) < f4)
                    {
                      ((h)localObject).b(paramMotionEvent, f5, localRectF, j, f1, f4, false, true);
                      h.c(paramMotionEvent, f4);
                      continue;
                    }
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, i, f1, f4, false, true);
                    h.d(paramMotionEvent, f4);
                    break;
                  case 5: 
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, f1, f4, true, true);
                    h.c(paramMotionEvent, localRectF, f4);
                    break;
                  case 6: 
                    ((h)localObject).b(paramMotionEvent, f5, localRectF, f1, f4, true, true);
                    h.b(paramMotionEvent, localRectF, f4);
                    break;
                  case 7: 
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, i, f1, f4, true, true);
                    h.c(paramMotionEvent, localRectF, f4);
                    break;
                  case 8: 
                    ((h)localObject).b(paramMotionEvent, f5, localRectF, j, f1, f4, true, true);
                    h.b(paramMotionEvent, localRectF, f4);
                    break;
                  }
                } else {
                  switch (h.1.bSY[(localObject.bSW - 1)])
                  {
                  default: 
                    break;
                  case 1: 
                    ((h)localObject).b(paramMotionEvent, f5, localRectF, f1, 0.0F, false, false);
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, f1, 0.0F, false, false);
                    break;
                  case 2: 
                    ((h)localObject).b(paramMotionEvent, f5, localRectF, f1, 0.0F, false, false);
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, i, f1, 0.0F, false, false);
                    break;
                  case 3: 
                    ((h)localObject).b(paramMotionEvent, f5, localRectF, j, f1, 0.0F, false, false);
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, f1, 0.0F, false, false);
                    break;
                  case 4: 
                    ((h)localObject).b(paramMotionEvent, f5, localRectF, j, f1, 0.0F, false, false);
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, i, f1, 0.0F, false, false);
                    break;
                  case 5: 
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, f1, 0.0F, false, false);
                    break;
                  case 6: 
                    ((h)localObject).b(paramMotionEvent, f5, localRectF, f1, 0.0F, false, false);
                    break;
                  case 7: 
                    ((h)localObject).a(paramMotionEvent, f3, localRectF, i, f1, 0.0F, false, false);
                    break;
                  case 8: 
                    ((h)localObject).b(paramMotionEvent, f5, localRectF, j, f1, 0.0F, false, false);
                  }
                }
              }
              return false;
            }
          }
        }
        i = 0;
      }
    }
  }
  
  public void setAspectRatioX(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
    }
    if (this.bPu != paramInt)
    {
      this.bPu = paramInt;
      this.bSy = (this.bPu / this.bPv);
      if (this.bSC)
      {
        AP();
        invalidate();
      }
    }
  }
  
  public void setAspectRatioY(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
    }
    if (this.bPv != paramInt)
    {
      this.bPv = paramInt;
      this.bSy = (this.bPu / this.bPv);
      if (this.bSC)
      {
        AP();
        invalidate();
      }
    }
  }
  
  public void setCropShape(CropImageView.b paramb)
  {
    if (this.bSA != paramb)
    {
      this.bSA = paramb;
      if (Build.VERSION.SDK_INT <= 17)
      {
        if (this.bSA != CropImageView.b.bRO) {
          break label72;
        }
        this.bSD = Integer.valueOf(getLayerType());
        if (this.bSD.intValue() == 1) {
          break label64;
        }
        setLayerType(1, null);
      }
    }
    for (;;)
    {
      invalidate();
      return;
      label64:
      this.bSD = null;
      continue;
      label72:
      if (this.bSD != null)
      {
        setLayerType(this.bSD.intValue(), null);
        this.bSD = null;
      }
    }
  }
  
  public void setCropWindowChangeListener(a parama)
  {
    this.bSi = parama;
  }
  
  public void setCropWindowRect(RectF paramRectF)
  {
    this.bSh.c(paramRectF);
  }
  
  public void setFixedAspectRatio(boolean paramBoolean)
  {
    if (this.bPt != paramBoolean)
    {
      this.bPt = paramBoolean;
      if (this.bSC)
      {
        AP();
        invalidate();
      }
    }
  }
  
  public void setGuidelines(CropImageView.c paramc)
  {
    if (this.bSz != paramc)
    {
      this.bSz = paramc;
      if (this.bSC) {
        invalidate();
      }
    }
  }
  
  public void setInitialAttributeValues(f paramf)
  {
    g localg = this.bSh;
    localg.bSH = paramf.bQA;
    localg.bSI = paramf.bQB;
    localg.bSL = paramf.bQC;
    localg.bSM = paramf.bQD;
    localg.bSN = paramf.bQE;
    localg.bSO = paramf.bQF;
    setCropShape(paramf.bQe);
    setSnapRadius(paramf.bQf);
    setGuidelines(paramf.bQh);
    setFixedAspectRatio(paramf.bQp);
    setAspectRatioX(paramf.bQq);
    setAspectRatioY(paramf.bQr);
    aO(paramf.bQm);
    this.bSv = paramf.bQg;
    this.bSu = paramf.bQo;
    this.bSk = a(paramf.bQs, paramf.bQt);
    this.bSs = paramf.bQv;
    this.bSt = paramf.bQw;
    this.bSl = a(paramf.bQu, paramf.bQx);
    this.bSm = a(paramf.bQy, paramf.bQz);
    int i = paramf.backgroundColor;
    paramf = new Paint();
    paramf.setColor(i);
    this.bSn = paramf;
  }
  
  public void setInitialCropWindowRect(Rect paramRect)
  {
    Rect localRect = this.bSB;
    if (paramRect != null) {}
    for (;;)
    {
      localRect.set(paramRect);
      if (this.bSC)
      {
        AP();
        invalidate();
        aP(false);
      }
      return;
      paramRect = c.bPI;
    }
  }
  
  public void setSnapRadius(float paramFloat)
  {
    this.bSw = paramFloat;
  }
  
  public static abstract interface a
  {
    public abstract void aN(boolean paramBoolean);
  }
  
  private final class b
    extends ScaleGestureDetector.SimpleOnScaleGestureListener
  {
    private b() {}
    
    @TargetApi(11)
    public final boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
    {
      RectF localRectF = CropOverlayView.a(CropOverlayView.this).AR();
      float f5 = paramScaleGestureDetector.getFocusX();
      float f3 = paramScaleGestureDetector.getFocusY();
      float f4 = paramScaleGestureDetector.getCurrentSpanY() / 2.0F;
      float f6 = paramScaleGestureDetector.getCurrentSpanX() / 2.0F;
      float f1 = f3 - f4;
      float f2 = f5 - f6;
      f5 += f6;
      f3 += f4;
      if ((f2 < f5) && (f1 <= f3) && (f2 >= 0.0F) && (f5 <= CropOverlayView.a(CropOverlayView.this).AU()) && (f1 >= 0.0F) && (f3 <= CropOverlayView.a(CropOverlayView.this).AV()))
      {
        localRectF.set(f2, f1, f5, f3);
        CropOverlayView.a(CropOverlayView.this).c(localRectF);
        CropOverlayView.this.invalidate();
      }
      return true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/CropOverlayView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */