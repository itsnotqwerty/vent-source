package io.branch.referral;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

final class s
  extends r
{
  private final l.b cBk = null;
  
  public s(String paramString, JSONObject paramJSONObject, Context paramContext)
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
  
  public final void a(ae paramae, d paramd)
  {
    if ((paramae.Hr() != null) && (paramae.Hr().has(n.a.czz.key)) && (d.Gt().cwj != null) && (d.Gt().cwj.get() != null)) {
      paramd = "";
    }
    for (;;)
    {
      try
      {
        Object localObject = this.cxm;
        if ((localObject != null) && (((JSONObject)localObject).has(n.a.cym.key)))
        {
          localObject = ((JSONObject)localObject).getString(n.a.cym.key);
          paramd = (d)localObject;
        }
        paramd = "";
      }
      catch (JSONException paramae)
      {
        try
        {
          if (d.Gt().cwj != null)
          {
            localObject = (Activity)d.Gt().cwj.get();
            paramae = paramae.Hr().getJSONObject(n.a.czz.key);
            l.GL().a(paramae, paramd, (Context)localObject, this.cBk);
          }
          return;
        }
        catch (JSONException paramae)
        {
          paramae = paramd;
          continue;
        }
        paramae = paramae;
        paramae = paramd;
        if (this.cBk != null)
        {
          this.cBk.eC(paramae);
          return;
        }
      }
    }
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */