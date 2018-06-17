package com.intercom.composer.b.b;

import android.support.v7.widget.RecyclerView.x;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.intercom.composer.g.e;

final class d
  extends RecyclerView.x
  implements View.OnClickListener
{
  final ImageView blB;
  final b blC;
  
  d(View paramView, b paramb)
  {
    super(paramView);
    this.blC = paramb;
    this.blB = ((ImageView)paramView.findViewById(g.e.input_icon_image_view));
    this.blB.setOnClickListener(this);
    paramView.setOnClickListener(this);
  }
  
  public final void onClick(View paramView)
  {
    this.blC.z(this);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/b/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */