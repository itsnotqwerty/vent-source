package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import java.lang.ref.WeakReference;

final class b
  extends AsyncTask<Void, Void, a>
{
  final Uri DD;
  private final WeakReference<CropImageView> bPo;
  private final int db;
  private final int dc;
  private final Context mContext;
  
  public b(CropImageView paramCropImageView, Uri paramUri)
  {
    this.DD = paramUri;
    this.bPo = new WeakReference(paramCropImageView);
    this.mContext = paramCropImageView.getContext();
    paramCropImageView = paramCropImageView.getResources().getDisplayMetrics();
    if (paramCropImageView.density > 1.0F) {}
    for (double d = 1.0F / paramCropImageView.density;; d = 1.0D)
    {
      this.db = ((int)(paramCropImageView.widthPixels * d));
      this.dc = ((int)(d * paramCropImageView.heightPixels));
      return;
    }
  }
  
  private a AE()
  {
    try
    {
      if (!isCancelled())
      {
        Object localObject = c.a(this.mContext, this.DD, this.db, this.dc);
        if (!isCancelled())
        {
          c.b localb = c.a(((c.a)localObject).avo, this.mContext, this.DD);
          localObject = new a(this.DD, localb.avo, ((c.a)localObject).awZ, localb.bPP);
          return (a)localObject;
        }
      }
      return null;
    }
    catch (Exception localException)
    {
      return new a(this.DD, localException);
    }
  }
  
  public static final class a
  {
    public final Bitmap avo;
    public final Exception bPE;
    public final int bPG;
    public final int bPH;
    public final Uri uri;
    
    a(Uri paramUri, Bitmap paramBitmap, int paramInt1, int paramInt2)
    {
      this.uri = paramUri;
      this.avo = paramBitmap;
      this.bPG = paramInt1;
      this.bPH = paramInt2;
      this.bPE = null;
    }
    
    a(Uri paramUri, Exception paramException)
    {
      this.uri = paramUri;
      this.avo = null;
      this.bPG = 0;
      this.bPH = 0;
      this.bPE = paramException;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */