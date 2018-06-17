package io.branch.referral;

import android.content.Context;
import android.util.Log;
import io.branch.a.b;
import org.json.JSONException;
import org.json.JSONObject;

final class ab
  extends r
{
  public ab(Context paramContext)
  {
    super(paramContext, n.c.cAh.key);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(n.a.cxT.key, q.getString("bnc_device_fingerprint_id"));
      localJSONObject.put(n.a.cxR.key, q.getString("bnc_identity_id"));
      localJSONObject.put(n.a.cxU.key, q.getString("bnc_session_id"));
      if (!q.getString("bnc_link_click_id").equals("bnc_no_value")) {
        localJSONObject.put(n.a.cxV.key, q.getString("bnc_link_click_id"));
      }
      paramContext = b.Gq().bO(paramContext);
      if (paramContext != null) {
        localJSONObject.put(n.a.czO.key, paramContext);
      }
      if (o.GN() != null) {
        localJSONObject.put(n.a.cyG.key, o.GN().cAI);
      }
      k(localJSONObject);
      return;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
      this.cBc = true;
    }
  }
  
  public ab(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    super(paramString, paramJSONObject, paramContext);
  }
  
  public final boolean Hb()
  {
    return false;
  }
  
  public final void a(ae paramae, d paramd)
  {
    q.setString("bnc_session_params", "bnc_no_value");
  }
  
  public final boolean bU(Context paramContext)
  {
    if (!r.bV(paramContext))
    {
      Log.i("BranchSDK", "Trouble executing your request. Please add 'android.permission.INTERNET' in your applications manifest file");
      return true;
    }
    return false;
  }
  
  public final void gH() {}
  
  public final void i(int paramInt, String paramString) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */