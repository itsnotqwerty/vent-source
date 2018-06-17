package com.vent;

import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.app.i;
import android.support.v7.app.c.a;
import android.support.v7.app.d;
import android.support.v7.widget.RecyclerView.x;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.vent.a.b;
import com.vent.a.h;
import com.vent.a.j;
import com.vent.a.o;
import com.vent.a.s;
import com.vent.a.t;
import com.vent.a.x;
import com.vent.a.z;
import com.vent.d.c;
import com.vent.d.e;
import com.vent.d.f;
import com.vent.views.FixedTextViewTouchConsume.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public abstract class n
  extends m<s>
{
  n(a parama, am paramam)
  {
    super(parama, paramam);
  }
  
  protected abstract void AZ();
  
  public final Bundle CG()
  {
    Bundle localBundle = new Bundle();
    if (Cw() <= 50)
    {
      Parcel localParcel = Parcel.obtain();
      localParcel.writeTypedList(this.cbg);
      int i = localParcel.dataSize();
      if ((Build.VERSION.SDK_INT < 24) || (i < 40960))
      {
        localBundle.putByteArray("notifications", localParcel.marshall());
        localBundle.putBoolean("needmore", this.cbf);
        localBundle.putLong("age", this.bZY);
      }
      localParcel.recycle();
    }
    return localBundle;
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    int i = paramx.getItemViewType();
    if (i == 0) {
      AZ();
    }
    while (i != 2) {
      return;
    }
    paramInt = ew(paramInt);
    if ((this.cbf) && (paramInt >= Cw() - 5)) {
      AZ();
    }
    s locals;
    b localb;
    d locald;
    boolean bool;
    label104:
    int k;
    int j;
    Object localObject1;
    label177:
    label210:
    Object localObject2;
    WeakReference localWeakReference;
    if ((paramInt < 0) || (this.cbg == null))
    {
      locals = null;
      localb = (b)paramx;
      locald = (d)this.bUM.get();
      bool = MyApplication.br(locald);
      if ((locals != null) && (locals.ckE != null)) {
        break label374;
      }
      paramInt = -8355712;
      paramx = localb.itemView.getContext().getResources();
      k = paramx.getColor(2131099755);
      j = paramx.getColor(2131099766);
      i = j;
      if (locals != null)
      {
        if (!locals.read) {
          break label435;
        }
        i = j;
      }
      localb.itemView.setBackgroundColor(i);
      localObject1 = localb.cbi;
      if (locals != null) {
        break label505;
      }
      paramx = null;
      ((TextView)localObject1).setText(paramx);
      localObject1 = localb.cbj;
      if (locals != null) {
        break label517;
      }
      paramx = null;
      ((TextView)localObject1).setText(paramx);
      if (locals != null) {
        break label576;
      }
      paramx = null;
      if (TextUtils.isEmpty(paramx)) {
        break label591;
      }
      localObject2 = this.bUM;
      localWeakReference = this.caZ;
      i = e.cng;
      if (locals.ckE == null) {
        break label585;
      }
      localObject1 = locals.ckE.ccR;
      label252:
      paramx = e.a(e.a((WeakReference)localObject2, localWeakReference, paramx, i * 2 + 1, k, localObject1, null, true, false, 0), 2, new boolean[1]);
      localb.cbk.setText(e.a(paramx));
      localb.cbk.setVisibility(0);
    }
    for (;;)
    {
      if (localb.cbl.getChildCount() <= 0) {
        break label604;
      }
      paramx = localb.cbl.getChildAt(0);
      localb.cbl.removeViewAt(0);
      paramx = (CachedImageView)paramx;
      paramx.setCachedImage(null);
      localb.cbo.add(paramx);
      continue;
      locals = (s)this.cbg.get(paramInt);
      break;
      label374:
      paramx = c.b(null, locals.ckE.cjQ);
      if (paramx == null)
      {
        if (locals.ckE.ckI == 0)
        {
          paramInt = -8355712;
          break label104;
        }
        paramInt = h.b(bool, locals.ckE.ckI);
        break label104;
      }
      paramInt = paramx.bn(bool);
      break label104;
      label435:
      double d = android.support.v4.a.a.m(paramInt, j);
      if (bool) {
        if (d < 2.6D) {
          i = 1342177280;
        }
      }
      for (;;)
      {
        i |= 0xFFFFFF & paramInt;
        break;
        i = 805306368;
        continue;
        if (d < 2.6D) {
          i = 1073741824;
        } else {
          i = 419430400;
        }
      }
      label505:
      paramx = e.m(locals.ckF);
      break label177;
      label517:
      localObject2 = this.bUM;
      localWeakReference = this.caZ;
      String str = locals.ckC;
      if (locals.ckE != null) {}
      for (paramx = locals.ckE.ccR;; paramx = null)
      {
        paramx = e.a((WeakReference)localObject2, localWeakReference, str, k, paramx, true, false);
        break;
      }
      label576:
      paramx = locals.ckD;
      break label210;
      label585:
      localObject1 = null;
      break label252;
      label591:
      localb.cbk.setVisibility(8);
    }
    label604:
    if ((locals.ckE != null) && (locals.ckE.ccR != null))
    {
      j = Math.min(locals.ckE.ccR.size(), 10);
      if (j > 0)
      {
        i = 0;
        if (i < j)
        {
          localObject1 = (x)locals.ckE.ccR.get(i);
          if (!c.f(localb.cbo)) {
            paramx = (CachedImageView)localb.cbo.remove(0);
          }
          for (;;)
          {
            localObject2 = new LinearLayout.LayoutParams(MyApplication.cgk, MyApplication.cgk);
            if (i != 0) {
              ((ViewGroup.MarginLayoutParams)localObject2).leftMargin = MyApplication.cge;
            }
            ((ViewGroup.MarginLayoutParams)localObject2).width = MyApplication.cgj;
            ((ViewGroup.MarginLayoutParams)localObject2).height = MyApplication.cgj;
            paramx.setLayoutParams((ViewGroup.LayoutParams)localObject2);
            c.a((x)localObject1, paramx, MyApplication.cgk, MyApplication.cgm);
            paramx.setOnClickListener(new a(this.bUM, (x)localObject1));
            localb.cbl.addView(paramx);
            i += 1;
            break;
            paramx = new CachedImageView(locald);
            paramx.setScaleType(ImageView.ScaleType.CENTER_CROP);
            paramx.aH(MyApplication.cgk, MyApplication.cgk);
            paramx.setDefaultImage(2131231019);
          }
        }
        localb.cbl.setVisibility(0);
      }
    }
    while ((locals.type != null) && (locals.type.equals("InteractedWithVent")) && (locals.ckE != null) && (locals.ckE.ckH != null))
    {
      paramx = locals.ckE.ckH;
      if (b.a(paramx, o.cky.cjy))
      {
        localb.cbm.setVisibility(0);
        localb.cbm.setImageResource(2131230888);
        localb.cbm.setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
        localb.cbn.setVisibility(4);
        return;
        localb.cbl.setVisibility(8);
        continue;
        localb.cbl.setVisibility(8);
      }
      else
      {
        localb.cbm.setVisibility(4);
        localb.cbn.setVisibility(0);
        localb.cbn.setBackgroundDrawable(com.vent.d.a.c(bool, paramInt, paramInt, false));
        localb.cbn.setTextColor(paramInt);
        localb.cbn.setText(paramx.getName());
        return;
      }
    }
    if ((locals.type != null) && (locals.type.equals("CommentedOnVent")))
    {
      localb.cbm.setVisibility(0);
      localb.cbm.setImageResource(2131230843);
      localb.cbm.setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
      localb.cbn.setVisibility(4);
      return;
    }
    if ((locals.type != null) && ((locals.type.equals("MentionedInComment")) || (locals.type.equals("MentionedInVent"))))
    {
      localb.cbm.setVisibility(0);
      localb.cbm.setImageResource(2131230809);
      localb.cbm.setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
      localb.cbn.setVisibility(4);
      return;
    }
    if ((locals.type != null) && (locals.type.equals("FavouriteComment")))
    {
      localb.cbm.setVisibility(0);
      localb.cbm.setImageResource(2131230888);
      localb.cbm.setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
      localb.cbn.setVisibility(4);
      return;
    }
    if ((locals.type != null) && ((locals.type.equals("NewListener")) || (locals.type.equals("AcceptedFollowRequest"))))
    {
      localb.cbm.setVisibility(0);
      localb.cbm.setImageResource(2131230810);
      localb.cbm.setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
      localb.cbn.setVisibility(4);
      return;
    }
    if ((locals.type != null) && (locals.type.equals("NewFollowRequest")))
    {
      localb.cbm.setVisibility(0);
      localb.cbm.setImageResource(2131230841);
      localb.cbm.setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
      localb.cbn.setVisibility(4);
      return;
    }
    if ((locals.type != null) && (locals.type.equals("NewGift")))
    {
      localb.cbm.setVisibility(0);
      localb.cbm.setImageResource(2131230924);
      localb.cbm.setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
      localb.cbn.setVisibility(4);
      return;
    }
    localb.cbm.setVisibility(4);
    localb.cbn.setVisibility(4);
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateViewHolder(paramViewGroup, paramInt);
    }
    return new b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427534, paramViewGroup, false));
  }
  
  public void onViewRecycled(RecyclerView.x paramx)
  {
    int i = paramx.getItemViewType();
    if ((i != 0) && (i == 1))
    {
      paramx = (b)paramx;
      com.vent.d.a.bq(paramx.cbn);
      paramx.cbj.setText(null);
      paramx.cbk.setText(null);
    }
  }
  
  public final void t(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      byte[] arrayOfByte = paramBundle.getByteArray("notifications");
      if (arrayOfByte != null)
      {
        Parcel localParcel = Parcel.obtain();
        localParcel.unmarshall(arrayOfByte, 0, arrayOfByte.length);
        localParcel.setDataPosition(0);
        this.cbg = localParcel.createTypedArrayList(s.CREATOR);
        localParcel.recycle();
        this.cbf = paramBundle.getBoolean("needmore");
        this.bZY = paramBundle.getLong("age");
      }
      super.g(false, false);
    }
  }
  
  static final class a
    implements View.OnClickListener
  {
    final WeakReference<a> bUM;
    final x bXE;
    
    a(WeakReference<a> paramWeakReference, x paramx)
    {
      this.bUM = paramWeakReference;
      this.bXE = paramx;
    }
    
    public final void onClick(View paramView)
    {
      ActProfile.a((d)this.bUM.get(), null, this.bXE, null);
    }
  }
  
  final class b
    extends l<s>.a
  {
    final TextView cbi;
    final TextView cbj;
    final TextView cbk;
    final LinearLayout cbl;
    final ImageView cbm;
    final TextView cbn;
    final List<CachedImageView> cbo;
    
    b(View paramView)
    {
      super(paramView);
      this$1 = (ViewGroup)paramView;
      n.this.setOnClickListener(this);
      this.cbi = ((TextView)n.this.findViewById(2131296425));
      this.cbi.setTypeface(e.cmZ);
      this.cbj = ((TextView)n.this.findViewById(2131296728));
      this.cbj.setMovementMethod(FixedTextViewTouchConsume.a.FB());
      this.cbj.setFocusable(false);
      this.cbj.setFocusableInTouchMode(false);
      this.cbk = ((TextView)n.this.findViewById(2131296725));
      this.cbk.setMovementMethod(FixedTextViewTouchConsume.a.FB());
      this.cbk.setFocusable(false);
      this.cbk.setFocusableInTouchMode(false);
      this.cbl = ((LinearLayout)n.this.findViewById(2131296984));
      this.cbm = ((ImageView)n.this.findViewById(2131296584));
      this.cbn = ((TextView)n.this.findViewById(2131296585));
      this.cbo = new ArrayList(10);
    }
    
    public final void onClick(View paramView)
    {
      int i = CO();
      final d locald;
      final Object localObject2;
      if ((i < 0) || (n.this.cbg == null))
      {
        paramView = null;
        if ((paramView != null) && (paramView.type != null))
        {
          locald = (d)n.this.bUM.get();
          localObject1 = (i)n.this.caZ.get();
          ax.c(locald, paramView.type);
          if (!paramView.read)
          {
            paramView.read = true;
            n.this.notifyItemChanged(n.this.ex(i));
            if (locald != null) {
              ((NotificationManager)locald.getSystemService("notification")).cancel(0);
            }
            f.a(locald, paramView.cjy);
          }
          if ((!paramView.type.equals("InteractedWithVent")) && (!paramView.type.equals("CommentedOnVent")) && (!paramView.type.equals("MentionedInComment")) && (!paramView.type.equals("MentionedInVent")) && (!paramView.type.equals("FavouriteComment"))) {
            break label236;
          }
          localObject2 = new z();
          ((z)localObject2).cjy = paramView.ckE.ckG;
          ActVentView.a(locald, (i)localObject1, true, (z)localObject2);
        }
      }
      label236:
      label324:
      boolean bool;
      do
      {
        do
        {
          return;
          paramView = (s)n.this.cbg.get(i);
          break;
          if (paramView.type.equals("NewListener"))
          {
            ActUserListListeners.a(locald, bb.ceP);
            return;
          }
          if (paramView.type.equals("AcceptedFollowRequest"))
          {
            ActUserListListenings.a(locald, bb.ceP);
            return;
          }
          if (paramView.type.equals("NewFollowRequest"))
          {
            ActUserListListenRequests.l(locald);
            return;
          }
        } while (!paramView.type.equals("NewGift"));
        if (paramView.ckE == null) {
          break label560;
        }
        localObject1 = paramView.ckE.ckJ;
        if (localObject1 == null) {
          break label564;
        }
        bool = ((j)localObject1).ckh;
        localObject2 = ((j)localObject1).message.trim();
        paramView = (View)localObject2;
        if (!TextUtils.isEmpty((CharSequence)localObject2)) {
          paramView = (String)localObject2 + "<br><br>";
        }
        localObject2 = c.b(null, ((j)localObject1).cjQ);
        if ((localObject2 != null) && (!bb.ciD.contains(((h)localObject2).cjy)))
        {
          bb.ciA = 0L;
          ActMain.a(locald, true, 0);
        }
      } while (locald == null);
      if (!bool)
      {
        String str = ((j)localObject1).ckg;
        if (localObject2 == null) {}
        for (localObject1 = null;; localObject1 = ((h)localObject2).cjP)
        {
          paramView = locald.getString(2131690094, new Object[] { str, localObject1, paramView });
          localObject1 = (ViewGroup)LayoutInflater.from(locald).inflate(2131427567, null, false);
          ((TextView)((ViewGroup)localObject1).findViewById(16908308)).setText(e.t(Html.fromHtml(paramView)));
          c.a(new c.a(locald).setView((View)localObject1).setNegativeButton(17039360, null).setPositiveButton(2131690101, new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface = z.Fn();
              if ((localObject2 != null) && (!c.f(localObject2.cjT))) {
                paramAnonymousDialogInterface.ckX = ((com.vent.a.m)localObject2.cjT.get(0));
              }
              ActEmotions.a(locald, paramAnonymousDialogInterface);
            }
          }).show(), 300);
          return;
          label560:
          localObject1 = null;
          break label324;
          label564:
          break;
        }
      }
      if (localObject2 == null) {}
      for (Object localObject1 = null;; localObject1 = ((h)localObject2).cjP)
      {
        paramView = locald.getString(2131690095, new Object[] { localObject1, paramView });
        break;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */