package io.branch.referral;

import android.text.TextUtils;
import com.a.a.a.a.b;
import com.a.a.a.a.c;
import com.a.a.a.a.d;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class p
{
  private static void a(c paramc, String paramString1, String paramString2, String paramString3)
  {
    if (!TextUtils.isEmpty(paramString3))
    {
      if (!paramString2.startsWith("~")) {
        break label55;
      }
      paramc.l(paramString1.replaceFirst("~", "") + paramString2.replaceFirst("~", ""), paramString3);
    }
    label55:
    while (!paramString2.equals("$" + n.a.cxR.key)) {
      return;
    }
    paramc.l(n.a.cya.key, paramString3);
  }
  
  private static void a(c paramc, JSONArray paramJSONArray, String paramString)
    throws JSONException
  {
    int i = 0;
    while (i < paramJSONArray.length())
    {
      a(paramc, paramString, "~" + Integer.toString(i), paramJSONArray.getString(i));
      i += 1;
    }
  }
  
  private void a(c paramc, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramJSONObject.get(str);
      if (!str.startsWith("+")) {
        if ((localObject instanceof JSONObject)) {
          a(paramc, (JSONObject)localObject, paramString + str + ".");
        } else if ((localObject instanceof JSONArray)) {
          a(paramc, (JSONArray)localObject, str + ".");
        } else {
          a(paramc, paramString, str, paramJSONObject.getString(str));
        }
      }
    }
  }
  
  public final void a(String paramString1, JSONObject paramJSONObject, String paramString2)
  {
    try
    {
      paramString1 = new c(paramString1);
      if (paramJSONObject != null)
      {
        a(paramString1, paramJSONObject, "");
        paramString1.l(n.a.cyb.key, paramString2);
        b.kl().a(paramString1);
      }
      return;
    }
    catch (Throwable paramString1) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */