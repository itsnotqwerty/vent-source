package android.support.v7.view.menu;

import android.content.Context;
import android.support.v7.a.a.g;
import android.support.v7.app.c;
import android.support.v7.app.c.a;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

public final class f
  implements o, AdapterView.OnItemClickListener
{
  public LayoutInflater JR;
  h Pj;
  public o.a QU;
  int QW;
  public ExpandedMenuView RQ;
  int RR;
  int RS;
  public a RT;
  Context mContext;
  
  private f(int paramInt)
  {
    this.QW = paramInt;
    this.RS = 0;
  }
  
  public f(Context paramContext, int paramInt)
  {
    this(paramInt);
    this.mContext = paramContext;
    this.JR = LayoutInflater.from(this.mContext);
  }
  
  public final void G(boolean paramBoolean)
  {
    if (this.RT != null) {
      this.RT.notifyDataSetChanged();
    }
  }
  
  public final void a(Context paramContext, h paramh)
  {
    if (this.RS != 0)
    {
      this.mContext = new ContextThemeWrapper(paramContext, this.RS);
      this.JR = LayoutInflater.from(this.mContext);
    }
    for (;;)
    {
      this.Pj = paramh;
      if (this.RT != null) {
        this.RT.notifyDataSetChanged();
      }
      return;
      if (this.mContext != null)
      {
        this.mContext = paramContext;
        if (this.JR == null) {
          this.JR = LayoutInflater.from(this.mContext);
        }
      }
    }
  }
  
  public final void a(h paramh, boolean paramBoolean)
  {
    if (this.QU != null) {
      this.QU.a(paramh, paramBoolean);
    }
  }
  
  public final void a(o.a parama)
  {
    this.QU = parama;
  }
  
  public final boolean a(u paramu)
  {
    if (!paramu.hasVisibleItems()) {
      return false;
    }
    i locali = new i(paramu);
    Object localObject = locali.Pj;
    c.a locala = new c.a(((h)localObject).mContext);
    locali.Sw = new f(locala.getContext(), a.g.abc_list_menu_item_layout);
    locali.Sw.QU = locali;
    locali.Pj.a(locali.Sw);
    locala.setAdapter(locali.Sw.getAdapter(), locali);
    View localView = ((h)localObject).Sl;
    if (localView != null) {
      locala.setCustomTitle(localView);
    }
    for (;;)
    {
      locala.setOnKeyListener(locali);
      locali.Sv = locala.create();
      locali.Sv.setOnDismissListener(locali);
      localObject = locali.Sv.getWindow().getAttributes();
      ((WindowManager.LayoutParams)localObject).type = 1003;
      ((WindowManager.LayoutParams)localObject).flags |= 0x20000;
      locali.Sv.show();
      if (this.QU != null) {
        this.QU.d(paramu);
      }
      return true;
      locala.setIcon(((h)localObject).Sk).setTitle(((h)localObject).Sj);
    }
  }
  
  public final boolean c(j paramj)
  {
    return false;
  }
  
  public final boolean d(j paramj)
  {
    return false;
  }
  
  public final boolean fa()
  {
    return false;
  }
  
  public final ListAdapter getAdapter()
  {
    if (this.RT == null) {
      this.RT = new a();
    }
    return this.RT;
  }
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.Pj.a(this.RT.aW(paramInt), this, 0);
  }
  
  private final class a
    extends BaseAdapter
  {
    private int RU = -1;
    
    public a()
    {
      ff();
    }
    
    private void ff()
    {
      j localj = f.this.Pj.St;
      if (localj != null)
      {
        ArrayList localArrayList = f.this.Pj.fp();
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
      ArrayList localArrayList = f.this.Pj.fp();
      int i = f.this.RR + paramInt;
      paramInt = i;
      if (this.RU >= 0)
      {
        paramInt = i;
        if (i >= this.RU) {
          paramInt = i + 1;
        }
      }
      return (j)localArrayList.get(paramInt);
    }
    
    public final int getCount()
    {
      int i = f.this.Pj.fp().size() - f.this.RR;
      if (this.RU < 0) {
        return i;
      }
      return i - 1;
    }
    
    public final long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null) {
        paramView = f.this.JR.inflate(f.this.QW, paramViewGroup, false);
      }
      for (;;)
      {
        ((p.a)paramView).a(aW(paramInt));
        return paramView;
      }
    }
    
    public final void notifyDataSetChanged()
    {
      ff();
      super.notifyDataSetChanged();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */