package io.intercom.android.sdk.views.holder;

import android.support.v7.widget.RecyclerView.x;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.utilities.TimeFormatter;

public class TimeStampViewHolder
  extends RecyclerView.x
  implements ConversationPartViewHolder
{
  private final TimeFormatter timeFormatter;
  
  public TimeStampViewHolder(View paramView, TimeFormatter paramTimeFormatter)
  {
    super(paramView);
    this.timeFormatter = paramTimeFormatter;
  }
  
  public void bind(Part paramPart, ViewGroup paramViewGroup)
  {
    ((TextView)this.itemView).setText(this.timeFormatter.getAbsoluteDate(paramPart.getCreatedAt()));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/holder/TimeStampViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */