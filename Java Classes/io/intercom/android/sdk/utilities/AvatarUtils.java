package io.intercom.android.sdk.utilities;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import io.intercom.a.a.a.c.d.c.c;
import io.intercom.a.a.a.g.a.f;
import io.intercom.a.a.a.g.b.d;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.i;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Avatar;
import io.intercom.android.sdk.transforms.RoundTransform;
import io.intercom.android.sdk.views.AvatarDefaultDrawable;
import io.intercom.android.sdk.views.AvatarInitialsDrawable;
import java.io.File;

public class AvatarUtils
{
  public static void createAvatar(Avatar paramAvatar, ImageView paramImageView, int paramInt, AppConfig paramAppConfig, j paramj)
  {
    Object localObject = paramImageView.getContext();
    if (paramAvatar.getInitials().isEmpty()) {}
    for (paramAppConfig = getDefaultDrawable((Context)localObject, paramAppConfig);; paramAppConfig = getInitialsDrawable(paramAvatar.getInitials(), paramAppConfig))
    {
      localObject = new g().o(paramAppConfig).p(paramAppConfig).b(ImageUtils.getDiskCacheStrategy(paramAvatar.getImageUrl())).a(new RoundTransform(), true);
      paramAppConfig = (AppConfig)localObject;
      if (paramInt > 0) {
        paramAppConfig = ((g)localObject).aO(paramInt, paramInt);
      }
      paramj.eT(paramAvatar.getImageUrl()).a(c.Ji()).a(paramAppConfig).c(paramImageView);
      return;
    }
  }
  
  public static AvatarDefaultDrawable getDefaultDrawable(Context paramContext, AppConfig paramAppConfig)
  {
    return new AvatarDefaultDrawable(paramContext, paramAppConfig.getBaseColorDark());
  }
  
  public static AvatarInitialsDrawable getInitialsDrawable(String paramString, AppConfig paramAppConfig)
  {
    return new AvatarInitialsDrawable(paramString.toUpperCase(), paramAppConfig.getBaseColorDark());
  }
  
  public static void loadAvatarIntoView(Avatar paramAvatar, ImageView paramImageView, AppConfig paramAppConfig, j paramj)
  {
    createAvatar(paramAvatar, paramImageView, 0, paramAppConfig, paramj);
  }
  
  public static void preloadAvatar(Avatar paramAvatar, Runnable paramRunnable, j paramj)
  {
    if (paramAvatar.getImageUrl().isEmpty())
    {
      paramRunnable.run();
      return;
    }
    paramj.x(File.class).a(j.cGg).aq(paramAvatar.getImageUrl()).a(new f()
    {
      public final void onLoadFailed(Drawable paramAnonymousDrawable)
      {
        this.val$runnable.run();
      }
      
      public final void onResourceReady(File paramAnonymousFile, d<? super File> paramAnonymousd)
      {
        this.val$runnable.run();
      }
    }, null);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/AvatarUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */