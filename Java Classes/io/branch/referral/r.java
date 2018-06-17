package io.branch.referral;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class r
{
  protected String cAX;
  long cAY = 0L;
  private boolean cAZ;
  private int cBa = 0;
  final Set<a> cBb;
  public boolean cBc = false;
  boolean cBd = false;
  protected q cvV;
  private final ag cvW;
  JSONObject cxm;
  
  public r(Context paramContext, String paramString)
  {
    this.cAX = paramString;
    this.cvV = q.bT(paramContext);
    this.cvW = new ag(paramContext);
    this.cxm = new JSONObject();
    this.cAZ = d.Gu();
    this.cBb = new HashSet();
  }
  
  protected r(String paramString, JSONObject paramJSONObject, Context paramContext)
  {
    this.cAX = paramString;
    this.cxm = paramJSONObject;
    this.cvV = q.bT(paramContext);
    this.cvW = new ag(paramContext);
    this.cAZ = d.Gu();
    this.cBb = new HashSet();
  }
  
  public static r a(JSONObject paramJSONObject, Context paramContext)
  {
    Object localObject2 = null;
    for (;;)
    {
      try
      {
        if (paramJSONObject.has("REQ_POST")) {
          localJSONObject1 = paramJSONObject.getJSONObject("REQ_POST");
        }
      }
      catch (JSONException localJSONException)
      {
        try
        {
          JSONObject localJSONObject1;
          if (paramJSONObject.has("REQ_POST_PATH"))
          {
            paramJSONObject = paramJSONObject.getString("REQ_POST_PATH");
            localObject1 = localObject2;
            if (paramJSONObject != null)
            {
              localObject1 = localObject2;
              if (paramJSONObject.length() > 0)
              {
                if (!paramJSONObject.equalsIgnoreCase(n.c.cAn.key)) {
                  continue;
                }
                localObject1 = new s(paramJSONObject, localJSONObject1, paramContext);
              }
            }
            return (r)localObject1;
            localJSONException = localJSONException;
            localJSONObject2 = null;
          }
        }
        catch (JSONException paramJSONObject)
        {
          paramJSONObject = "";
          continue;
          if (paramJSONObject.equalsIgnoreCase(n.c.cAf.key)) {
            return new t(paramJSONObject, localJSONObject2, paramContext);
          }
          if (paramJSONObject.equalsIgnoreCase(n.c.cAm.key)) {
            return new u(paramJSONObject, localJSONObject2, paramContext);
          }
          if (paramJSONObject.equalsIgnoreCase(n.c.cAl.key)) {
            return new v(paramJSONObject, localJSONObject2, paramContext);
          }
          if (paramJSONObject.equalsIgnoreCase(n.c.cAo.key)) {
            return new w(paramJSONObject, localJSONObject2, paramContext);
          }
          if (paramJSONObject.equalsIgnoreCase(n.c.cAp.key)) {
            return new y(paramJSONObject, localJSONObject2, paramContext);
          }
          if (paramJSONObject.equalsIgnoreCase(n.c.cAe.key)) {
            return new aa(paramJSONObject, localJSONObject2, paramContext);
          }
          if (paramJSONObject.equalsIgnoreCase(n.c.cAh.key)) {
            return new ab(paramJSONObject, localJSONObject2, paramContext);
          }
          if (paramJSONObject.equalsIgnoreCase(n.c.cAg.key)) {
            return new ac(paramJSONObject, localJSONObject2, paramContext);
          }
          Object localObject1 = localObject2;
          if (!paramJSONObject.equalsIgnoreCase(n.c.cAi.key)) {
            continue;
          }
          return new ad(paramJSONObject, localJSONObject2, paramContext);
        }
      }
      JSONObject localJSONObject2 = null;
    }
  }
  
  protected static boolean bV(Context paramContext)
  {
    return paramContext.checkCallingOrSelfPermission("android.permission.INTERNET") == 0;
  }
  
  public abstract boolean Hb();
  
  public boolean Hc()
  {
    return false;
  }
  
  public final String Hd()
  {
    return this.cAX;
  }
  
  public String He()
  {
    return q.GS() + this.cAX;
  }
  
  public boolean Hf()
  {
    return false;
  }
  
  public final JSONObject Hg()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("REQ_POST", this.cxm);
      localJSONObject.put("REQ_POST_PATH", this.cAX);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public final JSONObject a(ConcurrentHashMap<String, String> paramConcurrentHashMap)
  {
    localJSONObject1 = new JSONObject();
    try
    {
      JSONObject localJSONObject2;
      Object localObject;
      String str;
      if (this.cxm != null)
      {
        localJSONObject2 = new JSONObject(this.cxm.toString());
        localObject = localJSONObject2.keys();
        while (((Iterator)localObject).hasNext())
        {
          str = (String)((Iterator)localObject).next();
          localJSONObject1.put(str, localJSONObject2.get(str));
        }
      }
      if (paramConcurrentHashMap.size() > 0)
      {
        localJSONObject2 = new JSONObject();
        localObject = paramConcurrentHashMap.keySet();
      }
      return localJSONObject1;
    }
    catch (ConcurrentModificationException paramConcurrentHashMap)
    {
      try
      {
        localObject = ((Set)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          str = (String)((Iterator)localObject).next();
          localJSONObject2.put(str, paramConcurrentHashMap.get(str));
          paramConcurrentHashMap.remove(str);
        }
        localJSONObject1.put(n.a.czx.key, localJSONObject2);
        return localJSONObject1;
      }
      catch (JSONException paramConcurrentHashMap) {}
      paramConcurrentHashMap = paramConcurrentHashMap;
      return this.cxm;
    }
    catch (JSONException paramConcurrentHashMap)
    {
      return localJSONObject1;
    }
  }
  
  public abstract void a(ae paramae, d paramd);
  
  public final void a(a parama)
  {
    if (parama != null) {
      this.cBb.add(parama);
    }
  }
  
  public abstract boolean bU(Context paramContext);
  
  public abstract void gH();
  
  public abstract void i(int paramInt, String paramString);
  
  protected void k(JSONObject paramJSONObject)
  {
    try
    {
      JSONObject localJSONObject1 = new JSONObject();
      Iterator localIterator = this.cvV.cAV.keys();
      String str;
      while (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        localJSONObject1.put(str, this.cvV.cAV.get(str));
      }
      JSONObject localJSONObject2;
      return;
    }
    catch (JSONException localJSONException)
    {
      Log.e("BranchSDK", "Could not merge metadata, ignoring user metadata.");
      for (;;)
      {
        this.cxm = paramJSONObject;
        paramJSONObject = o.a(q.Ha(), this.cvW, this.cAZ);
        localJSONObject2 = this.cxm;
        try
        {
          if (!paramJSONObject.cAw.equals("bnc_no_value"))
          {
            localJSONObject2.put(n.a.cyB.key, paramJSONObject.cAw);
            localJSONObject2.put(n.a.cyF.key, paramJSONObject.cAx);
          }
          if (!paramJSONObject.cAy.equals("bnc_no_value")) {
            localJSONObject2.put(n.a.cyS.key, paramJSONObject.cAy);
          }
          if (!paramJSONObject.cAz.equals("bnc_no_value")) {
            localJSONObject2.put(n.a.cyT.key, paramJSONObject.cAz);
          }
          localJSONObject2.put(n.a.cyU.key, paramJSONObject.cAA);
          localJSONObject2.put(n.a.cyV.key, paramJSONObject.cAB);
          localJSONObject2.put(n.a.cyW.key, paramJSONObject.cAC);
          localJSONObject2.put(n.a.cyX.key, paramJSONObject.cAD);
          if (!paramJSONObject.cAF.equals("bnc_no_value")) {
            localJSONObject2.put(n.a.cyA.key, paramJSONObject.cAF);
          }
          localJSONObject2.put(n.a.cyH.key, paramJSONObject.cAG);
          if (!TextUtils.isEmpty(paramJSONObject.cAJ)) {
            localJSONObject2.put(n.a.cyI.key, paramJSONObject.cAJ);
          }
          if (!TextUtils.isEmpty(paramJSONObject.cAK)) {
            localJSONObject2.put(n.a.cyJ.key, paramJSONObject.cAK);
          }
          if (!TextUtils.isEmpty(paramJSONObject.cAE)) {
            localJSONObject2.put(n.a.cyY.key, paramJSONObject.cAE);
          }
          return;
        }
        catch (JSONException paramJSONObject) {}
        if (paramJSONObject.has(n.a.cyn.key))
        {
          localIterator = paramJSONObject.getJSONObject(n.a.cyn.key).keys();
          while (localIterator.hasNext())
          {
            str = (String)localIterator.next();
            localJSONObject2.put(str, paramJSONObject.getJSONObject(n.a.cyn.key).get(str));
          }
        }
        paramJSONObject.put(n.a.cyn.key, localJSONObject2);
      }
    }
  }
  
  public void onPreExecute() {}
  
  static enum a
  {
    private a() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */