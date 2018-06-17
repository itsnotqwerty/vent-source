package com.layer.atlas.util;

import android.net.Uri;
import android.support.v7.widget.RecyclerView.a;
import com.layer.sdk.changes.LayerChange;
import com.layer.sdk.changes.LayerChangeEvent;
import com.layer.sdk.listeners.LayerChangeEventListener.Weak;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.LayerObject.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class a
  implements LayerChangeEventListener.Weak
{
  private final RecyclerView.a adP;
  private final Map<Uri, Set<Integer>> bpp = new HashMap();
  
  public a(RecyclerView.a parama)
  {
    this.adP = parama;
  }
  
  public final void a(int paramInt, Set<Identity> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      Identity localIdentity = (Identity)localIterator.next();
      Set localSet = (Set)this.bpp.get(localIdentity.getId());
      paramSet = localSet;
      if (localSet == null)
      {
        paramSet = new HashSet();
        this.bpp.put(localIdentity.getId(), paramSet);
      }
      paramSet.add(Integer.valueOf(paramInt));
    }
  }
  
  public final void onChangeEvent(LayerChangeEvent paramLayerChangeEvent)
  {
    paramLayerChangeEvent = paramLayerChangeEvent.getChanges().iterator();
    while (paramLayerChangeEvent.hasNext())
    {
      Object localObject = (LayerChange)paramLayerChangeEvent.next();
      if (((LayerChange)localObject).getObjectType().equals(LayerObject.Type.IDENTITY))
      {
        localObject = ((Identity)((LayerChange)localObject).getObject()).getId();
        localObject = (Set)this.bpp.get(localObject);
        if (localObject != null)
        {
          localObject = ((Set)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            Integer localInteger = (Integer)((Iterator)localObject).next();
            this.adP.notifyItemChanged(localInteger.intValue());
          }
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/util/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */