package com.layer.sdk.listeners;

import com.layer.sdk.LayerClient;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.internal.lsdkk.j.a;
import com.layer.sdk.internal.lsdkk.j.e;
import java.util.List;

public abstract interface LayerSyncListener
{
  public abstract void onAfterSync(LayerClient paramLayerClient, SyncType paramSyncType);
  
  public abstract void onBeforeSync(LayerClient paramLayerClient, SyncType paramSyncType);
  
  public abstract void onSyncError(LayerClient paramLayerClient, List<LayerException> paramList);
  
  public abstract void onSyncProgress(LayerClient paramLayerClient, SyncType paramSyncType, int paramInt);
  
  public static abstract interface BackgroundThread
    extends j.a, LayerSyncListener
  {
    public static abstract interface Weak
      extends j.e, LayerSyncListener.BackgroundThread
    {}
  }
  
  public static enum SyncType
  {
    HISTORIC,  NORMAL;
    
    private SyncType() {}
  }
  
  public static abstract interface Weak
    extends j.e, LayerSyncListener
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/listeners/LayerSyncListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */