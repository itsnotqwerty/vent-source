package io.intercom.android.sdk.helpcenter;

import java.util.Map;

public class HelpCenterWebViewAction
{
  private final String type;
  private final Map<String, Object> value;
  
  public HelpCenterWebViewAction(String paramString, Map<String, Object> paramMap)
  {
    this.type = paramString;
    this.value = paramMap;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public Map<String, Object> getValue()
  {
    return this.value;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/helpcenter/HelpCenterWebViewAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */