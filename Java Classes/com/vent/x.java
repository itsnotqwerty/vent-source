package com.vent;

import android.app.Activity;
import com.vent.a.k;
import com.vent.a.l;
import com.vent.a.m;
import com.vent.a.p;
import com.vent.d.b;
import com.vent.d.c;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

public class x
  extends ad
{
  HashMap<m, p> bUq;
  ArrayList<k> caK;
  private final boolean ccN;
  
  x(CharSequence paramCharSequence, Activity paramActivity, String paramString1, String paramString2, JSONObject paramJSONObject, int paramInt, boolean paramBoolean)
  {
    super(paramCharSequence, paramActivity, paramString1, paramString2, paramJSONObject, paramInt);
    this.ccN = paramBoolean;
  }
  
  protected final Void a(Void... paramVarArgs)
  {
    Void localVoid = super.a(paramVarArgs);
    if ((this.ccU >= 200) && (this.ccU <= 299)) {}
    for (;;)
    {
      try
      {
        if (!this.ccV.isNull("groups"))
        {
          if (!this.ccN) {
            break label205;
          }
          paramVarArgs = l.class;
          this.caK = b.a(paramVarArgs, this.ccV.getJSONArray("groups"), this.ccN, Integer.MAX_VALUE);
          if ((!this.ccN) || (this.ccV.isNull("interests"))) {
            break label203;
          }
          this.bUq = b.b(p.class, this.ccV.getJSONArray("interests"));
          return localVoid;
        }
        this.caK = new ArrayList(1);
        if (this.ccV.isNull("group")) {
          continue;
        }
        paramVarArgs = this.ccV.getJSONObject("group");
        ArrayList localArrayList = this.caK;
        if (this.ccN)
        {
          paramVarArgs = new l(paramVarArgs, true);
          localArrayList.add(paramVarArgs);
          continue;
        }
        paramVarArgs = new k(paramVarArgs, false);
      }
      catch (Exception paramVarArgs)
      {
        paramVarArgs.printStackTrace();
        this.ccV = c.h(paramVarArgs);
        return localVoid;
      }
      continue;
      label203:
      return localVoid;
      label205:
      paramVarArgs = k.class;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */