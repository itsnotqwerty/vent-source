package com.vent;

import android.app.Activity;
import com.vent.a.i;
import com.vent.a.m;
import com.vent.a.q;
import com.vent.a.x;
import com.vent.d.b;
import com.vent.d.c;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

public class w
  extends ad
{
  HashMap<m, x> bUd;
  HashMap<m, q> caq;
  final String ccI;
  private final String ccJ;
  ArrayList<i> ccK;
  private final String ccL;
  private final boolean ccM;
  
  w(CharSequence paramCharSequence, Activity paramActivity, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramCharSequence, paramActivity, paramString1, "GET", null, 0);
    this.ccI = paramString2;
    if (paramString3 != null)
    {
      this.ccL = paramString3;
      if (paramString4 == null) {
        break label52;
      }
    }
    for (;;)
    {
      this.ccJ = paramString4;
      this.ccM = false;
      return;
      paramString3 = "user_id";
      break;
      label52:
      paramString4 = "users";
    }
  }
  
  protected final Void a(Void... paramVarArgs)
  {
    paramVarArgs = super.a(paramVarArgs);
    if ((this.ccU >= 200) && (this.ccU <= 299)) {
      try
      {
        if (!this.ccV.isNull(this.ccI)) {}
        for (this.ccK = i.a(this.ccV.getJSONArray(this.ccI), this.ccL);; this.ccK = new ArrayList())
        {
          if (!this.ccV.isNull(this.ccJ)) {
            this.bUd = b.a(x.class, this.ccV.getJSONArray(this.ccJ), this.ccM);
          }
          if (this.ccV.isNull("invite_tiers")) {
            break;
          }
          this.caq = b.b(q.class, this.ccV.getJSONArray("invite_tiers"));
          return paramVarArgs;
        }
        return paramVarArgs;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        this.ccV = c.h(localException);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */