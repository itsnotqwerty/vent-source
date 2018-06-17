package io.branch.referral;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class j<T extends j>
{
  protected d cvT = d.Gt();
  private final Context cvX;
  protected JSONObject cxm;
  protected String cxn;
  protected String cxo;
  protected String cxp;
  protected String cxq;
  protected String cxr;
  protected int cxs = 0;
  protected int cxt = 0;
  protected ArrayList<String> cxu;
  private boolean cxv;
  
  protected j(Context paramContext)
  {
    this.cvX = paramContext.getApplicationContext();
    this.cxv = true;
  }
  
  public final T C(List<String> paramList)
  {
    if (this.cxu == null) {
      this.cxu = new ArrayList();
    }
    this.cxu.addAll(paramList);
    return this;
  }
  
  public final T U(String paramString1, String paramString2)
  {
    try
    {
      if (this.cxm == null) {
        this.cxm = new JSONObject();
      }
      this.cxm.put(paramString1, paramString2);
      return this;
    }
    catch (JSONException paramString1) {}
    return this;
  }
  
  public final T a(String paramString, JSONArray paramJSONArray)
  {
    try
    {
      if (this.cxm == null) {
        this.cxm = new JSONObject();
      }
      this.cxm.put(paramString, paramJSONArray);
      return this;
    }
    catch (JSONException paramString) {}
    return this;
  }
  
  protected final void b(d.b paramb)
  {
    if (this.cvT != null)
    {
      paramb = new t(this.cvX, this.cxr, this.cxs, this.cxt, this.cxu, this.cxn, this.cxo, this.cxp, this.cxq, k.h(this.cxm), paramb, this.cxv);
      paramb.cBo = false;
      Object localObject = this.cvT;
      if ((!paramb.cBc) && (!paramb.bU(((d)localObject).cvX)))
      {
        if (((d)localObject).cwc.containsKey(paramb.cBl))
        {
          localObject = (String)((d)localObject).cwc.get(paramb.cBl);
          if (paramb.cBn != null) {
            paramb.cBn.a((String)localObject, null);
          }
          paramb.Hi();
        }
      }
      else {
        return;
      }
      if (paramb.cBm)
      {
        ((d)localObject).a(paramb);
        return;
      }
      ((d)localObject).a(paramb);
      return;
    }
    if (paramb != null) {
      paramb.a(null, new f("session has not been initialized", -101));
    }
    Log.i("BranchSDK", "Branch Warning: User session has not been initialized");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */