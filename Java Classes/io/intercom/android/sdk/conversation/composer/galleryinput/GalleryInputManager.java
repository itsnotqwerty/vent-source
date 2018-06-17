package io.intercom.android.sdk.conversation.composer.galleryinput;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.intercom.composer.b.a;
import com.intercom.composer.d;
import com.intercom.input.gallery.c;
import com.intercom.input.gallery.e;
import com.intercom.input.gallery.f;
import com.intercom.input.gallery.i;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.conversation.composer.ComposerPresenter.Listener;
import io.intercom.android.sdk.conversation.composer.InputDrawableManager;
import io.intercom.android.sdk.metrics.MetricTracker;

public class GalleryInputManager
{
  private static final String INPUT_EXPANDED_PREFIX = "expanded_";
  private String conversationId;
  private final Drawable galleryIcon;
  private final Drawable gifIcon;
  private final ComposerPresenter.Listener listener;
  private final MetricTracker metricTracker;
  
  public GalleryInputManager(Context paramContext, InputDrawableManager paramInputDrawableManager, ComposerPresenter.Listener paramListener, MetricTracker paramMetricTracker, String paramString)
  {
    this.listener = paramListener;
    this.metricTracker = paramMetricTracker;
    this.conversationId = paramString;
    this.galleryIcon = paramInputDrawableManager.createDrawable(paramContext, R.drawable.intercom_input_gallery);
    this.gifIcon = paramInputDrawableManager.createDrawable(paramContext, R.drawable.intercom_input_gif);
  }
  
  public com.intercom.composer.b.b createGalleryInput()
  {
    new c("gallery_input", new a()new i
    {
      public Drawable getIconDrawable(String paramAnonymousString, Context paramAnonymousContext)
      {
        return GalleryInputManager.this.galleryIcon;
      }
    }, new i()new e
    {
      public void onGalleryOutputReceived(com.intercom.input.gallery.b paramAnonymousb)
      {
        GalleryInputManager.this.listener.onUploadImageSelected(paramAnonymousb);
      }
    }, new e()new d
    {
      public void onInputExpanded()
      {
        GalleryInputManager.this.metricTracker.expandedInput(GalleryInputManager.this.conversationId, "expanded_gallery_input");
      }
    }, new d()
    {
      public f create()
      {
        return new LocalGalleryInputFragment();
      }
    });
  }
  
  public com.intercom.composer.b.b createGifInput()
  {
    new c("gif_input", new a()new i
    {
      public Drawable getIconDrawable(String paramAnonymousString, Context paramAnonymousContext)
      {
        return GalleryInputManager.this.gifIcon;
      }
    }, new i()new e
    {
      public void onGalleryOutputReceived(com.intercom.input.gallery.b paramAnonymousb)
      {
        GalleryInputManager.this.listener.onRemoteImageSelected(paramAnonymousb);
      }
    }, new e()new d
    {
      public void onInputExpanded()
      {
        GalleryInputManager.this.metricTracker.expandedInput(GalleryInputManager.this.conversationId, "expanded_gif_input");
      }
    }, new d()
    {
      public f create()
      {
        return new GifInputFragment();
      }
    });
  }
  
  public void setConversationId(String paramString)
  {
    this.conversationId = paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */