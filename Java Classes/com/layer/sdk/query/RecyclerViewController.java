package com.layer.sdk.query;

public abstract class RecyclerViewController<Tquery extends Queryable>
  extends ListViewController<Tquery>
{
  public static abstract interface Callback
  {
    public abstract void onQueryDataSetChanged(RecyclerViewController paramRecyclerViewController);
    
    public abstract void onQueryItemChanged(RecyclerViewController paramRecyclerViewController, int paramInt);
    
    public abstract void onQueryItemInserted(RecyclerViewController paramRecyclerViewController, int paramInt);
    
    public abstract void onQueryItemMoved(RecyclerViewController paramRecyclerViewController, int paramInt1, int paramInt2);
    
    public abstract void onQueryItemRangeChanged(RecyclerViewController paramRecyclerViewController, int paramInt1, int paramInt2);
    
    public abstract void onQueryItemRangeInserted(RecyclerViewController paramRecyclerViewController, int paramInt1, int paramInt2);
    
    public abstract void onQueryItemRangeRemoved(RecyclerViewController paramRecyclerViewController, int paramInt1, int paramInt2);
    
    public abstract void onQueryItemRemoved(RecyclerViewController paramRecyclerViewController, int paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/query/RecyclerViewController.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */