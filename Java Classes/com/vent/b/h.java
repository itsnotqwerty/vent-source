package com.vent.b;

import org.json.JSONException;
import org.json.JSONObject;

final class h
{
  private final String cmg;
  final String cmi;
  private final String cmq;
  private final long cmr;
  private final String cms;
  final String cmt;
  final String cmu;
  private final String cmv;
  final String gU;
  
  h(String paramString1, String paramString2)
    throws JSONException
  {
    this.cmg = paramString1;
    this.cmv = paramString2;
    paramString1 = new JSONObject(this.cmv);
    this.cmi = paramString1.optString("productId");
    this.gU = paramString1.optString("type");
    this.cmq = paramString1.optString("price");
    this.cmr = paramString1.optLong("price_amount_micros");
    this.cms = paramString1.optString("price_currency_code");
    this.cmt = paramString1.optString("title");
    this.cmu = paramString1.optString("description");
  }
  
  public final String toString()
  {
    return "SkuDetails:" + this.cmv;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/b/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */