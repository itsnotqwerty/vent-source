package com.intercom.input.gallery;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.n;
import android.support.v4.app.t;
import android.support.v7.app.d;
import android.view.Window;

public class GalleryLightBoxActivity
  extends d
{
  n blH;
  private Class<? extends h> bmi;
  b galleryImage;
  
  public static Intent a(Context paramContext, b paramb, Class<? extends h> paramClass)
  {
    return new Intent(paramContext, GalleryLightBoxActivity.class).putExtra("gallery_image", paramb).putExtra("fragment_class", paramClass);
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    overridePendingTransition(m.a.intercom_composer_stay, m.a.intercom_composer_slide_down);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    Window localWindow = getWindow();
    super.onCreate(paramBundle);
    setContentView(m.f.intercom_composer_activity_gallery_lightbox);
    com.intercom.composer.h.a(localWindow, m.b.intercom_composer_status_bar);
    paramBundle = getIntent();
    this.galleryImage = ((b)paramBundle.getParcelableExtra("gallery_image"));
    this.bmi = ((Class)paramBundle.getSerializableExtra("fragment_class"));
    this.blH = getSupportFragmentManager();
    if (this.blH.Y(m.d.fragment_container) == null)
    {
      paramBundle = (h)a.u(this.bmi);
      paramBundle.setArguments(h.createArgs(this.galleryImage));
      this.blH.cG().a(m.d.fragment_container, paramBundle).commit();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/GalleryLightBoxActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */