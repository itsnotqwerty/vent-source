package com.vent;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.support.v7.widget.RecyclerView.x;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.vent.a.k;
import com.vent.a.l;
import com.vent.d.c.b;
import com.vent.d.e;
import com.vent.d.f;
import com.vent.views.FixedTextViewTouchConsume.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

abstract class j
  extends m<k>
{
  j(a parama)
  {
    super(parama, null);
  }
  
  protected abstract void AZ();
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    Object localObject1 = null;
    switch (paramx.getItemViewType())
    {
    case 1: 
    default: 
      return;
    case 0: 
      AZ();
      return;
    }
    paramInt = ew(paramInt);
    if ((this.cbf) && (paramInt >= Cw() - 15)) {
      AZ();
    }
    l locall;
    a locala;
    if (this.cbg == null)
    {
      locall = null;
      locala = (a)paramx;
      Object localObject2 = locala.bWi;
      if (locall != null) {
        break label255;
      }
      paramx = null;
      label94:
      ((CachedImageView)localObject2).setCachedImage(paramx);
      localObject2 = locala.bVB;
      if (locall != null) {
        break label266;
      }
      paramx = null;
      label113:
      ((TextView)localObject2).setText(paramx);
      if (locall != null) {
        break label274;
      }
    }
    label255:
    label266:
    label274:
    for (paramx = (RecyclerView.x)localObject1;; paramx = String.format(locala.itemView.getContext().getString(2131690105), new Object[] { Integer.valueOf(locall.ckj), Integer.valueOf(locall.ckk) }))
    {
      locala.caQ.setText(paramx);
      locala.CK();
      if ((locall == null) || (TextUtils.isEmpty(locall.ckm))) {
        break label337;
      }
      paramx = new boolean[1];
      paramx = e.a(e.a(this.bUM, this.caZ, locall.ckm, e.cng * 3, locala.itemView.getContext().getResources().getColor(2131099755), locall.ckn, locall.cjE, false, true, 0), 3, paramx);
      if ((TextUtils.indexOf(paramx, "@{") < 0) && (TextUtils.indexOf(paramx, "@[") < 0)) {
        break label318;
      }
      locala.bio.setVisibility(8);
      return;
      locall = (l)this.cbg.get(paramInt);
      break;
      paramx = locall.eK(MyApplication.cgm);
      break label94;
      paramx = locall.getName();
      break label113;
    }
    label318:
    locala.bio.setText(paramx);
    locala.bio.setVisibility(0);
    return;
    label337:
    locala.bio.setVisibility(8);
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateViewHolder(paramViewGroup, paramInt);
    }
    return new a(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427526, paramViewGroup, false));
  }
  
  final class a
    extends m<k>.a
  {
    final TextView bVB;
    final CachedImageView bWi;
    final TextView bio;
    final ImageView caN;
    final TextView caQ;
    
    a(View paramView)
    {
      super(paramView);
      this.bWi = ((CachedImageView)paramView.findViewById(2131296799));
      this.bWi.setDefaultImage(2131230895);
      this.bWi.aH(MyApplication.cgm, MyApplication.cgm);
      this.bVB = ((TextView)paramView.findViewById(2131296741));
      this.bVB.setTypeface(e.cmW);
      this.caQ = ((TextView)paramView.findViewById(2131296722));
      this.caN = ((ImageView)paramView.findViewById(2131296703));
      this.caN.setOnClickListener(this);
      this.bio = ((TextView)paramView.findViewById(2131296330));
      this.bio.setTypeface(e.cmX);
      this.bio.setMovementMethod(FixedTextViewTouchConsume.a.FB());
      this.bio.setFocusable(false);
      this.bio.setFocusableInTouchMode(false);
    }
    
    final void CK()
    {
      k localk = (k)CQ();
      if (localk == null) {
        return;
      }
      ImageView localImageView = this.caN;
      if (!localk.EX()) {}
      for (int i = 2131230921;; i = 2131230922)
      {
        localImageView.setImageResource(i);
        i = this.itemView.getContext().getResources().getColor(2131099755);
        this.caN.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
        this.caN.setBackgroundDrawable(com.vent.d.a.b(this.itemView.getContext(), i, i, localk.EX()));
        return;
      }
    }
    
    public final void onClick(View paramView)
    {
      paramView = (k)CQ();
      if (paramView == null) {
        return;
      }
      c.b local1 = new c.b()
      {
        public final void run()
        {
          k localk = (k)this.cmT;
          if (j.this.cbg == null) {}
          for (int i = -1;; i = j.this.cbg.indexOf(localk))
          {
            if (i >= 0)
            {
              j.this.cbg.set(i, localk);
              j.this.notifyItemChanged(j.this.ex(i));
            }
            j.a.this.CK();
            return;
          }
        }
      };
      if (!paramView.EX())
      {
        f.a((Activity)j.this.bUM.get(), paramView, true, local1);
        return;
      }
      f.b((Activity)j.this.bUM.get(), paramView, true, local1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */