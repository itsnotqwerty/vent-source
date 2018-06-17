package io.intercom.android.sdk.sheets;

import java.util.Map;

public class SheetWebViewAction
{
  private final Map<String, Object> metaData;
  private final Map<String, Object> payload;
  private final String type;
  
  public SheetWebViewAction(String paramString, Map<String, Object> paramMap1, Map<String, Object> paramMap2)
  {
    this.type = paramString;
    this.payload = paramMap1;
    this.metaData = paramMap2;
  }
  
  public Map<String, Object> getMetaData()
  {
    return this.metaData;
  }
  
  public Map<String, Object> getPayload()
  {
    return this.payload;
  }
  
  public String getType()
  {
    return this.type;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/sheets/SheetWebViewAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */