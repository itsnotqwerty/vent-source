package com.vent.views;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v7.app.d;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

public final class b
{
  private static final int[] col = { -1890406, -1897650, -7197008, -13199912, -16733818, 53248, -110042 };
  private int com;
  private View con;
  private View coo;
  private View cop;
  Animation coq;
  private Animation cor;
  long cos;
  boolean cot;
  long cou;
  
  public b(d paramd, Bundle paramBundle)
  {
    this.con = paramd.findViewById(2131296542);
    this.coo = paramd.findViewById(2131296543);
    this.cop = paramd.findViewById(2131296544);
    a(paramd, paramBundle);
  }
  
  public b(d paramd, View paramView, Bundle paramBundle)
  {
    this.con = paramView.findViewById(2131296542);
    this.coo = paramView.findViewById(2131296543);
    this.cop = paramView.findViewById(2131296544);
    a(paramd, paramBundle);
  }
  
  private static Drawable a(d paramd, int paramInt)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramd.getWindow().getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = col[(paramInt % col.length)];
    int j = col[((paramInt + 1) % col.length)];
    paramInt = col[((paramInt + 2) % col.length)];
    paramd = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[] { paramInt, j, i });
    paramd.setGradientCenter(0.5F, 0.925F);
    paramd.setShape(0);
    paramd.setGradientType(1);
    paramd.setDither(true);
    paramInt = localDisplayMetrics.widthPixels / 2;
    i = localDisplayMetrics.widthPixels / 2;
    j = localDisplayMetrics.heightPixels;
    paramd.setGradientRadius((int)Math.sqrt(localDisplayMetrics.heightPixels * j + paramInt * i));
    return paramd;
  }
  
  private void a(final d paramd, Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      this.com = 1;
      x();
    }
    for (;;)
    {
      this.coq.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          if (b.this.coq != null)
          {
            if (b.this.cot)
            {
              b.this.x();
              b.this.coq.setAnimationListener(this);
            }
            b.this.c(paramd);
          }
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation)
        {
          b.this.cos = SystemClock.elapsedRealtime();
          if (b.this.cot)
          {
            paramAnonymousAnimation = b.this;
            paramAnonymousAnimation.cos -= b.this.cou;
          }
        }
      });
      int j = this.com - 1;
      int i = j;
      if (j < 0) {
        i = j + col.length;
      }
      this.cop.setBackgroundDrawable(a(paramd, i));
      c(paramd);
      return;
      this.com = paramBundle.getInt("animpos", 1);
      float f = paramBundle.getFloat("alpha", 0.0F);
      long l = Math.round(5000.0F * (1.0F - f));
      this.coq = new AlphaAnimation(f, 1.0F);
      this.coq.setDuration(l);
      this.cor = new AlphaAnimation(1.0F - f, 0.0F);
      this.cor.setDuration(l);
      this.cot = true;
      this.cou = (5000L - l);
    }
  }
  
  public final Bundle FC()
  {
    long l1 = 0L;
    int j = this.com - 1;
    int i = j;
    if (j < 0) {
      i = j + col.length;
    }
    long l2 = SystemClock.elapsedRealtime() - this.cos;
    if (l2 < 0L) {}
    for (;;)
    {
      float f = (float)l1 / 5000.0F;
      Bundle localBundle = new Bundle();
      localBundle.putInt("animpos", i);
      localBundle.putFloat("alpha", f);
      return localBundle;
      if (l2 > 5000L) {
        l1 = 5000L;
      } else {
        l1 = l2;
      }
    }
  }
  
  public final void FD()
  {
    if (this.coq != null)
    {
      this.coq.cancel();
      this.coq = null;
    }
    if (this.cor != null)
    {
      this.cor.cancel();
      this.cor = null;
    }
    if (this.coo != null)
    {
      this.coo.setBackgroundColor(0);
      this.coo.setVisibility(8);
      this.coo = null;
    }
    if (this.cop != null)
    {
      this.cop.setBackgroundColor(0);
      this.cop.setVisibility(8);
      this.cop = null;
    }
    if (this.con != null)
    {
      this.con.setVisibility(8);
      this.con = null;
    }
  }
  
  final void c(d paramd)
  {
    this.con.setVisibility(0);
    this.coo.setVisibility(0);
    this.cop.setVisibility(0);
    this.coo.setBackgroundDrawable(a(paramd, this.com));
    this.coo.startAnimation(this.coq);
    this.cop.startAnimation(this.cor);
    paramd = this.coo;
    this.coo = this.cop;
    this.cop = paramd;
    this.com = ((this.com + 1) % col.length);
  }
  
  final void x()
  {
    this.coq = new AlphaAnimation(0.0F, 1.0F);
    this.coq.setDuration(5000L);
    this.cor = new AlphaAnimation(1.0F, 0.0F);
    this.cor.setDuration(5000L);
    this.cot = false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/views/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */