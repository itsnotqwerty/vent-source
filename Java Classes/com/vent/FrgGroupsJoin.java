package com.vent;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.j;
import android.text.TextUtils;
import com.vent.a.k;
import com.vent.a.m;

public final class FrgGroupsJoin
  extends ak
{
  final void Dy()
  {
    super.Dy();
    if ((this.ceE != null) && (TextUtils.isEmpty(this.bTn))) {
      ((i)this.ceE).aZ(false);
    }
  }
  
  public final String a(aq paramaq, boolean paramBoolean)
  {
    k localk;
    int i;
    label24:
    String str;
    if ((paramBoolean) || (this.ceE == null))
    {
      localk = null;
      if (this.ceE != null) {
        break label109;
      }
      i = 10;
      if (!TextUtils.isEmpty(this.bTn)) {
        break label123;
      }
      str = "api/v1/suggested_groups.json?per_page=" + i;
      paramaq = str;
      if (localk != null) {
        paramaq = str + "&from%5border%5d=asc&from%5bfield%5d=name&from%5bvalue%5d=" + Uri.encode(localk.cjP);
      }
    }
    label109:
    label123:
    do
    {
      return paramaq;
      localk = ((i)this.ceE).CJ();
      break;
      i = ((i)this.ceE).cap;
      break label24;
      str = "api/v1/groups/search.json?per_page=" + i + "&q=" + Uri.encode(this.bTn);
      paramaq = str;
    } while (localk == null);
    return str + "&from%5border%5d=desc&from%5bfield%5d%5b%5d=group_follows_count&from%5bfield%5d%5b%5d=id&from%5bvalue%5d%5b%5d=" + Uri.encode(String.valueOf(localk.ckj)) + "&from%5bvalue%5d%5b%5d=" + Uri.encode(localk.cjy.toString());
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
    ((ActGroupsJoin)getActivity()).bWp = true;
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    this.cdb = null;
    this.cev = 0;
    this.cew = false;
    super.onCreate(paramBundle);
    ((i)this.ceE).cap = 30;
    ((i)this.ceE).caF = true;
    ((i)this.ceE).caG = new Runnable()
    {
      public final void run()
      {
        j localj = FrgGroupsJoin.this.getActivity();
        if ((localj instanceof ActGroupsJoin)) {
          ((ActGroupsJoin)localj).bWp = true;
        }
      }
    };
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/FrgGroupsJoin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */