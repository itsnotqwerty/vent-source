package android.support.v7.widget;

import android.view.View;

public abstract class bi
  extends RecyclerView.f
{
  public boolean aic = true;
  
  public abstract boolean a(RecyclerView.x paramx);
  
  public abstract boolean a(RecyclerView.x paramx, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean a(RecyclerView.x paramx1, RecyclerView.x paramx2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public final boolean a(RecyclerView.x paramx1, RecyclerView.x paramx2, RecyclerView.f.b paramb1, RecyclerView.f.b paramb2)
  {
    int k = paramb1.left;
    int m = paramb1.top;
    int i;
    if (paramx2.shouldIgnore()) {
      i = paramb1.left;
    }
    for (int j = paramb1.top;; j = paramb2.top)
    {
      return a(paramx1, paramx2, k, m, i, j);
      i = paramb2.left;
    }
  }
  
  public abstract boolean b(RecyclerView.x paramx);
  
  public final boolean d(RecyclerView.x paramx, RecyclerView.f.b paramb1, RecyclerView.f.b paramb2)
  {
    int k = paramb1.left;
    int m = paramb1.top;
    paramb1 = paramx.itemView;
    int i;
    if (paramb2 == null)
    {
      i = paramb1.getLeft();
      if (paramb2 != null) {
        break label103;
      }
    }
    label103:
    for (int j = paramb1.getTop();; j = paramb2.top)
    {
      if ((paramx.isRemoved()) || ((k == i) && (m == j))) {
        break label112;
      }
      paramb1.layout(i, j, paramb1.getWidth() + i, paramb1.getHeight() + j);
      return a(paramx, k, m, i, j);
      i = paramb2.left;
      break;
    }
    label112:
    return a(paramx);
  }
  
  public final boolean e(RecyclerView.x paramx, RecyclerView.f.b paramb1, RecyclerView.f.b paramb2)
  {
    if ((paramb1 != null) && ((paramb1.left != paramb2.left) || (paramb1.top != paramb2.top))) {
      return a(paramx, paramb1.left, paramb1.top, paramb2.left, paramb2.top);
    }
    return b(paramx);
  }
  
  public final boolean f(RecyclerView.x paramx, RecyclerView.f.b paramb1, RecyclerView.f.b paramb2)
  {
    if ((paramb1.left != paramb2.left) || (paramb1.top != paramb2.top)) {
      return a(paramx, paramb1.left, paramb1.top, paramb2.left, paramb2.top);
    }
    k(paramx);
    return false;
  }
  
  public final boolean l(RecyclerView.x paramx)
  {
    return (!this.aic) || (paramx.isInvalid());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */