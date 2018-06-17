package com.vent;

import android.app.Activity;
import com.vent.a.g;
import com.vent.a.h;
import com.vent.a.m;
import com.vent.a.q;
import com.vent.a.x;
import com.vent.a.y;
import com.vent.d.b;
import com.vent.d.c;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

public class ab
  extends ad
{
  HashMap<m, h> bXg;
  HashMap<m, g> bXh;
  HashMap<m, q> caq;
  private final String ccJ;
  private final boolean ccM;
  public ArrayList<x> ccR;
  
  public ab(CharSequence paramCharSequence1, Activity paramActivity, CharSequence paramCharSequence2, String paramString1, JSONObject paramJSONObject, int paramInt, String paramString2, boolean paramBoolean)
  {
    this(paramCharSequence1, paramActivity, paramCharSequence2, paramString1, paramJSONObject, paramInt, false, paramString2, paramBoolean);
  }
  
  public ab(CharSequence paramCharSequence1, Activity paramActivity, CharSequence paramCharSequence2, String paramString1, JSONObject paramJSONObject, int paramInt, boolean paramBoolean1, String paramString2, boolean paramBoolean2)
  {
    super(paramCharSequence1, paramActivity, paramCharSequence2, paramString1, paramJSONObject, paramInt, paramBoolean1);
    if (paramString2 != null) {}
    for (;;)
    {
      this.ccJ = paramString2;
      this.ccM = paramBoolean2;
      return;
      paramString2 = "users";
    }
  }
  
  protected final Void a(Void... paramVarArgs)
  {
    Void localVoid = super.a(paramVarArgs);
    if ((this.ccU >= 200) && (this.ccU <= 299)) {}
    for (;;)
    {
      try
      {
        if (!this.ccV.isNull(this.ccJ))
        {
          if (!this.ccM) {
            break label202;
          }
          paramVarArgs = y.class;
          this.ccR = b.a(paramVarArgs, this.ccV.getJSONArray(this.ccJ), this.ccM, Integer.MAX_VALUE);
          if (this.ccV.isNull("invite_tiers")) {
            break label200;
          }
          this.caq = b.b(q.class, this.ccV.getJSONArray("invite_tiers"));
          return localVoid;
        }
        this.ccR = new ArrayList(1);
        if (this.ccV.isNull("user")) {
          continue;
        }
        paramVarArgs = this.ccV.getJSONObject("user");
        ArrayList localArrayList = this.ccR;
        if (this.ccM)
        {
          paramVarArgs = new y(paramVarArgs, true);
          localArrayList.add(paramVarArgs);
          continue;
        }
        paramVarArgs = new x(paramVarArgs, false);
      }
      catch (Exception paramVarArgs)
      {
        paramVarArgs.printStackTrace();
        this.ccV = c.h(paramVarArgs);
        return localVoid;
      }
      continue;
      label200:
      return localVoid;
      label202:
      paramVarArgs = x.class;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */