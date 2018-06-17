package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.v4.f.b;
import android.support.v4.f.c;
import android.support.v4.view.r;
import android.support.v7.a.a.j;
import android.support.v7.widget.bo;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.animation.Interpolator;

final class e
{
  private static final boolean kf;
  private static final Paint kg;
  private boolean hm;
  private Typeface kA;
  CharSequence kB;
  private CharSequence kC;
  private boolean kD;
  private Bitmap kE;
  private Paint kF;
  private float kG;
  private float kH;
  private float kI;
  private float kJ;
  private int[] kK;
  private boolean kL;
  private final TextPaint kM;
  Interpolator kN;
  private Interpolator kO;
  private float kP;
  private float kQ;
  private float kR;
  private int kS;
  private float kT;
  private float kU;
  private float kV;
  private int kW;
  private boolean kh;
  float ki;
  private final Rect kj;
  private final Rect kk;
  private final RectF kl;
  int km = 16;
  int kn = 16;
  float ko = 15.0F;
  float kp = 15.0F;
  private ColorStateList kq;
  ColorStateList kr;
  private float ks;
  private float kt;
  private float ku;
  private float kv;
  private float kw;
  private float kx;
  Typeface ky;
  Typeface kz;
  private final View mView;
  
  static
  {
    if (Build.VERSION.SDK_INT < 18) {}
    for (boolean bool = true;; bool = false)
    {
      kf = bool;
      kg = null;
      return;
    }
  }
  
  public e(View paramView)
  {
    this.mView = paramView;
    this.kM = new TextPaint(129);
    this.kk = new Rect();
    this.kj = new Rect();
    this.kl = new RectF();
  }
  
  private Typeface D(int paramInt)
  {
    TypedArray localTypedArray = this.mView.getContext().obtainStyledAttributes(paramInt, new int[] { 16843692 });
    try
    {
      Object localObject1 = localTypedArray.getString(0);
      if (localObject1 != null)
      {
        localObject1 = Typeface.create((String)localObject1, 0);
        return (Typeface)localObject1;
      }
      return null;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3, Interpolator paramInterpolator)
  {
    float f = paramFloat3;
    if (paramInterpolator != null) {
      f = paramInterpolator.getInterpolation(paramFloat3);
    }
    return a.a(paramFloat1, paramFloat2, f);
  }
  
  private static boolean a(float paramFloat1, float paramFloat2)
  {
    return Math.abs(paramFloat1 - paramFloat2) < 0.001F;
  }
  
  private static boolean a(Rect paramRect, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (paramRect.left == paramInt1) && (paramRect.top == paramInt2) && (paramRect.right == paramInt3) && (paramRect.bottom == paramInt4);
  }
  
  static boolean a(Typeface paramTypeface1, Typeface paramTypeface2)
  {
    return ((paramTypeface1 != null) && (!paramTypeface1.equals(paramTypeface2))) || ((paramTypeface1 == null) && (paramTypeface2 != null));
  }
  
  private static int b(int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = 1.0F - paramFloat;
    float f2 = Color.alpha(paramInt1);
    float f3 = Color.alpha(paramInt2);
    float f4 = Color.red(paramInt1);
    float f5 = Color.red(paramInt2);
    float f6 = Color.green(paramInt1);
    float f7 = Color.green(paramInt2);
    float f8 = Color.blue(paramInt1);
    float f9 = Color.blue(paramInt2);
    return Color.argb((int)(f2 * f1 + f3 * paramFloat), (int)(f4 * f1 + f5 * paramFloat), (int)(f6 * f1 + f7 * paramFloat), (int)(f1 * f8 + f9 * paramFloat));
  }
  
  private void bp()
  {
    if ((this.kk.width() > 0) && (this.kk.height() > 0) && (this.kj.width() > 0) && (this.kj.height() > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      this.kh = bool;
      return;
    }
  }
  
  private void br()
  {
    c(this.ki);
  }
  
  private int bs()
  {
    if (this.kK != null) {
      return this.kr.getColorForState(this.kK, 0);
    }
    return this.kr.getDefaultColor();
  }
  
  private void bu()
  {
    if (this.kE != null)
    {
      this.kE.recycle();
      this.kE = null;
    }
  }
  
  private void c(float paramFloat)
  {
    this.kl.left = a(this.kj.left, this.kk.left, paramFloat, this.kN);
    this.kl.top = a(this.ks, this.kt, paramFloat, this.kN);
    this.kl.right = a(this.kj.right, this.kk.right, paramFloat, this.kN);
    this.kl.bottom = a(this.kj.bottom, this.kk.bottom, paramFloat, this.kN);
    this.kw = a(this.ku, this.kv, paramFloat, this.kN);
    this.kx = a(this.ks, this.kt, paramFloat, this.kN);
    d(a(this.ko, this.kp, paramFloat, this.kO));
    int i;
    if (this.kr != this.kq)
    {
      TextPaint localTextPaint = this.kM;
      if (this.kK != null)
      {
        i = this.kq.getColorForState(this.kK, 0);
        localTextPaint.setColor(b(i, bs(), paramFloat));
      }
    }
    for (;;)
    {
      this.kM.setShadowLayer(a(this.kT, this.kP, paramFloat, null), a(this.kU, this.kQ, paramFloat, null), a(this.kV, this.kR, paramFloat, null), b(this.kW, this.kS, paramFloat));
      r.I(this.mView);
      return;
      i = this.kq.getDefaultColor();
      break;
      this.kM.setColor(bs());
    }
  }
  
  private void d(float paramFloat)
  {
    e(paramFloat);
    boolean bool;
    if ((kf) && (this.kI != 1.0F))
    {
      bool = true;
      this.kD = bool;
      if ((this.kD) && (this.kE == null) && (!this.kj.isEmpty()) && (!TextUtils.isEmpty(this.kC))) {
        break label77;
      }
    }
    for (;;)
    {
      r.I(this.mView);
      return;
      bool = false;
      break;
      label77:
      c(0.0F);
      this.kG = this.kM.ascent();
      this.kH = this.kM.descent();
      int i = Math.round(this.kM.measureText(this.kC, 0, this.kC.length()));
      int j = Math.round(this.kH - this.kG);
      if ((i > 0) && (j > 0))
      {
        this.kE = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
        new Canvas(this.kE).drawText(this.kC, 0, this.kC.length(), 0.0F, j - this.kM.descent(), this.kM);
        if (this.kF == null) {
          this.kF = new Paint(3);
        }
      }
    }
  }
  
  private void e(float paramFloat)
  {
    int k = 1;
    if (this.kB == null) {
      return;
    }
    float f2 = this.kk.width();
    float f3 = this.kj.width();
    float f1;
    int i;
    if (a(paramFloat, this.kp))
    {
      f1 = this.kp;
      this.kI = 1.0F;
      if (!a(this.kA, this.ky)) {
        break label401;
      }
      this.kA = this.ky;
      i = 1;
      paramFloat = f2;
    }
    for (;;)
    {
      int j = i;
      label112:
      Object localObject;
      boolean bool;
      if (paramFloat > 0.0F)
      {
        if ((this.kJ != f1) || (this.kL) || (i != 0))
        {
          i = 1;
          this.kJ = f1;
          this.kL = false;
          j = i;
        }
      }
      else
      {
        if ((this.kC != null) && (j == 0)) {
          break;
        }
        this.kM.setTextSize(this.kJ);
        this.kM.setTypeface(this.kA);
        localObject = this.kM;
        if (this.kI == 1.0F) {
          break label375;
        }
        bool = true;
        label179:
        ((TextPaint)localObject).setLinearText(bool);
        localObject = TextUtils.ellipsize(this.kB, this.kM, paramFloat, TextUtils.TruncateAt.END);
        if (TextUtils.equals((CharSequence)localObject, this.kC)) {
          break;
        }
        this.kC = ((CharSequence)localObject);
        CharSequence localCharSequence = this.kC;
        if (r.K(this.mView) != 1) {
          break label381;
        }
        i = k;
        label242:
        if (i == 0) {
          break label387;
        }
        localObject = c.Ea;
        label252:
        this.hm = ((b)localObject).a(localCharSequence, localCharSequence.length());
        return;
        f1 = this.ko;
        if (!a(this.kA, this.kz)) {
          break label395;
        }
        this.kA = this.kz;
      }
      label363:
      label375:
      label381:
      label387:
      label395:
      for (i = 1;; i = 0)
      {
        if (a(paramFloat, this.ko)) {}
        for (this.kI = 1.0F;; this.kI = (paramFloat / this.ko))
        {
          paramFloat = this.kp / this.ko;
          if (f3 * paramFloat <= f2) {
            break label363;
          }
          paramFloat = Math.min(f2 / paramFloat, f3);
          break;
        }
        paramFloat = f3;
        break;
        i = 0;
        break label112;
        bool = false;
        break label179;
        i = 0;
        break label242;
        localObject = c.DZ;
        break label252;
      }
      label401:
      i = 0;
      paramFloat = f2;
    }
  }
  
  final void A(int paramInt)
  {
    if (this.kn != paramInt)
    {
      this.kn = paramInt;
      bt();
    }
  }
  
  final void B(int paramInt)
  {
    bo localbo = bo.a(this.mView.getContext(), paramInt, a.j.TextAppearance);
    if (localbo.hasValue(a.j.TextAppearance_android_textColor)) {
      this.kr = localbo.getColorStateList(a.j.TextAppearance_android_textColor);
    }
    if (localbo.hasValue(a.j.TextAppearance_android_textSize)) {
      this.kp = localbo.getDimensionPixelSize(a.j.TextAppearance_android_textSize, (int)this.kp);
    }
    this.kS = localbo.getInt(a.j.TextAppearance_android_shadowColor, 0);
    this.kQ = localbo.getFloat(a.j.TextAppearance_android_shadowDx, 0.0F);
    this.kR = localbo.getFloat(a.j.TextAppearance_android_shadowDy, 0.0F);
    this.kP = localbo.getFloat(a.j.TextAppearance_android_shadowRadius, 0.0F);
    localbo.ajT.recycle();
    if (Build.VERSION.SDK_INT >= 16) {
      this.ky = D(paramInt);
    }
    bt();
  }
  
  final void C(int paramInt)
  {
    bo localbo = bo.a(this.mView.getContext(), paramInt, a.j.TextAppearance);
    if (localbo.hasValue(a.j.TextAppearance_android_textColor)) {
      this.kq = localbo.getColorStateList(a.j.TextAppearance_android_textColor);
    }
    if (localbo.hasValue(a.j.TextAppearance_android_textSize)) {
      this.ko = localbo.getDimensionPixelSize(a.j.TextAppearance_android_textSize, (int)this.ko);
    }
    this.kW = localbo.getInt(a.j.TextAppearance_android_shadowColor, 0);
    this.kU = localbo.getFloat(a.j.TextAppearance_android_shadowDx, 0.0F);
    this.kV = localbo.getFloat(a.j.TextAppearance_android_shadowDy, 0.0F);
    this.kT = localbo.getFloat(a.j.TextAppearance_android_shadowRadius, 0.0F);
    localbo.ajT.recycle();
    if (Build.VERSION.SDK_INT >= 16) {
      this.kz = D(paramInt);
    }
    bt();
  }
  
  final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(this.kj, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      this.kj.set(paramInt1, paramInt2, paramInt3, paramInt4);
      this.kL = true;
      bp();
    }
  }
  
  final void a(Typeface paramTypeface)
  {
    this.kz = paramTypeface;
    this.ky = paramTypeface;
    bt();
  }
  
  final void a(Interpolator paramInterpolator)
  {
    this.kO = paramInterpolator;
    bt();
  }
  
  final void b(float paramFloat)
  {
    float f;
    if (paramFloat < 0.0F) {
      f = 0.0F;
    }
    for (;;)
    {
      if (f != this.ki)
      {
        this.ki = f;
        br();
      }
      return;
      f = paramFloat;
      if (paramFloat > 1.0F) {
        f = 1.0F;
      }
    }
  }
  
  final void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(this.kk, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      this.kk.set(paramInt1, paramInt2, paramInt3, paramInt4);
      this.kL = true;
      bp();
    }
  }
  
  final void b(ColorStateList paramColorStateList)
  {
    if (this.kr != paramColorStateList)
    {
      this.kr = paramColorStateList;
      bt();
    }
  }
  
  final Typeface bq()
  {
    if (this.ky != null) {
      return this.ky;
    }
    return Typeface.DEFAULT;
  }
  
  public final void bt()
  {
    int j = 1;
    float f2 = 0.0F;
    float f3;
    float f1;
    int i;
    if ((this.mView.getHeight() > 0) && (this.mView.getWidth() > 0))
    {
      f3 = this.kJ;
      e(this.kp);
      if (this.kC == null) {
        break label402;
      }
      f1 = this.kM.measureText(this.kC, 0, this.kC.length());
      int k = this.kn;
      if (!this.hm) {
        break label407;
      }
      i = 1;
      label83:
      i = android.support.v4.view.e.getAbsoluteGravity(k, i);
      switch (i & 0x70)
      {
      default: 
        this.kt = ((this.kM.descent() - this.kM.ascent()) / 2.0F - this.kM.descent() + this.kk.centerY());
        label162:
        switch (i & 0x800007)
        {
        default: 
          this.kv = this.kk.left;
          label208:
          e(this.ko);
          f1 = f2;
          if (this.kC != null) {
            f1 = this.kM.measureText(this.kC, 0, this.kC.length());
          }
          k = this.km;
          if (this.hm)
          {
            i = j;
            label264:
            i = android.support.v4.view.e.getAbsoluteGravity(k, i);
            switch (i & 0x70)
            {
            default: 
              this.ks = ((this.kM.descent() - this.kM.ascent()) / 2.0F - this.kM.descent() + this.kj.centerY());
              label342:
              switch (i & 0x800007)
              {
              default: 
                this.ku = this.kj.left;
              }
              break;
            }
          }
          break;
        }
        break;
      }
    }
    for (;;)
    {
      bu();
      d(f3);
      br();
      return;
      label402:
      f1 = 0.0F;
      break;
      label407:
      i = 0;
      break label83;
      this.kt = this.kk.bottom;
      break label162;
      this.kt = (this.kk.top - this.kM.ascent());
      break label162;
      this.kv = (this.kk.centerX() - f1 / 2.0F);
      break label208;
      this.kv = (this.kk.right - f1);
      break label208;
      i = 0;
      break label264;
      this.ks = this.kj.bottom;
      break label342;
      this.ks = (this.kj.top - this.kM.ascent());
      break label342;
      this.ku = (this.kj.centerX() - f1 / 2.0F);
      continue;
      this.ku = (this.kj.right - f1);
    }
  }
  
  final void c(ColorStateList paramColorStateList)
  {
    if (this.kq != paramColorStateList)
    {
      this.kq = paramColorStateList;
      bt();
    }
  }
  
  public final void draw(Canvas paramCanvas)
  {
    int j = paramCanvas.save();
    float f4;
    int i;
    float f1;
    label64:
    float f2;
    if ((this.kC != null) && (this.kh))
    {
      f4 = this.kw;
      float f3 = this.kx;
      if ((!this.kD) || (this.kE == null)) {
        break label128;
      }
      i = 1;
      if (i == 0) {
        break label134;
      }
      f1 = this.kG * this.kI;
      f2 = f3;
      if (i != 0) {
        f2 = f3 + f1;
      }
      if (this.kI != 1.0F) {
        paramCanvas.scale(this.kI, this.kI, f4, f2);
      }
      if (i == 0) {
        break label155;
      }
      paramCanvas.drawBitmap(this.kE, f4, f2, this.kF);
    }
    for (;;)
    {
      paramCanvas.restoreToCount(j);
      return;
      label128:
      i = 0;
      break;
      label134:
      this.kM.ascent();
      f1 = 0.0F;
      this.kM.descent();
      break label64;
      label155:
      paramCanvas.drawText(this.kC, 0, this.kC.length(), f4, f2, this.kM);
    }
  }
  
  final boolean setState(int[] paramArrayOfInt)
  {
    this.kK = paramArrayOfInt;
    if (((this.kr != null) && (this.kr.isStateful())) || ((this.kq != null) && (this.kq.isStateful()))) {}
    for (int i = 1; i != 0; i = 0)
    {
      bt();
      return true;
    }
    return false;
  }
  
  final void setText(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (!paramCharSequence.equals(this.kB)))
    {
      this.kB = paramCharSequence;
      this.kC = null;
      bu();
      bt();
    }
  }
  
  final void z(int paramInt)
  {
    if (this.km != paramInt)
    {
      this.km = paramInt;
      bt();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */