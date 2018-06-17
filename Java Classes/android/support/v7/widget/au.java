package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

public final class au
  extends RecyclerView.t
{
  protected final DecelerateInterpolator Kg = new DecelerateInterpolator();
  protected final LinearInterpolator acC = new LinearInterpolator();
  protected PointF acD;
  private final float acE;
  protected int acF = 0;
  protected int acG = 0;
  
  public au(Context paramContext)
  {
    this.acE = (25.0F / paramContext.getResources().getDisplayMetrics().densityDpi);
  }
  
  private static int V(int paramInt1, int paramInt2)
  {
    int i = paramInt1 - paramInt2;
    paramInt2 = i;
    if (paramInt1 * i <= 0) {
      paramInt2 = 0;
    }
    return paramInt2;
  }
  
  private int bC(int paramInt)
  {
    return (int)Math.ceil(Math.abs(paramInt) * this.acE);
  }
  
  private static int d(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    switch (paramInt5)
    {
    default: 
      throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
    case -1: 
      paramInt1 = paramInt3 - paramInt1;
    }
    do
    {
      do
      {
        return paramInt1;
        return paramInt4 - paramInt2;
        paramInt3 -= paramInt1;
        paramInt1 = paramInt3;
      } while (paramInt3 > 0);
      paramInt2 = paramInt4 - paramInt2;
      paramInt1 = paramInt2;
    } while (paramInt2 < 0);
    return 0;
  }
  
  protected final void a(int paramInt1, int paramInt2, RecyclerView.t.a parama)
  {
    if (this.YZ.adQ.getChildCount() == 0) {
      stop();
    }
    do
    {
      return;
      this.acF = V(this.acF, paramInt1);
      this.acG = V(this.acG, paramInt2);
    } while ((this.acF != 0) || (this.acG != 0));
    paramInt1 = this.afJ;
    Object localObject = this.adr;
    if ((localObject instanceof RecyclerView.t.b)) {}
    for (localObject = ((RecyclerView.t.b)localObject).bz(paramInt1); (localObject == null) || ((((PointF)localObject).x == 0.0F) && (((PointF)localObject).y == 0.0F)); localObject = null)
    {
      parama.afQ = this.afJ;
      stop();
      return;
      Log.w("LinearSmoothScroller", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + RecyclerView.t.b.class.getCanonicalName());
    }
    float f = (float)Math.sqrt(((PointF)localObject).x * ((PointF)localObject).x + ((PointF)localObject).y * ((PointF)localObject).y);
    ((PointF)localObject).x /= f;
    ((PointF)localObject).y /= f;
    this.acD = ((PointF)localObject);
    this.acF = ((int)(((PointF)localObject).x * 10000.0F));
    this.acG = ((int)(((PointF)localObject).y * 10000.0F));
    paramInt1 = bC(10000);
    parama.a((int)(this.acF * 1.2F), (int)(this.acG * 1.2F), (int)(paramInt1 * 1.2F), this.acC);
  }
  
  protected final void a(View paramView, RecyclerView.t.a parama)
  {
    int k = 1;
    int m = 0;
    int i;
    RecyclerView.i locali;
    int j;
    if ((this.acD == null) || (this.acD.x == 0.0F))
    {
      i = 0;
      locali = this.adr;
      if ((locali != null) && (locali.hg())) {
        break label169;
      }
      j = 0;
      label49:
      if ((this.acD != null) && (this.acD.y != 0.0F)) {
        break label235;
      }
      i = 0;
      label70:
      locali = this.adr;
      k = m;
      if (locali != null) {
        if (locali.hh()) {
          break label255;
        }
      }
    }
    label169:
    RecyclerView.j localj;
    int n;
    for (k = m;; k = d(k - m, localj.bottomMargin + n, locali.getPaddingTop(), locali.dc - locali.getPaddingBottom(), i))
    {
      i = (int)Math.ceil(bC((int)Math.sqrt(j * j + k * k)) / 0.3356D);
      if (i > 0) {
        parama.a(-j, -k, i, this.Kg);
      }
      return;
      if (this.acD.x > 0.0F)
      {
        i = 1;
        break;
      }
      i = -1;
      break;
      localj = (RecyclerView.j)paramView.getLayoutParams();
      j = RecyclerView.i.aW(paramView);
      n = localj.leftMargin;
      int i1 = RecyclerView.i.aY(paramView);
      j = d(j - n, localj.rightMargin + i1, locali.getPaddingLeft(), locali.db - locali.getPaddingRight(), i);
      break label49;
      label235:
      i = k;
      if (this.acD.y > 0.0F) {
        break label70;
      }
      i = -1;
      break label70;
      label255:
      localj = (RecyclerView.j)paramView.getLayoutParams();
      k = RecyclerView.i.aX(paramView);
      m = localj.topMargin;
      n = RecyclerView.i.aZ(paramView);
    }
  }
  
  protected final void onStop()
  {
    this.acG = 0;
    this.acF = 0;
    this.acD = null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */