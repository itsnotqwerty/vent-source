package io.branch.referral.a;

import io.branch.referral.ae;
import io.branch.referral.d;
import io.branch.referral.n.a;
import io.branch.referral.q;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class a
{
  private ae c(String paramString1, int paramInt, String paramString2)
  {
    paramString2 = new ae(paramString2, paramInt);
    q.V("BranchSDK", "returned " + paramString1);
    if (paramString1 != null) {}
    try
    {
      paramString2.cBC = new JSONObject(paramString1);
      return paramString2;
    }
    catch (JSONException localJSONException)
    {
      try
      {
        paramString2.cBC = new JSONArray(paramString1);
        return paramString2;
      }
      catch (JSONException paramString1)
      {
        q.V(getClass().getSimpleName(), "JSON exception: " + paramString1.getMessage());
      }
    }
    return paramString2;
  }
  
  private static boolean j(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      paramJSONObject.put("sdk", "android2.11.1");
      if (!paramString.equals("bnc_no_value"))
      {
        paramJSONObject.put(n.a.cyc.key, paramString);
        return true;
      }
    }
    catch (JSONException paramJSONObject) {}
    return false;
  }
  
  private static String l(JSONObject paramJSONObject)
  {
    localStringBuilder = new StringBuilder();
    if (paramJSONObject != null)
    {
      JSONArray localJSONArray = paramJSONObject.names();
      if (localJSONArray != null)
      {
        int j = 1;
        int k = localJSONArray.length();
        int i = 0;
        while (i < k) {
          try
          {
            String str1 = localJSONArray.getString(i);
            if (j != 0)
            {
              localStringBuilder.append("?");
              j = 0;
            }
            for (;;)
            {
              String str2 = paramJSONObject.getString(str1);
              localStringBuilder.append(str1).append("=").append(str2);
              i += 1;
              break;
              localStringBuilder.append("&");
            }
            return localStringBuilder.toString();
          }
          catch (JSONException paramJSONObject)
          {
            paramJSONObject.printStackTrace();
            return null;
          }
        }
      }
    }
  }
  
  public abstract b a(String paramString, JSONObject paramJSONObject)
    throws a.a;
  
  public final ae a(String paramString1, JSONObject paramJSONObject, String paramString2, String paramString3)
  {
    if (paramJSONObject != null) {}
    while (j(paramJSONObject, paramString3))
    {
      paramString1 = paramString1 + l(paramJSONObject);
      l = System.currentTimeMillis();
      q.V("BranchSDK", "getting " + paramString1);
      try
      {
        paramString1 = eS(paramString1);
        paramJSONObject = c(paramString1.cBM, paramString1.responseCode, paramString2);
        paramString1 = paramJSONObject;
        if (d.Gt() != null)
        {
          i = (int)(System.currentTimeMillis() - l);
          d.Gt().T(paramString2 + "-" + n.a.czw.key, String.valueOf(i));
          paramString1 = paramJSONObject;
        }
      }
      catch (a paramString1)
      {
        if (a.a(paramString1) != -111) {
          break label242;
        }
        paramJSONObject = new ae(paramString2, -111);
        paramString1 = paramJSONObject;
        return paramJSONObject;
        paramJSONObject = new ae(paramString2, -113);
        paramString1 = paramJSONObject;
        return paramJSONObject;
      }
      finally
      {
        if (d.Gt() == null) {
          break label366;
        }
        int i = (int)(System.currentTimeMillis() - l);
        d.Gt().T(paramString2 + "-" + n.a.czw.key, String.valueOf(i));
      }
      return paramString1;
      paramJSONObject = new JSONObject();
    }
    return new ae(paramString2, -114);
  }
  
  public final ae a(JSONObject paramJSONObject, String paramString1, String paramString2, String paramString3)
  {
    long l = System.currentTimeMillis();
    if (paramJSONObject != null)
    {
      if (j(paramJSONObject, paramString3)) {
        break label42;
      }
      paramJSONObject = new ae(paramString2, -114);
    }
    for (;;)
    {
      return paramJSONObject;
      paramJSONObject = new JSONObject();
      break;
      label42:
      q.V("BranchSDK", "posting to " + paramString1);
      q.V("BranchSDK", "Post value = " + paramJSONObject.toString());
      try
      {
        paramJSONObject = a(paramString1, paramJSONObject);
        paramString1 = c(paramJSONObject.cBM, paramJSONObject.responseCode, paramString2);
        paramJSONObject = paramString1;
        return paramString1;
      }
      catch (a paramJSONObject)
      {
        if (a.a(paramJSONObject) == -111)
        {
          paramString1 = new ae(paramString2, -111);
          paramJSONObject = paramString1;
          return paramString1;
        }
        paramString1 = new ae(paramString2, -113);
        paramJSONObject = paramString1;
        return paramString1;
      }
      finally
      {
        int i;
        if (d.Gt() != null)
        {
          i = (int)(System.currentTimeMillis() - l);
          d.Gt().T(paramString2 + "-" + n.a.czw.key, String.valueOf(i));
        }
      }
    }
  }
  
  public abstract b eS(String paramString)
    throws a.a;
  
  public static final class a
    extends Exception
  {
    private int cBL = -113;
    
    public a(int paramInt)
    {
      this.cBL = paramInt;
    }
  }
  
  public static final class b
  {
    final String cBM;
    final int responseCode;
    
    public b(String paramString, int paramInt)
    {
      this.cBM = paramString;
      this.responseCode = paramInt;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */