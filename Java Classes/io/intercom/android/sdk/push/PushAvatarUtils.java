package io.intercom.android.sdk.push;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.utilities.AvatarUtils;
import io.intercom.android.sdk.utilities.NameUtils;

class PushAvatarUtils
{
  private static final int LARGE_ICON_SIZE_DP = 48;
  
  private static Bitmap drawableToBitmap(Context paramContext, Drawable paramDrawable)
  {
    Object localObject;
    if ((paramDrawable instanceof BitmapDrawable))
    {
      localObject = (BitmapDrawable)paramDrawable;
      if (((BitmapDrawable)localObject).getBitmap() != null) {
        return ((BitmapDrawable)localObject).getBitmap();
      }
    }
    int i;
    if ((paramDrawable.getIntrinsicWidth() <= 0) || (paramDrawable.getIntrinsicHeight() <= 0)) {
      i = ScreenUtils.dpToPx(48.0F, paramContext);
    }
    for (paramContext = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);; paramContext = Bitmap.createBitmap(paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888))
    {
      localObject = new Canvas(paramContext);
      paramDrawable.setBounds(0, 0, ((Canvas)localObject).getWidth(), ((Canvas)localObject).getHeight());
      paramDrawable.draw((Canvas)localObject);
      return paramContext;
    }
  }
  
  public static Bitmap getNotificationDefaultBitmap(Context paramContext, AppConfig paramAppConfig)
  {
    return drawableToBitmap(paramContext, AvatarUtils.getDefaultDrawable(paramContext, paramAppConfig));
  }
  
  public static Bitmap getNotificationInitialsBitmap(Context paramContext, String paramString, AppConfig paramAppConfig)
  {
    return drawableToBitmap(paramContext, AvatarUtils.getInitialsDrawable(NameUtils.getInitial(paramString), paramAppConfig));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/PushAvatarUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */