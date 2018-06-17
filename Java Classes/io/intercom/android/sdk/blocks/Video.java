package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import io.intercom.a.a.a.c.b.p;
import io.intercom.a.a.a.c.d.c.c;
import io.intercom.a.a.a.g.a.h;
import io.intercom.a.a.a.g.f;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.i;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.blockInterfaces.VideoBlock;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.BackgroundUtils;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.utilities.ColorUtils;
import io.intercom.android.sdk.utilities.IntentUtils;
import io.intercom.okhttp3.Call;
import io.intercom.okhttp3.Callback;
import io.intercom.okhttp3.Response;
import io.intercom.okhttp3.ResponseBody;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class Video
  implements VideoBlock
{
  private static final int PLAY_BUTTON_DIAMETER_DP = 48;
  private final Api api;
  private final Provider<AppConfig> appConfigProvider;
  private final j requestManager;
  private final StyleType style;
  private final Twig twig = LumberMill.getLogger();
  
  Video(StyleType paramStyleType, Api paramApi, Provider<AppConfig> paramProvider, j paramj)
  {
    this.style = paramStyleType;
    this.api = paramApi;
    this.appConfigProvider = paramProvider;
    this.requestManager = paramj;
  }
  
  private RelativeLayout getBaseLayout(Context paramContext)
  {
    paramContext = new RelativeLayout(paramContext);
    BlockUtils.createLayoutParams(paramContext, -2, -2);
    BlockUtils.setDefaultMarginBottom(paramContext);
    return paramContext;
  }
  
  private ImageView getPlayButtonView(Context paramContext)
  {
    int i = ScreenUtils.dpToPx(48.0F, paramContext);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(i, i);
    localLayoutParams.addRule(13);
    paramContext = new ImageView(paramContext);
    paramContext.setLayoutParams(localLayoutParams);
    paramContext.setScaleType(ImageView.ScaleType.CENTER);
    paramContext.setImageResource(R.drawable.intercom_play_arrow);
    paramContext.setBackgroundResource(R.drawable.intercom_solid_circle);
    paramContext.setVisibility(8);
    return paramContext;
  }
  
  private ImageView getVideoImageView(Context paramContext)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    paramContext = new ImageView(paramContext);
    paramContext.setLayoutParams(localLayoutParams);
    paramContext.setAdjustViewBounds(true);
    paramContext.setScaleType(ImageView.ScaleType.FIT_START);
    return paramContext;
  }
  
  public View addVideo(String paramString1, VideoProvider paramVideoProvider, String paramString2, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    Object localObject = paramViewGroup.getContext();
    paramString1 = getBaseLayout((Context)localObject);
    paramViewGroup = getVideoImageView((Context)localObject);
    localObject = getPlayButtonView((Context)localObject);
    paramString1.addView(paramViewGroup);
    paramString1.addView((View)localObject);
    int j = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    int i = j;
    if (this.style == StyleType.POST) {
      i = ColorUtils.lightenColor(j);
    }
    ((ImageView)localObject).setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
    fetchThumbnail(paramVideoProvider, paramString2, paramViewGroup, (ImageView)localObject);
    BlockUtils.setLayoutMarginsAndGravity(paramString1, 3, paramBoolean2);
    return paramString1;
  }
  
  void createThumbnail(final ImageView paramImageView1, final String paramString1, String paramString2, final ImageView paramImageView2)
  {
    final Context localContext = paramImageView1.getContext();
    i locali = this.requestManager.eT(paramString2);
    paramString2 = new g();
    int i = R.drawable.intercom_video_thumbnail_fallback;
    while (paramString2.cQc) {
      paramString2 = paramString2.Jy();
    }
    paramString2.cPV = i;
    paramString2.cPR |= 0x80;
    paramString2 = locali.a(paramString2.JB().fo(R.drawable.intercom_video_thumbnail_fallback)).a(c.Ji());
    paramString2.cGl = new f()
    {
      public boolean onLoadFailed(p paramAnonymousp, Object paramAnonymousObject, h<Drawable> paramAnonymoush, boolean paramAnonymousBoolean)
      {
        paramImageView2.setVisibility(8);
        return false;
      }
      
      public boolean onResourceReady(Drawable paramAnonymousDrawable, Object paramAnonymousObject, h<Drawable> paramAnonymoush, io.intercom.a.a.a.c.a paramAnonymousa, boolean paramAnonymousBoolean)
      {
        int i = android.support.v4.content.a.c(localContext, R.color.intercom_semi_transparent);
        paramImageView1.setColorFilter(i, PorterDuff.Mode.DARKEN);
        paramImageView2.setVisibility(0);
        return false;
      }
    };
    paramString2.c(paramImageView1);
    if (this.style != StyleType.CHAT_FULL) {
      paramImageView1.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
          paramAnonymousView.setFlags(268435456);
          IntentUtils.safelyOpenIntent(localContext, paramAnonymousView);
        }
      });
    }
  }
  
  void fetchThumbnail(VideoProvider paramVideoProvider, final String paramString, final ImageView paramImageView1, final ImageView paramImageView2)
  {
    switch (paramVideoProvider)
    {
    default: 
      return;
    case ???: 
      this.api.getVideo("https://fast.wistia.com/oembed?url=https://home.wistia.com/medias/" + paramString, new Callback()
      {
        public void onFailure(Call paramAnonymousCall, IOException paramAnonymousIOException)
        {
          Video.this.setFailedImage(paramImageView1);
        }
        
        public void onResponse(final Call paramAnonymousCall, Response paramAnonymousResponse)
          throws IOException
        {
          if (paramAnonymousResponse.isSuccessful())
          {
            final String str = "https://fast.wistia.net/embed/iframe/" + paramString;
            paramAnonymousCall = new JSONObject();
            try
            {
              JSONObject localJSONObject = new JSONObject(paramAnonymousResponse.body().string());
              paramAnonymousResponse.body().close();
              paramAnonymousCall = localJSONObject;
            }
            catch (JSONException localJSONException)
            {
              for (;;)
              {
                int i;
                localJSONException.printStackTrace();
                paramAnonymousResponse.body().close();
              }
            }
            catch (IOException localIOException)
            {
              for (;;)
              {
                Video.this.twig.internal("ErrorObject", "Couldn't read response body: " + localIOException.getMessage());
                paramAnonymousResponse.body().close();
              }
            }
            finally
            {
              paramAnonymousResponse.body().close();
            }
            paramAnonymousResponse = paramAnonymousCall.optString("thumbnail_url");
            i = paramAnonymousResponse.indexOf("?image_crop_resized");
            paramAnonymousCall = paramAnonymousResponse;
            if (i > 0) {
              paramAnonymousCall = paramAnonymousResponse.substring(0, i);
            }
            paramImageView1.post(new Runnable()
            {
              public void run()
              {
                Video.this.createThumbnail(Video.1.this.val$videoImageView, str, paramAnonymousCall, Video.1.this.val$playButton);
              }
            });
            return;
          }
          Video.this.setFailedImage(paramImageView1);
        }
      });
      return;
    case ???: 
      createThumbnail(paramImageView1, "https://www.youtube.com/watch?v=" + paramString, "https://img.youtube.com/vi/" + paramString + "/default.jpg", paramImageView2);
      return;
    }
    paramVideoProvider = "https://vimeo.com/api/v2/video/" + paramString + ".json";
    this.api.getVideo(paramVideoProvider, new Callback()
    {
      public void onFailure(Call paramAnonymousCall, IOException paramAnonymousIOException)
      {
        Video.this.setFailedImage(paramImageView1);
      }
      
      public void onResponse(final Call paramAnonymousCall, Response paramAnonymousResponse)
        throws IOException
      {
        if (paramAnonymousResponse.isSuccessful()) {
          paramAnonymousCall = new JSONObject();
        }
        try
        {
          JSONObject localJSONObject = new JSONArray(paramAnonymousResponse.body().string()).optJSONObject(0);
          paramAnonymousCall = localJSONObject;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            localJSONException.printStackTrace();
            paramAnonymousResponse.body().close();
          }
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            Video.this.twig.internal("Couldn't read response body: " + localIOException.getMessage());
            paramAnonymousResponse.body().close();
          }
        }
        finally
        {
          paramAnonymousResponse.body().close();
        }
        paramAnonymousCall = paramAnonymousCall.optString("thumbnail_large");
        paramImageView1.post(new Runnable()
        {
          public void run()
          {
            Video.this.createThumbnail(Video.2.this.val$videoImageView, "https://player.vimeo.com/video/" + Video.2.this.val$id, paramAnonymousCall, Video.2.this.val$playButton);
          }
        });
      }
    });
  }
  
  void setFailedImage(final ImageView paramImageView)
  {
    paramImageView.post(new Runnable()
    {
      public void run()
      {
        BackgroundUtils.setBackground(paramImageView, android.support.v4.content.a.a(paramImageView.getContext(), R.drawable.intercom_video_thumbnail_fallback));
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/Video.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */