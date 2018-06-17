package io.branch.referral;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

final class g
  extends JSONObject
{
  Collection<String> cwN;
  String cwO;
  String cwP;
  String cwQ;
  String cwR;
  String cwS;
  String cwT;
  int duration;
  int type;
  
  public final JSONObject GJ()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if (!TextUtils.isEmpty(this.cwP)) {
        localJSONObject.put("~" + n.b.czX.key, this.cwP);
      }
      if (!TextUtils.isEmpty(this.cwO)) {
        localJSONObject.put("~" + n.b.czU.key, this.cwO);
      }
      if (!TextUtils.isEmpty(this.cwQ)) {
        localJSONObject.put("~" + n.b.czY.key, this.cwQ);
      }
      if (!TextUtils.isEmpty(this.cwR)) {
        localJSONObject.put("~" + n.b.czZ.key, this.cwR);
      }
      if (!TextUtils.isEmpty(this.cwS)) {
        localJSONObject.put("~" + n.b.cAa.key, this.cwS);
      }
      if (has(n.b.czT.key)) {
        localJSONObject.put(n.b.czT.key, getJSONArray(n.b.czT.key));
      }
      localJSONObject.put("~" + n.b.czV.key, this.type);
      localJSONObject.put("~" + n.b.czW.key, this.duration);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (g)paramObject;
        if (this.cwO == null)
        {
          if (((g)paramObject).cwO != null) {
            return false;
          }
        }
        else if (!this.cwO.equals(((g)paramObject).cwO)) {
          return false;
        }
        if (this.cwP == null)
        {
          if (((g)paramObject).cwP != null) {
            return false;
          }
        }
        else if (!this.cwP.equals(((g)paramObject).cwP)) {
          return false;
        }
        if (this.cwQ == null)
        {
          if (((g)paramObject).cwQ != null) {
            return false;
          }
        }
        else if (!this.cwQ.equals(((g)paramObject).cwQ)) {
          return false;
        }
        if (this.cwT == null)
        {
          if (((g)paramObject).cwT != null) {
            return false;
          }
        }
        else if (!this.cwT.equals(((g)paramObject).cwT)) {
          return false;
        }
        if (this.cwR == null)
        {
          if (((g)paramObject).cwR != null) {
            return false;
          }
        }
        else if (!this.cwR.equals(((g)paramObject).cwR)) {
          return false;
        }
        if (this.cwS == null)
        {
          if (((g)paramObject).cwS != null) {
            return false;
          }
        }
        else if (!this.cwS.equals(((g)paramObject).cwS)) {
          return false;
        }
        if (this.type != ((g)paramObject).type) {
          return false;
        }
        if (this.duration != ((g)paramObject).duration) {
          return false;
        }
        if (this.cwN != null) {
          break;
        }
      } while (((g)paramObject).cwN == null);
      return false;
    } while (this.cwN.toString().equals(((g)paramObject).cwN.toString()));
    return false;
  }
  
  @SuppressLint({"DefaultLocale"})
  public final int hashCode()
  {
    int i1 = 0;
    int i2 = this.type;
    int i;
    label27:
    int k;
    label36:
    int m;
    label46:
    int n;
    if (this.cwO == null)
    {
      i = 0;
      if (this.cwP != null) {
        break label179;
      }
      j = 0;
      if (this.cwQ != null) {
        break label193;
      }
      k = 0;
      if (this.cwR != null) {
        break label207;
      }
      m = 0;
      if (this.cwS != null) {
        break label222;
      }
      n = 0;
      label56:
      if (this.cwT != null) {
        break label237;
      }
    }
    for (;;)
    {
      i = ((n + (m + (k + (j + (i + (i2 + 19) * 19) * 19) * 19) * 19) * 19) * 19 + i1) * 19 + this.duration;
      if (this.cwN == null) {
        break label252;
      }
      Iterator localIterator = this.cwN.iterator();
      for (;;)
      {
        j = i;
        if (!localIterator.hasNext()) {
          break;
        }
        i = ((String)localIterator.next()).toLowerCase().hashCode() + i * 19;
      }
      i = this.cwO.toLowerCase().hashCode();
      break;
      label179:
      j = this.cwP.toLowerCase().hashCode();
      break label27;
      label193:
      k = this.cwQ.toLowerCase().hashCode();
      break label36;
      label207:
      m = this.cwR.toLowerCase().hashCode();
      break label46;
      label222:
      n = this.cwS.toLowerCase().hashCode();
      break label56;
      label237:
      i1 = this.cwT.toLowerCase().hashCode();
    }
    label252:
    int j = i;
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */