package com.vent;

import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.support.v7.view.menu.n;
import android.support.v7.widget.RecyclerView.x;
import android.support.v7.widget.ba;
import android.support.v7.widget.ba.a;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.vent.a.g;
import com.vent.a.k;
import com.vent.a.q;
import com.vent.a.x;
import com.vent.a.y;
import com.vent.d.c;
import com.vent.d.c.b;
import com.vent.d.e;
import com.vent.d.f;
import com.vent.d.f.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

abstract class h
  extends m<com.vent.a.i>
{
  public static int cap = 25;
  public HashMap<com.vent.a.m, x> bUd;
  public HashMap<com.vent.a.m, q> caq;
  boolean car = true;
  boolean cas = false;
  boolean cat = false;
  
  h(a parama, am paramam)
  {
    super(parama, paramam);
  }
  
  protected abstract void AZ();
  
  public final void CC()
  {
    super.CC();
    this.bUd = null;
    this.caq = null;
  }
  
  public final Bundle CG()
  {
    Bundle localBundle = new Bundle();
    if (Cw() <= 50)
    {
      Parcel localParcel = Parcel.obtain();
      com.vent.d.d.a(localParcel, 0, this.bUd);
      int i = localParcel.dataSize();
      if ((Build.VERSION.SDK_INT < 24) || (i < 40960))
      {
        localBundle.putByteArray("users", localParcel.marshall());
        com.vent.d.d.a(localBundle, "invite_tiers", this.caq);
        localBundle.putParcelableArrayList("data", this.cbg);
        localBundle.putBoolean("needmore", this.cbf);
        localBundle.putLong("age", this.bZY);
      }
      localParcel.recycle();
    }
    return localBundle;
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    Object localObject2 = null;
    int m = 1;
    int k = 0;
    switch (paramx.getItemViewType())
    {
    case 1: 
    default: 
      return;
    case 0: 
      AZ();
      return;
    }
    int i = ew(paramInt);
    int j;
    if (this.cbf)
    {
      j = Cw();
      if (!this.cbd) {
        break label422;
      }
      paramInt = 1;
      if (i >= j - paramInt) {
        AZ();
      }
    }
    a locala = (a)paramx;
    com.vent.a.i locali;
    label102:
    x localx;
    label117:
    label138:
    label153:
    Object localObject1;
    label167:
    boolean bool;
    if (this.cbg == null)
    {
      locali = null;
      if ((locali != null) && (this.bUd != null)) {
        break label447;
      }
      localx = null;
      if ((bb.ceP != null) && (localx != null) && (!bb.c(localx))) {
        break label467;
      }
      i = 1;
      if ((localx == null) || (!localx.Fa())) {
        break label472;
      }
      paramInt = 1;
      if (paramInt == 0) {
        break label477;
      }
      localObject1 = c.g(localx.ckO);
      localObject1 = c.b((g)localObject1);
      bool = MyApplication.br(paramx.itemView.getContext());
      if (localObject1 == null) {
        break label483;
      }
      j = ((com.vent.a.h)localObject1).bn(bool);
      label200:
      c.a(localx, locala.bUF, MyApplication.cgk, MyApplication.cgm);
      locala.bUF.setTag(locala);
      localObject1 = locala.bZI;
      if (localx != null) {
        break label491;
      }
      paramx = null;
      label240:
      ((TextView)localObject1).setText(paramx);
      if ((locali == null) || (!locali.isAdmin())) {
        break label500;
      }
      locala.cay.setText(2131689480);
      locala.cay.requestLayout();
      locala.cay.setVisibility(0);
      label286:
      if (this.car)
      {
        if (i == 0) {
          break label573;
        }
        paramInt = 0;
        label299:
        if (paramInt != 0) {
          break label655;
        }
        locala.cau.setVisibility(8);
      }
      if ((locali == null) || (!this.cat)) {
        break label755;
      }
      if (this.bUM.get() != null) {
        break label722;
      }
      paramx = (RecyclerView.x)localObject2;
      label338:
      int n = locali.flags;
      if (paramx != null) {
        break label739;
      }
      paramInt = 0;
      label351:
      if (n >> 24 >= paramInt) {
        break label750;
      }
      paramInt = m;
      label363:
      locala.caz.setColorFilter(j, PorterDuff.Mode.SRC_ATOP);
      paramx = locala.caz;
      if (i == 0)
      {
        i = k;
        if (paramInt != 0) {}
      }
      else
      {
        i = 8;
      }
      paramx.setVisibility(i);
    }
    for (;;)
    {
      locala.cax.setVisibility(8);
      locala.caA.setVisibility(8);
      return;
      label422:
      paramInt = cap / 2;
      break;
      locali = (com.vent.a.i)this.cbg.get(i);
      break label102;
      label447:
      localx = (x)this.bUd.get(locali.cjD);
      break label117;
      label467:
      i = 0;
      break label138;
      label472:
      paramInt = 0;
      break label153;
      label477:
      localObject1 = null;
      break label167;
      label483:
      j = -8355712;
      break label200;
      label491:
      paramx = localx.username;
      break label240;
      label500:
      if (locali != null)
      {
        if (locali.flags >> 24 == 50) {}
        for (paramInt = 1;; paramInt = 0)
        {
          if (paramInt == 0) {
            break label560;
          }
          locala.cay.setText(2131689653);
          locala.cay.requestLayout();
          locala.cay.setVisibility(0);
          break;
        }
      }
      label560:
      locala.cay.setVisibility(8);
      break label286;
      label573:
      if (localx.isBlocked())
      {
        paramInt = 2131230901;
        break label299;
      }
      if (localx.EZ())
      {
        paramInt = 2131230907;
        break label299;
      }
      if (localx.Fh())
      {
        paramInt = 2131230810;
        break label299;
      }
      if (localx.Fj())
      {
        paramInt = 2131230841;
        break label299;
      }
      if (!localx.Ff())
      {
        paramInt = 2131231018;
        break label299;
      }
      paramInt = 2131230891;
      break label299;
      label655:
      locala.cau.setVisibility(0);
      locala.cau.setImageResource(paramInt);
      locala.cau.setColorFilter(j, PorterDuff.Mode.SRC_ATOP);
      paramx = locala.cau;
      if ((i == 0) && (!localx.isBlocked())) {}
      for (bool = true;; bool = false)
      {
        paramx.setEnabled(bool);
        break;
      }
      label722:
      paramx = ((ActUserListGroupMembers)this.bUM.get()).bYM;
      break label338;
      label739:
      paramInt = paramx.flags >> 24;
      break label351;
      label750:
      paramInt = 0;
      break label363;
      label755:
      locala.caz.setVisibility(8);
    }
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateViewHolder(paramViewGroup, paramInt);
    }
    return new a(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427541, paramViewGroup, false));
  }
  
  public void onViewRecycled(RecyclerView.x paramx)
  {
    switch (paramx.getItemViewType())
    {
    default: 
      return;
    }
    ((a)paramx).bUF.setCachedImage(null);
  }
  
  public final void t(Bundle paramBundle)
  {
    byte[] arrayOfByte;
    Parcel localParcel;
    if (paramBundle != null)
    {
      arrayOfByte = paramBundle.getByteArray("users");
      if (arrayOfByte != null) {
        localParcel = Parcel.obtain();
      }
    }
    try
    {
      localParcel.unmarshall(arrayOfByte, 0, arrayOfByte.length);
      localParcel.setDataPosition(0);
      this.bUd = com.vent.d.d.c(localParcel, x.CREATOR);
      localParcel.recycle();
      this.caq = com.vent.d.d.f(paramBundle, "invite_tiers");
      this.cbg = paramBundle.getParcelableArrayList("data");
      this.cbf = paramBundle.getBoolean("needmore");
      this.bZY = paramBundle.getLong("age");
      g(false, false);
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  final class a
    extends m<com.vent.a.i>.a
    implements ba.a
  {
    final CachedImageView bUF;
    final TextView bZI;
    final View caA;
    final ImageButton cau;
    final ImageButton cav;
    final ImageButton caw;
    final ImageView cax;
    final TextView cay;
    final ImageButton caz;
    
    a(View paramView)
    {
      super(paramView);
      paramView = (ViewGroup)paramView;
      paramView.setOnClickListener(this);
      this.bUF = ((CachedImageView)paramView.findViewById(2131296818));
      this.bUF.aH(MyApplication.cgk, MyApplication.cgk);
      this.bUF.setDefaultImage(2131231019);
      this.bZI = ((TextView)paramView.findViewById(2131296981));
      this.bZI.setTypeface(e.cmW);
      this.cau = ((ImageButton)paramView.findViewById(2131296523));
      this.cax = ((ImageView)paramView.findViewById(2131296919));
      this.cay = ((TextView)paramView.findViewById(2131296850));
      this.caA = paramView.findViewById(2131296338);
      if (h.this.car)
      {
        this.cau.setFocusable(false);
        this.cau.setFocusableInTouchMode(false);
        this.cau.setClickable(true);
        this.cau.setOnClickListener(this);
        this.cav = ((ImageButton)paramView.findViewById(2131296938));
        this.caw = ((ImageButton)paramView.findViewById(2131296433));
        if (!h.this.cas) {
          break label307;
        }
        this.cav.setFocusable(false);
        this.cav.setFocusableInTouchMode(false);
        this.cav.setClickable(true);
        this.cav.setOnClickListener(this);
        this.caw.setFocusable(false);
        this.caw.setFocusableInTouchMode(false);
        this.caw.setClickable(true);
        this.caw.setOnClickListener(this);
      }
      for (;;)
      {
        this.caz = ((ImageButton)paramView.findViewById(2131296547));
        this.caz.setOnClickListener(this);
        return;
        this.cau.setVisibility(8);
        this.cax.setVisibility(8);
        break;
        label307:
        this.cav.setVisibility(8);
        this.caw.setVisibility(8);
      }
    }
    
    public final void onClick(View paramView)
    {
      boolean bool2 = true;
      final com.vent.a.i locali = (com.vent.a.i)CQ();
      if (locali == null) {}
      final x localx;
      do
      {
        return;
        localx = (x)h.this.bUd.get(locali.cjD);
      } while (localx == null);
      final android.support.v7.app.d locald = (android.support.v7.app.d)h.this.bUM.get();
      if (h.this.caZ != null) {}
      for (Object localObject = (am)h.this.caZ.get();; localObject = null) {
        switch (paramView.getId())
        {
        default: 
          return;
        case 2131296433: 
          f.b(locald, locali.cjy, new Runnable()
          {
            public final void run()
            {
              if (h.this.cbg != null) {
                h.this.cbg.remove(locali);
              }
              h.this.notifyDataSetChanged();
              if (h.this.isEmpty()) {
                locald.finish();
              }
            }
          });
          return;
        }
      }
      if (localx.Fh())
      {
        f.b(locald, localx, new a(localx)
        {
          public final void run()
          {
            super.run();
            if ((this.cog) && (!localx.Fh())) {
              ax.bo(locald);
            }
          }
        });
        return;
      }
      if (localx.Fj())
      {
        f.d(locald, localx, new a(localx)
        {
          public final void run()
          {
            super.run();
            if ((this.cog) && (!localx.Fj())) {
              ax.bq(locald);
            }
          }
        });
        return;
      }
      if (!localx.Ff())
      {
        f.c(locald, localx, new a(localx)
        {
          public final void run()
          {
            super.run();
            if ((this.cog) && (localx.Fj())) {
              ax.bp(locald);
            }
          }
        });
        return;
      }
      f.a(locald, localx, new a(localx)
      {
        public final void run()
        {
          super.run();
          if ((this.cog) && (localx.Fh())) {
            ax.bn(locald);
          }
        }
      });
      return;
      f.a(locald, locali.cjy, new Runnable()
      {
        public final void run()
        {
          if (h.this.cbg != null) {
            h.this.cbg.remove(locali);
          }
          h.this.notifyDataSetChanged();
          if (h.this.isEmpty()) {
            locald.finish();
          }
        }
      });
      return;
      paramView = new ba(locald, paramView);
      localObject = paramView.Pj;
      paramView.getMenuInflater().inflate(2131492873, (Menu)localObject);
      k localk = ((ActUserListGroupMembers)locald).bYM;
      int j = locali.flags;
      int i;
      if (localk == null)
      {
        i = 0;
        if (j >> 24 >= i) {
          break label494;
        }
        bool1 = true;
        label355:
        ((Menu)localObject).findItem(2131296551).setTitle(locald.getString(2131689720, new Object[] { localx.username }));
        ((Menu)localObject).findItem(2131296551).setVisible(bool1);
        ((Menu)localObject).findItem(2131296554).setVisible(bool1);
        localObject = ((Menu)localObject).findItem(2131296550);
        if ((!bool1) || (locali.flags >> 24 <= 0)) {
          break label500;
        }
      }
      label494:
      label500:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        ((MenuItem)localObject).setVisible(bool1);
        paramView.adv = this;
        paramView.adu.show();
        return;
        i = localk.flags >> 24;
        break;
        bool1 = false;
        break label355;
      }
      ActProfile.a(locald, (android.support.v4.app.i)localObject, localx, h.this.caq);
    }
    
    public final boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      final com.vent.a.i locali = (com.vent.a.i)CQ();
      if (locali == null) {
        return false;
      }
      x localx = (x)h.this.bUd.get(locali.cjD);
      if (localx == null) {
        return false;
      }
      final android.support.v7.app.d locald = (android.support.v7.app.d)h.this.bUM.get();
      switch (paramMenuItem.getItemId())
      {
      }
      for (;;)
      {
        return false;
        f.a(locald, ((ActUserListGroupMembers)locald).bYM, localx, new Runnable()
        {
          public final void run()
          {
            if (h.this.cbg != null) {
              h.this.cbg.remove(locali);
            }
            h.this.notifyDataSetChanged();
          }
        });
        return true;
        f.a(locald, ((ActUserListGroupMembers)locald).bYM, localx, locali, new c.b()
        {
          public final void run()
          {
            locali.eI(((Integer)this.cmT).intValue());
            if (locali.isAdmin())
            {
              ((ActUserListGroupMembers)locald).bYM.eJ(50);
              if ((bb.ceP != null) && (h.this.cbg != null))
              {
                Iterator localIterator = h.this.cbg.iterator();
                while (localIterator.hasNext())
                {
                  com.vent.a.i locali = (com.vent.a.i)localIterator.next();
                  if (bb.a(locali.cjD)) {
                    locali.eI(50);
                  }
                }
              }
            }
            h.this.notifyDataSetChanged();
          }
        });
        continue;
        f.b(locald, ((ActUserListGroupMembers)locald).bYM, localx, locali, new c.b()
        {
          public final void run()
          {
            locali.eI(((Integer)this.cmT).intValue());
            h.this.notifyDataSetChanged();
          }
        });
      }
    }
    
    class a
      extends f.a
    {
      a() {}
      
      public void run()
      {
        h localh = h.this;
        y localy = this.ceP;
        localh.bUd.put(localy.cjy, localy);
        localh.notifyDataSetChanged();
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */