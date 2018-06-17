package com.vent;

import android.app.Activity;
import com.vent.a.e;
import com.vent.a.m;
import com.vent.a.q;
import com.vent.a.x;
import com.vent.d.b;
import com.vent.d.c;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

public class v
  extends ad
{
  HashMap<m, x> bUd;
  HashMap<m, q> caq;
  ArrayList<e> ccH;
  
  v(Activity paramActivity, CharSequence paramCharSequence, String paramString, JSONObject paramJSONObject, int paramInt)
  {
    super(null, paramActivity, paramCharSequence, paramString, paramJSONObject, paramInt);
  }
  
  protected final Void a(Void... paramVarArgs)
  {
    Object localObject = null;
    Void localVoid = super.a(paramVarArgs);
    if ((this.ccU >= 200) && (this.ccU <= 299)) {
      for (;;)
      {
        try
        {
          if (!this.ccV.isNull("conversations"))
          {
            this.ccH = b.a(e.class, this.ccV.optJSONArray("conversations"));
            if (this.ccV.isNull("users"))
            {
              paramVarArgs = null;
              this.bUd = paramVarArgs;
              if (!this.ccV.isNull("invite_tiers")) {
                break label183;
              }
              paramVarArgs = (Void[])localObject;
              this.caq = paramVarArgs;
              return localVoid;
            }
          }
          else
          {
            this.ccH = new ArrayList(1);
            if (this.ccV.isNull("conversation")) {
              continue;
            }
            this.ccH.add(new e(this.ccV.getJSONObject("conversation")));
            continue;
          }
          paramVarArgs = b.a(x.class, this.ccV.getJSONArray("users"), false);
        }
        catch (Exception paramVarArgs)
        {
          paramVarArgs.printStackTrace();
          this.ccV = c.h(paramVarArgs);
          return localVoid;
        }
        continue;
        label183:
        paramVarArgs = b.b(q.class, this.ccV.getJSONArray("invite_tiers"));
      }
    }
    return localVoid;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */