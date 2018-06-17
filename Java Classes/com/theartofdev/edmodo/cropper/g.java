package com.theartofdev.edmodo.cropper;

import android.graphics.RectF;

final class g
{
  final RectF bSF = new RectF();
  private final RectF bSG = new RectF();
  float bSH;
  float bSI;
  float bSJ;
  float bSK;
  float bSL;
  float bSM;
  float bSN;
  float bSO;
  float bSP = 1.0F;
  float bSQ = 1.0F;
  
  static boolean a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    return (Math.abs(paramFloat1 - paramFloat3) <= paramFloat5) && (Math.abs(paramFloat2 - paramFloat4) <= paramFloat5);
  }
  
  static boolean a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    return (paramFloat1 > paramFloat3) && (paramFloat1 < paramFloat4) && (Math.abs(paramFloat2 - paramFloat5) <= paramFloat6);
  }
  
  static boolean b(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    return (Math.abs(paramFloat1 - paramFloat3) <= paramFloat6) && (paramFloat2 > paramFloat4) && (paramFloat2 < paramFloat5);
  }
  
  static boolean c(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    return (paramFloat1 > paramFloat3) && (paramFloat1 < paramFloat5) && (paramFloat2 > paramFloat4) && (paramFloat2 < paramFloat6);
  }
  
  public final RectF AR()
  {
    this.bSG.set(this.bSF);
    return this.bSG;
  }
  
  public final float AS()
  {
    return Math.max(this.bSH, this.bSL / this.bSP);
  }
  
  public final float AT()
  {
    return Math.max(this.bSI, this.bSM / this.bSQ);
  }
  
  public final float AU()
  {
    return Math.min(this.bSJ, this.bSN / this.bSP);
  }
  
  public final float AV()
  {
    return Math.min(this.bSK, this.bSO / this.bSQ);
  }
  
  public final boolean AW()
  {
    return (this.bSF.width() >= 100.0F) && (this.bSF.height() >= 100.0F);
  }
  
  final boolean AX()
  {
    return !AW();
  }
  
  public final void c(RectF paramRectF)
  {
    this.bSF.set(paramRectF);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */