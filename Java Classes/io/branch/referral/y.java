package io.branch.referral;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class y
  extends r
{
  private d.j cBu;
  
  public y(Context paramContext)
  {
    super(paramContext, n.c.cAp.key);
    this.cBu = null;
    paramContext = new JSONObject();
    try
    {
      paramContext.put(n.a.cxR.key, q.getString("bnc_identity_id"));
      paramContext.put(n.a.cxT.key, q.getString("bnc_device_fingerprint_id"));
      paramContext.put(n.a.cxU.key, q.getString("bnc_session_id"));
      if (!q.getString("bnc_link_click_id").equals("bnc_no_value")) {
        paramContext.put(n.a.cxV.key, q.getString("bnc_link_click_id"));
      }
      k(paramContext);
      return;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
      this.cBc = true;
    }
  }
  
  public y(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    super(paramString, paramJSONObject, paramContext);
  }
  
  public final boolean Hb()
  {
    return false;
  }
  
  public final void a(ae paramae, d paramd)
  {
    do
    {
      try
      {
        q.setString("bnc_session_id", paramae.Hr().getString(n.a.cxU.key));
        q.setString("bnc_identity_id", paramae.Hr().getString(n.a.cxR.key));
        q.setString("bnc_user_url", paramae.Hr().getString(n.a.cyv.key));
        q.setString("bnc_install_params", "bnc_no_value");
        q.setString("bnc_session_params", "bnc_no_value");
        q.setString("bnc_identity", "bnc_no_value");
        paramae = q.GW().iterator();
        while (paramae.hasNext()) {
          q.k((String)paramae.next(), 0);
        }
        ArrayList localArrayList;
        q.d(new ArrayList());
      }
      catch (JSONException paramae)
      {
        paramae = paramae;
        paramae.printStackTrace();
        if (this.cBu != null) {}
        return;
        q.c(new ArrayList());
        paramae = q.GX().iterator();
        while (paramae.hasNext())
        {
          paramd = (String)paramae.next();
          localArrayList = q.GX();
          if (!localArrayList.contains(paramd))
          {
            localArrayList.add(paramd);
            q.d(localArrayList);
          }
          q.setInteger("bnc_total_base_" + paramd, 0);
          q.setInteger("bnc_balance_base_" + paramd, 0);
        }
      }
      finally {}
    } while (this.cBu == null);
  }
  
  public final boolean bU(Context paramContext)
  {
    if (!r.bV(paramContext))
    {
      Log.i("BranchSDK", "Trouble executing your request. Please add 'android.permission.INTERNET' in your applications manifest file");
      if (this.cBu != null) {
        new f("Logout failed", -102);
      }
      return true;
    }
    return false;
  }
  
  public final void gH()
  {
    this.cBu = null;
  }
  
  public final void i(int paramInt, String paramString)
  {
    if (this.cBu != null) {
      new f("Logout error. " + paramString, paramInt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */