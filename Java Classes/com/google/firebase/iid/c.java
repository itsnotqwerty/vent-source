package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

final class c
{
  private static final long beV = TimeUnit.DAYS.toMillis(7L);
  private String aQF;
  final String beW;
  private long timestamp;
  
  private c(String paramString1, String paramString2, long paramLong)
  {
    this.beW = paramString1;
    this.aQF = paramString2;
    this.timestamp = paramLong;
  }
  
  static String a(String paramString1, String paramString2, long paramLong)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("token", paramString1);
      localJSONObject.put("appVersion", paramString2);
      localJSONObject.put("timestamp", paramLong);
      paramString1 = localJSONObject.toString();
      return paramString1;
    }
    catch (JSONException paramString1)
    {
      paramString1 = String.valueOf(paramString1);
      Log.w("FirebaseInstanceId", String.valueOf(paramString1).length() + 24 + "Failed to encode token: " + paramString1);
    }
    return null;
  }
  
  static c dd(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    if (paramString.startsWith("{")) {
      try
      {
        paramString = new JSONObject(paramString);
        paramString = new c(paramString.getString("token"), paramString.getString("appVersion"), paramString.getLong("timestamp"));
        return paramString;
      }
      catch (JSONException paramString)
      {
        paramString = String.valueOf(paramString);
        Log.w("FirebaseInstanceId", String.valueOf(paramString).length() + 23 + "Failed to parse token: " + paramString);
        return null;
      }
    }
    return new c(paramString, null, 0L);
  }
  
  final boolean de(String paramString)
  {
    return (System.currentTimeMillis() > this.timestamp + beV) || (!paramString.equals(this.aQF));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */