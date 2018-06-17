package io.branch.referral;

import org.json.JSONObject;

public final class ae
{
  int cBA;
  private String cBB;
  public Object cBC;
  
  public ae(String paramString, int paramInt)
  {
    this.cBB = paramString;
    this.cBA = paramInt;
  }
  
  public final JSONObject Hr()
  {
    if ((this.cBC instanceof JSONObject)) {
      return (JSONObject)this.cBC;
    }
    return new JSONObject();
  }
  
  public final String Hs()
  {
    String str3 = "";
    String str2 = str3;
    try
    {
      JSONObject localJSONObject = Hr();
      String str1 = str3;
      if (localJSONObject != null)
      {
        str1 = str3;
        str2 = str3;
        if (localJSONObject.has("error"))
        {
          str1 = str3;
          str2 = str3;
          if (localJSONObject.getJSONObject("error").has("message"))
          {
            str2 = str3;
            str3 = localJSONObject.getJSONObject("error").getString("message");
            str1 = str3;
            if (str3 != null)
            {
              str1 = str3;
              str2 = str3;
              if (str3.trim().length() > 0)
              {
                str2 = str3;
                str1 = str3 + ".";
              }
            }
          }
        }
      }
      return str1;
    }
    catch (Exception localException) {}
    return str2;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */