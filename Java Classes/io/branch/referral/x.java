package io.branch.referral;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import io.branch.a.b;
import io.branch.a.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

abstract class x
  extends r
{
  private final c cBt;
  private final Context cvX;
  
  x(Context paramContext, String paramString)
  {
    super(paramContext, paramString);
    this.cvX = paramContext;
    this.cBt = c.bP(this.cvX);
  }
  
  x(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    super(paramString, paramJSONObject, paramContext);
    this.cvX = paramContext;
    this.cBt = c.bP(this.cvX);
  }
  
  static boolean eQ(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString != null) {
      if (!paramString.equalsIgnoreCase("open"))
      {
        bool1 = bool2;
        if (!paramString.equalsIgnoreCase("install")) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public final boolean Hf()
  {
    return true;
  }
  
  public abstract boolean Hk();
  
  public abstract String Hl();
  
  public void a(ae paramae, d paramd)
  {
    try
    {
      q.setString("bnc_link_click_identifier", "bnc_no_value");
      q.setString("bnc_google_search_install_identifier", "bnc_no_value");
      q.setString("bnc_google_play_install_referrer_extras", "bnc_no_value");
      q.setString("bnc_external_intent_uri", "bnc_no_value");
      q.setString("bnc_external_intent_extra", "bnc_no_value");
      q.setString("bnc_app_link", "bnc_no_value");
      q.setString("bnc_push_identifier", "bnc_no_value");
      q.c("bnc_triggered_by_fb_app_link", Boolean.valueOf(false));
      q.setString("bnc_install_referrer", "bnc_no_value");
      q.br(false);
      if ((paramae.Hr() != null) && (paramae.Hr().has(n.a.cyz.key)))
      {
        if ((this instanceof ac)) {}
        for (paramd = "Branch Install";; paramd = "Branch Open")
        {
          paramae = new JSONObject(paramae.Hr().getString(n.a.cyz.key));
          new p().a(paramd, paramae, q.getString("bnc_identity_id"));
          return;
        }
      }
      return;
    }
    catch (JSONException paramae) {}
  }
  
  final boolean a(ae paramae)
  {
    if ((paramae != null) && (paramae.Hr() != null) && (paramae.Hr().has(n.a.czz.key))) {}
    for (;;)
    {
      try
      {
        paramae = paramae.Hr().getJSONObject(n.a.czz.key);
        String str = Hl();
        if ((d.Gt().cwj != null) && (d.Gt().cwj.get() != null))
        {
          Activity localActivity = (Activity)d.Gt().cwj.get();
          if ((localActivity instanceof d.h))
          {
            if (((d.h)localActivity).GI()) {
              break label156;
            }
            i = 1;
            if (i != 0) {
              return l.GL().a(paramae, str, localActivity, d.Gt());
            }
            return l.GL().i(paramae, str);
          }
        }
        else
        {
          boolean bool = l.GL().i(paramae, str);
          return bool;
        }
      }
      catch (JSONException paramae)
      {
        return false;
      }
      int i = 1;
      continue;
      return false;
      label156:
      i = 0;
    }
  }
  
  final void b(ae paramae, d paramd)
  {
    Object localObject;
    if (this.cBt != null)
    {
      localObject = this.cBt;
      paramae = paramae.Hr();
      if (!paramae.has("cd")) {
        break label255;
      }
    }
    for (((c)localObject).cvk = true;; ((c)localObject).cvk = false)
    {
      try
      {
        paramae = paramae.getJSONObject("cd");
        if (paramae.has("mv")) {
          ((c)localObject).cvg = paramae.getString("mv");
        }
        if (paramae.has("mhl")) {
          ((c)localObject).cvi = paramae.getInt("mhl");
        }
        if (paramae.has("m")) {
          ((c)localObject).cvl = paramae.getJSONArray("m");
        }
        if (paramae.has("mtl"))
        {
          int i = paramae.getInt("mtl");
          if (i > 0) {
            ((c)localObject).cvh = i;
          }
        }
        if (paramae.has("mps")) {
          ((c)localObject).cvj = paramae.getInt("mps");
        }
        ((c)localObject).cvf.put("mv", ((c)localObject).cvg);
        ((c)localObject).cvf.put("m", ((c)localObject).cvl);
        ((c)localObject).cvm.edit().putString("BNC_CD_MANIFEST", ((c)localObject).cvf.toString()).apply();
      }
      catch (JSONException paramae)
      {
        label255:
        for (;;) {}
      }
      if (paramd.cwj != null) {}
      try
      {
        paramae = b.Gq();
        localObject = (Activity)paramd.cwj.get();
        paramd = paramd.cwq;
        paramae.cuY = new ArrayList();
        paramae.d((Activity)localObject, paramd);
        return;
      }
      catch (Exception paramae)
      {
        return;
      }
    }
  }
  
  protected final void k(JSONObject paramJSONObject)
  {
    super.k(paramJSONObject);
    Object localObject2 = this.cvX;
    for (;;)
    {
      try
      {
        Object localObject1 = ((Context)localObject2).getPackageManager();
        localObject2 = ((PackageManager)localObject1).getLaunchIntentForPackage(((Context)localObject2).getPackageName());
        if (localObject2 != null)
        {
          localObject1 = ((PackageManager)localObject1).queryIntentActivities((Intent)localObject2, 65536);
          if ((localObject1 != null) && (((List)localObject1).size() > 0))
          {
            i = 1;
            if (i != 0)
            {
              localObject1 = n.a.czR.key;
              paramJSONObject.put(n.a.czP.key, localObject1);
              return;
            }
            localObject1 = n.a.czQ.key;
            continue;
          }
        }
        int i = 0;
      }
      catch (Exception paramJSONObject)
      {
        return;
      }
    }
  }
  
  public final void onPreExecute()
  {
    JSONObject localJSONObject1 = this.cxm;
    try
    {
      if (!q.getString("bnc_app_link").equals("bnc_no_value")) {
        localJSONObject1.put(n.a.czd.key, q.getString("bnc_app_link"));
      }
      if (!q.getString("bnc_push_identifier").equals("bnc_no_value")) {
        localJSONObject1.put(n.a.czf.key, q.getString("bnc_push_identifier"));
      }
      if (!q.getString("bnc_external_intent_uri").equals("bnc_no_value")) {
        localJSONObject1.put(n.a.czt.key, q.getString("bnc_external_intent_uri"));
      }
      if (!q.getString("bnc_external_intent_extra").equals("bnc_no_value")) {
        localJSONObject1.put(n.a.czu.key, q.getString("bnc_external_intent_extra"));
      }
      if (this.cBt != null)
      {
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("mv", this.cBt.Gr());
        localJSONObject2.put("pn", this.cvX.getPackageName());
        localJSONObject1.put("cd", localJSONObject2);
      }
      return;
    }
    catch (JSONException localJSONException) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */