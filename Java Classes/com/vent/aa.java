package com.vent;

import android.app.Activity;
import com.vent.a.v;
import com.vent.d.b;
import com.vent.d.c;
import java.util.ArrayList;
import org.json.JSONObject;

public class aa
  extends ad
{
  ArrayList<v> ccQ;
  
  aa(Activity paramActivity, String paramString)
  {
    super(null, paramActivity, paramString, "GET", null, 0);
  }
  
  protected final Void a(Void... paramVarArgs)
  {
    localVoid = super.a(paramVarArgs);
    if ((this.ccU >= 200) && (this.ccU <= 299)) {
      try
      {
        if (this.ccV.isNull("search_suggestions")) {}
        for (paramVarArgs = null;; paramVarArgs = b.a(v.class, this.ccV.getJSONArray("search_suggestions")))
        {
          this.ccQ = paramVarArgs;
          return localVoid;
        }
        return localVoid;
      }
      catch (Exception paramVarArgs)
      {
        paramVarArgs.printStackTrace();
        this.ccV = c.h(paramVarArgs);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */