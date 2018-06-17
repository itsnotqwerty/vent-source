package com.vent;

import android.app.Activity;
import com.vent.a.d;
import com.vent.a.m;
import com.vent.a.x;
import com.vent.d.b;
import com.vent.d.c;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

public class u
  extends ad
{
  HashMap<m, x> bUd;
  ArrayList<d> bZV;
  
  u(Activity paramActivity, CharSequence paramCharSequence, String paramString, JSONObject paramJSONObject, int paramInt)
  {
    super(null, paramActivity, paramCharSequence, paramString, paramJSONObject, paramInt, false);
  }
  
  protected final Void a(Void... paramVarArgs)
  {
    paramVarArgs = super.a(paramVarArgs);
    if ((this.ccU >= 200) && (this.ccU <= 299)) {
      try
      {
        if (!this.ccV.isNull("comments")) {
          this.bZV = b.a(d.class, this.ccV.getJSONArray("comments"));
        }
        while (!this.ccV.isNull("users"))
        {
          this.bUd = b.a(x.class, this.ccV.getJSONArray("users"), false);
          return paramVarArgs;
          this.bZV = new ArrayList(1);
          if (!this.ccV.isNull("comment")) {
            this.bZV.add(new d(this.ccV.getJSONObject("comment")));
          }
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */