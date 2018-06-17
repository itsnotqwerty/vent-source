package com.layer.sdk.listeners;

import com.layer.sdk.LayerClient;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdkk.j.a;
import com.layer.sdk.internal.lsdkk.j.e;

public abstract interface LayerConnectionListener
{
  public abstract void onConnectionConnected(LayerClient paramLayerClient);
  
  public abstract void onConnectionDisconnected(LayerClient paramLayerClient);
  
  public abstract void onConnectionError(LayerClient paramLayerClient, LayerException paramLayerException);
  
  public static abstract interface BackgroundThread
    extends j.a, LayerConnectionListener
  {
    public static abstract interface Weak
      extends j.e, LayerConnectionListener.BackgroundThread
    {}
  }
  
  public static abstract interface Weak
    extends j.e, LayerConnectionListener
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/listeners/LayerConnectionListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */