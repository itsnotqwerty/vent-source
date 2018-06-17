package com.layer.sdk.internal.lsdkd;

import android.os.Bundle;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.PushNotificationPayload;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class n
{
  private static final k.a a = k.a(n.class);
  private static final Set<String> b;
  
  static
  {
    HashSet localHashSet = new HashSet(9);
    b = localHashSet;
    localHashSet.add("layer");
    b.add("user-id");
    b.add("title");
    b.add("alert");
    b.add("sound");
    b.add("title_loc_key");
    b.add("title_loc_args");
    b.add("body_loc_key");
    b.add("body_loc_args");
  }
  
  public static Bundle a(Map<String, String> paramMap)
  {
    Bundle localBundle = new Bundle(paramMap.size());
    Object localObject = (String)paramMap.get("title");
    if (localObject != null) {
      localBundle.putString("title", (String)localObject);
    }
    localObject = (String)paramMap.get("alert");
    if (localObject != null) {
      localBundle.putString("text", (String)localObject);
    }
    localObject = (String)paramMap.get("sound");
    if (localObject != null) {
      localBundle.putString("sound", (String)localObject);
    }
    localObject = (String)paramMap.get("title_loc_key");
    if (localObject != null) {
      localBundle.putString("title-loc-key", (String)localObject);
    }
    localObject = a((String)paramMap.get("title_loc_args"));
    if (localObject != null) {
      localBundle.putStringArray("title-loc-args", (String[])localObject);
    }
    localObject = (String)paramMap.get("body_loc_key");
    if (localObject != null) {
      localBundle.putString("loc-key", (String)localObject);
    }
    localObject = a((String)paramMap.get("body_loc_args"));
    if (localObject != null) {
      localBundle.putStringArray("loc-args", (String[])localObject);
    }
    localObject = paramMap.keySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      if (!b.contains(str)) {
        localBundle.putString(str, (String)paramMap.get(str));
      }
    }
    return localBundle;
  }
  
  private static JSONArray a(String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      JSONArray localJSONArray2 = new JSONArray();
      int j = paramArrayOfString.length;
      int i = 0;
      for (;;)
      {
        localJSONArray1 = localJSONArray2;
        if (i >= j) {
          break;
        }
        localJSONArray2.put(paramArrayOfString[i]);
        i += 1;
      }
    }
    JSONArray localJSONArray1 = null;
    return localJSONArray1;
  }
  
  private static JSONObject a(PushNotificationPayload paramPushNotificationPayload, String paramString)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("title", paramPushNotificationPayload.getTitle());
    localJSONObject.put("text", paramPushNotificationPayload.getText());
    localJSONObject.put("sound", paramPushNotificationPayload.getSound());
    localJSONObject.put("category", paramPushNotificationPayload.getCategory());
    localJSONObject.put("title-loc-key", paramPushNotificationPayload.getTitleLocalizationKey());
    localJSONObject.put("title-loc-args", a(paramPushNotificationPayload.getTitleLocalizationArguments()));
    localJSONObject.put("loc-key", paramPushNotificationPayload.getLocalizationKey());
    localJSONObject.put("loc-args", a(paramPushNotificationPayload.getLocalizationArguments()));
    Map localMap = paramPushNotificationPayload.getData();
    if (localMap != null) {
      localJSONObject.put("data", new JSONObject(localMap));
    }
    paramPushNotificationPayload = paramPushNotificationPayload.getApnsData();
    if (paramPushNotificationPayload != null) {
      localJSONObject.put("apns", new JSONObject(paramPushNotificationPayload));
    }
    localJSONObject.put("user_id", paramString);
    return localJSONObject;
  }
  
  public static JSONObject a(PushNotificationPayload paramPushNotificationPayload, Map<Identity, PushNotificationPayload> paramMap)
  {
    if ((paramPushNotificationPayload == null) && (paramMap == null)) {
      return null;
    }
    if (paramPushNotificationPayload != null) {}
    JSONArray localJSONArray;
    for (;;)
    {
      try
      {
        paramPushNotificationPayload = a(paramPushNotificationPayload, null);
        if ((paramMap == null) || (paramMap.isEmpty())) {
          return paramPushNotificationPayload;
        }
        localJSONArray = new JSONArray();
        paramMap = paramMap.entrySet().iterator();
        if (!paramMap.hasNext()) {
          break;
        }
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        if (localEntry.getValue() != null)
        {
          localJSONArray.put(a((PushNotificationPayload)localEntry.getValue(), ((Identity)localEntry.getKey()).getUserId()));
          continue;
          paramPushNotificationPayload = new JSONObject();
        }
      }
      catch (JSONException paramPushNotificationPayload)
      {
        k.a(6);
        throw new IllegalArgumentException("Failed to create JSON from notification payloads", paramPushNotificationPayload);
      }
    }
    if (localJSONArray.length() > 0) {
      paramPushNotificationPayload.put("recipients", localJSONArray);
    }
    return paramPushNotificationPayload;
  }
  
  private static String[] a(String paramString)
  {
    localObject = null;
    String[] arrayOfString2 = null;
    if (paramString != null)
    {
      String[] arrayOfString1 = arrayOfString2;
      try
      {
        JSONArray localJSONArray = new JSONArray(paramString);
        arrayOfString1 = arrayOfString2;
        arrayOfString2 = new String[localJSONArray.length()];
        int i = 0;
        for (;;)
        {
          arrayOfString1 = arrayOfString2;
          localObject = arrayOfString2;
          if (i >= localJSONArray.length()) {
            break;
          }
          arrayOfString1 = arrayOfString2;
          arrayOfString2[i] = localJSONArray.getString(i);
          i += 1;
        }
        return (String[])localObject;
      }
      catch (JSONException localJSONException)
      {
        localObject = arrayOfString1;
        if (k.a(6))
        {
          k.d(a, "Unable to parse JSON string as a String[]. JSON string: " + paramString, localJSONException);
          localObject = arrayOfString1;
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */