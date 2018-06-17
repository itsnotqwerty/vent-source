package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
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
import android.support.design.a.c;

final class k
  extends android.support.v7.d.a.a
{
  static final double nk = Math.cos(Math.toRadians(45.0D));
  float ke;
  final Paint nl;
  final Paint nm;
  final RectF nn;
  float no;
  Path np;
  float nq;
  float nr;
  float ns;
  float nt;
  private boolean nu = true;
  private final int nv;
  private final int nw;
  private final int nx;
  boolean ny = true;
  private boolean nz = false;
  
  public k(Context paramContext, Drawable paramDrawable, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramDrawable);
    this.nv = android.support.v4.content.a.c(paramContext, a.c.design_fab_shadow_start_color);
    this.nw = android.support.v4.content.a.c(paramContext, a.c.design_fab_shadow_mid_color);
    this.nx = android.support.v4.content.a.c(paramContext, a.c.design_fab_shadow_end_color);
    this.nl = new Paint(5);
    this.nl.setStyle(Paint.Style.FILL);
    this.no = Math.round(paramFloat1);
    this.nn = new RectF();
    this.nm = new Paint(this.nl);
    this.nm.setAntiAlias(false);
    c(paramFloat2, paramFloat3);
  }
  
  public static float a(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return (float)(1.5F * paramFloat1 + (1.0D - nk) * paramFloat2);
    }
    return 1.5F * paramFloat1;
  }
  
  public static float b(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    float f = paramFloat1;
    if (paramBoolean) {
      f = (float)(paramFloat1 + (1.0D - nk) * paramFloat2);
    }
    return f;
  }
  
  private static int f(float paramFloat)
  {
    int j = Math.round(paramFloat);
    int i = j;
    if (j % 2 == 1) {
      i = j - 1;
    }
    return i;
  }
  
  final void c(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 < 0.0F) || (paramFloat2 < 0.0F)) {
      throw new IllegalArgumentException("invalid shadow size");
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
    this.ns = Math.round(paramFloat1 * 1.5F);
    this.nq = paramFloat2;
    this.nu = true;
    invalidateSelf();
  }
  
  public final void draw(Canvas paramCanvas)
  {
    float f1;
    float f2;
    float f3;
    int i;
    int k;
    if (this.nu)
    {
      Object localObject = getBounds();
      f1 = this.nr * 1.5F;
      this.nn.set(((Rect)localObject).left + this.nr, ((Rect)localObject).top + f1, ((Rect)localObject).right - this.nr, ((Rect)localObject).bottom - f1);
      this.Cb.setBounds((int)this.nn.left, (int)this.nn.top, (int)this.nn.right, (int)this.nn.bottom);
      localObject = new RectF(-this.no, -this.no, this.no, this.no);
      RectF localRectF = new RectF((RectF)localObject);
      localRectF.inset(-this.ns, -this.ns);
      if (this.np == null)
      {
        this.np = new Path();
        this.np.setFillType(Path.FillType.EVEN_ODD);
        this.np.moveTo(-this.no, 0.0F);
        this.np.rLineTo(-this.ns, 0.0F);
        this.np.arcTo(localRectF, 180.0F, 90.0F, false);
        this.np.arcTo((RectF)localObject, 270.0F, -90.0F, false);
        this.np.close();
        f1 = -localRectF.top;
        if (f1 > 0.0F)
        {
          f2 = this.no / f1;
          f3 = (1.0F - f2) / 2.0F;
          localPaint = this.nl;
          i = this.nv;
          j = this.nw;
          k = this.nx;
          Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
          localPaint.setShader(new RadialGradient(0.0F, 0.0F, f1, new int[] { 0, i, j, k }, new float[] { 0.0F, f2, f2 + f3, 1.0F }, localTileMode));
        }
        Paint localPaint = this.nm;
        f1 = ((RectF)localObject).top;
        f2 = localRectF.top;
        i = this.nv;
        j = this.nw;
        k = this.nx;
        localObject = Shader.TileMode.CLAMP;
        localPaint.setShader(new LinearGradient(0.0F, f1, 0.0F, f2, new int[] { i, j, k }, new float[] { 0.0F, 0.5F, 1.0F }, (Shader.TileMode)localObject));
        this.nm.setAntiAlias(false);
        this.nu = false;
      }
    }
    else
    {
      k = paramCanvas.save();
      paramCanvas.rotate(this.ke, this.nn.centerX(), this.nn.centerY());
      f1 = -this.no - this.ns;
      f2 = this.no;
      if (this.nn.width() - 2.0F * f2 <= 0.0F) {
        break label1061;
      }
      i = 1;
      label535:
      if (this.nn.height() - 2.0F * f2 <= 0.0F) {
        break label1067;
      }
    }
    label1061:
    label1067:
    for (int j = 1;; j = 0)
    {
      float f6 = this.nt;
      float f7 = this.nt;
      f3 = this.nt;
      float f8 = this.nt;
      float f4 = this.nt;
      float f5 = this.nt;
      f3 = f2 / (f3 - f8 * 0.5F + f2);
      f6 = f2 / (f6 - f7 * 0.25F + f2);
      f4 = f2 / (f2 + (f4 - f5 * 1.0F));
      int m = paramCanvas.save();
      paramCanvas.translate(this.nn.left + f2, this.nn.top + f2);
      paramCanvas.scale(f3, f6);
      paramCanvas.drawPath(this.np, this.nl);
      if (i != 0)
      {
        paramCanvas.scale(1.0F / f3, 1.0F);
        paramCanvas.drawRect(0.0F, f1, this.nn.width() - 2.0F * f2, -this.no, this.nm);
      }
      paramCanvas.restoreToCount(m);
      m = paramCanvas.save();
      paramCanvas.translate(this.nn.right - f2, this.nn.bottom - f2);
      paramCanvas.scale(f3, f4);
      paramCanvas.rotate(180.0F);
      paramCanvas.drawPath(this.np, this.nl);
      if (i != 0)
      {
        paramCanvas.scale(1.0F / f3, 1.0F);
        f5 = this.nn.width();
        f7 = -this.no;
        paramCanvas.drawRect(0.0F, f1, f5 - 2.0F * f2, this.ns + f7, this.nm);
      }
      paramCanvas.restoreToCount(m);
      i = paramCanvas.save();
      paramCanvas.translate(this.nn.left + f2, this.nn.bottom - f2);
      paramCanvas.scale(f3, f4);
      paramCanvas.rotate(270.0F);
      paramCanvas.drawPath(this.np, this.nl);
      if (j != 0)
      {
        paramCanvas.scale(1.0F / f4, 1.0F);
        paramCanvas.drawRect(0.0F, f1, this.nn.height() - 2.0F * f2, -this.no, this.nm);
      }
      paramCanvas.restoreToCount(i);
      i = paramCanvas.save();
      paramCanvas.translate(this.nn.right - f2, this.nn.top + f2);
      paramCanvas.scale(f3, f6);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawPath(this.np, this.nl);
      if (j != 0)
      {
        paramCanvas.scale(1.0F / f6, 1.0F);
        paramCanvas.drawRect(0.0F, f1, this.nn.height() - 2.0F * f2, -this.no, this.nm);
      }
      paramCanvas.restoreToCount(i);
      paramCanvas.restoreToCount(k);
      super.draw(paramCanvas);
      return;
      this.np.reset();
      break;
      i = 0;
      break label535;
    }
  }
  
  public final void g(float paramFloat)
  {
    c(paramFloat, this.nr);
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
  
  protected final void onBoundsChange(Rect paramRect)
  {
    this.nu = true;
  }
  
  public final void setAlpha(int paramInt)
  {
    super.setAlpha(paramInt);
    this.nl.setAlpha(paramInt);
    this.nm.setAlpha(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */