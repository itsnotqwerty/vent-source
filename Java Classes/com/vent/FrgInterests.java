package com.vent;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.vent.a.m;
import com.vent.a.p;
import com.vent.d.c;
import com.vent.d.d;
import java.util.ArrayList;
import java.util.HashSet;

public final class FrgInterests
  extends am<k, p>
{
  public HashSet<m> ceB;
  
  public FrgInterests()
  {
    setArguments(new Bundle());
  }
  
  private void DA()
  {
    ((k)this.ceE).caU = new ArrayList();
    int k = ((k)this.ceE).Cw();
    int i = 0;
    if (i < k)
    {
      ArrayList localArrayList = ((k)this.ceE).caU;
      if (this.ceB.contains(((p)((k)this.ceE).cbg.get(i)).cjy)) {}
      for (int j = 1;; j = 0)
      {
        localArrayList.add(Integer.valueOf(j));
        i += 1;
        break;
      }
    }
    ((k)this.ceE).notifyDataSetChanged();
  }
  
  private void u(Bundle paramBundle)
  {
    if ((paramBundle != null) && (!paramBundle.isEmpty()))
    {
      this.ceB = d.g(paramBundle, "interest_ids");
      if (this.ceB == null) {
        this.ceB = new HashSet();
      }
      if (this.ceE != null)
      {
        ((k)this.ceE).caV = paramBundle.getInt("minInterest");
        ((k)this.ceE).caW = paramBundle.getInt("maxInterest");
        ((k)this.ceE).caT = paramBundle.getInt("hdrString");
        DA();
      }
    }
  }
  
  public final void Du()
  {
    if (((((k)this.ceE).cbg == null) || (System.currentTimeMillis() - ((k)this.ceE).bZY > 3600000L)) && (c.bE(getActivity()))) {
      f(true, false);
    }
  }
  
  protected final int Dx()
  {
    return 2131689675;
  }
  
  public final void a(HashSet<m> paramHashSet, int paramInt1, int paramInt2, int paramInt3)
  {
    Bundle localBundle = new Bundle();
    d.a(localBundle, "interest_ids", paramHashSet);
    localBundle.putInt("hdrString", paramInt1);
    localBundle.putInt("minInterest", paramInt2);
    localBundle.putInt("maxInterest", paramInt3);
    getArguments().putAll(localBundle);
    u(localBundle);
  }
  
  public final void f(final boolean paramBoolean1, final boolean paramBoolean2)
  {
    this.handler.post(new Runnable()
    {
      public final void run()
      {
        if ((paramBoolean1) && ((FrgInterests.this.ceE == null) || (!((k)FrgInterests.this.ceE).bZp))) {}
        for (final boolean bool = true;; bool = false)
        {
          if ((FrgInterests.this.ceE != null) && (!((k)FrgInterests.this.ceE).bZp))
          {
            if (bb.ceP != null) {
              break;
            }
            ((k)FrgInterests.this.ceE).CH();
          }
          return;
        }
        ((k)FrgInterests.this.ceE).cbc = true;
        ((k)FrgInterests.this.ceE).bZp = true;
        if (bool)
        {
          ((k)FrgInterests.this.ceE).bb(true);
          ((k)FrgInterests.this.ceE).CB();
        }
        ((k)FrgInterests.this.ceE).g(bool, paramBoolean2);
        StringBuilder localStringBuilder = new StringBuilder("api/v1/interests.json?per_page=25&from%5border%5d=asc&from%5bfield%5d=name&from%5bvalue%5d=");
        if ((bool) || (((k)FrgInterests.this.ceE).isEmpty())) {}
        for (String str = "";; str = ((p)((k)FrgInterests.this.ceE).CP()).name)
        {
          str = Uri.encode(str);
          c.b(new y(FrgInterests.this.getActivity(), str)
          {
            protected final void aQ(boolean paramAnonymous2Boolean)
            {
              boolean bool = true;
              if (FrgInterests.this.ceE == null) {
                return;
              }
              ((k)FrgInterests.this.ceE).bZp = false;
              Object localObject;
              if (paramAnonymous2Boolean)
              {
                ((k)FrgInterests.this.ceE).bb(false);
                int j = ((k)FrgInterests.this.ceE).Cw();
                int i = j;
                if (bool)
                {
                  ((k)FrgInterests.this.ceE).CC();
                  ((k)FrgInterests.this.ceE).notifyItemRangeRemoved(((k)FrgInterests.this.ceE).CL(), j);
                  i = 0;
                }
                ((k)FrgInterests.this.ceE).cbg = c.e(((k)FrgInterests.this.ceE).cbg, this.ccO);
                if (((k)FrgInterests.this.ceE).caU == null) {
                  ((k)FrgInterests.this.ceE).caU = new ArrayList();
                }
                int m = ((k)FrgInterests.this.ceE).Cw();
                j = i;
                if (j < m)
                {
                  localObject = ((k)FrgInterests.this.ceE).caU;
                  if (FrgInterests.this.ceB.contains(((p)((k)FrgInterests.this.ceE).cbg.get(j)).cjy)) {}
                  for (int k = 1;; k = 0)
                  {
                    ((ArrayList)localObject).add(Integer.valueOf(k));
                    j += 1;
                    break;
                  }
                }
                j = ((k)FrgInterests.this.ceE).Cw();
                ((k)FrgInterests.this.ceE).notifyItemRangeInserted(((k)FrgInterests.this.ceE).CL() + i, j - i);
                localObject = (k)FrgInterests.this.ceE;
                if (j == i) {
                  break label488;
                }
              }
              label488:
              for (paramAnonymous2Boolean = bool;; paramAnonymous2Boolean = false)
              {
                ((k)localObject).bb(paramAnonymous2Boolean);
                ((k)FrgInterests.this.ceE).bZY = System.currentTimeMillis();
                ((k)FrgInterests.this.ceE).g(false, false);
                if ((this.ccU != 401) && (this.ccU != 403)) {
                  break;
                }
                bb.a(FrgInterests.this.getActivity(), this.ccU, this.ccV);
                return;
              }
            }
          });
          return;
        }
      }
    });
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (this.ceE == null) {
      this.ceE = new k((a)getActivity(), this)
      {
        protected final void AZ()
        {
          FrgInterests.this.f(false, false);
        }
      };
    }
    if (paramBundle == null)
    {
      u(getArguments());
      return;
    }
    this.ceB = d.g(paramBundle, "interest_ids");
    ((k)this.ceE).caV = paramBundle.getInt("minInterest");
    ((k)this.ceE).caW = paramBundle.getInt("maxInterest");
    if (this.ceB == null) {
      this.ceB = new HashSet();
    }
    DA();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    d.a(paramBundle, "interest_ids", this.ceB);
    if (this.ceE != null)
    {
      paramBundle.putInt("minInterest", ((k)this.ceE).caV);
      paramBundle.putInt("maxInterest", ((k)this.ceE).caW);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/FrgInterests.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */