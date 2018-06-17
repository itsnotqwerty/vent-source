package io.intercom.android.sdk.inbox;

import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView.x;
import android.view.View;
import android.widget.ProgressBar;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.id;

class LoadingViewHolder
  extends RecyclerView.x
{
  LoadingViewHolder(View paramView, int paramInt)
  {
    super(paramView);
    Resources localResources = paramView.getResources();
    paramView.getLayoutParams().height = localResources.getDimensionPixelSize(R.dimen.intercom_inbox_row_height);
    ((ProgressBar)paramView.findViewById(R.id.progressBar)).getIndeterminateDrawable().setColorFilter(paramInt, PorterDuff.Mode.SRC_IN);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/inbox/LoadingViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */