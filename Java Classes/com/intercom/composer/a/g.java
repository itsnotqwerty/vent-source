package com.intercom.composer.a;

import android.animation.Animator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView.a;
import java.util.List;

public final class g
  extends f
{
  private final LinearLayoutManager layoutManager;
  
  public g(List<com.intercom.composer.b.b> paramList, com.intercom.composer.pager.a parama, RecyclerView.a parama1, LinearLayoutManager paramLinearLayoutManager, com.intercom.composer.a parama2)
  {
    super(paramList, parama, parama1, parama2);
    this.layoutManager = paramLinearLayoutManager;
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    super.onAnimationEnd(paramAnimator);
    if ((!this.blz) && (!vV()))
    {
      this.bly.di(a.bld);
      this.inputs.add(new com.intercom.composer.b.a.b());
      this.blw.notifyDataSetChanged();
      int i = this.inputs.size() - 1;
      this.blx.notifyItemInserted(i);
      if (this.layoutManager.hs() == i - 1) {
        this.layoutManager.bA(i);
      }
    }
  }
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    super.onAnimationStart(paramAnimator);
    this.bly.di(a.blb);
    this.bly.setSendButtonVisibility(0);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */