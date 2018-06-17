package io.intercom.android.sdk.conversation.composer.galleryinput;

import android.text.TextUtils;
import com.intercom.input.gallery.b;
import com.intercom.input.gallery.b.a;
import com.intercom.input.gallery.d;
import com.intercom.input.gallery.d.a;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.models.Block;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.models.GifResponse;
import io.intercom.retrofit2.Call;
import io.intercom.retrofit2.Callback;
import io.intercom.retrofit2.Response;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class GifInputDataSource
  implements d
{
  private static final long DEBOUNCE_DELAY_MS = 300L;
  private final Api api;
  private int currentCount = 0;
  private final Debouncer debouncer = new Debouncer();
  private String lastQuery;
  private d.a listener;
  private boolean loading;
  private final MetricTracker metricTracker;
  
  GifInputDataSource(Api paramApi, MetricTracker paramMetricTracker)
  {
    this.api = paramApi;
    this.metricTracker = paramMetricTracker;
  }
  
  private List<b> getImagesFromResponse(List<Block> paramList)
  {
    this.currentCount = paramList.size();
    ArrayList localArrayList = new ArrayList(this.currentCount);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Block localBlock = (Block)paramList.next();
      b.a locala = new b.a();
      locala.path = localBlock.getUrl();
      locala.bme = localBlock.getPreviewUrl();
      locala.attribution = localBlock.getAttribution();
      locala.imageHeight = localBlock.getHeight();
      locala.imageWidth = localBlock.getWidth();
      localArrayList.add(locala.wa());
    }
    return localArrayList;
  }
  
  private void loadDefaultGifs()
  {
    this.api.fetchDefaultGifs(new Callback()
    {
      public void onFailure(Call<GifResponse> paramAnonymousCall, Throwable paramAnonymousThrowable)
      {
        GifInputDataSource.access$102(GifInputDataSource.this, false);
        GifInputDataSource.this.listener.onError();
      }
      
      public void onResponse(Call<GifResponse> paramAnonymousCall, Response<GifResponse> paramAnonymousResponse)
      {
        paramAnonymousCall = GifInputDataSource.this.getImagesFromResponse(((GifResponse)paramAnonymousResponse.body()).results());
        GifInputDataSource.access$102(GifInputDataSource.this, false);
        GifInputDataSource.this.listener.u(paramAnonymousCall);
      }
    });
  }
  
  private void searchGifs(final String paramString)
  {
    this.metricTracker.searchedGifInput(paramString);
    this.debouncer.call(new Runnable()
    {
      public void run()
      {
        GifInputDataSource.this.api.fetchGifs(paramString, new Callback()
        {
          public void onFailure(Call<GifResponse> paramAnonymous2Call, Throwable paramAnonymous2Throwable)
          {
            GifInputDataSource.access$102(GifInputDataSource.this, false);
            GifInputDataSource.this.listener.onError();
          }
          
          public void onResponse(Call<GifResponse> paramAnonymous2Call, Response<GifResponse> paramAnonymous2Response)
          {
            GifInputDataSource.access$102(GifInputDataSource.this, false);
            if (!GifInputDataSource.2.this.val$query.equals(GifInputDataSource.this.lastQuery)) {
              return;
            }
            paramAnonymous2Call = GifInputDataSource.this.getImagesFromResponse(((GifResponse)paramAnonymous2Response.body()).results());
            GifInputDataSource.this.listener.u(paramAnonymous2Call);
          }
        });
      }
    }, 300L);
  }
  
  public int getCount()
  {
    return this.currentCount;
  }
  
  public void getImages(int paramInt, String paramString)
  {
    this.loading = true;
    this.lastQuery = paramString;
    if (TextUtils.isEmpty(paramString))
    {
      loadDefaultGifs();
      return;
    }
    searchGifs(paramString);
  }
  
  public int getPermissionStatus()
  {
    return 0;
  }
  
  public boolean isLoading()
  {
    return this.loading;
  }
  
  public void requestPermission() {}
  
  public void setListener(d.a parama)
  {
    this.listener = parama;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */