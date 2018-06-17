package com.vent;

import android.app.Activity;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.support.v7.view.menu.h;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.x;
import android.support.v7.widget.ba;
import android.support.v7.widget.ba.a;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.TextView;
import com.vent.a.k;
import com.vent.a.m;
import com.vent.a.x;
import com.vent.a.y;
import com.vent.a.z;
import com.vent.d.c;
import com.vent.d.e;
import com.vent.d.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

abstract class g
  extends RecyclerView.a<RecyclerView.x>
  implements View.OnClickListener, View.OnLongClickListener
{
  final WeakReference<a> bUM;
  public HashMap<m, x> bUd;
  public z bVh;
  public boolean bZH;
  ArrayList<com.vent.a.d> bZV;
  ArrayList<Integer> bZW;
  public android.support.v4.widget.n bZX;
  public long bZY;
  b bZZ;
  public int bZf = -8355712;
  public boolean bZp;
  s.d caa;
  public int color = -8355712;
  
  g(a parama)
  {
    this.bUM = new WeakReference(parama);
    setHasStableIds(true);
  }
  
  void CA() {}
  
  void a(f paramf) {}
  
  public final void ba(boolean paramBoolean)
  {
    boolean bool2 = true;
    int i = getItemCount();
    android.support.v4.widget.n localn;
    if (this.bZX != null)
    {
      localn = this.bZX;
      if (!this.bZp) {
        break label50;
      }
      bool1 = bool2;
      if (!paramBoolean) {
        if (i != 1) {
          break label50;
        }
      }
    }
    label50:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localn.setRefreshing(bool1);
      return;
    }
  }
  
  protected abstract void ev(int paramInt);
  
  public int getItemCount()
  {
    int j = 0;
    if ((this.bVh != null) && (!this.bVh.Fl())) {
      return 2;
    }
    if (this.bZV != null) {}
    for (int i = this.bZV.size();; i = 0)
    {
      if ((this.bZH) || (i == 0)) {
        j = 1;
      }
      return i + (j + 1);
    }
  }
  
  public long getItemId(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      return -3L;
    case 2: 
      ArrayList localArrayList = this.bZV;
      int j = this.bZV.size();
      if (this.bZH) {}
      for (int i = 1;; i = 0) {
        return ((com.vent.a.d)localArrayList.get(i + (j - paramInt))).cjy.hashCode();
      }
    case 0: 
      return this.bVh.cjy.hashCode();
    }
    return -2L;
  }
  
  public int getItemViewType(int paramInt)
  {
    int j = 3;
    int i;
    if (paramInt == 0) {
      i = 0;
    }
    do
    {
      do
      {
        return i;
        if (this.bVh == null) {
          break;
        }
        i = j;
      } while (!this.bVh.Fl());
      if ((this.bZV == null) || ((this.bZH) && (paramInt == 1))) {
        return 1;
      }
      i = j;
    } while (this.bZV.isEmpty());
    return 2;
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    int i = paramx.getItemViewType();
    if (i == 0) {
      s.a((s.g)paramx, this.bVh, false, null, null);
    }
    label82:
    label221:
    label278:
    label353:
    label436:
    label441:
    label452:
    label465:
    label478:
    do
    {
      return;
      Object localObject1;
      if (i == 1)
      {
        paramx = (g)paramx;
        boolean bool = this.bZp;
        localObject1 = paramx.can;
        if (bool)
        {
          paramInt = 0;
          ((View)localObject1).setVisibility(paramInt);
          paramx = paramx.cao;
          if (!bool) {
            break label82;
          }
        }
        for (paramInt = 4;; paramInt = 0)
        {
          paramx.setVisibility(paramInt);
          return;
          paramInt = 4;
          break;
        }
      }
      if (i == 2)
      {
        localObject1 = (f)paramx;
        android.support.v7.app.d locald = (android.support.v7.app.d)this.bUM.get();
        int j = this.bZV.size();
        com.vent.a.d locald1;
        if (this.bZH)
        {
          i = 1;
          paramInt = j - paramInt + i;
          locald1 = (com.vent.a.d)this.bZV.get(paramInt);
          Object localObject2 = (Integer)this.bZW.get(paramInt);
          paramx = (x)this.bUd.get(locald1.cjD);
          ((f)localObject1).caf = paramx;
          ((f)localObject1).cag = locald1;
          c.a(paramx, ((f)localObject1).bUF, MyApplication.cgm, MyApplication.cgo);
          Object localObject3 = ((f)localObject1).bZI;
          if (paramx == null) {
            break label436;
          }
          paramx = paramx.username;
          ((TextView)localObject3).setText(paramx);
          ((f)localObject1).cah.setText(e.b(((f)localObject1).cag.cjA, ((f)localObject1).cag.cjB));
          paramx = this.bUM;
          localObject3 = locald1.body;
          if (((Integer)localObject2).intValue() == 0) {
            break label441;
          }
          paramInt = Integer.MAX_VALUE;
          paramx = e.a(paramx, null, (String)localObject3, paramInt, this.bZf, locald1.cjC, locald1.cjE, true, true, 0);
          if (((Integer)localObject2).intValue() != 0) {
            break label465;
          }
          localObject2 = new boolean[1];
          paramx = e.a(paramx, 5, (boolean[])localObject2);
          if (localObject2[0] == 0) {
            break label452;
          }
          ((f)localObject1).caj.setVisibility(0);
          ((f)localObject1).caj.setTextColor(this.bZf);
          ((f)localObject1).cai.setText(e.a(paramx));
          paramx = ((f)localObject1).cak;
          if (locald1.cjG) {
            break label478;
          }
        }
        for (paramInt = 2131230887;; paramInt = 2131230888)
        {
          paramx.setImageResource(paramInt);
          ((f)localObject1).cak.setBackgroundDrawable(com.vent.d.a.a(locald, this.bZf, this.bZf, locald1.cjG));
          ((f)localObject1).cal.setText(String.valueOf(locald1.cjF));
          return;
          i = 0;
          break;
          paramx = null;
          break label221;
          paramInt = e.cng * 5 + 1;
          break label278;
          ((f)localObject1).caj.setVisibility(8);
          break label353;
          ((f)localObject1).caj.setVisibility(8);
          break label353;
        }
      }
    } while (i != 3);
    paramx = (AppCompatTextView)paramx.itemView;
    if (this.bVh.Fl()) {}
    for (paramInt = 2131689494;; paramInt = 2131689521)
    {
      paramx.setText(paramInt);
      return;
    }
  }
  
  public void onClick(View paramView)
  {
    int j = 1;
    switch (paramView.getId())
    {
    }
    int k;
    do
    {
      return;
      paramView = (f)paramView.getTag();
      k = paramView.getAdapterPosition();
    } while (k < 0);
    int m = this.bZV.size();
    ArrayList localArrayList;
    if (this.bZH)
    {
      i = 1;
      m = m - k + i;
      localArrayList = this.bZW;
      if (((Integer)this.bZW.get(m)).intValue() != 0) {
        break label130;
      }
    }
    label130:
    for (int i = j;; i = 0)
    {
      localArrayList.set(m, Integer.valueOf(i));
      onBindViewHolder(paramView, k);
      return;
      i = 0;
      break;
    }
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    Object localObject1;
    if (paramInt == 0)
    {
      paramViewGroup = (ViewGroup)LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427546, paramViewGroup, false);
      localObject1 = new s.g(this.bUM, null, paramViewGroup, false);
      paramViewGroup.setOnLongClickListener(new View.OnLongClickListener()
      {
        public final boolean onLongClick(View paramAnonymousView)
        {
          g.this.CA();
          return true;
        }
      });
      ((s.g)localObject1).cam.setOnClickListener(new s.c((s.g)localObject1, this.caa));
      return (RecyclerView.x)localObject1;
    }
    if (paramInt == 1)
    {
      paramViewGroup = (ViewGroup)LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427531, paramViewGroup, false);
      localObject1 = new g(paramViewGroup);
      paramViewGroup.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          g.this.ev(5);
        }
      });
      paramViewGroup.setOnLongClickListener(new View.OnLongClickListener()
      {
        public final boolean onLongClick(View paramAnonymousView)
        {
          g.this.ev(100);
          return true;
        }
      });
      return (RecyclerView.x)localObject1;
    }
    if (paramInt == 2)
    {
      paramViewGroup = (ViewGroup)LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427519, paramViewGroup, false);
      localObject1 = new f(paramViewGroup);
      paramViewGroup.setTag(localObject1);
      paramViewGroup.setOnLongClickListener(this);
      ((f)localObject1).bUF = ((CachedImageView)paramViewGroup.findViewById(2131296818));
      ((f)localObject1).bUF.aH(MyApplication.cgm, MyApplication.cgm);
      ((f)localObject1).bUF.setDefaultImage(2131231019);
      paramViewGroup.findViewById(2131296820).setOnClickListener(new d((f)localObject1));
      ((f)localObject1).bZI = ((TextView)paramViewGroup.findViewById(2131296981));
      ((f)localObject1).bZI.setTypeface(e.cmW);
      ((f)localObject1).bZI.setOnClickListener(new d((f)localObject1));
      ((f)localObject1).cah = ((TextView)paramViewGroup.findViewById(2131296997));
      ((f)localObject1).cah.setTypeface(e.cmZ);
      ((f)localObject1).cai = ((TextView)paramViewGroup.findViewById(2131296344));
      ((f)localObject1).cai.setTypeface(e.cmX);
      ((f)localObject1).cai.setMovementMethod(LinkMovementMethod.getInstance());
      ((f)localObject1).cai.setFocusable(false);
      ((f)localObject1).cai.setFocusableInTouchMode(false);
      ((f)localObject1).cai.setTag(localObject1);
      ((f)localObject1).cai.setOnClickListener(this);
      if (Build.VERSION.SDK_INT >= 23)
      {
        ((f)localObject1).cai.setHyphenationFrequency(0);
        ((f)localObject1).cai.setBreakStrategy(0);
      }
      ((f)localObject1).caj = ((TextView)paramViewGroup.findViewById(2131296410));
      ((f)localObject1).caj.setTag(localObject1);
      ((f)localObject1).caj.setOnClickListener(this);
      ((f)localObject1).caj.setTypeface(e.cmX);
      ((f)localObject1).cak = ((ImageButton)paramViewGroup.findViewById(2131296514));
      ((f)localObject1).cak.setTag(localObject1);
      Object localObject2 = ((f)localObject1).cak.getLayoutParams();
      ((ViewGroup.LayoutParams)localObject2).width = s.cbJ;
      ((f)localObject1).cak.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      ((f)localObject1).cak.setColorFilter(this.bZf, PorterDuff.Mode.SRC_ATOP);
      ((f)localObject1).cak.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Object localObject = (android.support.v7.app.d)g.this.bUM.get();
          if (!bb.ceP.Fc()) {
            f.v((Activity)localObject);
          }
          int i;
          do
          {
            return;
            paramAnonymousView = (g.f)paramAnonymousView.getTag();
            i = paramAnonymousView.getAdapterPosition();
          } while (i < 0);
          if (!paramAnonymousView.cag.cjG) {
            if (f.a((Activity)localObject, paramAnonymousView.caf, paramAnonymousView.cag))
            {
              paramAnonymousView.cag.cjG = true;
              localObject = paramAnonymousView.cag;
              ((com.vent.a.d)localObject).cjF += 1;
            }
          }
          for (;;)
          {
            g.this.onBindViewHolder(paramAnonymousView, i);
            return;
            if (f.b((Activity)localObject, paramAnonymousView.caf, paramAnonymousView.cag))
            {
              paramAnonymousView.cag.cjG = false;
              localObject = paramAnonymousView.cag;
              ((com.vent.a.d)localObject).cjF -= 1;
            }
          }
        }
      });
      ((f)localObject1).cal = ((TextView)paramViewGroup.findViewById(2131296515));
      ((f)localObject1).cal.setTypeface(e.cmW);
      ((f)localObject1).cal.setTextColor(this.bZf);
      localObject2 = paramViewGroup.findViewById(2131296516);
      ((View)localObject2).setTag(localObject1);
      ((View)localObject2).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ActUserListCommentFavs.a((android.support.v7.app.d)g.this.bUM.get(), ((g.f)paramAnonymousView.getTag()).cag);
        }
      });
      ((f)localObject1).cam = ((ImageButton)paramViewGroup.findViewById(2131296723));
      ((f)localObject1).cam.setFocusable(false);
      ((f)localObject1).cam.setFocusableInTouchMode(false);
      ((f)localObject1).cam.setClickable(true);
      if (this.bZZ == null) {
        this.bZZ = new c(this);
      }
      ((f)localObject1).cam.setOnClickListener(new a((f)localObject1, this.bZZ));
      ((f)localObject1).cam.setColorFilter(this.bZf, PorterDuff.Mode.SRC_ATOP);
      return (RecyclerView.x)localObject1;
    }
    if (paramInt == 3) {
      return new e(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427518, paramViewGroup, false));
    }
    return null;
  }
  
  public boolean onLongClick(View paramView)
  {
    a((f)paramView.getTag());
    return true;
  }
  
  public void onViewRecycled(RecyclerView.x paramx)
  {
    int i = paramx.getItemViewType();
    if (i == 0) {
      ((s.g)paramx).Db();
    }
    while (i != 2) {
      return;
    }
    paramx = (f)paramx;
    com.vent.d.a.bq(paramx.cak);
    paramx.bUF.setCachedImage(null);
    paramx.cai.setText(null);
    paramx.caf = null;
    paramx.cag = null;
  }
  
  final class a
    implements ba.a, View.OnClickListener
  {
    final g.b bZZ;
    final g.f cac;
    
    a(g.f paramf, g.b paramb)
    {
      this.cac = paramf;
      this.bZZ = paramb;
    }
    
    public final void onClick(View paramView)
    {
      com.vent.a.d locald = this.cac.cag;
      if ((locald == null) || (g.this.bVh == null)) {
        return;
      }
      a locala = (a)g.this.bUM.get();
      ba localba = new ba(locala, paramView);
      h localh = localba.Pj;
      localba.getMenuInflater().inflate(2131492867, localh);
      if (bb.a(locald.cjD))
      {
        localh.removeItem(2131296844);
        localh.removeItem(2131296549);
        localh.removeItem(2131296551);
        c.a(g.this.bUM, localh, locald.body, locald.cjC, locald.cjE);
        localh.removeItem(2131296420);
        localba.adv = this;
        localba.adu.show();
        return;
      }
      boolean bool = bb.c(g.this.bVh.bXE);
      if ((g.this.bVh.bYM != null) && (g.this.bVh.bYM.EY())) {}
      for (int i = 1;; i = 0)
      {
        if (m.b(locald.cjD, c.cmG))
        {
          localh.removeItem(2131296333);
          localh.removeItem(2131296844);
        }
        localh.removeItem(2131296469);
        if (!bool) {
          localh.removeItem(2131296444);
        }
        if (i != 0) {
          break label289;
        }
        localh.removeItem(2131296549);
        localh.removeItem(2131296551);
        break;
      }
      label289:
      label301:
      MenuItem localMenuItem;
      StringBuilder localStringBuilder;
      if (g.this.bUd == null)
      {
        paramView = null;
        localh.findItem(2131296549).setTitle(e.u(c.cmH + " " + locala.getString(2131689719)));
        localMenuItem = localh.findItem(2131296551);
        localStringBuilder = new StringBuilder().append(c.cmH).append(" ");
        if (paramView != null) {
          break label447;
        }
      }
      label447:
      for (paramView = "?";; paramView = paramView.username)
      {
        localMenuItem.setTitle(e.u(locala.getString(2131689720, new Object[] { paramView })));
        break;
        paramView = (x)g.this.bUd.get(locald.cjD);
        break label301;
      }
    }
    
    public final boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      boolean bool2 = true;
      final int i = paramMenuItem.getItemId();
      paramMenuItem = (android.support.v7.app.d)g.this.bUM.get();
      boolean bool1 = bool2;
      switch (i)
      {
      default: 
        this.bZZ.a(this.cac, i);
        bool1 = false;
      }
      Object localObject;
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return bool1;
                g.this.a(this.cac);
                return true;
                this.bZZ.a(this.cac, i);
                return true;
                localObject = g.this.bVh.cjy;
                com.vent.a.d locald = this.cac.cag;
                Runnable local1 = new Runnable()
                {
                  public final void run()
                  {
                    g.a.this.bZZ.a(g.a.this.cac, i);
                  }
                };
                if (i == 2131296549) {}
                for (i = 2131689490;; i = 2131689488)
                {
                  f.a(paramMenuItem, (m)localObject, locald, local1, i);
                  return true;
                }
                bool1 = bool2;
              } while (g.this.bVh == null);
              bool1 = bool2;
            } while (g.this.bUd == null);
            bool1 = bool2;
          } while (this.cac.cag == null);
          f.a(paramMenuItem, g.this.bVh.bYM, (x)g.this.bUd.get(this.cac.cag.cjD), null);
          return true;
          bool1 = bool2;
        } while (!f.c(paramMenuItem, (x)g.this.bUd.get(this.cac.cag.cjD), this.cac.cag));
        this.bZZ.a(this.cac, i);
        return true;
        localObject = e.a(g.this.bUM, null, this.cac.cag.body, Integer.MAX_VALUE, 0, this.cac.cag.cjC, this.cac.cag.cjE, false, true, 2);
        bool1 = bool2;
      } while (localObject == null);
      c.w(paramMenuItem, ((SpannableStringBuilder)localObject).toString());
      return true;
    }
  }
  
  static abstract interface b
  {
    public abstract void a(g.f paramf, int paramInt);
  }
  
  static class c
    implements g.b
  {
    final g bZt;
    
    c(g paramg)
    {
      this.bZt = paramg;
    }
    
    public void a(g.f paramf, int paramInt)
    {
      switch (paramInt)
      {
      }
      int i;
      do
      {
        do
        {
          return;
          paramInt = paramf.getAdapterPosition();
        } while (paramInt < 0);
        i = this.bZt.bZV.indexOf(paramf.cag);
      } while (i < 0);
      this.bZt.bZV.remove(i);
      this.bZt.bZW.remove(i);
      this.bZt.notifyItemRemoved(paramInt);
    }
  }
  
  final class d
    implements View.OnClickListener
  {
    final g.f cac;
    
    d(g.f paramf)
    {
      this.cac = paramf;
    }
    
    public final void onClick(View paramView)
    {
      ActProfile.a((android.support.v7.app.d)g.this.bUM.get(), null, this.cac.caf, null);
    }
  }
  
  static final class e
    extends RecyclerView.x
  {
    e(View paramView)
    {
      super();
    }
  }
  
  final class f
    extends RecyclerView.x
  {
    CachedImageView bUF;
    TextView bZI;
    x caf;
    com.vent.a.d cag;
    TextView cah;
    TextView cai;
    TextView caj;
    ImageButton cak;
    TextView cal;
    ImageButton cam;
    
    f(View paramView)
    {
      super();
    }
  }
  
  static final class g
    extends RecyclerView.x
  {
    final View can;
    final View cao;
    
    g(View paramView)
    {
      super();
      paramView.setTag(this);
      this.can = paramView.findViewById(2131296347);
      this.cao = paramView.findViewById(2131296928);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */