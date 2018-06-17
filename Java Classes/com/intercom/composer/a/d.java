package com.intercom.composer.a;

import android.animation.Animator;
import android.support.v7.widget.RecyclerView.a;
import com.intercom.composer.b.b;
import java.util.List;

public final class d
  extends f
{
  public d(List<b> paramList, com.intercom.composer.pager.a parama, RecyclerView.a parama1, com.intercom.composer.a parama2)
  {
    super(paramList, parama, parama1, parama2);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    super.onAnimationEnd(paramAnimator);
    this.bly.setSendButtonVisibility(8);
    if ((!this.blz) && (vV()))
    {
      this.bly.di(a.blc);
      this.inputs.remove(this.inputs.size() - 1);
      this.blw.notifyDataSetChanged();
      this.blx.notifyItemRemoved(this.inputs.size());
    }
  }
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    super.onAnimationStart(paramAnimator);
    this.bly.di(a.bla);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */