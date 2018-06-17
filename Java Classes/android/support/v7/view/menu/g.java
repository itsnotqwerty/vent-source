package android.support.v7.view.menu;

import android.support.v7.a.a.g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

public final class g
  extends BaseAdapter
{
  static final int RW = a.g.abc_popup_menu_item_layout;
  private final LayoutInflater JR;
  private int RU = -1;
  public h RX;
  private final boolean Re;
  boolean Rt;
  
  public g(h paramh, LayoutInflater paramLayoutInflater, boolean paramBoolean)
  {
    this.Re = paramBoolean;
    this.JR = paramLayoutInflater;
    this.RX = paramh;
    ff();
  }
  
  private void ff()
  {
    j localj = this.RX.St;
    if (localj != null)
    {
      ArrayList localArrayList = this.RX.fp();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((j)localArrayList.get(i) == localj)
        {
          this.RU = i;
          return;
        }
        i += 1;
      }
    }
    this.RU = -1;
  }
  
  public final j aW(int paramInt)
  {
    if (this.Re) {}
    for (ArrayList localArrayList = this.RX.fp();; localArrayList = this.RX.fn())
    {
      int i = paramInt;
      if (this.RU >= 0)
      {
        i = paramInt;
        if (paramInt >= this.RU) {
          i = paramInt + 1;
        }
      }
      return (j)localArrayList.get(i);
    }
  }
  
  public final int getCount()
  {
    if (this.Re) {}
    for (ArrayList localArrayList = this.RX.fp(); this.RU < 0; localArrayList = this.RX.fn()) {
      return localArrayList.size();
    }
    return localArrayList.size() - 1;
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = this.JR.inflate(RW, paramViewGroup, false);
    }
    for (;;)
    {
      paramViewGroup = (p.a)paramView;
      if (this.Rt) {
        ((ListMenuItemView)paramView).setForceShowIcon(true);
      }
      paramViewGroup.a(aW(paramInt));
      return paramView;
    }
  }
  
  public final void notifyDataSetChanged()
  {
    ff();
    super.notifyDataSetChanged();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */