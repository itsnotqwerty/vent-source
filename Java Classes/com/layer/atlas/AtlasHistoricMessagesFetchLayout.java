package com.layer.atlas;

import android.content.Context;
import android.support.v4.widget.n;
import android.support.v4.widget.n.b;
import android.util.AttributeSet;
import android.view.View;
import com.layer.sdk.LayerClient;
import com.layer.sdk.changes.LayerChange;
import com.layer.sdk.changes.LayerChange.Type;
import com.layer.sdk.changes.LayerChangeEvent;
import com.layer.sdk.listeners.LayerChangeEventListener.BackgroundThread.Weak;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Conversation.HistoricSyncStatus;
import java.util.Iterator;
import java.util.List;

public final class AtlasHistoricMessagesFetchLayout
  extends n
  implements LayerChangeEventListener.BackgroundThread.Weak
{
  public LayerClient bmU;
  public Conversation bmV;
  public int bmW = 25;
  
  public AtlasHistoricMessagesFetchLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public AtlasHistoricMessagesFetchLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public final void onChangeEvent(LayerChangeEvent paramLayerChangeEvent)
  {
    paramLayerChangeEvent = paramLayerChangeEvent.getChanges().iterator();
    while (paramLayerChangeEvent.hasNext())
    {
      LayerChange localLayerChange = (LayerChange)paramLayerChangeEvent.next();
      if ((localLayerChange.getObject() == this.bmV) && (localLayerChange.getChangeType() == LayerChange.Type.UPDATE) && (localLayerChange.getAttributeName().equals("historicSyncStatus"))) {
        we();
      }
    }
  }
  
  protected final void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (paramInt != 0) {
      return;
    }
    we();
  }
  
  public final AtlasHistoricMessagesFetchLayout we()
  {
    post(new Runnable()
    {
      public final void run()
      {
        boolean bool2 = true;
        if (AtlasHistoricMessagesFetchLayout.this.bmV == null)
        {
          AtlasHistoricMessagesFetchLayout.this.setEnabled(false);
          AtlasHistoricMessagesFetchLayout.this.setRefreshing(false);
          return;
        }
        Conversation.HistoricSyncStatus localHistoricSyncStatus = AtlasHistoricMessagesFetchLayout.this.bmV.getHistoricSyncStatus();
        AtlasHistoricMessagesFetchLayout localAtlasHistoricMessagesFetchLayout = AtlasHistoricMessagesFetchLayout.this;
        if (localHistoricSyncStatus == Conversation.HistoricSyncStatus.MORE_AVAILABLE)
        {
          bool1 = true;
          localAtlasHistoricMessagesFetchLayout.setEnabled(bool1);
          localAtlasHistoricMessagesFetchLayout = AtlasHistoricMessagesFetchLayout.this;
          if (localHistoricSyncStatus != Conversation.HistoricSyncStatus.SYNC_PENDING) {
            break label88;
          }
        }
        label88:
        for (boolean bool1 = bool2;; bool1 = false)
        {
          localAtlasHistoricMessagesFetchLayout.setRefreshing(bool1);
          return;
          bool1 = false;
          break;
        }
      }
    });
    return this;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/AtlasHistoricMessagesFetchLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */