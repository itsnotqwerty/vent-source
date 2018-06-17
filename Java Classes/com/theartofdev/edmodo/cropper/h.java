package com.theartofdev.edmodo.cropper;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;

final class h
{
  private static final Matrix bSR = new Matrix();
  private final float bSS;
  private final float bST;
  private final float bSU;
  private final float bSV;
  final int bSW;
  final PointF bSX = new PointF();
  
  public h(int paramInt, g paramg, float paramFloat1, float paramFloat2)
  {
    this.bSW = paramInt;
    this.bSS = paramg.AS();
    this.bST = paramg.AT();
    this.bSU = paramg.AU();
    this.bSV = paramg.AV();
    paramg = paramg.AR();
    switch (1.bSY[(this.bSW - 1)])
    {
    default: 
      paramFloat1 = 0.0F;
      paramFloat2 = 0.0F;
    }
    for (;;)
    {
      this.bSX.x = paramFloat2;
      this.bSX.y = paramFloat1;
      return;
      float f = paramg.left;
      paramFloat2 = paramg.top - paramFloat2;
      f -= paramFloat1;
      paramFloat1 = paramFloat2;
      paramFloat2 = f;
      continue;
      f = paramg.right;
      paramFloat2 = paramg.top - paramFloat2;
      f -= paramFloat1;
      paramFloat1 = paramFloat2;
      paramFloat2 = f;
      continue;
      f = paramg.left;
      paramFloat2 = paramg.bottom - paramFloat2;
      f -= paramFloat1;
      paramFloat1 = paramFloat2;
      paramFloat2 = f;
      continue;
      f = paramg.right;
      paramFloat2 = paramg.bottom - paramFloat2;
      f -= paramFloat1;
      paramFloat1 = paramFloat2;
      paramFloat2 = f;
      continue;
      paramFloat2 = paramg.left - paramFloat1;
      paramFloat1 = 0.0F;
      continue;
      paramFloat1 = paramg.top - paramFloat2;
      paramFloat2 = 0.0F;
      continue;
      paramFloat2 = paramg.right - paramFloat1;
      paramFloat1 = 0.0F;
      continue;
      paramFloat1 = paramg.bottom - paramFloat2;
      paramFloat2 = 0.0F;
      continue;
      f = paramg.centerX();
      paramFloat2 = paramg.centerY() - paramFloat2;
      f -= paramFloat1;
      paramFloat1 = paramFloat2;
      paramFloat2 = f;
    }
  }
  
  static void a(RectF paramRectF, float paramFloat)
  {
    paramRectF.left = (paramRectF.right - paramRectF.height() * paramFloat);
  }
  
  static void a(RectF paramRectF1, RectF paramRectF2, float paramFloat)
  {
    if (paramRectF1.left < paramRectF2.left + paramFloat) {
      paramRectF1.offset(paramRectF2.left - paramRectF1.left, 0.0F);
    }
    if (paramRectF1.top < paramRectF2.top + paramFloat) {
      paramRectF1.offset(0.0F, paramRectF2.top - paramRectF1.top);
    }
    if (paramRectF1.right > paramRectF2.right - paramFloat) {
      paramRectF1.offset(paramRectF2.right - paramRectF1.right, 0.0F);
    }
    if (paramRectF1.bottom > paramRectF2.bottom - paramFloat) {
      paramRectF1.offset(0.0F, paramRectF2.bottom - paramRectF1.bottom);
    }
  }
  
  static void b(RectF paramRectF, float paramFloat)
  {
    paramRectF.top = (paramRectF.bottom - paramRectF.width() / paramFloat);
  }
  
  static void b(RectF paramRectF1, RectF paramRectF2, float paramFloat)
  {
    paramRectF1.inset((paramRectF1.width() - paramRectF1.height() * paramFloat) / 2.0F, 0.0F);
    if (paramRectF1.left < paramRectF2.left) {
      paramRectF1.offset(paramRectF2.left - paramRectF1.left, 0.0F);
    }
    if (paramRectF1.right > paramRectF2.right) {
      paramRectF1.offset(paramRectF2.right - paramRectF1.right, 0.0F);
    }
  }
  
  static void c(RectF paramRectF, float paramFloat)
  {
    paramRectF.right = (paramRectF.left + paramRectF.height() * paramFloat);
  }
  
  static void c(RectF paramRectF1, RectF paramRectF2, float paramFloat)
  {
    paramRectF1.inset(0.0F, (paramRectF1.height() - paramRectF1.width() / paramFloat) / 2.0F);
    if (paramRectF1.top < paramRectF2.top) {
      paramRectF1.offset(0.0F, paramRectF2.top - paramRectF1.top);
    }
    if (paramRectF1.bottom > paramRectF2.bottom) {
      paramRectF1.offset(0.0F, paramRectF2.bottom - paramRectF1.bottom);
    }
  }
  
  static float d(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return (paramFloat3 - paramFloat1) / (paramFloat4 - paramFloat2);
  }
  
  static void d(RectF paramRectF, float paramFloat)
  {
    paramRectF.bottom = (paramRectF.top + paramRectF.width() / paramFloat);
  }
  
  final void a(RectF paramRectF1, float paramFloat1, RectF paramRectF2, float paramFloat2, float paramFloat3, boolean paramBoolean1, boolean paramBoolean2)
  {
    float f1 = paramFloat1;
    PointF localPointF;
    if (paramFloat1 < 0.0F)
    {
      f1 = paramFloat1 / 1.05F;
      localPointF = this.bSX;
      localPointF.x -= f1 / 1.1F;
    }
    if (f1 < paramRectF2.left)
    {
      localPointF = this.bSX;
      localPointF.x -= (f1 - paramRectF2.left) / 2.0F;
    }
    paramFloat1 = f1;
    if (f1 - paramRectF2.left < paramFloat2) {
      paramFloat1 = paramRectF2.left;
    }
    f1 = paramFloat1;
    if (paramRectF1.right - paramFloat1 < this.bSS) {
      f1 = paramRectF1.right - this.bSS;
    }
    paramFloat1 = f1;
    if (paramRectF1.right - f1 > this.bSU) {
      paramFloat1 = paramRectF1.right - this.bSU;
    }
    if (paramFloat1 - paramRectF2.left < paramFloat2) {
      paramFloat1 = paramRectF2.left;
    }
    for (;;)
    {
      paramFloat2 = paramFloat1;
      float f2;
      if (paramFloat3 > 0.0F)
      {
        f2 = (paramRectF1.right - paramFloat1) / paramFloat3;
        paramFloat2 = f2;
        f1 = paramFloat1;
        if (f2 < this.bST)
        {
          f1 = Math.max(paramRectF2.left, paramRectF1.right - this.bST * paramFloat3);
          paramFloat2 = (paramRectF1.right - f1) / paramFloat3;
        }
        paramFloat1 = paramFloat2;
        if (paramFloat2 > this.bSV)
        {
          f1 = Math.max(paramRectF2.left, paramRectF1.right - this.bSV * paramFloat3);
          paramFloat1 = (paramRectF1.right - f1) / paramFloat3;
        }
        if ((!paramBoolean1) || (!paramBoolean2)) {
          break label326;
        }
        paramFloat2 = Math.max(f1, Math.max(paramRectF2.left, paramRectF1.right - paramRectF2.height() * paramFloat3));
      }
      for (;;)
      {
        paramRectF1.left = paramFloat2;
        return;
        label326:
        float f3 = paramFloat1;
        f2 = f1;
        if (paramBoolean1)
        {
          f3 = paramFloat1;
          f2 = f1;
          if (paramRectF1.bottom - paramFloat1 < paramRectF2.top)
          {
            f2 = Math.max(paramRectF2.left, paramRectF1.right - (paramRectF1.bottom - paramRectF2.top) * paramFloat3);
            f3 = (paramRectF1.right - f2) / paramFloat3;
          }
        }
        paramFloat2 = f2;
        if (paramBoolean2)
        {
          paramFloat2 = f2;
          if (f3 + paramRectF1.top > paramRectF2.bottom) {
            paramFloat2 = Math.max(f2, Math.max(paramRectF2.left, paramRectF1.right - (paramRectF2.bottom - paramRectF1.top) * paramFloat3));
          }
        }
      }
    }
  }
  
  final void a(RectF paramRectF1, float paramFloat1, RectF paramRectF2, int paramInt, float paramFloat2, float paramFloat3, boolean paramBoolean1, boolean paramBoolean2)
  {
    float f1 = paramFloat1;
    PointF localPointF;
    if (paramFloat1 > paramInt)
    {
      f1 = paramInt + (paramFloat1 - paramInt) / 1.05F;
      localPointF = this.bSX;
      localPointF.x -= (f1 - paramInt) / 1.1F;
    }
    if (f1 > paramRectF2.right)
    {
      localPointF = this.bSX;
      localPointF.x -= (f1 - paramRectF2.right) / 2.0F;
    }
    paramFloat1 = f1;
    if (paramRectF2.right - f1 < paramFloat2) {
      paramFloat1 = paramRectF2.right;
    }
    f1 = paramFloat1;
    if (paramFloat1 - paramRectF1.left < this.bSS) {
      f1 = paramRectF1.left + this.bSS;
    }
    paramFloat1 = f1;
    if (f1 - paramRectF1.left > this.bSU) {
      paramFloat1 = paramRectF1.left + this.bSU;
    }
    if (paramRectF2.right - paramFloat1 < paramFloat2) {
      paramFloat1 = paramRectF2.right;
    }
    for (;;)
    {
      paramFloat2 = paramFloat1;
      float f2;
      if (paramFloat3 > 0.0F)
      {
        f2 = (paramFloat1 - paramRectF1.left) / paramFloat3;
        paramFloat2 = f2;
        f1 = paramFloat1;
        if (f2 < this.bST)
        {
          f1 = Math.min(paramRectF2.right, paramRectF1.left + this.bST * paramFloat3);
          paramFloat2 = (f1 - paramRectF1.left) / paramFloat3;
        }
        paramFloat1 = paramFloat2;
        if (paramFloat2 > this.bSV)
        {
          f1 = Math.min(paramRectF2.right, paramRectF1.left + this.bSV * paramFloat3);
          paramFloat1 = (f1 - paramRectF1.left) / paramFloat3;
        }
        if ((!paramBoolean1) || (!paramBoolean2)) {
          break label340;
        }
        paramFloat2 = Math.min(f1, Math.min(paramRectF2.right, paramRectF1.left + paramRectF2.height() * paramFloat3));
      }
      for (;;)
      {
        paramRectF1.right = paramFloat2;
        return;
        label340:
        float f3 = paramFloat1;
        f2 = f1;
        if (paramBoolean1)
        {
          f3 = paramFloat1;
          f2 = f1;
          if (paramRectF1.bottom - paramFloat1 < paramRectF2.top)
          {
            f2 = Math.min(paramRectF2.right, paramRectF1.left + (paramRectF1.bottom - paramRectF2.top) * paramFloat3);
            f3 = (f2 - paramRectF1.left) / paramFloat3;
          }
        }
        paramFloat2 = f2;
        if (paramBoolean2)
        {
          paramFloat2 = f2;
          if (f3 + paramRectF1.top > paramRectF2.bottom) {
            paramFloat2 = Math.min(f2, Math.min(paramRectF2.right, paramRectF1.left + (paramRectF2.bottom - paramRectF1.top) * paramFloat3));
          }
        }
      }
    }
  }
  
  final void b(RectF paramRectF1, float paramFloat1, RectF paramRectF2, float paramFloat2, float paramFloat3, boolean paramBoolean1, boolean paramBoolean2)
  {
    float f1 = paramFloat1;
    PointF localPointF;
    if (paramFloat1 < 0.0F)
    {
      f1 = paramFloat1 / 1.05F;
      localPointF = this.bSX;
      localPointF.y -= f1 / 1.1F;
    }
    if (f1 < paramRectF2.top)
    {
      localPointF = this.bSX;
      localPointF.y -= (f1 - paramRectF2.top) / 2.0F;
    }
    paramFloat1 = f1;
    if (f1 - paramRectF2.top < paramFloat2) {
      paramFloat1 = paramRectF2.top;
    }
    f1 = paramFloat1;
    if (paramRectF1.bottom - paramFloat1 < this.bST) {
      f1 = paramRectF1.bottom - this.bST;
    }
    paramFloat1 = f1;
    if (paramRectF1.bottom - f1 > this.bSV) {
      paramFloat1 = paramRectF1.bottom - this.bSV;
    }
    if (paramFloat1 - paramRectF2.top < paramFloat2) {
      paramFloat1 = paramRectF2.top;
    }
    for (;;)
    {
      paramFloat2 = paramFloat1;
      float f2;
      if (paramFloat3 > 0.0F)
      {
        f2 = (paramRectF1.bottom - paramFloat1) * paramFloat3;
        paramFloat2 = f2;
        f1 = paramFloat1;
        if (f2 < this.bSS)
        {
          f1 = Math.max(paramRectF2.top, paramRectF1.bottom - this.bSS / paramFloat3);
          paramFloat2 = (paramRectF1.bottom - f1) * paramFloat3;
        }
        paramFloat1 = paramFloat2;
        if (paramFloat2 > this.bSU)
        {
          f1 = Math.max(paramRectF2.top, paramRectF1.bottom - this.bSU / paramFloat3);
          paramFloat1 = (paramRectF1.bottom - f1) * paramFloat3;
        }
        if ((!paramBoolean1) || (!paramBoolean2)) {
          break label326;
        }
        paramFloat2 = Math.max(f1, Math.max(paramRectF2.top, paramRectF1.bottom - paramRectF2.width() / paramFloat3));
      }
      for (;;)
      {
        paramRectF1.top = paramFloat2;
        return;
        label326:
        float f3 = paramFloat1;
        f2 = f1;
        if (paramBoolean1)
        {
          f3 = paramFloat1;
          f2 = f1;
          if (paramRectF1.right - paramFloat1 < paramRectF2.left)
          {
            f2 = Math.max(paramRectF2.top, paramRectF1.bottom - (paramRectF1.right - paramRectF2.left) / paramFloat3);
            f3 = (paramRectF1.bottom - f2) * paramFloat3;
          }
        }
        paramFloat2 = f2;
        if (paramBoolean2)
        {
          paramFloat2 = f2;
          if (f3 + paramRectF1.left > paramRectF2.right) {
            paramFloat2 = Math.max(f2, Math.max(paramRectF2.top, paramRectF1.bottom - (paramRectF2.right - paramRectF1.left) / paramFloat3));
          }
        }
      }
    }
  }
  
  final void b(RectF paramRectF1, float paramFloat1, RectF paramRectF2, int paramInt, float paramFloat2, float paramFloat3, boolean paramBoolean1, boolean paramBoolean2)
  {
    float f1 = paramFloat1;
    PointF localPointF;
    if (paramFloat1 > paramInt)
    {
      f1 = paramInt + (paramFloat1 - paramInt) / 1.05F;
      localPointF = this.bSX;
      localPointF.y -= (f1 - paramInt) / 1.1F;
    }
    if (f1 > paramRectF2.bottom)
    {
      localPointF = this.bSX;
      localPointF.y -= (f1 - paramRectF2.bottom) / 2.0F;
    }
    paramFloat1 = f1;
    if (paramRectF2.bottom - f1 < paramFloat2) {
      paramFloat1 = paramRectF2.bottom;
    }
    f1 = paramFloat1;
    if (paramFloat1 - paramRectF1.top < this.bST) {
      f1 = paramRectF1.top + this.bST;
    }
    paramFloat1 = f1;
    if (f1 - paramRectF1.top > this.bSV) {
      paramFloat1 = paramRectF1.top + this.bSV;
    }
    if (paramRectF2.bottom - paramFloat1 < paramFloat2) {
      paramFloat1 = paramRectF2.bottom;
    }
    for (;;)
    {
      paramFloat2 = paramFloat1;
      float f2;
      if (paramFloat3 > 0.0F)
      {
        f2 = (paramFloat1 - paramRectF1.top) * paramFloat3;
        paramFloat2 = f2;
        f1 = paramFloat1;
        if (f2 < this.bSS)
        {
          f1 = Math.min(paramRectF2.bottom, paramRectF1.top + this.bSS / paramFloat3);
          paramFloat2 = (f1 - paramRectF1.top) * paramFloat3;
        }
        paramFloat1 = paramFloat2;
        if (paramFloat2 > this.bSU)
        {
          f1 = Math.min(paramRectF2.bottom, paramRectF1.top + this.bSU / paramFloat3);
          paramFloat1 = (f1 - paramRectF1.top) * paramFloat3;
        }
        if ((!paramBoolean1) || (!paramBoolean2)) {
          break label340;
        }
        paramFloat2 = Math.min(f1, Math.min(paramRectF2.bottom, paramRectF1.top + paramRectF2.width() / paramFloat3));
      }
      for (;;)
      {
        paramRectF1.bottom = paramFloat2;
        return;
        label340:
        float f3 = paramFloat1;
        f2 = f1;
        if (paramBoolean1)
        {
          f3 = paramFloat1;
          f2 = f1;
          if (paramRectF1.right - paramFloat1 < paramRectF2.left)
          {
            f2 = Math.min(paramRectF2.bottom, paramRectF1.top + (paramRectF1.right - paramRectF2.left) / paramFloat3);
            f3 = (f2 - paramRectF1.top) * paramFloat3;
          }
        }
        paramFloat2 = f2;
        if (paramBoolean2)
        {
          paramFloat2 = f2;
          if (f3 + paramRectF1.left > paramRectF2.right) {
            paramFloat2 = Math.min(f2, Math.min(paramRectF2.bottom, paramRectF1.top + (paramRectF2.right - paramRectF1.left) / paramFloat3));
          }
        }
      }
    }
  }
  
  public static enum a
  {
    public static final int bSZ = 1;
    public static final int bTa = 2;
    public static final int bTb = 3;
    public static final int bTc = 4;
    public static final int bTd = 5;
    public static final int bTe = 6;
    public static final int bTf = 7;
    public static final int bTg = 8;
    public static final int bTh = 9;
    
    public static int[] AY()
    {
      return (int[])bTi.clone();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */