package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView.ScaleType;
import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.b.p;
import io.intercom.a.a.a.c.d.c.c;
import io.intercom.a.a.a.g.a.h;
import io.intercom.a.a.a.g.f;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.i;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.blocks.blockInterfaces.LocalImageBlock;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.transforms.RoundedCornersTransform;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.utilities.ImageUtils;
import io.intercom.android.sdk.views.ProgressFrameLayout;
import io.intercom.android.sdk.views.ResizableImageView;
import io.intercom.android.sdk.views.UploadProgressBar;

class LocalImage
  extends Image
  implements LocalImageBlock
{
  private final j requestManager;
  private final Twig twig = LumberMill.getLogger();
  
  LocalImage(StyleType paramStyleType, j paramj)
  {
    super(paramStyleType);
    this.requestManager = paramj;
  }
  
  public View addImage(String paramString, int paramInt1, int paramInt2, BlockAlignment paramBlockAlignment, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    Object localObject2 = paramViewGroup.getContext();
    paramInt1 = ScreenUtils.dpToPx(paramInt1, (Context)localObject2);
    paramInt2 = ScreenUtils.dpToPx(paramInt2, (Context)localObject2);
    paramViewGroup = new ProgressFrameLayout((Context)localObject2);
    BlockUtils.createLayoutParams(paramViewGroup, -2, -2);
    BlockUtils.setDefaultMarginBottom(paramViewGroup);
    final ResizableImageView localResizableImageView = new ResizableImageView((Context)localObject2);
    BlockUtils.createLayoutParams(localResizableImageView, -2, -2);
    localResizableImageView.setAdjustViewBounds(true);
    localResizableImageView.setScaleType(ImageView.ScaleType.FIT_START);
    paramViewGroup.addView(localResizableImageView);
    i locali = this.requestManager.eT(paramString);
    setImageViewBounds(paramInt1, paramInt2, localResizableImageView, locali);
    Object localObject1 = paramViewGroup.getChildAt(0);
    localObject2 = ((Context)localObject2).getResources();
    if ((localObject1 instanceof UploadProgressBar))
    {
      paramInt1 = ((Resources)localObject2).getDimensionPixelSize(R.dimen.intercom_local_image_upload_size);
      ((View)localObject1).setLayoutParams(new FrameLayout.LayoutParams(paramInt1, paramInt1, 17));
      ((View)localObject1).bringToFront();
      paramViewGroup.uploadStarted();
    }
    setBackground(localResizableImageView);
    localObject1 = new ColorMatrix();
    ((ColorMatrix)localObject1).setSaturation(0.0F);
    localResizableImageView.setColorFilter(new ColorMatrixColorFilter((ColorMatrix)localObject1));
    paramString = locali.a(new g().a(new RoundedCornersTransform(((Resources)localObject2).getDimensionPixelSize(R.dimen.intercom_image_rounded_corners)), true).b(ImageUtils.getDiskCacheStrategy(paramString))).a(c.Ji());
    paramString.cGl = new f()
    {
      public boolean onLoadFailed(p paramAnonymousp, Object paramAnonymousObject, h<Drawable> paramAnonymoush, boolean paramAnonymousBoolean)
      {
        LocalImage.this.twig.internal("images", "FAILURE");
        return false;
      }
      
      public boolean onResourceReady(Drawable paramAnonymousDrawable, Object paramAnonymousObject, h<Drawable> paramAnonymoush, a paramAnonymousa, boolean paramAnonymousBoolean)
      {
        LocalImage.this.twig.internal("images", "SUCCESS");
        localResizableImageView.setBackgroundResource(17170445);
        return false;
      }
    };
    paramString.c(localResizableImageView);
    BlockUtils.setLayoutMarginsAndGravity(paramViewGroup, paramBlockAlignment.getGravity(), paramBoolean2);
    return paramViewGroup;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/LocalImage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */