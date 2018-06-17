package com.layer.sdk.listeners;

import com.layer.sdk.LayerClient;
import com.layer.sdk.internal.lsdkk.j.a;
import com.layer.sdk.internal.lsdkk.j.e;
import com.layer.sdk.policy.Policy;
import java.util.List;

public abstract interface LayerPolicyListener
{
  public abstract void onPolicyListUpdate(LayerClient paramLayerClient, List<Policy> paramList1, List<Policy> paramList2);
  
  public static abstract interface BackgroundThread
    extends j.a, LayerPolicyListener
  {
    public static abstract interface Weak
      extends j.e, LayerPolicyListener.BackgroundThread
    {}
  }
  
  public static abstract interface Weak
    extends j.e, LayerPolicyListener
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/listeners/LayerPolicyListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */