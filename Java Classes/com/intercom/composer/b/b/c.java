package com.intercom.composer.b.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.u;
import android.view.View;
import com.intercom.composer.g.c;

public final class c
  extends RecyclerView.h
{
  final int blA;
  
  public c(Context paramContext)
  {
    this.blA = paramContext.getResources().getDimensionPixelSize(g.c.intercom_composer_icon_bar_left_spacing);
  }
  
  public final void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.u paramu)
  {
    if (RecyclerView.aP(paramView) == 0) {
      paramRect.set(this.blA, 0, 0, 0);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/b/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */