package com.intercom.input.gallery;

import java.util.List;

public abstract interface d
{
  public abstract int getCount();
  
  public abstract void getImages(int paramInt, String paramString);
  
  public abstract int getPermissionStatus();
  
  public abstract boolean isLoading();
  
  public abstract void requestPermission();
  
  public abstract void setListener(a parama);
  
  public static abstract interface a
  {
    public abstract void onError();
    
    public abstract void u(List<b> paramList);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */