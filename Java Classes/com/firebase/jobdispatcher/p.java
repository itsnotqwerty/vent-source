package com.firebase.jobdispatcher;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class p
{
  private final String aqv;
  
  p(String paramString)
  {
    this.aqv = paramString;
  }
  
  private static List<w> aM(String paramString)
  {
    localArrayList = new ArrayList();
    try
    {
      Object localObject = new JSONObject(paramString);
      paramString = ((JSONObject)localObject).getJSONArray("uri_flags");
      localObject = ((JSONObject)localObject).getJSONArray("uris");
      int j = paramString.length();
      int i = 0;
      while (i < j)
      {
        int k = paramString.getInt(i);
        localArrayList.add(new w(Uri.parse(((JSONArray)localObject).getString(i)), k));
        i += 1;
      }
      return localArrayList;
    }
    catch (JSONException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private static String n(List<w> paramList)
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray1 = new JSONArray();
    JSONArray localJSONArray2 = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      w localw = (w)paramList.next();
      localJSONArray1.put(localw.flags);
      localJSONArray2.put(localw.uri);
    }
    try
    {
      localJSONObject.put("uri_flags", localJSONArray1);
      localJSONObject.put("uris", localJSONArray2);
      return localJSONObject.toString();
    }
    catch (JSONException paramList)
    {
      throw new RuntimeException(paramList);
    }
  }
  
  final Bundle a(r paramr, Bundle paramBundle)
  {
    if (paramBundle == null) {
      throw new IllegalArgumentException("Unexpected null Bundle provided");
    }
    Object localObject = paramr.getExtras();
    if (localObject != null) {
      paramBundle.putAll((Bundle)localObject);
    }
    paramBundle.putInt(this.aqv + "persistent", paramr.kP());
    paramBundle.putBoolean(this.aqv + "recurring", paramr.kQ());
    paramBundle.putBoolean(this.aqv + "replace_current", paramr.kN());
    paramBundle.putString(this.aqv + "tag", paramr.getTag());
    paramBundle.putString(this.aqv + "service", paramr.kR());
    paramBundle.putInt(this.aqv + "constraints", a.g(paramr.kL()));
    localObject = paramr.kO();
    if (localObject == z.ayi) {
      paramBundle.putInt(this.aqv + "trigger_type", 2);
    }
    for (;;)
    {
      localObject = paramr.kM();
      paramr = (r)localObject;
      if (localObject == null) {
        paramr = x.ayb;
      }
      paramBundle.putInt(this.aqv + "retry_policy", paramr.ayd);
      paramBundle.putInt(this.aqv + "initial_backoff_seconds", paramr.aye);
      paramBundle.putInt(this.aqv + "maximum_backoff_seconds", paramr.ayf);
      return paramBundle;
      if ((localObject instanceof u.b))
      {
        localObject = (u.b)localObject;
        paramBundle.putInt(this.aqv + "trigger_type", 1);
        paramBundle.putInt(this.aqv + "window_start", ((u.b)localObject).axZ);
        paramBundle.putInt(this.aqv + "window_end", ((u.b)localObject).aya);
      }
      else
      {
        if (!(localObject instanceof u.a)) {
          break;
        }
        paramBundle.putInt(this.aqv + "trigger_type", 3);
        localObject = n(((u.a)localObject).axY);
        paramBundle.putString(this.aqv + "observed_uris", (String)localObject);
      }
    }
    throw new IllegalArgumentException("Unsupported trigger.");
  }
  
  public final q.a g(Bundle paramBundle)
  {
    if (paramBundle == null) {
      throw new IllegalArgumentException("Unexpected null Bundle provided");
    }
    Bundle localBundle = new Bundle(paramBundle);
    boolean bool1 = localBundle.getBoolean(this.aqv + "recurring");
    boolean bool2 = localBundle.getBoolean(this.aqv + "replace_current");
    int i = localBundle.getInt(this.aqv + "persistent");
    int[] arrayOfInt = a.cs(localBundle.getInt(this.aqv + "constraints"));
    int j;
    switch (localBundle.getInt(this.aqv + "trigger_type"))
    {
    default: 
      if (Log.isLoggable("FJD.ExternalReceiver", 3)) {
        Log.d("FJD.ExternalReceiver", "Unsupported trigger.");
      }
      paramBundle = null;
      j = localBundle.getInt(this.aqv + "retry_policy");
      if ((j == 1) || (j == 2)) {
        break;
      }
    }
    String str1;
    String str2;
    for (x localx = x.ayb;; localx = new x(j, localBundle.getInt(this.aqv + "initial_backoff_seconds"), localBundle.getInt(this.aqv + "maximum_backoff_seconds")))
    {
      str1 = localBundle.getString(this.aqv + "tag");
      str2 = localBundle.getString(this.aqv + "service");
      if ((str1 != null) && (str2 != null) && (paramBundle != null) && (localx != null)) {
        break label514;
      }
      return null;
      paramBundle = z.ayi;
      break;
      paramBundle = z.at(localBundle.getInt(this.aqv + "window_start"), localBundle.getInt(this.aqv + "window_end"));
      break;
      paramBundle = z.o(Collections.unmodifiableList(aM(localBundle.getString(this.aqv + "observed_uris"))));
      break;
    }
    label514:
    q.a locala = new q.a();
    locala.tag = str1;
    locala.axF = str2;
    locala.axG = paramBundle;
    locala.axH = localx;
    locala.axJ = bool1;
    locala.axI = i;
    locala.axK = arrayOfInt;
    locala.axL = bool2;
    if (!TextUtils.isEmpty(this.aqv))
    {
      paramBundle = localBundle.keySet().iterator();
      while (paramBundle.hasNext()) {
        if (((String)paramBundle.next()).startsWith(this.aqv)) {
          paramBundle.remove();
        }
      }
    }
    locala.extras.putAll(localBundle);
    return locala;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */