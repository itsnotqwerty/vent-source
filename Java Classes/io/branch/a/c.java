package io.branch.a;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class c
{
  private static c cve;
  public JSONObject cvf;
  public String cvg;
  public int cvh = 0;
  public int cvi = 1;
  public int cvj = 0;
  public boolean cvk = false;
  public JSONArray cvl;
  public SharedPreferences cvm;
  private final String cvn = "BNC_CD_MANIFEST";
  
  private c(Context paramContext)
  {
    this.cvm = paramContext.getSharedPreferences("bnc_content_discovery_manifest_storage", 0);
    paramContext = this.cvm.getString("BNC_CD_MANIFEST", null);
    if (paramContext != null) {
      try
      {
        this.cvf = new JSONObject(paramContext);
        if (this.cvf.has("mv")) {
          this.cvg = this.cvf.getString("mv");
        }
        if (this.cvf.has("m")) {
          this.cvl = this.cvf.getJSONArray("m");
        }
        return;
      }
      catch (JSONException paramContext)
      {
        this.cvf = new JSONObject();
        return;
      }
    }
    this.cvf = new JSONObject();
  }
  
  public static c bP(Context paramContext)
  {
    if (cve == null) {
      cve = new c(paramContext);
    }
    return cve;
  }
  
  public final String Gr()
  {
    if (TextUtils.isEmpty(this.cvg)) {
      return "-1";
    }
    return this.cvg;
  }
  
  final a x(Activity paramActivity)
  {
    if (this.cvl != null)
    {
      paramActivity = "/" + paramActivity.getClass().getSimpleName();
      int i = 0;
      try
      {
        while (i < this.cvl.length())
        {
          JSONObject localJSONObject = this.cvl.getJSONObject(i);
          if ((localJSONObject.has("p")) && (localJSONObject.getString("p").equals(paramActivity)))
          {
            paramActivity = new a(localJSONObject);
            return paramActivity;
          }
          i += 1;
        }
        return null;
      }
      catch (JSONException paramActivity) {}
    }
    return null;
  }
  
  final class a
  {
    final JSONObject cvo;
    boolean cvp;
    int cvq;
    int cvr;
    
    a(JSONObject paramJSONObject)
    {
      this.cvo = paramJSONObject;
      this.cvr = 15;
      if (paramJSONObject.has("h")) {}
      for (;;)
      {
        try
        {
          if (!paramJSONObject.getBoolean("h"))
          {
            bool = true;
            this.cvp = bool;
          }
        }
        catch (JSONException this$1)
        {
          boolean bool;
          c.this.printStackTrace();
          continue;
        }
        try
        {
          if (paramJSONObject.has("dri")) {
            this.cvq = paramJSONObject.getInt("dri");
          }
          if (paramJSONObject.has("mdr")) {
            this.cvr = paramJSONObject.getInt("mdr");
          }
          return;
        }
        catch (JSONException this$1)
        {
          c.this.printStackTrace();
        }
        bool = false;
      }
    }
    
    final JSONArray Gs()
    {
      JSONArray localJSONArray = null;
      if (this.cvo.has("ck")) {}
      try
      {
        localJSONArray = this.cvo.getJSONArray("ck");
        return localJSONArray;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
      return null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */