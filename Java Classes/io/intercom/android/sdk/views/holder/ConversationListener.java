package io.intercom.android.sdk.views.holder;

import android.view.View;
import io.intercom.android.sdk.models.Part;

public abstract interface ConversationListener
{
  public abstract int getCount();
  
  public abstract Part getPart(int paramInt);
  
  public abstract Part getSelectedPart();
  
  public abstract void onContainerCardClicked(int paramInt, ContainerCardViewHolder paramContainerCardViewHolder);
  
  public abstract void onLinkClicked(int paramInt, View paramView);
  
  public abstract void onPartClicked(int paramInt, PartViewHolder paramPartViewHolder);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/holder/ConversationListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */