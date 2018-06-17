package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.support.v7.b.a.b;
import android.support.v7.b.a.c;

final class be
  extends Drawable
{
  static a agx;
  private static final double nk = Math.cos(Math.toRadians(45.0D));
  ColorStateList agv;
  final int agw;
  private final RectF agy;
  private Paint jT;
  private Paint nl;
  private Paint nm;
  float no;
  private Path np;
  float nr;
  private float ns;
  float nt;
  boolean nu = true;
  private final int nv;
  private final int nx;
  private boolean ny = true;
  private boolean nz = false;
  
  be(Resources paramResources, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.nv = paramResources.getColor(a.b.cardview_shadow_start_color);
    this.nx = paramResources.getColor(a.b.cardview_shadow_end_color);
    this.agw = paramResources.getDimensionPixelSize(a.c.cardview_compat_inset_shadow);
    this.jT = new Paint(5);
    e(paramColorStateList);
    this.nl = new Paint(5);
    this.nl.setStyle(Paint.Style.FILL);
    this.no = ((int)(0.5F + paramFloat1));
    this.agy = new RectF();
    this.nm = new Paint(this.nl);
    this.nm.setAntiAlias(false);
    c(paramFloat2, paramFloat3);
  }
  
  static float a(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return (float)(1.5F * paramFloat1 + (1.0D - nk) * paramFloat2);
    }
    return 1.5F * paramFloat1;
  }
  
  static float b(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    float f = paramFloat1;
    if (paramBoolean) {
      f = (float)(paramFloat1 + (1.0D - nk) * paramFloat2);
    }
    return f;
  }
  
  private static int f(float paramFloat)
  {
    int j = (int)(0.5F + paramFloat);
    int i = j;
    if (j % 2 == 1) {
      i = j - 1;
    }
    return i;
  }
  
  final void ad(boolean paramBoolean)
  {
    this.ny = paramBoolean;
    invalidateSelf();
  }
  
  final void c(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 < 0.0F) {
      throw new IllegalArgumentException("Invalid shadow size " + paramFloat1 + ". Must be >= 0");
    }
    if (paramFloat2 < 0.0F) {
      throw new IllegalArgumentException("Invalid max shadow size " + paramFloat2 + ". Must be >= 0");
    }
    float f = f(paramFloat1);
    paramFloat2 = f(paramFloat2);
    paramFloat1 = f;
    if (f > paramFloat2)
    {
      if (!this.nz) {
        this.nz = true;
      }
      paramFloat1 = paramFloat2;
    }
    if ((this.nt == paramFloat1) && (this.nr == paramFloat2)) {
      return;
    }
    this.nt = paramFloat1;
    this.nr = paramFloat2;
    this.ns = ((int)(paramFloat1 * 1.5F + this.agw + 0.5F));
    this.nu = true;
    invalidateSelf();
  }
  
  public final void draw(Canvas paramCanvas)
  {
    int j = 1;
    float f1;
    float f2;
    float f3;
    int i;
    int k;
    float f4;
    if (this.nu)
    {
      Object localObject1 = getBounds();
      f1 = this.nr * 1.5F;
      this.agy.set(((Rect)localObject1).left + this.nr, ((Rect)localObject1).top + f1, ((Rect)localObject1).right - this.nr, ((Rect)localObject1).bottom - f1);
      localObject1 = new RectF(-this.no, -this.no, this.no, this.no);
      Object localObject2 = new RectF((RectF)localObject1);
      ((RectF)localObject2).inset(-this.ns, -this.ns);
      if (this.np == null)
      {
        this.np = new Path();
        this.np.setFillType(Path.FillType.EVEN_ODD);
        this.np.moveTo(-this.no, 0.0F);
        this.np.rLineTo(-this.ns, 0.0F);
        this.np.arcTo((RectF)localObject2, 180.0F, 90.0F, false);
        this.np.arcTo((RectF)localObject1, 270.0F, -90.0F, false);
        this.np.close();
        f1 = this.no / (this.no + this.ns);
        localObject1 = this.nl;
        f2 = this.no;
        f3 = this.ns;
        i = this.nv;
        k = this.nv;
        int m = this.nx;
        localObject2 = Shader.TileMode.CLAMP;
        ((Paint)localObject1).setShader(new RadialGradient(0.0F, 0.0F, f2 + f3, new int[] { i, k, m }, new float[] { 0.0F, f1, 1.0F }, (Shader.TileMode)localObject2));
        localObject1 = this.nm;
        f1 = -this.no;
        f2 = this.ns;
        f3 = -this.no;
        f4 = this.ns;
        i = this.nv;
        k = this.nv;
        m = this.nx;
        localObject2 = Shader.TileMode.CLAMP;
        ((Paint)localObject1).setShader(new LinearGradient(0.0F, f1 + f2, 0.0F, f3 - f4, new int[] { i, k, m }, new float[] { 0.0F, 0.5F, 1.0F }, (Shader.TileMode)localObject2));
        this.nm.setAntiAlias(false);
        this.nu = false;
      }
    }
    else
    {
      paramCanvas.translate(0.0F, this.nt / 2.0F);
      f1 = -this.no - this.ns;
      f2 = this.no + this.agw + this.nt / 2.0F;
      if (this.agy.width() - 2.0F * f2 <= 0.0F) {
        break label903;
      }
      i = 1;
      label504:
      if (this.agy.height() - 2.0F * f2 <= 0.0F) {
        break label909;
      }
    }
    for (;;)
    {
      k = paramCanvas.save();
      paramCanvas.translate(this.agy.left + f2, this.agy.top + f2);
      paramCanvas.drawPath(this.np, this.nl);
      if (i != 0) {
        paramCanvas.drawRect(0.0F, f1, this.agy.width() - 2.0F * f2, -this.no, this.nm);
      }
      paramCanvas.restoreToCount(k);
      k = paramCanvas.save();
      paramCanvas.translate(this.agy.right - f2, this.agy.bottom - f2);
      paramCanvas.rotate(180.0F);
      paramCanvas.drawPath(this.np, this.nl);
      if (i != 0)
      {
        f3 = this.agy.width();
        f4 = -this.no;
        paramCanvas.drawRect(0.0F, f1, f3 - 2.0F * f2, this.ns + f4, this.nm);
      }
      paramCanvas.restoreToCount(k);
      i = paramCanvas.save();
      paramCanvas.translate(this.agy.left + f2, this.agy.bottom - f2);
      paramCanvas.rotate(270.0F);
      paramCanvas.drawPath(this.np, this.nl);
      if (j != 0) {
        paramCanvas.drawRect(0.0F, f1, this.agy.height() - 2.0F * f2, -this.no, this.nm);
      }
      paramCanvas.restoreToCount(i);
      i = paramCanvas.save();
      paramCanvas.translate(this.agy.right - f2, this.agy.top + f2);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawPath(this.np, this.nl);
      if (j != 0) {
        paramCanvas.drawRect(0.0F, f1, this.agy.height() - 2.0F * f2, -this.no, this.nm);
      }
      paramCanvas.restoreToCount(i);
      paramCanvas.translate(0.0F, -this.nt / 2.0F);
      agx.a(paramCanvas, this.agy, this.no, this.jT);
      return;
      this.np.reset();
      break;
      label903:
      i = 0;
      break label504;
      label909:
      j = 0;
    }
  }
  
  final void e(ColorStateList paramColorStateList)
  {
    ColorStateList localColorStateList = paramColorStateList;
    if (paramColorStateList == null) {
      localColorStateList = ColorStateList.valueOf(0);
    }
    this.agv = localColorStateList;
    this.jT.setColor(this.agv.getColorForState(getState(), this.agv.getDefaultColor()));
  }
  
  public final int getOpacity()
  {
    return -3;
  }
  
  public final boolean getPadding(Rect paramRect)
  {
    int i = (int)Math.ceil(a(this.nr, this.no, this.ny));
    int j = (int)Math.ceil(b(this.nr, this.no, this.ny));
    paramRect.set(j, i, j, i);
    return true;
  }
  
  public final boolean isStateful()
  {
    return ((this.agv != null) && (this.agv.isStateful())) || (super.isStateful());
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    this.nu = true;
  }
  
  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    int i = this.agv.getColorForState(paramArrayOfInt, this.agv.getDefaultColor());
    if (this.jT.getColor() == i) {
      return false;
    }
    this.jT.setColor(i);
    this.nu = true;
    invalidateSelf();
    return true;
  }
  
  public final void setAlpha(int paramInt)
  {
    this.jT.setAlpha(paramInt);
    this.nl.setAlpha(paramInt);
    this.nm.setAlpha(paramInt);
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    this.jT.setColorFilter(paramColorFilter);
  }
  
  static abstract interface a
  {
    public abstract void a(Canvas paramCanvas, RectF paramRectF, float paramFloat, Paint paramPaint);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/be.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */