package io.intercom.android.sdk.models;

import io.intercom.a.b.a.l;

public class Sheet
{
  private final String body;
  
  Sheet(Builder paramBuilder)
  {
    if (paramBuilder.sheet_request_body == null) {}
    for (paramBuilder = "";; paramBuilder = paramBuilder.sheet_request_body.toString())
    {
      this.body = paramBuilder;
      return;
    }
  }
  
  public String getBody()
  {
    return this.body;
  }
  
  public static final class Builder
  {
    l sheet_request_body;
    String sheet_title;
    
    public final Sheet build()
    {
      return new Sheet(this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Sheet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */