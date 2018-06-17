package com.layer.sdk.query;

import android.net.Uri;

public abstract class ListViewController<Tquery extends Queryable>
{
  public abstract ListViewController<Tquery> execute();
  
  public abstract Tquery getItem(int paramInt);
  
  public abstract int getItemCount();
  
  public abstract Uri getItemId(int paramInt);
  
  public abstract int getPosition(Tquery paramTquery);
  
  public abstract int getPosition(Tquery paramTquery, int paramInt);
  
  public abstract ListViewController<Tquery> setPreProcessCallback(PreProcessCallback<Tquery> paramPreProcessCallback);
  
  public abstract ListViewController<Tquery> setQuery(Query<Tquery> paramQuery);
  
  public abstract void updateBoundPosition(int paramInt);
  
  public static abstract interface Callback
  {
    public abstract void onQueryDataSetChanged(ListViewController paramListViewController);
  }
  
  public static abstract interface PreProcessCallback<Tquery extends Queryable>
  {
    public abstract void onCache(ListViewController paramListViewController, Tquery paramTquery);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/query/ListViewController.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */