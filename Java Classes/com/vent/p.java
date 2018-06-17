package com.vent;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.v7.app.c.a;
import android.support.v7.widget.RecyclerView.x;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.vent.a.x;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

abstract class p
  extends o
{
  p(a parama)
  {
    super(parama, null);
  }
  
  final int CL()
  {
    return 1;
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    Object localObject = null;
    float f2 = 1.0F;
    switch (paramx.getItemViewType())
    {
    default: 
      super.onBindViewHolder(paramx, paramInt);
      return;
    }
    paramInt = ew(paramInt);
    if ((this.cbf) && (paramInt >= Cw() - 7)) {
      AZ();
    }
    x localx;
    if (this.cbg == null)
    {
      localx = null;
      a locala = (a)paramx;
      if ((localx == null) || (!localx.EZ())) {
        break label183;
      }
      paramInt = 1;
      label94:
      com.vent.d.c.a(localx, locala.bUF, MyApplication.cgm, MyApplication.cgo);
      paramx = locala.bUF;
      if (paramInt == 0) {
        break label188;
      }
      f1 = 1.0F;
      label122:
      paramx.setAlpha(f1);
      TextView localTextView = locala.bZI;
      if (localx != null) {
        break label194;
      }
      paramx = (RecyclerView.x)localObject;
      label142:
      localTextView.setText(paramx);
      paramx = locala.bZI;
      if (paramInt == 0) {
        break label203;
      }
    }
    label183:
    label188:
    label194:
    label203:
    for (float f1 = f2;; f1 = 0.5F)
    {
      paramx.setAlpha(f1);
      return;
      localx = (x)this.cbg.get(paramInt);
      break;
      paramInt = 0;
      break label94;
      f1 = 0.5F;
      break label122;
      paramx = localx.username;
      break label142;
    }
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateViewHolder(paramViewGroup, paramInt);
    case 1: 
      return new l.b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427532, paramViewGroup, false));
    }
    return new a(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427543, paramViewGroup, false));
  }
  
  protected final class a
    extends o.b
  {
    a(View paramView)
    {
      super(paramView, MyApplication.cgk);
      paramView.setOnClickListener(this);
      paramView.findViewById(2131296938).setVisibility(8);
      paramView.findViewById(2131296444).setVisibility(8);
      paramView.findViewById(2131296972).setVisibility(8);
    }
    
    public final void onClick(View paramView)
    {
      final x localx = CR();
      if (localx == null) {
        return;
      }
      switch (paramView.getId())
      {
      default: 
        return;
      case 2131296682: 
        paramView = (a)p.this.bUM.get();
        if (localx.EZ())
        {
          Intent localIntent = new Intent();
          localIntent.putExtra("user", localx);
          paramView.setResult(-1, localIntent);
          paramView.finish();
          return;
        }
        break;
      case 2131296818: 
        p.this.a(localx);
        return;
      }
      new c.a(paramView).setTitle(paramView.getString(2131689861)).setMessage(String.format(paramView.getString(2131689853), new Object[] { localx.username })).setPositiveButton(2131689829, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ActProfile.a((ActAddChat)p.this.bUM.get(), null, localx, null);
        }
      }).setNegativeButton(17039360, null).create().show();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */