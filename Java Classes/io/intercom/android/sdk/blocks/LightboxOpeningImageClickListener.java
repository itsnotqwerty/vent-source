package io.intercom.android.sdk.blocks;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.b;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.lightbox.LightBoxActivity;
import io.intercom.android.sdk.utilities.LinkOpener;

public class LightboxOpeningImageClickListener
  implements ImageClickListener
{
  private final Api api;
  
  public LightboxOpeningImageClickListener(Api paramApi)
  {
    this.api = paramApi;
  }
  
  public void onImageClicked(String paramString1, String paramString2, ImageView paramImageView, int paramInt1, int paramInt2)
  {
    boolean bool = false;
    Context localContext = paramImageView.getContext();
    if (!TextUtils.isEmpty(paramString2))
    {
      LinkOpener.handleUrl(paramString2, localContext, this.api);
      return;
    }
    if ((localContext instanceof Activity))
    {
      paramString2 = (Activity)localContext;
      if ((paramString2.getWindow().getAttributes().flags & 0x400) != 0) {
        bool = true;
      }
      paramString1 = LightBoxActivity.imageIntent(paramString2, paramString1, bool, paramInt1, paramInt2);
      if (Build.VERSION.SDK_INT >= 16)
      {
        paramString2.startActivity(paramString1, b.a(paramString2, paramImageView, "lightbox_image").toBundle());
        return;
      }
      paramString2.startActivity(paramString1);
      return;
    }
    localContext.startActivity(LightBoxActivity.imageIntent(localContext, paramString1, false, paramInt1, paramInt2));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/LightboxOpeningImageClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */