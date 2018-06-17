package com.intercom.input.gallery;

import android.content.res.Resources;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.u;
import android.view.View;

public final class j
  extends RecyclerView.h
{
  private final int bmk;
  
  public j(int paramInt)
  {
    this.bmk = paramInt;
  }
  
  public final void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.u paramu)
  {
    int i = paramRecyclerView.getResources().getInteger(m.e.intercom_composer_expanded_column_count);
    int j = RecyclerView.aO(paramView);
    if ((j >= 0) && (j < i)) {
      paramRect.set(0, paramRecyclerView.getResources().getDimensionPixelOffset(this.bmk), 0, 0);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */