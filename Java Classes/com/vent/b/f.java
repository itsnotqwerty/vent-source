package com.vent.b;

import org.json.JSONException;
import org.json.JSONObject;

public final class f
{
  private String aHG;
  public final String cmg;
  private String cmh;
  String cmi;
  private long cmj;
  private int cmk;
  private String cml;
  public String cmm;
  private final String cmn;
  private String cmo;
  private boolean cmp;
  
  public f(String paramString1, String paramString2, String paramString3)
    throws JSONException
  {
    this.cmg = paramString1;
    this.cmn = paramString2;
    paramString1 = new JSONObject(this.cmn);
    this.cmh = paramString1.optString("orderId");
    this.aHG = paramString1.optString("packageName");
    this.cmi = paramString1.optString("productId");
    this.cmj = paramString1.optLong("purchaseTime");
    this.cmk = paramString1.optInt("purchaseState");
    this.cml = paramString1.optString("developerPayload");
    this.cmm = paramString1.optString("token", paramString1.optString("purchaseToken"));
    this.cmp = paramString1.optBoolean("autoRenewing");
    this.cmo = paramString3;
  }
  
  public final String toString()
  {
    return "PurchaseInfo(type:" + this.cmg + "):" + this.cmn;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */