package com.vent;

import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.vent.a.a;

public abstract class aq<A extends l<T>, T extends a>
  extends am<A, T>
  implements ay<aq<A, T>>
{
  String bTm;
  String bTn;
  int ceH;
  private final Runnable ceI = new Runnable()
  {
    public final void run()
    {
      aq localaq = aq.this;
      int i = localaq.ceH - 1;
      localaq.ceH = i;
      if (i <= 0)
      {
        aq.this.ceH = 0;
        aq.this.c(true, true, true);
      }
    }
  };
  String q;
  
  public String a(aq paramaq, boolean paramBoolean)
  {
    paramaq = getActivity();
    if ((paramaq instanceof ay)) {
      return ((ay)paramaq).a(this, paramBoolean);
    }
    return null;
  }
  
  abstract void c(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  public final void dX(String paramString)
  {
    String str = paramString;
    if (paramString != null) {
      str = paramString.trim().toLowerCase();
    }
    if (!TextUtils.equals(this.q, str))
    {
      this.q = str;
      this.ceH += 1;
      this.handler.postDelayed(this.ceI, 250L);
    }
  }
  
  public final void f(boolean paramBoolean1, boolean paramBoolean2)
  {
    c(paramBoolean1, paramBoolean2, false);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      this.q = paramBundle.getString("q");
      this.bTn = paramBundle.getString("q2");
      this.bTm = paramBundle.getString("url_requested");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.q = "";
    this.bTn = "";
    this.bTm = "";
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("q", this.q);
    paramBundle.putString("q2", this.bTn);
    paramBundle.putString("url_requested", this.bTm);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */