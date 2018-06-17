package com.layer.sdk.listeners;

import com.layer.sdk.LayerClient;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdkk.j.a;
import com.layer.sdk.internal.lsdkk.j.e;

public abstract interface LayerAuthenticationListener
{
  public abstract void onAuthenticated(LayerClient paramLayerClient, String paramString);
  
  public abstract void onAuthenticationChallenge(LayerClient paramLayerClient, String paramString);
  
  public abstract void onAuthenticationError(LayerClient paramLayerClient, LayerException paramLayerException);
  
  public abstract void onDeauthenticated(LayerClient paramLayerClient);
  
  public static abstract interface BackgroundThread
    extends j.a, LayerAuthenticationListener
  {
    public static abstract interface Weak
      extends j.e, LayerAuthenticationListener.BackgroundThread
    {}
  }
  
  public static abstract interface Weak
    extends j.e, LayerAuthenticationListener
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/listeners/LayerAuthenticationListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */