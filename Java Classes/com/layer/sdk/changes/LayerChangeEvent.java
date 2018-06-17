package com.layer.sdk.changes;

import com.layer.sdk.LayerClient;
import java.util.List;

public class LayerChangeEvent
{
  private final LayerClient a;
  private final List<LayerChange> b;
  
  public LayerChangeEvent(LayerClient paramLayerClient, List<LayerChange> paramList)
  {
    this.a = paramLayerClient;
    this.b = paramList;
  }
  
  public List<LayerChange> getChanges()
  {
    return this.b;
  }
  
  public LayerClient getClient()
  {
    return this.a;
  }
  
  public String toString()
  {
    return "LayerChangeEvent{, mChanges=" + this.b + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/changes/LayerChangeEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */