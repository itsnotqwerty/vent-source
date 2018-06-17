package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

final class ae
  implements ah
{
  private static bd i(ag paramag)
  {
    return (bd)paramag.gt();
  }
  
  public final float a(ag paramag)
  {
    return i(paramag).ags;
  }
  
  public final void a(ag paramag, float paramFloat)
  {
    paramag = i(paramag);
    if (paramFloat != paramag.agp)
    {
      paramag.agp = paramFloat;
      paramag.f(null);
      paramag.invalidateSelf();
    }
  }
  
  public final void a(ag paramag, Context paramContext, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramag.j(new bd(paramColorStateList, paramFloat1));
    paramContext = paramag.gu();
    paramContext.setClipToOutline(true);
    paramContext.setElevation(paramFloat2);
    b(paramag, paramFloat3);
  }
  
  public final void a(ag paramag, ColorStateList paramColorStateList)
  {
    paramag = i(paramag);
    paramag.e(paramColorStateList);
    paramag.invalidateSelf();
  }
  
  public final float b(ag paramag)
  {
    return i(paramag).agp * 2.0F;
  }
  
  public final void b(ag paramag, float paramFloat)
  {
    bd localbd = i(paramag);
    boolean bool1 = paramag.getUseCompatPadding();
    boolean bool2 = paramag.getPreventCornerOverlap();
    if ((paramFloat != localbd.ags) || (localbd.agt != bool1) || (localbd.agu != bool2))
    {
      localbd.ags = paramFloat;
      localbd.agt = bool1;
      localbd.agu = bool2;
      localbd.f(null);
      localbd.invalidateSelf();
    }
    if (!paramag.getUseCompatPadding())
    {
      paramag.c(0, 0, 0, 0);
      return;
    }
    paramFloat = i(paramag).ags;
    float f = i(paramag).agp;
    int i = (int)Math.ceil(be.b(paramFloat, f, paramag.getPreventCornerOverlap()));
    int j = (int)Math.ceil(be.a(paramFloat, f, paramag.getPreventCornerOverlap()));
    paramag.c(i, j, i, j);
  }
  
  public final float c(ag paramag)
  {
    return i(paramag).agp * 2.0F;
  }
  
  public final void c(ag paramag, float paramFloat)
  {
    paramag.gu().setElevation(paramFloat);
  }
  
  public final float d(ag paramag)
  {
    return i(paramag).agp;
  }
  
  public final float e(ag paramag)
  {
    return paramag.gu().getElevation();
  }
  
  public final void f(ag paramag)
  {
    b(paramag, i(paramag).ags);
  }
  
  public final void g(ag paramag)
  {
    b(paramag, i(paramag).ags);
  }
  
  public final void gv() {}
  
  public final ColorStateList h(ag paramag)
  {
    return i(paramag).agv;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */