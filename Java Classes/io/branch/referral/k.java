package io.branch.referral;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

final class k
{
  static boolean cxw = false;
  
  public static boolean bS(Context paramContext)
  {
    if (cxw) {
      return cxw;
    }
    try
    {
      Object localObject = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if ((((ApplicationInfo)localObject).metaData != null) && (((ApplicationInfo)localObject).metaData.containsKey("io.branch.sdk.TestMode"))) {
        return ((ApplicationInfo)localObject).metaData.getBoolean("io.branch.sdk.TestMode", false);
      }
      localObject = paramContext.getResources();
      boolean bool = Boolean.parseBoolean(((Resources)localObject).getString(((Resources)localObject).getIdentifier("io.branch.sdk.TestMode", "string", paramContext.getPackageName())));
      return bool;
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  public static String h(JSONObject paramJSONObject)
  {
    return i(j(paramJSONObject));
  }
  
  private static String i(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (paramJSONObject == null) {
      localJSONObject = new JSONObject();
    }
    try
    {
      localJSONObject.put("source", "android");
      return localJSONObject.toString();
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        paramJSONObject.printStackTrace();
      }
    }
  }
  
  private static JSONObject j(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator;
    if (paramJSONObject != null) {
      localIterator = paramJSONObject.keys();
    }
    for (;;)
    {
      String str;
      if (localIterator.hasNext()) {
        str = (String)localIterator.next();
      }
      try
      {
        if ((paramJSONObject.has(str)) && (paramJSONObject.get(str).getClass().equals(String.class)))
        {
          localJSONObject.put(str, paramJSONObject.getString(str).replace("\n", "\\n").replace("\r", "\\r").replace("\"", "\\\""));
          continue;
        }
        if (!paramJSONObject.has(str)) {
          continue;
        }
        localJSONObject.put(str, paramJSONObject.get(str));
      }
      catch (JSONException localJSONException) {}
      return localJSONObject;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */