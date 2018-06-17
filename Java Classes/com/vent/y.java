package com.vent;

import android.app.Activity;
import com.vent.a.p;
import com.vent.d.b;
import com.vent.d.c;
import java.util.ArrayList;
import org.json.JSONObject;

public class y
  extends ad
{
  ArrayList<p> ccO;
  
  y(Activity paramActivity, String paramString)
  {
    super(null, paramActivity, paramString, "GET", null, 0);
  }
  
  protected final Void a(Void... paramVarArgs)
  {
    paramVarArgs = super.a(paramVarArgs);
    if ((this.ccU >= 200) && (this.ccU <= 299)) {
      try
      {
        if (!this.ccV.isNull("interests"))
        {
          this.ccO = b.a(p.class, this.ccV.getJSONArray("interests"));
          return paramVarArgs;
        }
        this.ccO = new ArrayList(1);
        if (!this.ccV.isNull("interest"))
        {
          this.ccO.add(new p(this.ccV.getJSONObject("interest")));
          return paramVarArgs;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        this.ccV = c.h(localException);
      }
    }
    return paramVarArgs;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */