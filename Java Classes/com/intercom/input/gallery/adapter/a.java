package com.intercom.input.gallery.adapter;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.n;

public final class a
  extends RecyclerView.n
{
  private final b bmn;
  public int bmo = Integer.MIN_VALUE;
  private final LinearLayoutManager layoutManager;
  
  public a(LinearLayoutManager paramLinearLayoutManager, b paramb)
  {
    this.layoutManager = paramLinearLayoutManager;
    this.bmn = paramb;
  }
  
  public final void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onScrolled(paramRecyclerView, paramInt1, paramInt2);
    paramInt1 = paramRecyclerView.getChildCount();
    paramInt2 = this.layoutManager.getItemCount();
    if ((paramInt2 - paramInt1 <= this.layoutManager.hq()) && (paramInt2 < this.bmo)) {
      this.bmn.onLoadMore();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/adapter/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */