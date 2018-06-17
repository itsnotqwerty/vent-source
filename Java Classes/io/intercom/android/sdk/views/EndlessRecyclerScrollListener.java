package io.intercom.android.sdk.views;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.n;

public class EndlessRecyclerScrollListener
  extends RecyclerView.n
{
  final EndlessScrollListener endlessScrollListener;
  private final LinearLayoutManager layoutManager;
  private boolean morePagesAvailable = true;
  
  public EndlessRecyclerScrollListener(LinearLayoutManager paramLinearLayoutManager, EndlessScrollListener paramEndlessScrollListener)
  {
    this.layoutManager = paramLinearLayoutManager;
    this.endlessScrollListener = paramEndlessScrollListener;
  }
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt)
  {
    super.onScrollStateChanged(paramRecyclerView, paramInt);
    this.endlessScrollListener.setOverScrollColour();
  }
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onScrolled(paramRecyclerView, paramInt1, paramInt2);
    paramInt1 = paramRecyclerView.getChildCount();
    if ((this.layoutManager.getItemCount() - paramInt1 <= this.layoutManager.hq()) && (this.morePagesAvailable)) {
      paramRecyclerView.post(new Runnable()
      {
        public void run()
        {
          EndlessRecyclerScrollListener.this.endlessScrollListener.onLoadMore();
        }
      });
    }
  }
  
  public void setMorePagesAvailable(boolean paramBoolean)
  {
    this.morePagesAvailable = paramBoolean;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/EndlessRecyclerScrollListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */