package com.layer.sdk.exceptions;

import com.layer.sdk.messaging.LayerObject;

public class LayerObjectException
  extends LayerException
{
  private LayerObject a;
  
  public LayerObjectException(LayerException.Type paramType, LayerObject paramLayerObject, String paramString, Throwable paramThrowable)
  {
    super(paramType, paramString, paramThrowable);
    this.a = paramLayerObject;
  }
  
  public LayerObject getLayerObject()
  {
    return this.a;
  }
  
  public String toString()
  {
    if (this.a != null) {
      return super.toString() + " : " + this.a.toString();
    }
    return super.toString() + " : <null LayerObject>";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/exceptions/LayerObjectException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */