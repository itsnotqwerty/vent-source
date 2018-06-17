package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.AsyncTask;
import java.lang.ref.WeakReference;

final class a
  extends AsyncTask<Void, Void, a>
{
  private final Uri DD;
  private final int bPA;
  private final Uri bPB;
  private final Bitmap.CompressFormat bPC;
  private final int bPD;
  private final WeakReference<CropImageView> bPo;
  private final float[] bPp;
  private final int bPq;
  private final int bPr;
  private final int bPs;
  private final boolean bPt;
  private final int bPu;
  private final int bPv;
  private final int bPw;
  private final int bPx;
  private final boolean bPy;
  private final boolean bPz;
  private final Bitmap bmT;
  private final Context mContext;
  
  a(CropImageView paramCropImageView, Bitmap paramBitmap, float[] paramArrayOfFloat, int paramInt1, boolean paramBoolean1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean2, boolean paramBoolean3, int paramInt6, Uri paramUri, Bitmap.CompressFormat paramCompressFormat, int paramInt7)
  {
    this.bPo = new WeakReference(paramCropImageView);
    this.mContext = paramCropImageView.getContext();
    this.bmT = paramBitmap;
    this.bPp = paramArrayOfFloat;
    this.DD = null;
    this.bPq = paramInt1;
    this.bPt = paramBoolean1;
    this.bPu = paramInt2;
    this.bPv = paramInt3;
    this.bPw = paramInt4;
    this.bPx = paramInt5;
    this.bPy = paramBoolean2;
    this.bPz = paramBoolean3;
    this.bPA = paramInt6;
    this.bPB = paramUri;
    this.bPC = paramCompressFormat;
    this.bPD = paramInt7;
    this.bPr = 0;
    this.bPs = 0;
  }
  
  a(CropImageView paramCropImageView, Uri paramUri1, float[] paramArrayOfFloat, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, int paramInt4, int paramInt5, int paramInt6, int paramInt7, boolean paramBoolean2, boolean paramBoolean3, int paramInt8, Uri paramUri2, Bitmap.CompressFormat paramCompressFormat, int paramInt9)
  {
    this.bPo = new WeakReference(paramCropImageView);
    this.mContext = paramCropImageView.getContext();
    this.DD = paramUri1;
    this.bPp = paramArrayOfFloat;
    this.bPq = paramInt1;
    this.bPt = paramBoolean1;
    this.bPu = paramInt4;
    this.bPv = paramInt5;
    this.bPr = paramInt2;
    this.bPs = paramInt3;
    this.bPw = paramInt6;
    this.bPx = paramInt7;
    this.bPy = paramBoolean2;
    this.bPz = paramBoolean3;
    this.bPA = paramInt8;
    this.bPB = paramUri2;
    this.bPC = paramCompressFormat;
    this.bPD = paramInt9;
    this.bmT = null;
  }
  
  private a AD()
  {
    try
    {
      if (!isCancelled())
      {
        if (this.DD != null) {}
        for (Object localObject = c.a(this.mContext, this.DD, this.bPp, this.bPq, this.bPr, this.bPs, this.bPt, this.bPu, this.bPv, this.bPw, this.bPx, this.bPy, this.bPz);; localObject = c.a(this.bmT, this.bPp, this.bPq, this.bPt, this.bPu, this.bPv, this.bPy, this.bPz))
        {
          localBitmap = c.a(((c.a)localObject).avo, this.bPw, this.bPx, this.bPA);
          if (this.bPB != null) {
            break label188;
          }
          return new a(localBitmap, ((c.a)localObject).awZ);
          if (this.bmT == null) {
            break;
          }
        }
        localObject = new a(null, 1);
        return (a)localObject;
      }
    }
    catch (Exception localException)
    {
      Bitmap localBitmap;
      if (this.bPB != null) {}
      for (boolean bool = true;; bool = false)
      {
        return new a(localException, bool);
        label188:
        c.a(this.mContext, localBitmap, this.bPB, this.bPC, this.bPD);
        if (localBitmap != null) {
          localBitmap.recycle();
        }
        a locala = new a(this.bPB, localException.awZ);
        return locala;
      }
    }
    return null;
  }
  
  static final class a
  {
    public final Bitmap avo;
    final int awZ;
    final Exception bPE;
    final boolean bPF;
    public final Uri uri;
    
    a(Bitmap paramBitmap, int paramInt)
    {
      this.avo = paramBitmap;
      this.uri = null;
      this.bPE = null;
      this.bPF = false;
      this.awZ = paramInt;
    }
    
    a(Uri paramUri, int paramInt)
    {
      this.avo = null;
      this.uri = paramUri;
      this.bPE = null;
      this.bPF = true;
      this.awZ = paramInt;
    }
    
    a(Exception paramException, boolean paramBoolean)
    {
      this.avo = null;
      this.uri = null;
      this.bPE = paramException;
      this.bPF = paramBoolean;
      this.awZ = 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */