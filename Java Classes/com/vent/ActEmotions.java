package com.vent;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.f;
import android.support.v4.view.o;
import android.support.v7.app.c.a;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.x;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.SearchView.b;
import android.support.v7.widget.SearchView.c;
import android.support.v7.widget.Toolbar;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnLayoutChangeListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.vent.a.g;
import com.vent.a.k;
import com.vent.a.m;
import com.vent.a.y;
import com.vent.a.z;
import com.vent.b.a.a;
import com.vent.d.c.b;
import com.vent.d.c.c;
import com.vent.d.e;
import com.vent.d.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ActEmotions
  extends a
  implements ViewPager.f, View.OnClickListener, SeekBar.OnSeekBarChangeListener
{
  static final m bVs = new m("00000000-0000-0000-0000-000000000001");
  static final m bVt = new m("00000000-0000-0000-0000-000000000002");
  ArrayList<com.vent.a.h> bVa;
  ArrayList<ArrayList<g>> bVb;
  private int bVc;
  boolean bVd;
  ViewPager bVe;
  SeekBar bVf;
  View bVg;
  z bVh;
  private Animation bVi;
  private Animation bVj;
  private TextView bVk;
  View bVl;
  int bVm;
  int bVn;
  private boolean bVo;
  private int bVp;
  private int bVq;
  String bVr;
  private boolean bVu;
  private boolean bVv;
  private View title;
  
  private void Bt()
  {
    if (this.bVl != null) {
      this.bVl.startAnimation(this.bVi);
    }
  }
  
  private void Bu()
  {
    if (this.bVl != null) {
      this.bVl.startAnimation(this.bVj);
    }
  }
  
  private void Bv()
  {
    if (!this.bVa.isEmpty()) {
      a.b(getSupportFragmentManager());
    }
  }
  
  public static void a(Activity paramActivity, z paramz)
  {
    Intent localIntent = new Intent(paramActivity, ActEmotions.class);
    localIntent.putExtra("vent", paramz);
    paramActivity.startActivityForResult(localIntent, 8);
  }
  
  private static boolean a(com.vent.a.h paramh)
  {
    return ((paramh.ER()) || ((paramh.ES()) && (MyApplication.cgy)) || (paramh.EU()) || (bb.cia)) && ((!bb.ciU.contains(paramh.cjy)) || (paramh.EV()));
  }
  
  final void Bs()
  {
    Object localObject3 = null;
    this.bVa = new ArrayList();
    this.bVb = new ArrayList();
    Object localObject1;
    Object localObject4;
    Object localObject5;
    Object localObject6;
    if ((this.bVh != null) && (this.bVh.ckX != null))
    {
      localObject1 = this.bVh.ckX;
      this.bVc = 0;
      this.bVd = false;
      if (TextUtils.isEmpty(this.bVr)) {
        break label593;
      }
      localObject4 = new ArrayList();
      if (!com.vent.d.c.l(bb.ciO))
      {
        localObject5 = this.bVr.toUpperCase();
        localObject6 = bb.ciO.values().iterator();
      }
    }
    Object localObject7;
    label166:
    int k;
    int i;
    label388:
    int m;
    label426:
    int j;
    label456:
    label519:
    label569:
    label582:
    label591:
    for (;;)
    {
      if (((Iterator)localObject6).hasNext())
      {
        localObject2 = (com.vent.a.h)((Iterator)localObject6).next();
        if ((!com.vent.d.c.f(((com.vent.a.h)localObject2).cjT)) && (a((com.vent.a.h)localObject2))) {
          localObject7 = ((com.vent.a.h)localObject2).cjT.iterator();
        }
      }
      else
      {
        for (;;)
        {
          if (!((Iterator)localObject7).hasNext()) {
            break label591;
          }
          localObject2 = (m)((Iterator)localObject7).next();
          g localg = (g)bb.ciP.get(localObject2);
          if ((localg != null) && (localg.axa))
          {
            if (localg.cjS == null) {
              if (localg.cjP != null) {
                break label569;
              }
            }
            for (localObject2 = null;; localObject2 = localg.cjP.toUpperCase())
            {
              localg.cjS = ((String)localObject2);
              if (!localg.cjS.contains((CharSequence)localObject5)) {
                break label166;
              }
              if (((ArrayList)localObject4).size() < 10) {
                break label582;
              }
              this.bVd = true;
              this.bVc = Math.max(this.bVc, ((ArrayList)localObject4).size());
              localObject2 = new com.vent.a.h();
              ((com.vent.a.h)localObject2).cjy = bVt;
              ((com.vent.a.h)localObject2).cjP = getString(2131689737);
              this.bVa.add(localObject2);
              this.bVb.add(localObject4);
              k = 0;
              if (this.bVe != null) {
                this.bVe.setAdapter(new b(getSupportFragmentManager(), this));
              }
              if (this.bVf != null)
              {
                localObject2 = this.bVf;
                if (!com.vent.d.c.f(this.bVa)) {
                  break label1044;
                }
                i = 0;
                ((SeekBar)localObject2).setMax(i);
              }
              m = this.bVa.size();
              if (localObject1 != null) {
                break label1154;
              }
              bb.Es();
              localObject2 = new m("4fdc3a9c-48bc-4d8d-b01e-0d6e3097307c");
              i = 0;
              if (i >= m) {
                break label1154;
              }
              if (!m.b(((com.vent.a.h)this.bVa.get(i)).cjy, (m)localObject2)) {
                break label1057;
              }
              j = i;
              i = j;
              if (j < 0)
              {
                if ((localObject1 == null) || (m <= 0) || (!m.b(((com.vent.a.h)this.bVa.get(m - 1)).cjy, bVs)) || (!m.b(bb.ciW, bVs)) || (k == 0)) {
                  break label1064;
                }
                i = m - 1;
              }
              this.bVv = true;
              eg(i);
              this.bVv = false;
              this.bVo = bb.EH();
              supportInvalidateOptionsMenu();
              return;
              if (bb.ceP != null)
              {
                localObject1 = bb.ceP.ckO;
                break;
              }
              localObject1 = null;
              break;
            }
            ((ArrayList)localObject4).add(localg);
          }
        }
      }
    }
    label593:
    if (!com.vent.d.c.l(bb.ciO))
    {
      localObject2 = bb.ciO.values().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject4 = (com.vent.a.h)((Iterator)localObject2).next();
        if (a((com.vent.a.h)localObject4)) {
          this.bVa.add(localObject4);
        }
      }
    }
    Collections.sort(this.bVa, new Comparator() {});
    if (!com.vent.d.c.l(bb.ciP))
    {
      localObject2 = this.bVa.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject5 = (com.vent.a.h)((Iterator)localObject2).next();
        localObject4 = new ArrayList();
        if (!com.vent.d.c.f(((com.vent.a.h)localObject5).cjT))
        {
          localObject5 = ((com.vent.a.h)localObject5).cjT.iterator();
          while (((Iterator)localObject5).hasNext())
          {
            localObject6 = (m)((Iterator)localObject5).next();
            localObject6 = (g)bb.ciP.get(localObject6);
            if ((localObject6 != null) && ((((g)localObject6).axa) || (bb.cia))) {
              ((ArrayList)localObject4).add(localObject6);
            }
          }
          this.bVc = Math.max(this.bVc, ((ArrayList)localObject4).size());
        }
        this.bVb.add(localObject4);
      }
    }
    if (bb.ciV.isEmpty()) {
      bb.Ev();
    }
    Object localObject2 = new ArrayList();
    if (!com.vent.d.c.f(bb.ciV))
    {
      localObject4 = bb.ciV.iterator();
      for (i = 0; ((Iterator)localObject4).hasNext(); i = j)
      {
        localObject5 = (m)((Iterator)localObject4).next();
        localObject6 = com.vent.d.c.g((m)localObject5);
        j = i;
        if (localObject6 != null)
        {
          localObject7 = com.vent.d.c.b((g)localObject6);
          j = i;
          if (localObject7 != null)
          {
            j = i;
            if (!((com.vent.a.h)localObject7).EV())
            {
              if (m.b((m)localObject5, (m)localObject1)) {
                i = 1;
              }
              ((ArrayList)localObject2).add(localObject6);
              j = i;
            }
          }
        }
      }
      this.bVc = Math.max(this.bVc, ((ArrayList)localObject2).size());
    }
    for (;;)
    {
      localObject4 = new com.vent.a.h();
      ((com.vent.a.h)localObject4).cjy = bVs;
      ((com.vent.a.h)localObject4).cjP = getString(2131689712);
      this.bVa.add(localObject4);
      this.bVb.add(localObject2);
      k = i;
      break;
      label1044:
      i = this.bVa.size() - 1;
      break label388;
      label1057:
      i += 1;
      break label426;
      label1064:
      if (bb.ciP == null)
      {
        localObject1 = localObject3;
        label1074:
        if (localObject1 != null)
        {
          localObject1 = ((g)localObject1).cjQ;
          if (localObject1 != null) {
            i = 0;
          }
        }
      }
      else
      {
        for (;;)
        {
          if (i >= m) {
            break label1149;
          }
          if (m.b(((com.vent.a.h)this.bVa.get(i)).cjy, (m)localObject1))
          {
            break;
            localObject1 = (g)bb.ciP.get(localObject1);
            break label1074;
          }
          i += 1;
        }
      }
      label1149:
      i = 0;
      break label519;
      label1154:
      j = -1;
      break label456;
      i = 0;
    }
  }
  
  public final void P(int paramInt)
  {
    if (this.bVv) {
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      Bt();
      return;
    }
    Bu();
  }
  
  public final void Q(int paramInt)
  {
    this.bVv = false;
    eg(paramInt);
    this.bVv = false;
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if ((paramInt1 >= 0) && (paramInt1 < this.bVa.size() - 1))
    {
      paramInt1 = android.support.v4.a.a.c(b((com.vent.a.h)this.bVa.get(paramInt1)), b((com.vent.a.h)this.bVa.get(paramInt1 + 1)), paramFloat);
      if (this.bVg != null) {
        this.bVg.setBackgroundColor(paramInt1);
      }
      if (Build.VERSION.SDK_INT >= 21) {
        c.c.a(this, android.support.v4.a.a.l(419430400, paramInt1));
      }
    }
  }
  
  public final boolean aR(boolean paramBoolean)
  {
    if (!TextUtils.isEmpty(this.bVh.body))
    {
      this.handler.postDelayed(new c.b()
      {
        public final void run()
        {
          if (com.vent.d.c.bF(ActEmotions.this)) {
            new c.a(ActEmotions.this).setMessage(ActEmotions.this.getString(2131689547)).setPositiveButton(2131689545, new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                ax.bl(ActEmotions.this);
                bb.ea(null);
                bb.EA();
                ActEmotions.this.aT(false);
              }
            }).setNegativeButton(17039360, null).create().show();
          }
        }
      }, 50L);
      return true;
    }
    aT(paramBoolean);
    return true;
  }
  
  final void aV(boolean paramBoolean)
  {
    int j = 8;
    Object localObject;
    if (this.title != null)
    {
      localObject = this.title;
      if (paramBoolean)
      {
        i = 8;
        ((View)localObject).setVisibility(i);
      }
    }
    else if (this.bVf != null)
    {
      localObject = this.bVf;
      if (!paramBoolean) {
        break label131;
      }
    }
    label131:
    for (int i = j;; i = 0)
    {
      ((SeekBar)localObject).setVisibility(i);
      if (paramBoolean) {
        break label136;
      }
      if (!this.bVu)
      {
        this.bVu = true;
        localObject = (SearchView)findViewById(2131296863);
        if (localObject != null)
        {
          ((SearchView)localObject).clearFocus();
          ((SearchView)localObject).onActionViewCollapsed();
        }
        com.vent.d.c.t(this);
        if (!TextUtils.isEmpty(this.bVr))
        {
          this.bVr = null;
          Bs();
        }
        this.bVu = false;
      }
      return;
      i = 0;
      break;
    }
    label136:
    Bu();
  }
  
  final int b(com.vent.a.h paramh)
  {
    if ((paramh == null) || (m.b(paramh.cjy, bVs)) || (m.b(paramh.cjy, bVt))) {
      return this.bVp;
    }
    return paramh.bm(false);
  }
  
  final void b(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.b(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
    case 9: 
      do
      {
        return;
      } while (paramInt2 == -1);
    }
    Bs();
  }
  
  final int c(com.vent.a.h paramh)
  {
    if ((paramh == null) || (m.b(paramh.cjy, bVs)) || (m.b(paramh.cjy, bVt))) {
      return this.bVq;
    }
    return paramh.bo(false);
  }
  
  final void eg(int paramInt)
  {
    if ((this.bVa != null) && (paramInt >= 0) && (paramInt < this.bVa.size()))
    {
      int i = b((com.vent.a.h)this.bVa.get(paramInt));
      if (this.bVg != null) {
        this.bVg.setBackgroundColor(i);
      }
      if (Build.VERSION.SDK_INT >= 21) {
        c.c.a(this, android.support.v4.a.a.l(419430400, i));
      }
      if (this.bVe != null) {
        this.bVe.d(paramInt, true);
      }
      if (this.bVf != null) {
        this.bVf.setProgress(paramInt);
      }
      if ((Build.VERSION.SDK_INT >= 14) && (this.bVk != null) && (this.bVe != null) && (this.bVe.getAdapter() != null)) {
        this.bVk.setText(this.bVe.getAdapter().aw(paramInt));
      }
    }
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramInt2 == -1)
      {
        setResult(-1);
        finish();
      }
      else
      {
        if (paramIntent != null) {
          this.bVh = ((z)paramIntent.getParcelableExtra("vent"));
        }
        a(paramInt1, paramInt2, paramIntent);
        continue;
        a(paramInt1, paramInt2, paramIntent);
      }
    }
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    Bv();
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427366);
    Object localObject1 = (Toolbar)findViewById(2131296949);
    ((Toolbar)localObject1).setTitle("");
    setSupportActionBar((Toolbar)localObject1);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    if (bb.ceP == null)
    {
      finish();
      return;
    }
    ((Toolbar)localObject1).setOnClickListener(this);
    this.title = findViewById(2131296943);
    Object localObject2;
    if (paramBundle == null)
    {
      localObject1 = null;
      this.bVr = ((String)localObject1);
      localObject1 = (SearchView)findViewById(2131296863);
      localObject2 = (TextView)((SearchView)localObject1).findViewById(2131296873);
      if (localObject2 != null)
      {
        ((TextView)localObject2).setTextColor(-1);
        ((TextView)localObject2).setHintTextColor(-2130706433);
      }
      ((SearchView)localObject1).setOnQueryTextListener(new SearchView.c()
      {
        public final boolean iF()
        {
          com.vent.d.c.t(ActEmotions.this);
          return true;
        }
        
        public final boolean onQueryTextChange(String paramAnonymousString)
        {
          ActEmotions localActEmotions = ActEmotions.this;
          String str = paramAnonymousString;
          if (paramAnonymousString != null) {
            str = paramAnonymousString.trim();
          }
          if (!TextUtils.equals(str, localActEmotions.bVr))
          {
            localActEmotions.bVr = str;
            localActEmotions.Bs();
          }
          return true;
        }
      });
      ((SearchView)localObject1).setOnCloseListener(new SearchView.b()
      {
        public final boolean onClose()
        {
          ActEmotions.this.aV(false);
          return false;
        }
      });
      ((SearchView)localObject1).setOnQueryTextFocusChangeListener(new View.OnFocusChangeListener()
      {
        public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if ((paramAnonymousBoolean) || (TextUtils.isEmpty(ActEmotions.this.bVr))) {
            ActEmotions.this.aV(paramAnonymousBoolean);
          }
        }
      });
      this.bVi = AnimationUtils.loadAnimation(this, 2130771988);
      this.bVj = AnimationUtils.loadAnimation(this, 2130771989);
      this.bVl = findViewById(2131296876);
      this.bVl.setVisibility(8);
      if (Build.VERSION.SDK_INT >= 14)
      {
        this.bVk = ((TextView)findViewById(2131296875));
        this.bVm = 0;
        localObject1 = new DisplayMetrics();
        getWindow().getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject1);
        this.bVn = ((DisplayMetrics)localObject1).widthPixels;
        this.bVl.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
        {
          @TargetApi(14)
          public final void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
          {
            paramAnonymousInt1 = ActEmotions.this.bVf.getMax();
            if (paramAnonymousInt1 > 0)
            {
              paramAnonymousInt2 = ActEmotions.this.bVf.getLeft();
              paramAnonymousInt4 = ActEmotions.this.bVf.getRight();
              paramAnonymousInt5 = ActEmotions.this.bVf.getPaddingRight();
              paramAnonymousInt6 = ActEmotions.this.bVf.getPaddingLeft();
              paramAnonymousInt3 = ActEmotions.this.bVl.getWidth();
              paramAnonymousInt7 = ActEmotions.this.bVf.getPaddingLeft();
              paramAnonymousInt2 = ((paramAnonymousInt4 - paramAnonymousInt5 - paramAnonymousInt2 - paramAnonymousInt6) * ActEmotions.this.bVf.getProgress() + ActEmotions.this.bVf.getMax() / 2) / paramAnonymousInt1 + (paramAnonymousInt2 + paramAnonymousInt7) - paramAnonymousInt3 / 2;
              if (paramAnonymousInt2 >= ActEmotions.this.bVm) {
                break label165;
              }
              paramAnonymousInt1 = ActEmotions.this.bVm;
            }
            for (;;)
            {
              ActEmotions.this.bVl.setX(paramAnonymousInt1);
              return;
              label165:
              paramAnonymousInt1 = paramAnonymousInt2;
              if (paramAnonymousInt2 + paramAnonymousInt3 > ActEmotions.this.bVn) {
                paramAnonymousInt1 = ActEmotions.this.bVn - paramAnonymousInt3;
              }
            }
          }
        });
        this.bVi.setAnimationListener(new Animation.AnimationListener()
        {
          public final void onAnimationEnd(Animation paramAnonymousAnimation) {}
          
          public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
          
          public final void onAnimationStart(Animation paramAnonymousAnimation)
          {
            ActEmotions.this.bVl.setVisibility(0);
          }
        });
        this.bVj.setAnimationListener(new Animation.AnimationListener()
        {
          public final void onAnimationEnd(Animation paramAnonymousAnimation)
          {
            ActEmotions.this.bVl.setVisibility(8);
          }
          
          public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
          
          public final void onAnimationStart(Animation paramAnonymousAnimation) {}
        });
      }
      if (paramBundle != null) {
        break label709;
      }
      Intent localIntent = getIntent();
      if (localIntent != null) {
        this.bVh = ((z)localIntent.getParcelableExtra("vent"));
      }
      if (this.bVh == null) {
        this.bVh = z.Fn();
      }
      if (localIntent != null)
      {
        setIntent(null);
        this.bVh.body = localIntent.getStringExtra("body");
        paramBundle = localIntent.getAction();
        if ((paramBundle != null) && (paramBundle.equals("android.intent.action.SEND")))
        {
          localObject1 = e.ex(localIntent.getStringExtra("android.intent.extra.SUBJECT"));
          paramBundle = (Bundle)localObject1;
          if (localObject1 != null) {
            paramBundle = ((String)localObject1).trim();
          }
          localObject2 = e.ex(localIntent.getStringExtra("android.intent.extra.TEXT"));
          localObject1 = localObject2;
          if (localObject2 != null) {
            localObject1 = ((String)localObject2).trim();
          }
          if (TextUtils.isEmpty((CharSequence)localObject1)) {
            break label704;
          }
          localObject2 = localObject1;
          if (!TextUtils.isEmpty(paramBundle))
          {
            localObject2 = localObject1;
            if (!TextUtils.equals((CharSequence)localObject1, paramBundle)) {
              localObject2 = paramBundle + "\n\n" + (String)localObject1;
            }
          }
          label486:
          if ((!TextUtils.isEmpty((CharSequence)localObject2)) || (TextUtils.isEmpty(this.bVh.body))) {
            this.bVh.body = ((String)localObject2);
          }
          this.bVh.clc = z.ei(localIntent.getStringExtra("vent_privacy"));
          paramBundle = localIntent.getStringExtra("group_id");
          if (!TextUtils.isEmpty(paramBundle))
          {
            this.bVh.bYM = new k();
            this.bVh.bYM.cjy = new m(paramBundle);
            this.bVh.bYM.setName(localIntent.getStringExtra("group_name"));
          }
        }
      }
      if (TextUtils.isEmpty(this.bVh.body)) {
        this.bVh.body = bb.cir;
      }
    }
    for (;;)
    {
      this.bVg = findViewById(2131296682);
      this.bVe = ((ViewPager)findViewById(2131296782));
      this.bVe.a(this);
      this.bVf = ((SeekBar)findViewById(2131296353));
      this.bVf.setOnSeekBarChangeListener(this);
      this.bVp = -8355712;
      this.bVq = -1;
      Bs();
      return;
      localObject1 = paramBundle.getString("searchString");
      break;
      label704:
      localObject2 = paramBundle;
      break label486;
      label709:
      this.bVh = ((z)paramBundle.getParcelable("vent"));
    }
  }
  
  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (MyApplication.cgy) {
      if (!this.bVo) {
        break label65;
      }
    }
    label65:
    for (int i = 2131230928;; i = 2131230924)
    {
      MenuItem localMenuItem = paramMenu.add(0, 2131296488, 0, e.a(this, 2131689564, new int[] { i }, false));
      localMenuItem.setIcon(i);
      localMenuItem.setShowAsAction(2);
      return super.onCreateOptionsMenu(paramMenu);
    }
  }
  
  protected final void onDestroy()
  {
    this.title = null;
    this.bVl = null;
    this.bVk = null;
    this.bVg = null;
    this.bVf = null;
    this.bVe = null;
    super.onDestroy();
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131296467: 
      Bv();
      return true;
    }
    ActStore.a(this, null);
    return true;
  }
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (this.bVf != null)
    {
      this.bVv = true;
      eg(this.bVf.getProgress());
      this.bVv = false;
    }
  }
  
  protected final void onResume()
  {
    super.onResume();
    if (!bb.r(this)) {
      return;
    }
    ax.v(this, "ChooseEmotion");
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("vent", this.bVh);
    paramBundle.putString("searchString", this.bVr);
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    Bt();
  }
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    Bu();
  }
  
  public static final class a
    extends android.support.v4.app.h
  {
    static void b(n paramn)
    {
      new a().a(paramn, "");
    }
    
    public final void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
      X(2131755215);
    }
    
    public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      paramLayoutInflater = paramLayoutInflater.inflate(2131427424, paramViewGroup, false);
      paramLayoutInflater.findViewById(2131296510).setVisibility(8);
      paramViewGroup = (RecyclerView)paramLayoutInflater.findViewById(16908298);
      paramViewGroup.setAdapter(new a(this, ((ActEmotions)getActivity()).bVa));
      paramViewGroup.setLayoutManager(new LinearLayoutManager(getActivity()));
      return paramLayoutInflater;
    }
    
    public final void onStart()
    {
      super.onStart();
      Window localWindow = this.wP.getWindow();
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      localWindow.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      localWindow.setLayout(Math.min(getContext().getResources().getDimensionPixelSize(2131165485), localDisplayMetrics.widthPixels), Math.min(getContext().getResources().getDimensionPixelSize(2131165485) * 2, localDisplayMetrics.heightPixels * 2 / 3));
      localWindow.setBackgroundDrawable(null);
    }
    
    static final class a
      extends RecyclerView.a<RecyclerView.x>
    {
      final WeakReference<ActEmotions.a> bVA;
      final ArrayList<com.vent.a.h> bVz;
      
      a(ActEmotions.a parama, ArrayList<com.vent.a.h> paramArrayList)
      {
        this.bVA = new WeakReference(parama);
        this.bVz = paramArrayList;
      }
      
      public final int getItemCount()
      {
        return this.bVz.size();
      }
      
      public final long getItemId(int paramInt)
      {
        return ((com.vent.a.h)this.bVz.get(paramInt)).cjy.hashCode();
      }
      
      public final int getItemViewType(int paramInt)
      {
        return 0;
      }
      
      public final void onBindViewHolder(RecyclerView.x paramx, int paramInt)
      {
        paramx = (a)paramx;
        Object localObject1 = (ActEmotions)((ActEmotions.a)this.bVA.get()).getActivity();
        Object localObject2;
        int i;
        if (localObject1 != null)
        {
          localObject2 = (com.vent.a.h)this.bVz.get(paramInt);
          i = ((ActEmotions)localObject1).c((com.vent.a.h)localObject2);
          paramx.itemView.setBackgroundColor(((ActEmotions)localObject1).b((com.vent.a.h)localObject2));
          if ((m.b(((com.vent.a.h)localObject2).cjy, ActEmotions.bVs)) || (!((com.vent.a.h)localObject2).EV())) {
            break label206;
          }
          paramInt = 1;
          if (paramInt == 0) {
            break label211;
          }
          localObject1 = new SpannableStringBuilder("    " + e.s(((com.vent.a.h)localObject2).cjP));
          localObject2 = android.support.v4.a.a.a.f(paramx.itemView.getContext().getResources().getDrawable(2131231017).mutate());
          ((Drawable)localObject2).setBounds(0, 0, ((Drawable)localObject2).getIntrinsicWidth(), ((Drawable)localObject2).getIntrinsicHeight());
          android.support.v4.a.a.a.a((Drawable)localObject2, i);
          ((SpannableStringBuilder)localObject1).setSpan(new ImageSpan((Drawable)localObject2, 1), 0, 1, 33);
          paramx.bVB.setText((CharSequence)localObject1);
        }
        for (;;)
        {
          paramx.bVB.setTextColor(i);
          return;
          label206:
          paramInt = 0;
          break;
          label211:
          paramx.bVB.setText(e.s(((com.vent.a.h)localObject2).cjP));
        }
      }
      
      public final RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
      {
        return new a(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427523, paramViewGroup, false));
      }
      
      final class a
        extends RecyclerView.x
        implements View.OnClickListener
      {
        final TextView bVB;
        
        a(View paramView)
        {
          super();
          paramView.setOnClickListener(this);
          this.bVB = ((TextView)paramView.findViewById(2131296741));
          this.bVB.setTypeface(e.cmU, 0);
        }
        
        public final void onClick(View paramView)
        {
          paramView = (ActEmotions.a)ActEmotions.a.a.this.bVA.get();
          com.vent.d.c.a(paramView);
          ((ActEmotions)paramView.getActivity()).bVe.d(getAdapterPosition(), true);
        }
      }
    }
  }
  
  static final class b
    extends android.support.v4.app.r
  {
    final WeakReference<ActEmotions> bUM;
    
    b(n paramn, ActEmotions paramActEmotions)
    {
      super();
      this.bUM = new WeakReference(paramActEmotions);
    }
    
    public final i ac(int paramInt)
    {
      return ActEmotions.c.eh(paramInt);
    }
    
    public final CharSequence aw(int paramInt)
    {
      return e.s(((com.vent.a.h)((ActEmotions)this.bUM.get()).bVa.get(paramInt)).cjP);
    }
    
    public final int getCount()
    {
      return ((ActEmotions)this.bUM.get()).bVa.size();
    }
  }
  
  public static final class c
    extends ah
    implements View.OnClickListener, View.OnLongClickListener
  {
    int bVD;
    int bVE;
    int bVF;
    
    static i eh(int paramInt)
    {
      c localc = new c();
      Bundle localBundle = new Bundle();
      localBundle.putInt("ec_idx", paramInt);
      localc.setArguments(localBundle);
      return localc;
    }
    
    public final void onClick(View paramView)
    {
      ActEmotions localActEmotions = (ActEmotions)getActivity();
      com.vent.a.h localh;
      boolean bool1;
      boolean bool2;
      g localg;
      if ((localActEmotions != null) && (localActEmotions.bVa != null) && (this.bVD >= 0) && (this.bVD < localActEmotions.bVa.size()))
      {
        localh = (com.vent.a.h)localActEmotions.bVa.get(this.bVD);
        bool1 = m.b(localh.cjy, ActEmotions.bVs);
        bool2 = m.b(localh.cjy, ActEmotions.bVt);
        if ((!bool1) && (!bool2)) {
          break label188;
        }
        i = 1;
        switch (paramView.getId())
        {
        default: 
          localg = (g)paramView.getTag();
          paramView = localh;
          if (i != 0) {
            paramView = com.vent.d.c.b(localg);
          }
          if ((paramView != null) && (localg != null))
          {
            if (paramView.EV()) {
              break label443;
            }
            if (bb.ceP != null)
            {
              if ((bb.ceP.ckR == null) || (bb.ceP.Fc())) {
                break label258;
              }
              f.v(localActEmotions);
            }
          }
          break;
        }
      }
      label188:
      do
      {
        do
        {
          return;
          i = 0;
          break;
        } while (!localh.ES());
        i = this.bVD;
        paramView = ((com.vent.a.h)localActEmotions.bVa.get(i)).cjZ;
      } while (TextUtils.isEmpty(paramView));
      ((MyApplication)localActEmotions.getApplication()).cgB.a(localActEmotions, paramView, null, new ActEmotions.8(localActEmotions, i));
      return;
      label258:
      if (bool1)
      {
        paramView = ActEmotions.bVs;
        if (m.b(bb.ciW, paramView)) {
          break label497;
        }
        bb.ciW = paramView;
      }
      label443:
      label497:
      for (int i = 1;; i = 0)
      {
        if (bb.ciV.isEmpty()) {
          bb.ciV.add(0, localg.cjy);
        }
        for (;;)
        {
          i = 1;
          do
          {
            if (i != 0) {
              bb.EE();
            }
            if (localActEmotions.bVh != null) {
              localActEmotions.bVh.ckX = localg.cjy;
            }
            ActVent.a(localActEmotions, null, localActEmotions.bVh);
            return;
            paramView = paramView.cjy;
            break;
          } while (m.b((m)bb.ciV.get(0), localg.cjy));
          bb.ciV.remove(localg.cjy);
          bb.ciV.add(0, localg.cjy);
          while (bb.ciV.size() > 7) {
            bb.ciV.remove(bb.ciV.size() - 1);
          }
        }
        if (paramView.ES())
        {
          if (bool2) {
            localActEmotions.aV(false);
          }
          i = localActEmotions.bVa.indexOf(paramView);
          if (i < 0) {
            break;
          }
          localActEmotions.eg(i);
          return;
        }
        if (!paramView.ET()) {
          break;
        }
        ActStoreEmotCat.a(localActEmotions, paramView, null);
        return;
      }
    }
    
    public final void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
      this.bVD = getArguments().getInt("ec_idx");
      this.bVE = getResources().getDimensionPixelSize(2131165259);
      this.bVF = getResources().getDimensionPixelSize(2131165361);
    }
    
    public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      View localView = paramLayoutInflater.inflate(2131427434, paramViewGroup, false);
      ActEmotions localActEmotions = (ActEmotions)getActivity();
      boolean bool2;
      int i;
      int j;
      label126:
      int k;
      label142:
      LinearLayout localLinearLayout;
      if ((localActEmotions != null) && (localActEmotions.bVa != null) && (this.bVD >= 0) && (this.bVD < localActEmotions.bVa.size()))
      {
        paramBundle = (com.vent.a.h)localActEmotions.bVa.get(this.bVD);
        boolean bool1 = m.b(paramBundle.cjy, ActEmotions.bVs);
        bool2 = m.b(paramBundle.cjy, ActEmotions.bVt);
        if ((!bool1) && (!bool2)) {
          break label339;
        }
        i = 1;
        boolean bool3 = paramBundle.EV();
        if ((i != 0) || (!bool3)) {
          break label345;
        }
        j = 1;
        paramLayoutInflater = localView.findViewById(2131296716);
        if (j == 0) {
          break label351;
        }
        k = 0;
        paramLayoutInflater.setVisibility(k);
        if (j != 0)
        {
          ((TextView)paramLayoutInflater.findViewById(2131296717)).setTextColor(paramBundle.bm(false));
          paramLayoutInflater.setOnClickListener(this);
        }
        localLinearLayout = (LinearLayout)localView.findViewById(2131296700);
        localLinearLayout.removeAllViews();
        paramLayoutInflater = (ArrayList)localActEmotions.bVb.get(this.bVD);
        if ((i == 0) || (!paramLayoutInflater.isEmpty())) {
          break label366;
        }
        paramLayoutInflater = new AppCompatTextView(localActEmotions);
        paramViewGroup = new LinearLayout.LayoutParams(-1, -2);
        i = this.bVE * 3;
        paramViewGroup.rightMargin = i;
        paramViewGroup.leftMargin = i;
        paramLayoutInflater.setLayoutParams(paramViewGroup);
        if (Build.VERSION.SDK_INT >= 23) {
          paramLayoutInflater.setBreakStrategy(0);
        }
        paramLayoutInflater.setGravity(17);
        paramLayoutInflater.setTypeface(e.cmZ);
        paramLayoutInflater.setTextSize(0, this.bVE);
        paramLayoutInflater.setTextColor(localActEmotions.c(null));
        if (!bool1) {
          break label358;
        }
        i = 2131689859;
        label324:
        paramLayoutInflater.setText(i);
        localLinearLayout.addView(paramLayoutInflater);
      }
      label339:
      label345:
      label351:
      label358:
      label366:
      label405:
      label492:
      label504:
      label517:
      label529:
      label542:
      label722:
      label724:
      label730:
      label740:
      label749:
      label759:
      label768:
      label783:
      do
      {
        return localView;
        i = 0;
        break;
        j = 0;
        break label126;
        k = 8;
        break label142;
        i = 2131689672;
        break label324;
        Iterator localIterator = paramLayoutInflater.iterator();
        while (localIterator.hasNext())
        {
          Object localObject = (g)localIterator.next();
          AppCompatTextView localAppCompatTextView;
          int m;
          int n;
          int i1;
          if (i != 0)
          {
            paramLayoutInflater = com.vent.d.c.b((g)localObject);
            if (paramLayoutInflater == null) {
              break label722;
            }
            localAppCompatTextView = new AppCompatTextView(localActEmotions);
            localAppCompatTextView.setTypeface(e.cmU, 0);
            localAppCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            localAppCompatTextView.setMinLines(1);
            localAppCompatTextView.setMaxLines(1);
            localAppCompatTextView.setTextColor(paramLayoutInflater.bo(false));
            localAppCompatTextView.setTextSize(0, this.bVE);
            if ((i == 0) || (!paramLayoutInflater.EV())) {
              break label724;
            }
            j = 1;
            if (j == 0) {
              break label730;
            }
            k = MyApplication.cgg * 5;
            if (i == 0) {
              break label740;
            }
            m = this.bVF * 2;
            if (j == 0) {
              break label749;
            }
            n = MyApplication.cgg * 5;
            if (i == 0) {
              break label759;
            }
            i1 = this.bVF * 2;
            localAppCompatTextView.setPadding(k, m, n, i1);
            if (!((g)localObject).axa) {
              break label768;
            }
          }
          for (paramViewGroup = ((g)localObject).getName();; paramViewGroup = e.a(((g)localObject).getName(), " [*]"))
          {
            localAppCompatTextView.setText(paramViewGroup);
            localAppCompatTextView.setTag(localObject);
            localAppCompatTextView.setGravity(17);
            localAppCompatTextView.setOnClickListener(this);
            if (i != 0)
            {
              localAppCompatTextView.setOnLongClickListener(this);
              localAppCompatTextView.setBackgroundColor(paramLayoutInflater.bm(false));
            }
            if (j == 0) {
              break label783;
            }
            paramLayoutInflater = new FrameLayout(localActEmotions);
            paramLayoutInflater.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            paramLayoutInflater.addView(localAppCompatTextView);
            paramViewGroup = new android.support.v7.widget.r(localActEmotions);
            localObject = new FrameLayout.LayoutParams(-2, -2, 21);
            ((FrameLayout.LayoutParams)localObject).rightMargin = MyApplication.cgh;
            paramViewGroup.setLayoutParams((ViewGroup.LayoutParams)localObject);
            paramViewGroup.setImageResource(2131231017);
            paramViewGroup.setColorFilter(-1, PorterDuff.Mode.SRC_ATOP);
            paramLayoutInflater.addView(paramViewGroup);
            localLinearLayout.addView(paramLayoutInflater);
            break;
            paramLayoutInflater = paramBundle;
            break label405;
            break;
            j = 0;
            break label492;
            k = MyApplication.cgg * 2;
            break label504;
            m = this.bVF;
            break label517;
            n = MyApplication.cgg * 2;
            break label529;
            i1 = this.bVF;
            break label542;
          }
          localLinearLayout.addView(localAppCompatTextView);
        }
      } while ((!bool2) || (!localActEmotions.bVd));
      paramLayoutInflater = new AppCompatTextView(localActEmotions);
      paramLayoutInflater.setTypeface(e.cmX, 0);
      paramLayoutInflater.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      paramLayoutInflater.setMinLines(1);
      paramLayoutInflater.setMaxLines(1);
      paramLayoutInflater.setTextColor(-1);
      paramLayoutInflater.setTextSize(2, 13.0F);
      paramLayoutInflater.setPadding(MyApplication.cgg * 5, this.bVF * 2, MyApplication.cgg * 5, this.bVF * 2);
      paramLayoutInflater.setText(2131689738);
      paramLayoutInflater.setGravity(17);
      localLinearLayout.addView(paramLayoutInflater);
      return localView;
    }
    
    public final boolean onLongClick(View paramView)
    {
      ActEmotions localActEmotions = (ActEmotions)getActivity();
      if ((localActEmotions != null) && (localActEmotions.bVa != null) && (this.bVD >= 0) && (this.bVD < localActEmotions.bVa.size()))
      {
        com.vent.a.h localh = (com.vent.a.h)localActEmotions.bVa.get(this.bVD);
        boolean bool1 = m.b(localh.cjy, ActEmotions.bVs);
        boolean bool2 = m.b(localh.cjy, ActEmotions.bVt);
        if ((!bool1) && (!bool2)) {
          break label140;
        }
      }
      label140:
      for (int i = 1;; i = 0)
      {
        if (i != 0)
        {
          localActEmotions.aV(false);
          paramView = com.vent.d.c.b((g)paramView.getTag());
          i = localActEmotions.bVa.indexOf(paramView);
          if (i >= 0) {
            localActEmotions.eg(i);
          }
        }
        return false;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActEmotions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */