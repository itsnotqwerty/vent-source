package com.intercom.input.gallery;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.i;
import android.support.v4.app.j;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.intercom.composer.e;

public abstract class h
  extends i
  implements View.OnClickListener
{
  b galleryImage;
  private e imageLoader;
  
  public static Bundle createArgs(b paramb)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("gallery_image", paramb);
    return localBundle;
  }
  
  public abstract a getInjector(h paramh);
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == m.d.lightbox_send_button)
    {
      paramView = new Intent();
      paramView.putExtra("gallery_image", this.galleryImage);
      getActivity().setResult(-1, paramView);
    }
    getActivity().onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.galleryImage = ((b)getArguments().getParcelable("gallery_image"));
    this.imageLoader = getInjector(this).getImageLoader(this);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(m.f.intercom_composer_gallery_lightbox_fragment, paramViewGroup, false);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramBundle = (ImageView)paramView.findViewById(m.d.lightbox_image);
    this.imageLoader.loadImageIntoView(this.galleryImage, paramBundle);
    paramView.findViewById(m.d.lightbox_send_button).setOnClickListener(this);
    paramView.findViewById(m.d.lightbox_close_button).setOnClickListener(this);
  }
  
  public static abstract interface a
  {
    public abstract e getImageLoader(h paramh);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */