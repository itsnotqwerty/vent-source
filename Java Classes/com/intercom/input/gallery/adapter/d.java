package com.intercom.input.gallery.adapter;

import android.support.v7.widget.RecyclerView.x;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.intercom.input.gallery.m.d;

final class d
  extends RecyclerView.x
{
  final ImageView blB;
  
  d(View paramView, final e parame)
  {
    super(paramView);
    this.blB = ((ImageView)paramView.findViewById(m.d.thumbnail));
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        parame.onImageClicked(d.this);
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/adapter/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */