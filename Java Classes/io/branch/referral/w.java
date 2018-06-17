package io.branch.referral;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

public final class w
  extends r
{
  public d.e cBr;
  String cBs = null;
  
  public w(Context paramContext, String paramString)
  {
    super(paramContext, n.c.cAo.key);
    this.cBr = null;
    this.cBs = paramString;
    paramContext = new JSONObject();
    try
    {
      paramContext.put(n.a.cxR.key, q.getString("bnc_identity_id"));
      paramContext.put(n.a.cxT.key, q.getString("bnc_device_fingerprint_id"));
      paramContext.put(n.a.cxU.key, q.getString("bnc_session_id"));
      if (!q.getString("bnc_link_click_id").equals("bnc_no_value")) {
        paramContext.put(n.a.cxV.key, q.getString("bnc_link_click_id"));
      }
      paramContext.put(n.a.cxS.key, paramString);
      k(paramContext);
      return;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
      this.cBc = true;
    }
  }
  
  public w(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    super(paramString, paramJSONObject, paramContext);
  }
  
  public final boolean Hb()
  {
    return false;
  }
  
  public final boolean Hc()
  {
    return true;
  }
  
  public final boolean Hj()
  {
    boolean bool2 = false;
    try
    {
      String str = this.cxm.getString(n.a.cxS.key);
      boolean bool1 = bool2;
      if (str != null)
      {
        boolean bool3 = str.equals(q.getString("bnc_identity"));
        bool1 = bool2;
        if (bool3) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return false;
  }
  
  public final void a(ae paramae, d paramd)
  {
    try
    {
      if ((this.cxm != null) && (this.cxm.has(n.a.cxS.key))) {
        q.setString("bnc_identity", this.cxm.getString(n.a.cxS.key));
      }
      q.setString("bnc_identity_id", paramae.Hr().getString(n.a.cxR.key));
      q.setString("bnc_user_url", paramae.Hr().getString(n.a.cyv.key));
      if (paramae.Hr().has(n.a.cyw.key)) {
        q.setString("bnc_install_params", paramae.Hr().getString(n.a.cyw.key));
      }
      if (this.cBr != null) {
        this.cBr.a(paramd.Gx(), null);
      }
      return;
    }
    catch (JSONException paramae)
    {
      paramae.printStackTrace();
    }
  }
  
  public final boolean bU(Context paramContext)
  {
    if (!r.bV(paramContext)) {
      if (this.cBr != null) {
        this.cBr.a(null, new f("Trouble setting the user alias.", -102));
      }
    }
    for (;;)
    {
      return true;
      try
      {
        paramContext = this.cxm.getString(n.a.cxS.key);
        if ((paramContext != null) && (paramContext.length() != 0))
        {
          boolean bool = paramContext.equals(q.getString("bnc_identity"));
          if (!bool) {
            return false;
          }
        }
      }
      catch (JSONException paramContext) {}
    }
    return true;
  }
  
  public final void gH()
  {
    this.cBr = null;
  }
  
  public final void i(int paramInt, String paramString)
  {
    JSONObject localJSONObject;
    if (this.cBr != null) {
      localJSONObject = new JSONObject();
    }
    try
    {
      localJSONObject.put("error_message", "Trouble reaching server. Please try again in a few minutes");
      this.cBr.a(localJSONObject, new f("Trouble setting the user alias. " + paramString, paramInt));
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */