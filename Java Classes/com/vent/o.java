package com.vent;

import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.support.v7.widget.RecyclerView.x;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import com.vent.a.g;
import com.vent.a.h;
import com.vent.a.q;
import com.vent.a.x;
import com.vent.d.c;
import com.vent.d.e;
import com.vent.d.f;
import com.vent.d.f.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

abstract class o
  extends m<x>
{
  public HashMap<com.vent.a.m, h> bXg;
  public HashMap<com.vent.a.m, g> bXh;
  public HashMap<com.vent.a.m, q> caq;
  
  o(a parama, am paramam)
  {
    super(parama, paramam);
  }
  
  protected abstract void AZ();
  
  public void CC()
  {
    super.CC();
    this.bXh = null;
    this.bXg = null;
    this.caq = null;
  }
  
  public Bundle CG()
  {
    Bundle localBundle = new Bundle();
    if (Cw() <= 50)
    {
      Parcel localParcel = Parcel.obtain();
      localParcel.writeTypedList(this.cbg);
      int i = localParcel.dataSize();
      if ((Build.VERSION.SDK_INT < 24) || (i < 40960))
      {
        localBundle.putByteArray("users", localParcel.marshall());
        com.vent.d.d.a(localBundle, "invite_tiers", this.caq);
        com.vent.d.d.a(localBundle, "emotions", this.bXh);
        com.vent.d.d.a(localBundle, "emotion_categories", this.bXg);
        localBundle.putBoolean("needmore", this.cbf);
        localBundle.putLong("age", this.bZY);
      }
      localParcel.recycle();
    }
    return localBundle;
  }
  
  final void a(x paramx)
  {
    a locala;
    if (this.bUM != null)
    {
      locala = (a)this.bUM.get();
      if (this.caZ == null) {
        break label52;
      }
    }
    label52:
    for (am localam = (am)this.caZ.get();; localam = null)
    {
      ActProfile.a(locala, localam, paramx, this.caq);
      return;
      locala = null;
      break;
    }
  }
  
  final void a(b paramb, x paramx, int paramInt)
  {
    Object localObject2 = null;
    int i;
    Object localObject1;
    if ((paramx != null) && (!paramx.isBlocked()))
    {
      i = 1;
      if (i == 0) {
        break label170;
      }
      localObject1 = paramx;
      label25:
      c.a((x)localObject1, paramb.bUF, paramInt, paramInt);
      paramb.bUF.setTag(paramb);
      TextView localTextView = paramb.bZI;
      if (paramx != null) {
        break label176;
      }
      localObject1 = null;
      label57:
      localTextView.setText((CharSequence)localObject1);
      if ((paramx == null) || (!paramx.Fa())) {
        break label185;
      }
      paramInt = 1;
      label77:
      localObject1 = localObject2;
      if (paramInt != 0) {
        localObject1 = c.a(this.bXh, paramx.ckO);
      }
      localObject1 = c.a(this.bXg, (g)localObject1);
      if (localObject1 == null) {
        break label190;
      }
      i = ((h)localObject1).bn(MyApplication.br(paramb.itemView.getContext()));
      label131:
      if ((paramx != null) && (bb.ceP != null) && (!bb.c(paramx))) {
        break label197;
      }
      paramInt = 0;
    }
    for (;;)
    {
      if (paramInt != 0) {
        break label268;
      }
      paramb.cau.setVisibility(8);
      return;
      i = 0;
      break;
      label170:
      localObject1 = null;
      break label25;
      label176:
      localObject1 = paramx.username;
      break label57;
      label185:
      paramInt = 0;
      break label77;
      label190:
      i = -8355712;
      break label131;
      label197:
      if (paramx.isBlocked()) {
        paramInt = 2131230901;
      } else if (paramx.EZ()) {
        paramInt = 2131230907;
      } else if (paramx.Fh()) {
        paramInt = 2131230810;
      } else if (paramx.Fj()) {
        paramInt = 2131230841;
      } else if (!paramx.Ff()) {
        paramInt = 2131231018;
      } else {
        paramInt = 2131230891;
      }
    }
    label268:
    paramb.cau.setVisibility(0);
    paramb.cau.setImageResource(paramInt);
    paramb.cau.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
  }
  
  void b(x paramx)
  {
    if (this.cbg == null) {}
    for (int i = -1;; i = this.cbg.indexOf(paramx))
    {
      if (i >= 0)
      {
        this.cbg.set(i, paramx);
        notifyItemChanged(ex(i));
      }
      return;
    }
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
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
    if (this.cbf)
    {
      int j = Cw();
      if (!this.cbd) {
        break label104;
      }
      paramInt = 1;
      if (i >= j - paramInt) {
        AZ();
      }
    }
    a locala = (a)paramx;
    if (this.cbg == null) {}
    for (paramx = null;; paramx = (x)this.cbg.get(i))
    {
      a(locala, paramx, MyApplication.cgk);
      return;
      label104:
      paramInt = 7;
      break;
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
    ((b)paramx).bUF.setCachedImage(null);
  }
  
  public void t(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      byte[] arrayOfByte = paramBundle.getByteArray("users");
      if (arrayOfByte != null)
      {
        Parcel localParcel = Parcel.obtain();
        localParcel.unmarshall(arrayOfByte, 0, arrayOfByte.length);
        localParcel.setDataPosition(0);
        this.cbg = localParcel.createTypedArrayList(x.CREATOR);
        localParcel.recycle();
        this.caq = com.vent.d.d.f(paramBundle, "invite_tiers");
        this.bXh = com.vent.d.d.f(paramBundle, "emotions");
        this.bXg = com.vent.d.d.f(paramBundle, "emotion_categories");
        this.cbf = paramBundle.getBoolean("needmore");
        this.bZY = paramBundle.getLong("age");
      }
      g(false, false);
    }
  }
  
  class a
    extends o.b
  {
    public a(View paramView)
    {
      super(paramView, MyApplication.cgk);
      paramView.findViewById(2131296938).setVisibility(8);
      paramView.findViewById(2131296433).setVisibility(8);
      paramView.findViewById(2131296850).setVisibility(8);
      paramView.findViewById(2131296919).setVisibility(8);
      paramView.findViewById(2131296547).setVisibility(8);
    }
  }
  
  abstract class b
    extends m<x>.a
  {
    final CachedImageView bUF;
    final TextView bZI;
    final ImageButton cau;
    
    b(View paramView, int paramInt)
    {
      super(paramView);
      this$1 = (ViewGroup)paramView;
      o.this.setOnClickListener(this);
      this.bUF = ((CachedImageView)o.this.findViewById(2131296818));
      this.bUF.aH(paramInt, paramInt);
      this.bUF.setDefaultImage(2131231019);
      this.bUF.setOnClickListener(this);
      this.bZI = ((TextView)o.this.findViewById(2131296981));
      this.bZI.setTypeface(e.cmW);
      this.cau = ((ImageButton)o.this.findViewById(2131296523));
      if (this.cau != null)
      {
        this.cau.setFocusable(false);
        this.cau.setFocusableInTouchMode(false);
        this.cau.setClickable(true);
        this.cau.setOnClickListener(this);
      }
    }
    
    x CR()
    {
      return (x)CQ();
    }
    
    public void onClick(View paramView)
    {
      final x localx = CR();
      if (localx == null) {
        return;
      }
      final android.support.v7.app.d locald = (android.support.v7.app.d)o.this.bUM.get();
      switch (paramView.getId())
      {
      default: 
        return;
      case 2131296523: 
        if (localx.Fh())
        {
          f.b(locald, localx, new a(localx)
          {
            public final void run()
            {
              super.run();
              if (!localx.Fh()) {
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
              if (!localx.Fj()) {
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
              if (localx.Fj()) {
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
            if (localx.Fh()) {
              ax.bn(locald);
            }
          }
        });
        return;
      }
      o.this.a(localx);
    }
    
    class a
      extends f.a
    {
      a() {}
      
      public void run()
      {
        o.this.b(this.ceP);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */