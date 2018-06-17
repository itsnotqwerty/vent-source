package io.branch.referral;

import android.content.Context;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

final class v
  extends r
{
  d.f cBq;
  
  public v(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    super(paramString, paramJSONObject, paramContext);
  }
  
  public final boolean Hb()
  {
    return true;
  }
  
  public final String He()
  {
    return super.He() + q.getString("bnc_identity_id");
  }
  
  public final void a(ae paramae, d paramd)
  {
    paramd = paramae.Hr().keys();
    while (paramd.hasNext())
    {
      String str = (String)paramd.next();
      try
      {
        int i = paramae.Hr().getInt(str);
        q.eL(str);
        q.k(str, i);
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public final boolean bU(Context paramContext)
  {
    if (!r.bV(paramContext))
    {
      if (this.cBq != null) {
        new f("Trouble retrieving user credits.", -102);
      }
      return true;
    }
    return false;
  }
  
  public final void gH()
  {
    this.cBq = null;
  }
  
  public final void i(int paramInt, String paramString)
  {
    if (this.cBq != null) {
      new f("Trouble retrieving user credits. " + paramString, paramInt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */