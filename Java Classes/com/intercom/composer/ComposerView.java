package com.intercom.composer;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.n;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.x;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.intercom.composer.a.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ComposerView
  extends LinearLayout
  implements a, com.intercom.composer.b.b.b, com.intercom.composer.b.b.f, com.intercom.composer.b.c.a.a, com.intercom.composer.d.a
{
  RecyclerView bkK;
  LinearLayout bkL;
  ViewPager bkM;
  ImageView bkN;
  View bkO;
  View bkP;
  View bkQ;
  public com.intercom.composer.b.b.e bkR;
  public com.intercom.composer.c.a bkS;
  com.intercom.composer.a.b bkT;
  private final com.intercom.composer.c.d bkU;
  private com.intercom.composer.b.c.a.a bkV;
  f bkW;
  com.intercom.composer.a.e bkX;
  int bkY = com.intercom.composer.a.a.ble;
  final com.intercom.composer.d.b bkZ;
  public final List<com.intercom.composer.b.b> inputs = new ArrayList();
  private final LinearLayoutManager layoutManager;
  
  public ComposerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ComposerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ComposerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOrientation(1);
    inflate(paramContext, g.f.intercom_composer_view_layout, this);
    this.bkP = findViewById(g.e.composer_upper_border);
    this.bkQ = findViewById(g.e.composer_lower_border);
    this.bkL = ((LinearLayout)findViewById(g.e.composer_edit_text_layout));
    this.bkK = ((RecyclerView)findViewById(g.e.composer_input_icons_recycler_view));
    this.bkM = ((ViewPager)findViewById(g.e.composer_view_pager));
    this.bkN = ((ImageView)findViewById(g.e.send_button));
    this.bkO = findViewById(g.e.send_button_fading_background);
    this.bkU = new com.intercom.composer.c.d(paramContext);
    this.bkS = new com.intercom.composer.c.a((Activity)paramContext, this.bkU, this.bkL, this.bkM);
    this.bkT = new com.intercom.composer.a.b(this.bkL);
    this.layoutManager = new LinearLayoutManager(paramContext, 0, false);
    this.bkK.setLayoutManager(this.layoutManager);
    this.bkK.a(new com.intercom.composer.b.b.c(paramContext));
    this.bkZ = new com.intercom.composer.d.b(this);
  }
  
  private boolean vU()
  {
    Iterator localIterator = this.inputs.iterator();
    while (localIterator.hasNext()) {
      if (((com.intercom.composer.b.b)localIterator.next() instanceof com.intercom.composer.b.c.b)) {
        return true;
      }
    }
    return false;
  }
  
  public final void a(com.intercom.composer.b.b paramb, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool2 = true;
    Object localObject1;
    if ((paramb instanceof com.intercom.composer.b.c.b))
    {
      localObject2 = (com.intercom.composer.b.c.b)paramb;
      localObject1 = ((com.intercom.composer.b.c.b)localObject2).getEditText();
      localObject2 = ((com.intercom.composer.b.c.b)localObject2).getOptions();
      this.bkL.removeAllViews();
      Object localObject3 = ((View)localObject1).getParent();
      if ((localObject3 instanceof ViewGroup)) {
        ((ViewGroup)localObject3).removeView((View)localObject1);
      }
      localObject3 = new LinearLayout.LayoutParams(0, -2, 1.0F);
      this.bkL.addView((View)localObject1, (ViewGroup.LayoutParams)localObject3);
      this.bkN.setOnClickListener(new com.intercom.composer.b.c.a.b(this, (EditText)localObject1));
      ((EditText)localObject1).addTextChangedListener(this.bkZ);
      if (!TextUtils.isEmpty(((EditText)localObject1).getText())) {}
      int j;
      for (boolean bool1 = true;; bool1 = false)
      {
        aI(bool1);
        if (localObject2 == null) {
          break;
        }
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (com.intercom.composer.b.c.b.b)((Iterator)localObject2).next();
          i = getResources().getDimensionPixelSize(g.c.intercom_composer_editable_text_input_option_padding);
          j = getResources().getDimensionPixelSize(g.c.intercom_composer_editable_text_input_option_padding_bottom);
          ImageView localImageView = new ImageView(getContext());
          localImageView.setImageResource(((com.intercom.composer.b.c.b.b)localObject3).blL);
          localImageView.setPadding(i, i, i, j);
          localImageView.setOnClickListener(new com.intercom.composer.b.c.b.a((com.intercom.composer.b.c.b.b)localObject3));
          this.bkL.addView(localImageView);
        }
      }
      localObject2 = this.bkT;
      if ((((com.intercom.composer.a.b)localObject2).blj == com.intercom.composer.a.a.bla) && (((com.intercom.composer.a.b)localObject2).bli != null)) {
        ((com.intercom.composer.a.b)localObject2).bli.cancel();
      }
      long l;
      if (((com.intercom.composer.a.b)localObject2).blj == com.intercom.composer.a.a.blc)
      {
        ((com.intercom.composer.a.b)localObject2).bli = ObjectAnimator.ofFloat(((com.intercom.composer.a.b)localObject2).blg, "layout_marginBottom", new float[] { -((com.intercom.composer.a.b)localObject2).blg.getHeight(), 0.0F });
        localObject3 = ((com.intercom.composer.a.b)localObject2).bli;
        if (paramBoolean2)
        {
          l = 350L;
          ((ObjectAnimator)localObject3).setDuration(l);
          ((com.intercom.composer.a.b)localObject2).bli.setInterpolator(new android.support.v4.view.b.b());
          ((com.intercom.composer.a.b)localObject2).bli.addUpdateListener(((com.intercom.composer.a.b)localObject2).blm);
          ((com.intercom.composer.a.b)localObject2).bli.addListener(((com.intercom.composer.a.b)localObject2).blk);
          ((com.intercom.composer.a.b)localObject2).bli.start();
        }
      }
      else
      {
        if (paramBoolean1)
        {
          ((EditText)localObject1).requestFocus();
          ((InputMethodManager)((EditText)localObject1).getContext().getSystemService("input_method")).showSoftInput((View)localObject1, 0);
          if ((((EditText)localObject1).getContext().getResources().getBoolean(g.a.intercom_composer_keyboard_takes_full_screen_in_landscape)) && (this.bkU.getOrientation() == 2)) {
            this.bkS.vX();
          }
        }
        if (TextUtils.isEmpty(((EditText)localObject1).getText())) {
          break label573;
        }
      }
      label573:
      for (paramBoolean1 = bool2;; paramBoolean1 = false)
      {
        aI(paramBoolean1);
        i = paramb.getBackgroundColor();
        j = paramb.getBorderColor();
        this.bkL.setBackgroundResource(i);
        this.bkK.setBackgroundResource(i);
        this.bkO.setBackgroundResource(i);
        this.bkP.setBackgroundResource(j);
        this.bkQ.setBackgroundResource(j);
        this.bkM.d(paramInt, false);
        return;
        l = 0L;
        break;
      }
    }
    Object localObject2 = this.bkS;
    int i = ((com.intercom.composer.c.a)localObject2).bkU.getOrientation();
    if (((com.intercom.composer.c.a)localObject2).blM.vZ())
    {
      ((com.intercom.composer.c.a)localObject2).blO.getLayoutParams().height = ((com.intercom.composer.c.a)localObject2).blM.dk(i);
      ((com.intercom.composer.c.a)localObject2).blO.requestLayout();
      ((com.intercom.composer.c.a)localObject2).blN.setSoftInputMode(32);
      if (((com.intercom.composer.c.a)localObject2).blM.vZ())
      {
        localObject1 = ((com.intercom.composer.c.a)localObject2).blM;
        localObject2 = ((com.intercom.composer.c.a)localObject2).blg;
        ((com.intercom.composer.c.b)localObject1).blQ.hideSoftInputFromWindow(((View)localObject2).getWindowToken(), 0);
      }
    }
    for (;;)
    {
      this.bkL.clearFocus();
      localObject1 = this.bkT;
      if ((((com.intercom.composer.a.b)localObject1).blj == com.intercom.composer.a.a.blb) && (((com.intercom.composer.a.b)localObject1).bli != null)) {
        ((com.intercom.composer.a.b)localObject1).bli.cancel();
      }
      if (((com.intercom.composer.a.b)localObject1).blj == com.intercom.composer.a.a.bld)
      {
        ((com.intercom.composer.a.b)localObject1).bli = ObjectAnimator.ofFloat(((com.intercom.composer.a.b)localObject1).blg, "layout_marginBottom", new float[] { 0.0F, -((com.intercom.composer.a.b)localObject1).blg.getHeight() });
        ((com.intercom.composer.a.b)localObject1).bli.setDuration(350L);
        ((com.intercom.composer.a.b)localObject1).bli.setInterpolator(new android.support.v4.view.b.b());
        ((com.intercom.composer.a.b)localObject1).bli.addUpdateListener(((com.intercom.composer.a.b)localObject1).blm);
        ((com.intercom.composer.a.b)localObject1).bli.addListener(((com.intercom.composer.a.b)localObject1).bll);
        ((com.intercom.composer.a.b)localObject1).bli.start();
      }
      aI(false);
      break;
      if (!((com.intercom.composer.c.a)localObject2).vW())
      {
        ((com.intercom.composer.c.a)localObject2).blO.getLayoutParams().height = ((com.intercom.composer.c.a)localObject2).blM.dk(i);
        ((com.intercom.composer.c.a)localObject2).blO.requestLayout();
        ((com.intercom.composer.c.a)localObject2).blN.setSoftInputMode(32);
      }
    }
  }
  
  public final boolean a(com.intercom.composer.b.b paramb, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.bkW != null) {
      this.bkW.onInputSelected(paramb);
    }
    com.intercom.composer.b.b.e locale = this.bkR;
    if (locale.inputs.indexOf(paramb) == -1) {}
    for (;;)
    {
      return false;
      com.intercom.composer.b.c localc;
      if (paramb == locale.blF)
      {
        localc = paramb.findFragment(locale.blH);
        if (localc != null) {
          localc.onInputReselected();
        }
      }
      while (paramb != locale.blF)
      {
        locale.blF = paramb;
        locale.notifyDataSetChanged();
        locale.blD.a(paramb, locale.inputs.indexOf(paramb), paramBoolean1, paramBoolean2);
        return true;
        if (locale.blF != null)
        {
          localc = locale.blF.findFragment(locale.blH);
          if (localc != null) {
            localc.onInputDeselected();
          }
        }
        localc = paramb.findFragment(locale.blH);
        if (localc != null) {
          localc.onInputSelected();
        }
      }
    }
  }
  
  public final void aI(boolean paramBoolean)
  {
    com.intercom.composer.a.e locale;
    int i;
    float f;
    label79:
    Object localObject2;
    if (this.bkX != null)
    {
      locale = this.bkX;
      i = this.bkY;
      if ((!paramBoolean) || ((i != com.intercom.composer.a.a.bla) && (i != com.intercom.composer.a.a.blc) && (i != com.intercom.composer.a.a.ble))) {
        break label192;
      }
      i = 1;
      if (locale.blt != null) {
        locale.blt.cancel();
      }
      locale.blt = new AnimatorSet();
      if (i == 0) {
        break label222;
      }
      f = 1.0F;
      localObject2 = ObjectAnimator.ofFloat(locale.background, "alpha", new float[] { f });
      ((ObjectAnimator)localObject2).addUpdateListener(locale.blu);
      AnimatorSet localAnimatorSet = locale.blt;
      if (i == 0) {
        break label227;
      }
      localObject1 = locale.blr;
      label127:
      localAnimatorSet.playTogether(new Animator[] { localObject2, localObject1 });
      locale.blt.setDuration(100L);
      localObject2 = locale.blt;
      if (!paramBoolean) {
        break label237;
      }
    }
    label192:
    label222:
    label227:
    label237:
    for (Object localObject1 = locale.blp;; localObject1 = locale.blq)
    {
      ((AnimatorSet)localObject2).addListener((Animator.AnimatorListener)localObject1);
      locale.blt.start();
      do
      {
        return;
      } while ((paramBoolean) || ((i != com.intercom.composer.a.a.blb) && (i != com.intercom.composer.a.a.bld) && (i != com.intercom.composer.a.a.ble)));
      i = 0;
      break;
      f = 0.0F;
      break label79;
      localObject1 = locale.bls;
      break label127;
    }
  }
  
  public final void di(int paramInt)
  {
    this.bkY = paramInt;
  }
  
  public List<com.intercom.composer.b.b> getInputs()
  {
    return this.inputs;
  }
  
  public com.intercom.composer.b.b getSelectedInput()
  {
    return this.bkR.blF;
  }
  
  public int getTextInputHeight()
  {
    return this.bkL.getHeight();
  }
  
  public final void q(CharSequence paramCharSequence)
  {
    if (this.bkV != null) {
      this.bkV.q(paramCharSequence);
    }
  }
  
  public void setComposerPagerAdapter(com.intercom.composer.pager.a parama)
  {
    this.bkM.setAdapter(parama);
    this.bkM.setOffscreenPageLimit(this.inputs.size());
    g localg = new g(this.inputs, parama, this.bkR, this.layoutManager, this);
    parama = new com.intercom.composer.a.d(this.inputs, parama, this.bkR, this);
    this.bkX = new com.intercom.composer.a.e(this.bkO, this.bkN, localg, parama);
  }
  
  public void setEditTextLayoutAnimationListener(com.intercom.composer.a.c paramc)
  {
    this.bkT.blh = paramc;
  }
  
  public void setFragmentManager(n paramn)
  {
    this.bkR = new com.intercom.composer.b.b.e(LayoutInflater.from(getContext()), this.inputs, this, this, paramn);
    this.bkK.setAdapter(this.bkR);
  }
  
  public void setInputSelectedListener(f paramf)
  {
    this.bkW = paramf;
  }
  
  public void setInputs(List<? extends com.intercom.composer.b.b> paramList)
  {
    if (this.bkR == null) {
      throw new IllegalStateException("Fragment manager should be set!");
    }
    this.inputs.clear();
    this.inputs.addAll(paramList);
    if (vU())
    {
      this.bkL.setVisibility(0);
      this.bkN.setVisibility(0);
      this.bkO.setVisibility(0);
    }
    for (;;)
    {
      this.bkR.notifyDataSetChanged();
      return;
      this.bkL.setVisibility(8);
      this.bkN.setVisibility(8);
      this.bkO.setVisibility(8);
    }
  }
  
  public void setOnSendButtonClickListener(com.intercom.composer.b.c.a.a parama)
  {
    this.bkV = parama;
  }
  
  public void setSendButtonVisibility(int paramInt)
  {
    this.bkN.setVisibility(paramInt);
  }
  
  public final void z(RecyclerView.x paramx)
  {
    int i = paramx.getAdapterPosition();
    if ((i >= 0) && (i < this.inputs.size())) {
      a((com.intercom.composer.b.b)this.inputs.get(i), true, true);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/ComposerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */