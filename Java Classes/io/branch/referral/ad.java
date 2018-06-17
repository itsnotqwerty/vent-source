package io.branch.referral;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

final class ad
  extends x
{
  d.e cBr;
  final ag cvW;
  
  public ad(Context paramContext, d.e parame, ag paramag)
  {
    super(paramContext, n.c.cAi.key);
    this.cvW = paramag;
    this.cBr = parame;
    paramContext = new JSONObject();
    try
    {
      paramContext.put(n.a.cxT.key, q.getString("bnc_device_fingerprint_id"));
      paramContext.put(n.a.cxR.key, q.getString("bnc_identity_id"));
      paramContext.put(n.a.cyK.key, q.GV());
      if (!paramag.Ht().equals("bnc_no_value")) {
        paramContext.put(n.a.cyG.key, paramag.Ht());
      }
      paramContext.put(n.a.cxY.key, q.eN("bnc_triggered_by_fb_app_link"));
      paramContext.put(n.a.cyL.key, paramag.Hu());
      paramContext.put(n.a.cyR.key, q.Ha());
      k(paramContext);
      return;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
      this.cBc = true;
    }
  }
  
  public ad(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    super(paramString, paramJSONObject, paramContext);
    this.cvW = new ag(paramContext);
  }
  
  public final boolean Hb()
  {
    return false;
  }
  
  public final boolean Hk()
  {
    return this.cBr != null;
  }
  
  public final String Hl()
  {
    return "open";
  }
  
  public final void a(ae paramae, d paramd)
  {
    super.a(paramae, paramd);
    for (;;)
    {
      try
      {
        if (!paramae.Hr().has(n.a.cxV.key)) {
          continue;
        }
        q.setString("bnc_link_click_id", paramae.Hr().getString(n.a.cxV.key));
        if (paramae.Hr().has(n.a.cyz.key))
        {
          JSONObject localJSONObject = new JSONObject(paramae.Hr().getString(n.a.cyz.key));
          if ((localJSONObject.has(n.a.cyZ.key)) && (localJSONObject.getBoolean(n.a.cyZ.key)) && (q.getString("bnc_install_params").equals("bnc_no_value")) && (q.GV() == 1)) {
            q.setString("bnc_install_params", paramae.Hr().getString(n.a.cyz.key));
          }
        }
        if (!paramae.Hr().has(n.a.cyz.key)) {
          continue;
        }
        q.setString("bnc_session_params", paramae.Hr().getString(n.a.cyz.key));
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
        q.setString("bnc_session_params", "bnc_no_value");
        continue;
      }
      if (this.cBr != null) {
        this.cBr.a(paramd.Gy(), null);
      }
      q.setString("bnc_app_version", this.cvW.Ht());
      b(paramae, paramd);
      return;
      q.setString("bnc_link_click_id", "bnc_no_value");
    }
  }
  
  public final boolean bU(Context paramContext)
  {
    if (!x.bV(paramContext))
    {
      if (this.cBr != null) {
        this.cBr.a(null, new f("Trouble initializing Branch.", -102));
      }
      return true;
    }
    return false;
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
      this.cBr.a(localJSONObject, new f("Trouble initializing Branch. " + paramString, paramInt));
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */