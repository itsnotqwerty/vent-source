package com.intercom.composer.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.v7.widget.RecyclerView.a;
import java.util.Iterator;
import java.util.List;

abstract class f
  extends AnimatorListenerAdapter
{
  final com.intercom.composer.pager.a blw;
  final RecyclerView.a blx;
  final com.intercom.composer.a bly;
  boolean blz;
  protected final List<com.intercom.composer.b.b> inputs;
  
  f(List<com.intercom.composer.b.b> paramList, com.intercom.composer.pager.a parama, RecyclerView.a parama1, com.intercom.composer.a parama2)
  {
    this.inputs = paramList;
    this.blw = parama;
    this.blx = parama1;
    this.bly = parama2;
  }
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    super.onAnimationCancel(paramAnimator);
    this.blz = true;
  }
  
  final boolean vV()
  {
    Iterator localIterator = this.inputs.iterator();
    while (localIterator.hasNext()) {
      if (((com.intercom.composer.b.b)localIterator.next() instanceof com.intercom.composer.b.a.b)) {
        return true;
      }
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */