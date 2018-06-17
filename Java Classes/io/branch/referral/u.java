package io.branch.referral;

import android.content.Context;
import org.json.JSONObject;

final class u
  extends r
{
  d.c cBp;
  
  public u(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    super(paramString, paramJSONObject, paramContext);
  }
  
  public final boolean Hb()
  {
    return false;
  }
  
  public final void a(ae paramae, d paramd) {}
  
  public final boolean bU(Context paramContext)
  {
    if (!r.bV(paramContext))
    {
      if (this.cBp != null) {
        new f("Trouble retrieving user credit history.", -102);
      }
      return true;
    }
    return false;
  }
  
  public final void gH()
  {
    this.cBp = null;
  }
  
  public final void i(int paramInt, String paramString)
  {
    if (this.cBp != null) {
      new f("Trouble retrieving user credit history. " + paramString, paramInt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */