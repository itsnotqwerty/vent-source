package io.branch.referral;

import android.content.Context;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class t
  extends r
{
  g cBl;
  boolean cBm = true;
  d.b cBn;
  boolean cBo;
  boolean cxv = true;
  
  public t(Context paramContext, String paramString1, int paramInt1, int paramInt2, Collection<String> paramCollection, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, d.b paramb, boolean paramBoolean)
  {
    super(paramContext, n.c.cAf.key);
    this.cBn = paramb;
    this.cBm = true;
    this.cxv = paramBoolean;
    this.cBl = new g();
    try
    {
      this.cBl.put(n.a.cxR.key, q.getString("bnc_identity_id"));
      this.cBl.put(n.a.cxT.key, q.getString("bnc_device_fingerprint_id"));
      this.cBl.put(n.a.cxU.key, q.getString("bnc_session_id"));
      if (!q.getString("bnc_link_click_id").equals("bnc_no_value")) {
        this.cBl.put(n.a.cxV.key, q.getString("bnc_link_click_id"));
      }
      paramContext = this.cBl;
      if (paramInt1 != 0)
      {
        paramContext.type = paramInt1;
        paramContext.put(n.b.czV.key, paramInt1);
      }
      paramContext = this.cBl;
      if (paramInt2 > 0)
      {
        paramContext.duration = paramInt2;
        paramContext.put(n.b.czW.key, paramInt2);
      }
      paramContext = this.cBl;
      if (paramCollection != null)
      {
        paramContext.cwN = paramCollection;
        paramb = new JSONArray();
        paramCollection = paramCollection.iterator();
        while (paramCollection.hasNext()) {
          paramb.put((String)paramCollection.next());
        }
        paramContext.put(n.b.czT.key, paramb);
      }
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
      this.cBc = true;
      return;
    }
    paramContext = this.cBl;
    if (paramString1 != null)
    {
      paramContext.cwO = paramString1;
      paramContext.put(n.b.czU.key, paramString1);
    }
    paramContext = this.cBl;
    if (paramString2 != null)
    {
      paramContext.cwP = paramString2;
      paramContext.put(n.b.czX.key, paramString2);
    }
    paramContext = this.cBl;
    if (paramString3 != null)
    {
      paramContext.cwQ = paramString3;
      paramContext.put(n.b.czY.key, paramString3);
    }
    paramContext = this.cBl;
    if (paramString4 != null)
    {
      paramContext.cwR = paramString4;
      paramContext.put(n.b.czZ.key, paramString4);
    }
    paramContext = this.cBl;
    if (paramString5 != null)
    {
      paramContext.cwS = paramString5;
      paramContext.put(n.b.cAa.key, paramString5);
    }
    paramContext = this.cBl;
    paramContext.cwT = paramString6;
    paramContext.put(n.b.cAb.key, paramString6);
    k(this.cBl);
  }
  
  public t(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    super(paramString, paramJSONObject, paramContext);
  }
  
  private String eP(String paramString)
  {
    paramString = paramString + "?";
    Object localObject1 = this.cBl.cwN;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject2 = ((Collection)localObject1).iterator();
      localObject1 = paramString;
      if (!((Iterator)localObject2).hasNext()) {
        break label123;
      }
      localObject1 = (String)((Iterator)localObject2).next();
      if ((localObject1 == null) || (((String)localObject1).length() <= 0)) {
        break label601;
      }
      paramString = paramString + n.b.czT + "=" + (String)localObject1 + "&";
    }
    label123:
    label601:
    for (;;)
    {
      break;
      localObject1 = paramString;
      localObject2 = this.cBl.cwO;
      paramString = (String)localObject1;
      if (localObject2 != null)
      {
        paramString = (String)localObject1;
        if (((String)localObject2).length() > 0) {
          paramString = (String)localObject1 + n.b.czU + "=" + (String)localObject2 + "&";
        }
      }
      localObject2 = this.cBl.cwP;
      localObject1 = paramString;
      if (localObject2 != null)
      {
        localObject1 = paramString;
        if (((String)localObject2).length() > 0) {
          localObject1 = paramString + n.b.czX + "=" + (String)localObject2 + "&";
        }
      }
      localObject2 = this.cBl.cwQ;
      paramString = (String)localObject1;
      if (localObject2 != null)
      {
        paramString = (String)localObject1;
        if (((String)localObject2).length() > 0) {
          paramString = (String)localObject1 + n.b.czY + "=" + (String)localObject2 + "&";
        }
      }
      localObject2 = this.cBl.cwR;
      localObject1 = paramString;
      if (localObject2 != null)
      {
        localObject1 = paramString;
        if (((String)localObject2).length() > 0) {
          localObject1 = paramString + n.b.czZ + "=" + (String)localObject2 + "&";
        }
      }
      localObject2 = this.cBl.cwS;
      paramString = (String)localObject1;
      if (localObject2 != null)
      {
        paramString = (String)localObject1;
        if (((String)localObject2).length() > 0) {
          paramString = (String)localObject1 + n.b.cAa + "=" + (String)localObject2 + "&";
        }
      }
      long l = this.cBl.type;
      paramString = paramString + n.b.czV + "=" + l + "&";
      l = this.cBl.duration;
      localObject1 = paramString + n.b.czW + "=" + l + "&";
      localObject2 = this.cBl.cwT;
      paramString = (String)localObject1;
      if (localObject2 != null)
      {
        paramString = (String)localObject1;
        if (((String)localObject2).length() > 0)
        {
          paramString = c.A(((String)localObject2).getBytes());
          paramString = (String)localObject1 + "source=android&data=" + paramString;
        }
      }
      return paramString;
    }
  }
  
  public final boolean Hb()
  {
    return false;
  }
  
  public final String Hh()
  {
    if (!q.getString("bnc_user_url").equals("bnc_no_value")) {
      return eP(q.getString("bnc_user_url"));
    }
    return eP("https://bnc.lt/a/" + q.GU());
  }
  
  final void Hi()
  {
    JSONObject localJSONObject = this.cBl.GJ();
    if (this.cBo) {
      new p().a("Branch Share", localJSONObject, q.getString("bnc_identity_id"));
    }
  }
  
  public final void a(ae paramae, d paramd)
  {
    try
    {
      paramae = paramae.Hr().getString("url");
      if (this.cBn != null) {
        this.cBn.a(paramae, null);
      }
      Hi();
      return;
    }
    catch (Exception paramae)
    {
      paramae.printStackTrace();
    }
  }
  
  public final boolean bU(Context paramContext)
  {
    if (!r.bV(paramContext)) {
      if (this.cBn != null) {
        this.cBn.a(null, new f("Trouble creating a URL.", -102));
      }
    }
    for (;;)
    {
      return true;
      if (!this.cBm) {
        if (q.getString("bnc_identity_id").equals("bnc_no_value")) {
          break label66;
        }
      }
      label66:
      for (int i = 1; i != 0; i = 0) {
        return false;
      }
    }
  }
  
  public final void gH()
  {
    this.cBn = null;
  }
  
  public final void i(int paramInt, String paramString)
  {
    if (this.cBn != null)
    {
      String str = null;
      if (this.cxv) {
        str = Hh();
      }
      this.cBn.a(str, new f("Trouble creating a URL. " + paramString, paramInt));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */