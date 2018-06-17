package com.vent;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView.x;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.vent.a.g;
import com.vent.a.h;
import com.vent.a.x;
import com.vent.a.y;
import com.vent.d.e;
import com.vent.views.FixedTextViewTouchConsume.a;
import java.util.ArrayList;

abstract class r
  extends o
{
  private final boolean cbA = true;
  final boolean cbB = true;
  
  r(a parama, am paramam)
  {
    super(parama, paramam);
  }
  
  public final Bundle CG()
  {
    return new Bundle();
  }
  
  final int CL()
  {
    if (this.cbA) {
      return 1;
    }
    return 0;
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    switch (paramx.getItemViewType())
    {
    default: 
      super.onBindViewHolder(paramx, paramInt);
      return;
    }
    Object localObject;
    y localy;
    a locala;
    label83:
    label101:
    int i;
    if (this.cbg == null)
    {
      localObject = null;
      localy = (y)x.c((com.vent.a.c)localObject);
      locala = (a)paramx;
      a(locala, localy, MyApplication.cgm);
      if ((localy == null) || (!localy.Fa())) {
        break label319;
      }
      paramInt = 1;
      if (paramInt == 0) {
        break label324;
      }
      localObject = com.vent.d.c.a(this.bXh, localy.ckO);
      h localh = com.vent.d.c.a(this.bXg, (g)localObject);
      boolean bool = MyApplication.br(paramx.itemView.getContext());
      if (localh == null) {
        break label330;
      }
      i = localh.bm(bool);
      label137:
      if ((paramInt == 0) || (localObject == null) || (localh == null)) {
        break label336;
      }
      locala.cbC.setVisibility(0);
      locala.cbC.setText(((g)localObject).getName());
      locala.cbC.setBackgroundColor(i);
      locala.cbC.setTextColor(localh.bo(bool));
      label197:
      if ((paramInt == 0) || (TextUtils.isEmpty(localy.ckm))) {
        break label349;
      }
      paramx = new boolean[1];
      paramx = e.a(e.a(this.bUM, this.caZ, localy.ckm, e.cng * 3, i, localy.ckn, localy.cjE, this.cbB, true, 0), 3, paramx);
      locala.bio.setText(paramx);
      locala.bio.setVisibility(0);
      label278:
      localObject = locala.bXH;
      if (localy != null) {
        break label362;
      }
    }
    label319:
    label324:
    label330:
    label336:
    label349:
    label362:
    for (paramx = null;; paramx = localy.ckQ)
    {
      ((TextView)localObject).setText(paramx);
      return;
      localObject = (x)this.cbg.get(ew(paramInt));
      break;
      paramInt = 0;
      break label83;
      localObject = null;
      break label101;
      i = -8355712;
      break label137;
      locala.cbC.setVisibility(8);
      break label197;
      locala.bio.setVisibility(8);
      break label278;
    }
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateViewHolder(paramViewGroup, paramInt);
    case 1: 
      return new l.b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427522, paramViewGroup, false));
    }
    return new a(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427542, paramViewGroup, false));
  }
  
  public final void t(Bundle paramBundle)
  {
    if (paramBundle != null) {
      g(false, false);
    }
  }
  
  final class a
    extends o.b
  {
    final TextView bXH;
    final TextView bio;
    final TextView cbC;
    
    a(View paramView)
    {
      super(paramView, MyApplication.cgm);
      paramView = (ViewGroup)paramView;
      if (r.this.cbB) {
        paramView.setOnClickListener(this);
      }
      this.cbC = ((TextView)paramView.findViewById(2131296479));
      this.cbC.setTypeface(e.cmU);
      this.bio = ((TextView)paramView.findViewById(2131296330));
      this.bio.setTypeface(e.cmX);
      this.bio.setMovementMethod(FixedTextViewTouchConsume.a.FB());
      this.bio.setFocusable(false);
      this.bio.setFocusableInTouchMode(false);
      this.bXH = ((TextView)paramView.findViewById(2131296835));
      this.bXH.setTypeface(e.cmX);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */