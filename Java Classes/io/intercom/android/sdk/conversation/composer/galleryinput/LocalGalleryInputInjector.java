package io.intercom.android.sdk.conversation.composer.galleryinput;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import com.intercom.composer.e;
import com.intercom.input.gallery.d;
import com.intercom.input.gallery.f;
import com.intercom.input.gallery.f.a;
import com.intercom.input.gallery.h;
import com.intercom.input.gallery.k;
import com.intercom.input.gallery.l;
import io.intercom.a.a.a.c.b.i;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.identity.AppConfig;

class LocalGalleryInputInjector
  implements f.a
{
  private final io.intercom.a.a.a.j requestManager;
  
  public LocalGalleryInputInjector(io.intercom.a.a.a.j paramj)
  {
    this.requestManager = paramj;
  }
  
  public d getDataSource(f paramf)
  {
    android.support.v4.app.j localj = paramf.getActivity();
    return new k(localj, new l(localj, localj.getSharedPreferences("intercom_composer_permission_status_prefs", 0)), paramf);
  }
  
  public String getEmptyViewSubtitle(Resources paramResources)
  {
    return paramResources.getString(R.string.intercom_no_photos_on_device);
  }
  
  public String getEmptyViewTitle(Resources paramResources)
  {
    return paramResources.getString(R.string.intercom_no_photos);
  }
  
  public String getErrorViewSubtitle(Resources paramResources)
  {
    return null;
  }
  
  public String getErrorViewTitle(Resources paramResources)
  {
    return null;
  }
  
  public View getExpanderButton(ViewGroup paramViewGroup)
  {
    paramViewGroup = (ImageButton)LayoutInflater.from(paramViewGroup.getContext()).inflate(R.layout.intercom_expander_button, paramViewGroup, false);
    paramViewGroup.setColorFilter(((AppConfig)Injector.get().getAppConfigProvider().get()).getBaseColor());
    return paramViewGroup;
  }
  
  public e getImageLoader(f paramf)
  {
    return GalleryImageLoader.create(i.cKc, DownscaleOnlyCenterCrop.INSTANCE, this.requestManager);
  }
  
  public Class<? extends h> getLightBoxFragmentClass(f paramf)
  {
    return LocalGalleryLightBoxFragment.class;
  }
  
  public View getSearchView(ViewGroup paramViewGroup)
  {
    return null;
  }
  
  public int getThemeColor(Context paramContext)
  {
    return ((AppConfig)Injector.get().getAppConfigProvider().get()).getBaseColor();
  }
  
  public Toolbar getToolbar(ViewGroup paramViewGroup)
  {
    return (Toolbar)LayoutInflater.from(paramViewGroup.getContext()).inflate(R.layout.intercom_gallery_input_toolbar, paramViewGroup, false);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryInputInjector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */