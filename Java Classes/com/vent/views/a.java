package com.vent.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.r;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.j;
import android.view.View;

@SuppressLint({"DuplicateDivider"})
public final class a
  extends RecyclerView.h
{
  private final Drawable abV;
  private int hE;
  
  public a(Context paramContext)
  {
    this.abV = paramContext.getResources().getDrawable(2131230989);
    this.hE = 1;
  }
  
  public final void getItemOffsets(Rect paramRect, int paramInt, RecyclerView paramRecyclerView)
  {
    if (this.hE == 1)
    {
      paramRect.set(0, 0, 0, this.abV.getIntrinsicHeight());
      return;
    }
    paramRect.set(0, 0, this.abV.getIntrinsicWidth(), 0);
  }
  
  public final void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    View localView;
    RecyclerView.j localj;
    int i1;
    int i2;
    if (this.hE == 1)
    {
      j = paramRecyclerView.getPaddingLeft();
      k = paramRecyclerView.getWidth();
      m = paramRecyclerView.getPaddingRight();
      n = paramRecyclerView.getChildCount();
      i = 0;
      while (i < n)
      {
        localView = paramRecyclerView.getChildAt(i);
        localj = (RecyclerView.j)localView.getLayoutParams();
        i1 = localView.getBottom();
        i1 = localj.bottomMargin + i1 + Math.round(r.P(localView));
        i2 = this.abV.getIntrinsicHeight();
        this.abV.setBounds(j, i1, k - m, i2 + i1);
        this.abV.draw(paramCanvas);
        i += 1;
      }
    }
    int j = paramRecyclerView.getPaddingTop();
    int k = paramRecyclerView.getHeight();
    int m = paramRecyclerView.getPaddingBottom();
    int n = paramRecyclerView.getChildCount();
    int i = 0;
    while (i < n)
    {
      localView = paramRecyclerView.getChildAt(i);
      localj = (RecyclerView.j)localView.getLayoutParams();
      i1 = localView.getRight();
      i1 = localj.rightMargin + i1 + Math.round(r.O(localView));
      i2 = this.abV.getIntrinsicHeight();
      this.abV.setBounds(i1, j, i2 + i1, k - m);
      this.abV.draw(paramCanvas);
      i += 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/views/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */