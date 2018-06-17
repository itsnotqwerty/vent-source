package com.layer.sdk.listeners;

import com.layer.sdk.changes.LayerChangeEvent;
import com.layer.sdk.internal.lsdkk.j.a;
import com.layer.sdk.internal.lsdkk.j.e;

public abstract interface LayerChangeEventListener
{
  public abstract void onChangeEvent(LayerChangeEvent paramLayerChangeEvent);
  
  public static abstract interface BackgroundThread
    extends j.a, LayerChangeEventListener
  {
    public static abstract interface Weak
      extends j.e, LayerChangeEventListener.BackgroundThread
    {}
  }
  
  public static abstract interface Weak
    extends j.e, LayerChangeEventListener
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/listeners/LayerChangeEventListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */