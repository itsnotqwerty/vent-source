package android.support.v7.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class b
  implements o
{
  protected LayoutInflater JR;
  protected h Pj;
  protected Context QS;
  protected LayoutInflater QT;
  public o.a QU;
  private int QV;
  private int QW;
  protected p QX;
  protected Context mContext;
  public int yo;
  
  public b(Context paramContext, int paramInt1, int paramInt2)
  {
    this.QS = paramContext;
    this.QT = LayoutInflater.from(paramContext);
    this.QV = paramInt1;
    this.QW = paramInt2;
  }
  
  public void G(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)this.QX;
    if (localViewGroup == null) {}
    label225:
    label231:
    for (;;)
    {
      return;
      int j;
      if (this.Pj != null)
      {
        this.Pj.fo();
        ArrayList localArrayList = this.Pj.fn();
        int m = localArrayList.size();
        int k = 0;
        int i = 0;
        j = i;
        if (k < m)
        {
          j localj = (j)localArrayList.get(k);
          if (!b(localj)) {
            break label225;
          }
          View localView1 = localViewGroup.getChildAt(i);
          if ((localView1 instanceof p.a)) {}
          for (Object localObject = ((p.a)localView1).getItemData();; localObject = null)
          {
            View localView2 = a(localj, localView1, localViewGroup);
            if (localj != localObject)
            {
              localView2.setPressed(false);
              localView2.jumpDrawablesToCurrentState();
            }
            if (localView2 != localView1)
            {
              localObject = (ViewGroup)localView2.getParent();
              if (localObject != null) {
                ((ViewGroup)localObject).removeView(localView2);
              }
              ((ViewGroup)this.QX).addView(localView2, i);
            }
            i += 1;
            k += 1;
            break;
          }
        }
      }
      for (;;)
      {
        if (j >= localViewGroup.getChildCount()) {
          break label231;
        }
        if (!b(localViewGroup, j))
        {
          j += 1;
          continue;
          break;
          j = 0;
        }
      }
    }
  }
  
  public View a(j paramj, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof p.a)) {}
    for (paramView = (p.a)paramView;; paramView = (p.a)this.QT.inflate(this.QW, paramViewGroup, false))
    {
      a(paramj, paramView);
      return (View)paramView;
    }
  }
  
  public void a(Context paramContext, h paramh)
  {
    this.mContext = paramContext;
    this.JR = LayoutInflater.from(this.mContext);
    this.Pj = paramh;
  }
  
  public void a(h paramh, boolean paramBoolean)
  {
    if (this.QU != null) {
      this.QU.a(paramh, paramBoolean);
    }
  }
  
  public abstract void a(j paramj, p.a parama);
  
  public final void a(o.a parama)
  {
    this.QU = parama;
  }
  
  public boolean a(u paramu)
  {
    if (this.QU != null) {
      return this.QU.d(paramu);
    }
    return false;
  }
  
  public boolean b(j paramj)
  {
    return true;
  }
  
  public boolean b(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public final boolean c(j paramj)
  {
    return false;
  }
  
  public final boolean d(j paramj)
  {
    return false;
  }
  
  public p f(ViewGroup paramViewGroup)
  {
    if (this.QX == null)
    {
      this.QX = ((p)this.QT.inflate(this.QV, paramViewGroup, false));
      this.QX.a(this.Pj);
      G(true);
    }
    return this.QX;
  }
  
  public boolean fa()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */