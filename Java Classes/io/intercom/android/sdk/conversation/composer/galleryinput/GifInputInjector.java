package io.intercom.android.sdk.conversation.composer.galleryinput;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.Toolbar;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import com.intercom.composer.e;
import com.intercom.input.gallery.d;
import com.intercom.input.gallery.f;
import com.intercom.input.gallery.f.a;
import com.intercom.input.gallery.h;
import io.intercom.a.a.a.c.b.i;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.identity.AppConfig;

class GifInputInjector
  implements f.a
{
  private final GifInputDataSource dataSource = new GifInputDataSource(Injector.get().getApi(), Injector.get().getMetricTracker());
  private final j requestManager;
  
  public GifInputInjector(j paramj)
  {
    this.requestManager = paramj;
  }
  
  public d getDataSource(f paramf)
  {
    return this.dataSource;
  }
  
  public String getEmptyViewSubtitle(Resources paramResources)
  {
    return paramResources.getString(R.string.intercom_no_gifs_matching_query);
  }
  
  public String getEmptyViewTitle(Resources paramResources)
  {
    return paramResources.getString(R.string.intercom_no_gifs_found);
  }
  
  public String getErrorViewSubtitle(Resources paramResources)
  {
    return paramResources.getString(R.string.intercom_try_again_minute);
  }
  
  public String getErrorViewTitle(Resources paramResources)
  {
    return paramResources.getString(R.string.intercom_gifs_load_error);
  }
  
  public View getExpanderButton(ViewGroup paramViewGroup)
  {
    return null;
  }
  
  public e getImageLoader(f paramf)
  {
    return GalleryImageLoader.create(i.cKd, DownscaleOnlyCenterCrop.INSTANCE, this.requestManager);
  }
  
  public Class<? extends h> getLightBoxFragmentClass(f paramf)
  {
    return GifLightBoxFragment.class;
  }
  
  public View getSearchView(ViewGroup paramViewGroup)
  {
    return LayoutInflater.from(paramViewGroup.getContext()).inflate(R.layout.intercom_gif_input_search, paramViewGroup, false);
  }
  
  public int getThemeColor(Context paramContext)
  {
    return ((AppConfig)Injector.get().getAppConfigProvider().get()).getBaseColor();
  }
  
  public Toolbar getToolbar(ViewGroup paramViewGroup)
  {
    paramViewGroup = (Toolbar)LayoutInflater.from(paramViewGroup.getContext()).inflate(R.layout.intercom_gif_input_toolbar, paramViewGroup, false);
    final ImageButton localImageButton = (ImageButton)paramViewGroup.findViewById(R.id.clear_search);
    final EditText localEditText = (EditText)paramViewGroup.findViewById(R.id.search_bar);
    localEditText.requestFocus();
    localEditText.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        ImageButton localImageButton = localImageButton;
        if (TextUtils.isEmpty(paramAnonymousEditable)) {}
        for (int i = 8;; i = 0)
        {
          localImageButton.setVisibility(i);
          GifInputInjector.this.dataSource.getImages(0, paramAnonymousEditable.toString());
          return;
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    localImageButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        localEditText.setText(null);
      }
    });
    return paramViewGroup;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */