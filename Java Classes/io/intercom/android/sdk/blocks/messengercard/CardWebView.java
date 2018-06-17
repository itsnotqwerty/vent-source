package io.intercom.android.sdk.blocks.messengercard;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;
import io.intercom.a.c.a.b;
import io.intercom.a.c.a.h;
import io.intercom.android.sdk.models.events.CardUpdatedEvent;

public class CardWebView
  extends WebView
{
  private b bus;
  
  public CardWebView(Context paramContext)
  {
    super(paramContext);
  }
  
  public CardWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public CardWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.bus != null) {
      this.bus.register(this);
    }
  }
  
  @h
  public void onCardUpdated(CardUpdatedEvent paramCardUpdatedEvent)
  {
    reload();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.bus != null) {
      this.bus.unregister(this);
    }
  }
  
  public void setUp(b paramb)
  {
    this.bus = paramb;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/messengercard/CardWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */