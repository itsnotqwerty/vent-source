package com.vent;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.support.v7.app.c.a;
import android.support.v7.widget.RecyclerView.x;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.vent.a.k;
import com.vent.a.m;
import com.vent.a.y;
import com.vent.d.c.b;
import com.vent.d.e;
import com.vent.d.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

abstract class i
  extends l<k>
{
  boolean caF;
  Runnable caG;
  a caH;
  int cap = 15;
  
  i(a parama, am paramam)
  {
    super(parama, paramam);
  }
  
  protected abstract void AZ();
  
  public final void CB()
  {
    this.caH.bZY = 0L;
  }
  
  public final void CC()
  {
    super.CC();
    this.caH.caK = null;
  }
  
  final boolean CD()
  {
    return this.caH.bZH;
  }
  
  public final Bundle CG()
  {
    Bundle localBundle = new Bundle();
    if (Cw() <= 50)
    {
      Parcel localParcel = Parcel.obtain();
      localParcel.writeTypedList(this.caH.caK);
      int i = localParcel.dataSize();
      if ((Build.VERSION.SDK_INT < 24) || (i < 40960))
      {
        localBundle.putByteArray("groups", localParcel.marshall());
        localBundle.putBoolean("needmore", this.caH.bZH);
        localBundle.putLong("age", this.caH.bZY);
        localBundle.putBoolean("ftr", this.caH.caL);
      }
      localParcel.recycle();
    }
    return localBundle;
  }
  
  public final void CH()
  {
    this.caH.caL = false;
    super.CH();
  }
  
  final int CI()
  {
    if (this.caH.caL) {
      return 1;
    }
    return 0;
  }
  
  final k CJ()
  {
    if (isEmpty()) {
      return null;
    }
    return (k)this.caH.caK.get(this.caH.caK.size() - 1);
  }
  
  final int Cw()
  {
    if ((this.caH != null) && (this.caH.caK != null)) {
      return this.caH.caK.size();
    }
    return 0;
  }
  
  final void aZ(boolean paramBoolean)
  {
    this.caH.bZH = paramBoolean;
  }
  
  public long getItemId(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      return super.getItemId(paramInt);
    }
    return ((k)this.caH.caK.get(ew(paramInt))).cjy.hashCode();
  }
  
  final boolean isEmpty()
  {
    return (this.caH == null) || (com.vent.d.c.f(this.caH.caK));
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    Object localObject1 = null;
    int i = 0;
    switch (paramx.getItemViewType())
    {
    case 1: 
    default: 
      return;
    case 0: 
      AZ();
      return;
    }
    if ((this.caH.bZH) && (paramInt >= Cw() - this.cap / 2)) {
      AZ();
    }
    paramInt = ew(paramInt);
    k localk;
    b localb;
    if ((this.caH.caK != null) && (paramInt >= 0) && (paramInt < this.caH.caK.size()))
    {
      localk = (k)this.caH.caK.get(paramInt);
      localb = (b)paramx;
      Object localObject2 = localb.bWi;
      if (localk != null) {
        break label352;
      }
      paramx = null;
      label141:
      ((CachedImageView)localObject2).setCachedImage(paramx);
      localObject2 = localb.bVB;
      if (localk != null) {
        break label364;
      }
      paramx = (RecyclerView.x)localObject1;
      label162:
      ((TextView)localObject2).setText(paramx);
      paramx = localb.itemView.getContext().getString(2131690104);
      if (localk != null) {
        break label373;
      }
      paramInt = 0;
      label189:
      paramx = String.format(paramx, new Object[] { Integer.valueOf(paramInt) });
      localb.caM.setText(paramx);
      if ((localk != null) && (!localk.isAdmin()) && (this.caF)) {
        break label382;
      }
      localb.caN.setVisibility(8);
      label244:
      paramx = localb.caO;
      if (localk == null) {
        break label404;
      }
      if ((localk.flags & 0x8) == 0) {
        break label399;
      }
      paramInt = 1;
      label268:
      if (paramInt == 0) {
        break label404;
      }
      paramInt = 0;
      label274:
      paramx.setVisibility(paramInt);
      if ((localk == null) || (!localk.isAdmin())) {
        break label409;
      }
      localb.cay.setText(2131689480);
      localb.cay.requestLayout();
      localb.cay.setVisibility(0);
      label319:
      paramx = localb.bWe;
      if ((localk == null) || (!localk.isMuted())) {
        break label482;
      }
    }
    label352:
    label364:
    label373:
    label382:
    label399:
    label404:
    label409:
    label469:
    label482:
    for (paramInt = i;; paramInt = 8)
    {
      paramx.setVisibility(paramInt);
      return;
      localk = null;
      break;
      paramx = localk.eK(MyApplication.cgm);
      break label141;
      paramx = localk.getName();
      break label162;
      paramInt = localk.ckj;
      break label189;
      localb.caN.setVisibility(0);
      localb.CK();
      break label244;
      paramInt = 0;
      break label268;
      paramInt = 4;
      break label274;
      if (localk != null)
      {
        if (localk.flags >> 24 == 50) {}
        for (paramInt = 1;; paramInt = 0)
        {
          if (paramInt == 0) {
            break label469;
          }
          localb.cay.setText(2131689653);
          localb.cay.requestLayout();
          localb.cay.setVisibility(0);
          break;
        }
      }
      localb.cay.setVisibility(8);
      break label319;
    }
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    case 3: 
    default: 
      return super.onCreateViewHolder(paramViewGroup, paramInt);
    case 1: 
      return new l.b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427533, paramViewGroup, false));
    case 2: 
      return new b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427525, paramViewGroup, false));
    }
    new l.b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427521, paramViewGroup, false))
    {
      public final void onClick(View paramAnonymousView)
      {
        if (bb.ceP != null)
        {
          if (!bb.ceP.Fc()) {
            new c.a((Context)i.this.bUM.get()).setTitle(2131689524).setMessage(2131689801).setPositiveButton(2131689563, new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                ActChangeEmail.l((Activity)i.this.bUM.get());
              }
            }).setNegativeButton(17039360, null).create().show();
          }
        }
        else {
          return;
        }
        ActCreateEditGroup.a((Activity)i.this.bUM.get(), (android.support.v4.app.i)i.this.caZ.get(), null, null);
      }
    };
  }
  
  public void onViewRecycled(RecyclerView.x paramx)
  {
    switch (paramx.getItemViewType())
    {
    default: 
      return;
    }
    ((b)paramx).bWi.setCachedImage(null);
  }
  
  public final void t(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      byte[] arrayOfByte = paramBundle.getByteArray("groups");
      if (arrayOfByte != null)
      {
        Parcel localParcel = Parcel.obtain();
        localParcel.unmarshall(arrayOfByte, 0, arrayOfByte.length);
        localParcel.setDataPosition(0);
        this.caH.caK = localParcel.createTypedArrayList(k.CREATOR);
        localParcel.recycle();
        this.caH.bZH = paramBundle.getBoolean("needmore");
        this.caH.bZY = paramBundle.getLong("age");
        this.caH.caL = paramBundle.getBoolean("ftr");
      }
      g(false, false);
    }
  }
  
  static final class a
  {
    boolean bZH;
    long bZY;
    ArrayList<k> caK;
    boolean caL;
  }
  
  final class b
    extends l<k>.a
  {
    final TextView bVB;
    final View bWe;
    final CachedImageView bWi;
    final TextView caM;
    final ImageView caN;
    final View caO;
    final TextView cay;
    
    b(View paramView)
    {
      super(paramView);
      paramView.setOnClickListener(this);
      this.bWi = ((CachedImageView)paramView.findViewById(2131296799));
      this.bWi.setDefaultImage(2131230895);
      this.bWi.aH(MyApplication.cgm, MyApplication.cgm);
      this.bVB = ((TextView)paramView.findViewById(2131296741));
      this.bVB.setTypeface(e.cmW);
      this.caM = ((TextView)paramView.findViewById(2131296722));
      this.caN = ((ImageView)paramView.findViewById(2131296703));
      this.caN.setOnClickListener(this);
      this.caO = paramView.findViewById(2131296341);
      this.cay = ((TextView)paramView.findViewById(2131296850));
      this.bWe = paramView.findViewById(2131296740);
    }
    
    final void CK()
    {
      int i = CO();
      ImageView localImageView;
      if (i >= 0)
      {
        k localk = (k)i.this.caH.caK.get(i);
        localImageView = this.caN;
        if (localk.EX()) {
          break label73;
        }
      }
      label73:
      for (i = 2131230921;; i = 2131230922)
      {
        localImageView.setImageResource(i);
        this.caN.setColorFilter(this.itemView.getContext().getResources().getColor(2131099755), PorterDuff.Mode.SRC_ATOP);
        return;
      }
    }
    
    public final void onClick(View paramView)
    {
      int i = CO();
      if ((i < 0) || (i >= i.this.Cw())) {
        return;
      }
      k localk = (k)i.this.caH.caK.get(i);
      switch (paramView.getId())
      {
      default: 
        ActGroup.a((Activity)i.this.bUM.get(), (android.support.v4.app.i)i.this.caZ.get(), localk);
        return;
      }
      paramView = new c.b()
      {
        public final void run()
        {
          k localk = (k)this.cmT;
          int i = i.this.caH.caK.indexOf(localk);
          if (i >= 0)
          {
            i.this.caH.caK.set(i, localk);
            i.this.notifyItemChanged(i.this.ex(i));
          }
          i.b.this.CK();
          if (i.this.caG != null) {
            i.this.caG.run();
          }
          if ((localk != null) && (localk.EX())) {
            f.a((Activity)i.this.bUM.get(), localk, null, 2131689589);
          }
        }
      };
      if (!localk.EX())
      {
        f.a((Activity)i.this.bUM.get(), localk, false, paramView);
        return;
      }
      f.b((Activity)i.this.bUM.get(), localk, false, paramView);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */