package com.layer.atlas;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.layer.sdk.LayerClient;
import com.layer.sdk.listeners.LayerTypingIndicatorListener.TypingIndicator;
import com.layer.sdk.listeners.LayerTypingIndicatorListener.Weak;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Identity;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class a
  extends FrameLayout
  implements LayerTypingIndicatorListener.Weak
{
  public volatile Conversation bmV;
  private final ConcurrentHashMap<Identity, LayerTypingIndicatorListener.TypingIndicator> bnq = new ConcurrentHashMap();
  public volatile a bnr;
  private volatile b bns;
  private volatile View bnt;
  private volatile boolean mActive = false;
  
  public a(Context paramContext)
  {
    super(paramContext);
  }
  
  private a wi()
  {
    if (this.bns == null) {
      return this;
    }
    this.bns.a(this.bnt, this.bnq);
    return this;
  }
  
  public final a a(b paramb)
  {
    this.bns = paramb;
    removeAllViews();
    if (paramb != null)
    {
      this.bnt = paramb.as(getContext());
      addView(this.bnt);
      return this;
    }
    this.bnt = null;
    return this;
  }
  
  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    wi();
  }
  
  public final void onTypingIndicator(LayerClient paramLayerClient, Conversation paramConversation, Identity paramIdentity, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    if (this.bmV != paramConversation) {
      return;
    }
    boolean bool;
    if (paramTypingIndicator == LayerTypingIndicatorListener.TypingIndicator.FINISHED)
    {
      this.bnq.remove(paramIdentity);
      bool = this.bnq.isEmpty();
      if ((!bool) || (!this.mActive)) {
        break label90;
      }
      this.mActive = false;
      if (this.bnr != null) {
        this.bnr.a(this, false);
      }
    }
    for (;;)
    {
      wi();
      return;
      this.bnq.put(paramIdentity, paramTypingIndicator);
      break;
      label90:
      if ((!bool) && (!this.mActive))
      {
        this.mActive = true;
        if (this.bnr != null) {
          this.bnr.a(this, true);
        }
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(a parama, boolean paramBoolean);
  }
  
  public static abstract interface b<T extends View>
  {
    public abstract void a(T paramT, Map<Identity, LayerTypingIndicatorListener.TypingIndicator> paramMap);
    
    public abstract T as(Context paramContext);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */