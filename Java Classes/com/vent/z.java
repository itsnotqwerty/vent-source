package com.vent;

import android.app.Activity;
import com.vent.a.s;
import com.vent.d.b;
import com.vent.d.c;
import java.util.ArrayList;
import org.json.JSONObject;

public class z
  extends ad
{
  ArrayList<s> ccP;
  
  z(Activity paramActivity, String paramString)
  {
    super(null, paramActivity, paramString, "GET", null, 0);
  }
  
  protected final Void a(Void... paramVarArgs)
  {
    paramVarArgs = super.a(paramVarArgs);
    if ((this.ccU >= 200) && (this.ccU <= 299)) {
      try
      {
        if (!this.ccV.isNull("notifications"))
        {
          this.ccP = b.a(s.class, this.ccV.getJSONArray("notifications"));
          return paramVarArgs;
        }
        this.ccP = new ArrayList(1);
        if (!this.ccV.isNull("interest"))
        {
          this.ccP.add(new s(this.ccV.getJSONObject("notification")));
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */