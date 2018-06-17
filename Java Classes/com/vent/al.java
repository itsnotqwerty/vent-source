package com.vent;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.vent.a.k;
import com.vent.d.c;
import java.util.ArrayList;

public final class al
  extends ak
  implements View.OnClickListener
{
  public static ak Dz()
  {
    return new al();
  }
  
  private void bp(View paramView)
  {
    if (paramView == null) {
      return;
    }
    if ((this.ceE == null) || (((i)this.ceE).caH.caK == null) || (!((i)this.ceE).caH.caK.isEmpty())) {}
    for (int i = 8;; i = 0)
    {
      paramView.findViewById(2131296327).setVisibility(i);
      paramView.findViewById(2131296460).setVisibility(i);
      return;
    }
  }
  
  protected final void Dy()
  {
    bp(getView());
  }
  
  public final String a(aq paramaq, boolean paramBoolean)
  {
    int i;
    label23:
    StringBuilder localStringBuilder;
    if ((paramBoolean) || (this.ceE == null))
    {
      paramaq = null;
      if (this.ceE != null) {
        break label77;
      }
      i = 10;
      localStringBuilder = new StringBuilder("api/v1/my/groups.json?per_page=").append(i).append("&from%5border%5d=desc&from%5bfield%5d=last_vented_at&from%5bvalue%5d=");
      if (paramaq != null) {
        break label91;
      }
    }
    label77:
    label91:
    for (paramaq = "9999-01-01T00:00:00.000Z";; paramaq = c.k(paramaq.ckl))
    {
      return Uri.encode(paramaq);
      paramaq = ((i)this.ceE).CJ();
      break;
      i = ((i)this.ceE).cap;
      break label23;
    }
  }
  
  protected final int getLayoutId()
  {
    return 2131427435;
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while ((paramInt2 != -1) || (!paramIntent.getBooleanExtra("didJoinLeave", false)));
    c(true, true, false);
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    ActGroupsJoin.a(getActivity(), this);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    this.cdb = null;
    this.cev = 1;
    this.cew = false;
    super.onCreate(paramBundle);
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.findViewById(2131296670).setOnClickListener(this);
    ((TextView)paramLayoutInflater.findViewById(16908292)).setText(2131689851);
    bp(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public final void onResume()
  {
    super.onResume();
    bp(getView());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */