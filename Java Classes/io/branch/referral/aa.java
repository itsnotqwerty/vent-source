package io.branch.referral;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

final class aa
  extends r
{
  d.f cBq;
  int cBz = 0;
  
  public aa(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    super(paramString, paramJSONObject, paramContext);
  }
  
  public final boolean Hb()
  {
    return false;
  }
  
  public final void a(ae paramae, d paramd)
  {
    j = 0;
    int m = 0;
    int k = 0;
    paramae = this.cxm;
    i = j;
    if (paramae != null)
    {
      i = j;
      if (paramae.has(n.a.cyd.key))
      {
        i = j;
        if (paramae.has(n.a.cyf.key)) {
          j = m;
        }
      }
    }
    try
    {
      int n = paramae.getInt(n.a.cyf.key);
      j = m;
      paramae = paramae.getString(n.a.cyd.key);
      i = k;
      if (n > 0) {
        i = 1;
      }
      j = i;
      q.k(paramae, q.eL(paramae) - n);
    }
    catch (JSONException paramae)
    {
      for (;;)
      {
        paramae.printStackTrace();
        i = j;
      }
    }
    if ((this.cBq != null) && (i == 0)) {
      new f("Trouble redeeming rewards.", -107);
    }
  }
  
  public final boolean bU(Context paramContext)
  {
    if (!r.bV(paramContext)) {
      if (this.cBq != null) {
        new f("Trouble redeeming rewards.", -102);
      }
    }
    do
    {
      return true;
      if (this.cBz > 0) {
        break;
      }
    } while (this.cBq == null);
    new f("Trouble redeeming rewards.", -107);
    return true;
    return false;
  }
  
  public final void gH()
  {
    this.cBq = null;
  }
  
  public final void i(int paramInt, String paramString)
  {
    if (this.cBq != null) {
      new f("Trouble redeeming rewards. " + paramString, paramInt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */