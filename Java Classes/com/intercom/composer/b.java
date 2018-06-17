package com.intercom.composer;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.i;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.Iterator;
import java.util.List;

public class b
  extends i
{
  public c bkB;
  public f bkC;
  public ComposerView bkD;
  String bkE;
  boolean bkF;
  private int bkG;
  com.intercom.composer.b.b bkH;
  private Runnable bkI = new Runnable()
  {
    public final void run()
    {
      b localb = b.this;
      if ((localb.bkH == null) || (!localb.bkD.a(localb.bkH, false, true)))
      {
        List localList = localb.bkB.getInputs();
        if (!localList.isEmpty())
        {
          com.intercom.composer.b.b localb2 = localb.ds(localb.bkE);
          com.intercom.composer.b.b localb1 = localb2;
          if (localb2 == null) {
            localb1 = (com.intercom.composer.b.b)localList.get(0);
          }
          localb.bkD.a(localb1, localb.bkF, true);
        }
      }
    }
  };
  
  public static b dj(int paramInt)
  {
    b localb = new b();
    Bundle localBundle = new Bundle();
    localBundle.putString("initial_input_identifier", null);
    localBundle.putBoolean("show_keyboard_for_initial_input", false);
    localBundle.putInt("theme_color", paramInt);
    localb.setArguments(localBundle);
    return localb;
  }
  
  public final com.intercom.composer.b.b ds(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    Iterator localIterator = this.bkB.getInputs().iterator();
    while (localIterator.hasNext())
    {
      com.intercom.composer.b.b localb = (com.intercom.composer.b.b)localIterator.next();
      if (localb.getUniqueIdentifier().equals(paramString)) {
        return localb;
      }
    }
    return null;
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    if ((paramContext instanceof c)) {
      this.bkB = ((c)paramContext);
    }
    if ((paramContext instanceof f)) {
      this.bkC = ((f)paramContext);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    this.bkE = getArguments().getString("initial_input_identifier");
    this.bkF = getArguments().getBoolean("show_keyboard_for_initial_input");
    this.bkG = getArguments().getInt("theme_color");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.bkD = ((ComposerView)paramLayoutInflater.inflate(g.f.intercom_composer_layout, paramViewGroup, false));
    paramLayoutInflater = this.bkD;
    paramViewGroup = getContext();
    int i = this.bkG;
    paramViewGroup = android.support.v4.content.a.a(paramViewGroup, g.d.intercom_composer_send_background);
    paramViewGroup.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
    if (Build.VERSION.SDK_INT >= 16) {
      paramLayoutInflater.bkN.setBackground(paramViewGroup);
    }
    for (;;)
    {
      this.bkD.setFragmentManager(getChildFragmentManager());
      this.bkD.setInputs(this.bkB.getInputs());
      this.bkD.setOnSendButtonClickListener(new com.intercom.composer.b.c.a.a()
      {
        public final void q(CharSequence paramAnonymousCharSequence)
        {
          com.intercom.composer.b.b localb = b.this.bkD.getSelectedInput();
          if ((localb instanceof com.intercom.composer.b.c.b)) {
            ((com.intercom.composer.b.c.b)localb).sendTextBack(paramAnonymousCharSequence);
          }
        }
      });
      if (this.bkC != null) {
        this.bkD.setInputSelectedListener(this.bkC);
      }
      paramLayoutInflater = new com.intercom.composer.pager.a(getChildFragmentManager(), this.bkD.getInputs());
      this.bkD.setComposerPagerAdapter(paramLayoutInflater);
      this.bkD.setEditTextLayoutAnimationListener(new com.intercom.composer.a.c(getActivity()));
      this.bkD.post(this.bkI);
      return this.bkD;
      paramLayoutInflater.bkN.setBackgroundDrawable(paramViewGroup);
    }
  }
  
  public void onDestroy()
  {
    Object localObject1;
    Object localObject2;
    if (this.bkD != null)
    {
      localObject1 = this.bkD;
      int j = ((ComposerView)localObject1).bkL.getChildCount();
      if (j > 0)
      {
        int i = 0;
        while (i < j)
        {
          localObject2 = ((ComposerView)localObject1).bkL.getChildAt(i);
          if ((localObject2 instanceof EditText)) {
            ((EditText)localObject2).removeTextChangedListener(((ComposerView)localObject1).bkZ);
          }
          i += 1;
        }
      }
      localObject1 = ((ComposerView)localObject1).bkS.blM;
      if (((com.intercom.composer.c.b)localObject1).blN != null)
      {
        localObject2 = ((com.intercom.composer.c.b)localObject1).blN.getDecorView().getRootView().getViewTreeObserver();
        if (Build.VERSION.SDK_INT < 16) {
          break label117;
        }
        ((ViewTreeObserver)localObject2).removeOnGlobalLayoutListener((ViewTreeObserver.OnGlobalLayoutListener)localObject1);
      }
    }
    for (;;)
    {
      super.onDestroy();
      return;
      label117:
      ((ViewTreeObserver)localObject2).removeGlobalOnLayoutListener((ViewTreeObserver.OnGlobalLayoutListener)localObject1);
    }
  }
  
  public void onDestroyView()
  {
    this.bkH = this.bkD.getSelectedInput();
    super.onDestroyView();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */