package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import io.intercom.a.a.a.c.b.p;
import io.intercom.a.a.a.c.d.c.c;
import io.intercom.a.a.a.g.a.h;
import io.intercom.a.a.a.g.f;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.blocks.blockInterfaces.ImageBlock;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.transforms.RoundedCornersTransform;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.utilities.ColorUtils;
import io.intercom.android.sdk.utilities.ImageUtils;
import io.intercom.android.sdk.views.ResizableImageView;

class NetworkImage
  extends Image
  implements ImageBlock
{
  private static final int PROGRESSBAR_DIAMETER_DP = 40;
  private final Provider<AppConfig> appConfigProvider;
  private final ImageClickListener listener;
  private final j requestManager;
  private final Twig twig = LumberMill.getLogger();
  private final UploadingImageCache uploadingImageCache;
  
  NetworkImage(StyleType paramStyleType, Provider<AppConfig> paramProvider, UploadingImageCache paramUploadingImageCache, ImageClickListener paramImageClickListener, j paramj)
  {
    super(paramStyleType);
    this.appConfigProvider = paramProvider;
    this.uploadingImageCache = paramUploadingImageCache;
    this.listener = paramImageClickListener;
    this.requestManager = paramj;
  }
  
  private void loadImageFromUrl(final String paramString1, final String paramString2, final int paramInt1, final int paramInt2, final Context paramContext, int paramInt3, int paramInt4, final ResizableImageView paramResizableImageView, final ProgressBar paramProgressBar)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      hideLoadingState(paramProgressBar, paramResizableImageView);
      paramResizableImageView.setImageResource(R.drawable.intercom_error);
      return;
    }
    io.intercom.a.a.a.i locali = this.requestManager.eT(paramString1);
    setImageViewBounds(paramInt3, paramInt4, paramResizableImageView, locali);
    String str = this.uploadingImageCache.getLocalImagePathForRemoteUrl(paramString1);
    Resources localResources = paramContext.getResources();
    Object localObject2 = new g().a(new RoundedCornersTransform(localResources.getDimensionPixelSize(R.dimen.intercom_image_rounded_corners)), true).fo(R.drawable.intercom_error).b(ImageUtils.getDiskCacheStrategy(paramString1));
    Object localObject1 = localObject2;
    if (!TextUtils.isEmpty(str))
    {
      localObject1 = new BitmapFactory.Options();
      ((BitmapFactory.Options)localObject1).inSampleSize = getSampleSize(paramInt3, paramInt4, localResources.getDisplayMetrics());
      localObject1 = new BitmapDrawable(localResources, BitmapFactory.decodeFile(str, (BitmapFactory.Options)localObject1));
      ((Drawable)localObject1).setColorFilter(ColorUtils.newGreyscaleFilter());
      localObject1 = ((g)localObject2).o((Drawable)localObject1).b(io.intercom.a.a.a.c.d.e.i.cOT, Boolean.valueOf(true));
    }
    localObject2 = localObject1;
    if (io.intercom.a.a.a.i.i.aR(paramInt1, paramInt2)) {
      localObject2 = ((g)localObject1).aO(paramInt1, paramInt2);
    }
    localObject1 = locali.a((g)localObject2).a(c.Ji());
    ((io.intercom.a.a.a.i)localObject1).cGl = new f()
    {
      public boolean onLoadFailed(p paramAnonymousp, Object paramAnonymousObject, h<Drawable> paramAnonymoush, boolean paramAnonymousBoolean)
      {
        NetworkImage.this.hideLoadingState(paramProgressBar, paramResizableImageView);
        NetworkImage.this.twig.internal("images", "FAILURE");
        return false;
      }
      
      public boolean onResourceReady(Drawable paramAnonymousDrawable, Object paramAnonymousObject, h<Drawable> paramAnonymoush, io.intercom.a.a.a.c.a paramAnonymousa, boolean paramAnonymousBoolean)
      {
        NetworkImage.this.twig.internal("images", "SUCCESS");
        NetworkImage.this.hideLoadingState(paramProgressBar, paramResizableImageView);
        if (NetworkImage.this.getStyle() != StyleType.CHAT_FULL) {
          paramResizableImageView.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              ((InputMethodManager)NetworkImage.1.this.val$context.getSystemService("input_method")).hideSoftInputFromWindow(paramAnonymous2View.getWindowToken(), 0);
              NetworkImage.this.listener.onImageClicked(NetworkImage.1.this.val$url, NetworkImage.1.this.val$linkUrl, NetworkImage.1.this.val$imageView, NetworkImage.1.this.val$width, NetworkImage.1.this.val$height);
            }
          });
        }
        return false;
      }
    };
    ((io.intercom.a.a.a.i)localObject1).c(paramResizableImageView);
  }
  
  public View addImage(String paramString1, String paramString2, int paramInt1, int paramInt2, BlockAlignment paramBlockAlignment, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramViewGroup.getContext();
    int i = ScreenUtils.dpToPx(paramInt1, paramViewGroup);
    int j = ScreenUtils.dpToPx(paramInt2, paramViewGroup);
    FrameLayout localFrameLayout = new FrameLayout(paramViewGroup);
    BlockUtils.createLayoutParams(localFrameLayout, -2, -2);
    BlockUtils.setDefaultMarginBottom(localFrameLayout);
    ResizableImageView localResizableImageView = new ResizableImageView(paramViewGroup);
    if (Build.VERSION.SDK_INT >= 21) {
      localResizableImageView.setTransitionName("lightbox_image");
    }
    localResizableImageView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    localResizableImageView.setAdjustViewBounds(true);
    localResizableImageView.setScaleType(ImageView.ScaleType.FIT_START);
    setBackground(localResizableImageView);
    int k = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    ProgressBar localProgressBar = new ProgressBar(paramViewGroup);
    int m = ScreenUtils.dpToPx(40.0F, paramViewGroup);
    localProgressBar.setLayoutParams(new FrameLayout.LayoutParams(m, m, 17));
    Drawable localDrawable = android.support.v4.content.a.a(paramViewGroup, R.drawable.intercom_progress_wheel);
    localDrawable.setColorFilter(k, PorterDuff.Mode.SRC_IN);
    localProgressBar.setIndeterminateDrawable(localDrawable);
    localProgressBar.setIndeterminate(true);
    localFrameLayout.addView(localResizableImageView);
    localFrameLayout.addView(localProgressBar);
    loadImageFromUrl(paramString1, paramString2, paramInt1, paramInt2, paramViewGroup, i, j, localResizableImageView, localProgressBar);
    BlockUtils.setLayoutMarginsAndGravity(localFrameLayout, paramBlockAlignment.getGravity(), paramBoolean2);
    return localFrameLayout;
  }
  
  int getSampleSize(int paramInt1, int paramInt2, DisplayMetrics paramDisplayMetrics)
  {
    int i = 1;
    if ((paramInt1 > paramDisplayMetrics.widthPixels) || (paramInt2 > paramDisplayMetrics.heightPixels)) {
      i = (int)Math.pow(2.0D, (int)Math.ceil(Math.log(paramDisplayMetrics.widthPixels / Math.max(paramInt2, paramInt1)) / Math.log(0.5D)));
    }
    return i;
  }
  
  void hideLoadingState(ProgressBar paramProgressBar, ImageView paramImageView)
  {
    if (paramProgressBar != null)
    {
      paramProgressBar.setVisibility(8);
      paramImageView.setBackgroundResource(17170445);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/NetworkImage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */