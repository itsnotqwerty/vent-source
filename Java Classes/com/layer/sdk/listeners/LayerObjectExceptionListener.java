package com.layer.sdk.listeners;

import com.layer.sdk.LayerClient;
import com.layer.sdk.exceptions.LayerObjectException;
import com.layer.sdk.internal.lsdkk.j.a;
import com.layer.sdk.internal.lsdkk.j.e;

public abstract interface LayerObjectExceptionListener
{
  public abstract void onObjectError(LayerClient paramLayerClient, LayerObjectException paramLayerObjectException);
  
  public static abstract interface BackgroundThread
    extends j.a, LayerObjectExceptionListener
  {
    public static abstract interface Weak
      extends j.e, LayerObjectExceptionListener.BackgroundThread
    {}
  }
  
  public static abstract interface Weak
    extends j.e, LayerObjectExceptionListener
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/listeners/LayerObjectExceptionListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */