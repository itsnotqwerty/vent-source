package com.intercom.input.gallery.adapter;

import android.support.v7.widget.RecyclerView.a;
import android.view.LayoutInflater;
import com.intercom.input.gallery.b;
import java.util.List;

public final class c
  extends RecyclerView.a<d>
{
  private final LayoutInflater blE;
  private final e bmp;
  private final boolean expanded;
  public final List<b> galleryImages;
  private final com.intercom.composer.e imageLoader;
  
  public c(LayoutInflater paramLayoutInflater, List<b> paramList, boolean paramBoolean, e parame, com.intercom.composer.e parame1)
  {
    this.blE = paramLayoutInflater;
    this.galleryImages = paramList;
    this.expanded = paramBoolean;
    this.bmp = parame;
    this.imageLoader = parame1;
  }
  
  public final int getItemCount()
  {
    return this.galleryImages.size();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/adapter/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */