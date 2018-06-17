package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

class af
  implements ah
{
  final RectF Xx = new RectF();
  
  private void j(ag paramag)
  {
    Rect localRect = new Rect();
    k(paramag).getPadding(localRect);
    paramag.B((int)Math.ceil(b(paramag)), (int)Math.ceil(c(paramag)));
    paramag.c(localRect.left, localRect.top, localRect.right, localRect.bottom);
  }
  
  private static be k(ag paramag)
  {
    return (be)paramag.gt();
  }
  
  public final float a(ag paramag)
  {
    return k(paramag).nr;
  }
  
  public final void a(ag paramag, float paramFloat)
  {
    be localbe = k(paramag);
    if (paramFloat < 0.0F) {
      throw new IllegalArgumentException("Invalid radius " + paramFloat + ". Must be >= 0");
    }
    paramFloat = (int)(0.5F + paramFloat);
    if (localbe.no != paramFloat)
    {
      localbe.no = paramFloat;
      localbe.nu = true;
      localbe.invalidateSelf();
    }
    j(paramag);
  }
  
  public final void a(ag paramag, Context paramContext, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramContext = new be(paramContext.getResources(), paramColorStateList, paramFloat1, paramFloat2, paramFloat3);
    paramContext.ad(paramag.getPreventCornerOverlap());
    paramag.j(paramContext);
    j(paramag);
  }
  
  public final void a(ag paramag, ColorStateList paramColorStateList)
  {
    paramag = k(paramag);
    paramag.e(paramColorStateList);
    paramag.invalidateSelf();
  }
  
  public final float b(ag paramag)
  {
    paramag = k(paramag);
    float f1 = Math.max(paramag.nr, paramag.no + paramag.agw + paramag.nr / 2.0F);
    float f2 = paramag.nr;
    return (paramag.agw + f2) * 2.0F + f1 * 2.0F;
  }
  
  public final void b(ag paramag, float paramFloat)
  {
    be localbe = k(paramag);
    localbe.c(localbe.nt, paramFloat);
    j(paramag);
  }
  
  public final float c(ag paramag)
  {
    paramag = k(paramag);
    float f1 = Math.max(paramag.nr, paramag.no + paramag.agw + paramag.nr * 1.5F / 2.0F);
    float f2 = paramag.nr;
    return (paramag.agw + f2 * 1.5F) * 2.0F + f1 * 2.0F;
  }
  
  public final void c(ag paramag, float paramFloat)
  {
    paramag = k(paramag);
    paramag.c(paramFloat, paramag.nr);
  }
  
  public final float d(ag paramag)
  {
    return k(paramag).no;
  }
  
  public final float e(ag paramag)
  {
    return k(paramag).nt;
  }
  
  public final void f(ag paramag) {}
  
  public final void g(ag paramag)
  {
    k(paramag).ad(paramag.getPreventCornerOverlap());
    j(paramag);
  }
  
  public void gv()
  {
    be.agx = new be.a()
    {
      public final void a(Canvas paramAnonymousCanvas, RectF paramAnonymousRectF, float paramAnonymousFloat, Paint paramAnonymousPaint)
      {
        float f1 = 2.0F * paramAnonymousFloat;
        float f2 = paramAnonymousRectF.width() - f1 - 1.0F;
        float f3 = paramAnonymousRectF.height();
        if (paramAnonymousFloat >= 1.0F)
        {
          float f4 = paramAnonymousFloat + 0.5F;
          af.this.Xx.set(-f4, -f4, f4, f4);
          int i = paramAnonymousCanvas.save();
          paramAnonymousCanvas.translate(paramAnonymousRectF.left + f4, paramAnonymousRectF.top + f4);
          paramAnonymousCanvas.drawArc(af.this.Xx, 180.0F, 90.0F, true, paramAnonymousPaint);
          paramAnonymousCanvas.translate(f2, 0.0F);
          paramAnonymousCanvas.rotate(90.0F);
          paramAnonymousCanvas.drawArc(af.this.Xx, 180.0F, 90.0F, true, paramAnonymousPaint);
          paramAnonymousCanvas.translate(f3 - f1 - 1.0F, 0.0F);
          paramAnonymousCanvas.rotate(90.0F);
          paramAnonymousCanvas.drawArc(af.this.Xx, 180.0F, 90.0F, true, paramAnonymousPaint);
          paramAnonymousCanvas.translate(f2, 0.0F);
          paramAnonymousCanvas.rotate(90.0F);
          paramAnonymousCanvas.drawArc(af.this.Xx, 180.0F, 90.0F, true, paramAnonymousPaint);
          paramAnonymousCanvas.restoreToCount(i);
          paramAnonymousCanvas.drawRect(paramAnonymousRectF.left + f4 - 1.0F, paramAnonymousRectF.top, 1.0F + (paramAnonymousRectF.right - f4), paramAnonymousRectF.top + f4, paramAnonymousPaint);
          paramAnonymousCanvas.drawRect(paramAnonymousRectF.left + f4 - 1.0F, paramAnonymousRectF.bottom - f4, 1.0F + (paramAnonymousRectF.right - f4), paramAnonymousRectF.bottom, paramAnonymousPaint);
        }
        paramAnonymousCanvas.drawRect(paramAnonymousRectF.left, paramAnonymousRectF.top + paramAnonymousFloat, paramAnonymousRectF.right, paramAnonymousRectF.bottom - paramAnonymousFloat, paramAnonymousPaint);
      }
    };
  }
  
  public final ColorStateList h(ag paramag)
  {
    return k(paramag).agv;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */