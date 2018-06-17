package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.j;
import android.text.TextUtils;
import android.widget.TextView;
import com.vent.a.i;
import com.vent.a.x;
import com.vent.d.c;
import java.util.HashMap;

public final class FrgFollowsList
  extends av<h, i>
{
  String ccI = null;
  String ccL = null;
  
  private void u(Bundle paramBundle)
  {
    this.cdb = paramBundle.getString("desc");
    this.ccI = paramBundle.getString("main_tag");
    this.ccL = paramBundle.getString("user_id_fieldname");
    this.ccJ = paramBundle.getString("users_tag");
    if ((this.ceE != null) && (((h)this.ceE).cba != null)) {
      ((TextView)((h)this.ceE).cba).setText(paramBundle.getInt("noitemstext", 2131689683));
    }
  }
  
  public final void Du()
  {
    if ((this.ceE != null) && ((((h)this.ceE).cbg == null) || (System.currentTimeMillis() - ((h)this.ceE).bZY > 3600000L)) && (c.bE(getActivity()))) {
      c(true, false, false);
    }
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("desc", null);
    localBundle.putString("main_tag", paramString1);
    localBundle.putString("user_id_fieldname", paramString2);
    localBundle.putString("users_tag", paramString3);
    localBundle.putInt("noitemstext", paramInt);
    getArguments().putAll(localBundle);
    u(localBundle);
  }
  
  public final void c(final boolean paramBoolean1, final boolean paramBoolean2, final boolean paramBoolean3)
  {
    this.handler.post(new Runnable()
    {
      public final void run()
      {
        if ((paramBoolean3) || ((paramBoolean1) && ((FrgFollowsList.this.ceE == null) || (!((h)FrgFollowsList.this.ceE).bZp)))) {}
        for (final boolean bool = true;; bool = false)
        {
          if ((FrgFollowsList.this.ceE != null) && ((!((h)FrgFollowsList.this.ceE).bZp) || (bool)))
          {
            if (bb.ceP != null) {
              break;
            }
            ((h)FrgFollowsList.this.ceE).CH();
          }
          return;
        }
        j localj = FrgFollowsList.this.getActivity();
        if (bool) {
          FrgFollowsList.this.bTn = FrgFollowsList.this.q;
        }
        FrgFollowsList localFrgFollowsList = FrgFollowsList.this;
        if ((localj instanceof ay)) {}
        for (String str = ((ay)localj).a(FrgFollowsList.this, bool);; str = null)
        {
          localFrgFollowsList.bTm = str;
          if (FrgFollowsList.this.bTm != null) {
            break;
          }
          ((h)FrgFollowsList.this.ceE).CH();
          ((h)FrgFollowsList.this.ceE).bZY = System.currentTimeMillis();
          return;
        }
        ((h)FrgFollowsList.this.ceE).cbc = true;
        ((h)FrgFollowsList.this.ceE).bZp = true;
        if (bool)
        {
          ((h)FrgFollowsList.this.ceE).bb(true);
          ((h)FrgFollowsList.this.ceE).CB();
        }
        ((h)FrgFollowsList.this.ceE).g(bool, paramBoolean2);
        c.b(new w(FrgFollowsList.this.cdb, localj, FrgFollowsList.this.bTm, FrgFollowsList.this.ccI, FrgFollowsList.this.ccL, FrgFollowsList.this.ccJ)
        {
          protected final void aQ(boolean paramAnonymous2Boolean)
          {
            if (FrgFollowsList.this.ceE == null) {
              break label13;
            }
            label13:
            while (!TextUtils.equals(FrgFollowsList.this.bTm, this.url)) {
              return;
            }
            ((h)FrgFollowsList.this.ceE).bZp = false;
            h localh;
            if (paramAnonymous2Boolean)
            {
              ((h)FrgFollowsList.this.ceE).bb(false);
              int j = ((h)FrgFollowsList.this.ceE).Cw();
              int i = j;
              if (bool)
              {
                ((h)FrgFollowsList.this.ceE).CC();
                ((h)FrgFollowsList.this.ceE).notifyItemRangeRemoved(((h)FrgFollowsList.this.ceE).CL(), j);
                i = 0;
              }
              ((h)FrgFollowsList.this.ceE).bUd = c.a(((h)FrgFollowsList.this.ceE).bUd, this.bUd);
              ((h)FrgFollowsList.this.ceE).cbg = c.e(((h)FrgFollowsList.this.ceE).cbg, this.ccK);
              ((h)FrgFollowsList.this.ceE).caq = c.a(((h)FrgFollowsList.this.ceE).caq, this.caq);
              j = ((h)FrgFollowsList.this.ceE).Cw();
              ((h)FrgFollowsList.this.ceE).notifyItemRangeInserted(((h)FrgFollowsList.this.ceE).CL() + i, j - i);
              localh = (h)FrgFollowsList.this.ceE;
              if (j == i) {
                break label427;
              }
            }
            label427:
            for (paramAnonymous2Boolean = true;; paramAnonymous2Boolean = false)
            {
              localh.bb(paramAnonymous2Boolean);
              ((h)FrgFollowsList.this.ceE).bZY = System.currentTimeMillis();
              ((h)FrgFollowsList.this.ceE).g(false, false);
              if ((this.ccU != 401) && (this.ccU != 403)) {
                break;
              }
              bb.a(FrgFollowsList.this.getActivity(), this.ccU, this.ccV);
              return;
            }
          }
        });
      }
    });
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    label28:
    do
    {
      String str;
      do
      {
        do
        {
          break label28;
          do
          {
            return;
          } while ((paramInt2 != -1) || (paramIntent == null));
          str = paramIntent.getStringExtra("cmd");
        } while (str == null);
        paramIntent = (x)paramIntent.getParcelableExtra("user");
      } while ((!str.equals("update")) || (paramIntent == null));
      paramIntent = (x)paramIntent.EN();
    } while ((this.ceE == null) || (((h)this.ceE).bUd == null));
    ((h)this.ceE).bUd.put(paramIntent.cjy, paramIntent);
    ((h)this.ceE).notifyDataSetChanged();
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    u(getArguments());
    if (this.ceE == null) {
      this.ceE = new h((a)getActivity(), this)
      {
        protected final void AZ()
        {
          FrgFollowsList.this.c(false, false, false);
        }
      };
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/FrgFollowsList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */