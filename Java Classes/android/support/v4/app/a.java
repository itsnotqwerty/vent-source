package android.support.v4.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.app.SharedElementCallback.OnSharedElementsReadyListener;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.util.List;
import java.util.Map;

public final class a
  extends android.support.v4.content.a
{
  private static b wc;
  
  public static void a(Activity paramActivity, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramActivity.startActivityForResult(paramIntent, paramInt, paramBundle);
      return;
    }
    paramActivity.startActivityForResult(paramIntent, paramInt);
  }
  
  public static void a(Activity paramActivity, IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramActivity.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
      return;
    }
    paramActivity.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4);
  }
  
  public static void a(Activity paramActivity, ag paramag)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (Build.VERSION.SDK_INT >= 23)
    {
      if (paramag != null) {
        localObject1 = new e(paramag);
      }
      paramActivity.setEnterSharedElementCallback((SharedElementCallback)localObject1);
    }
    while (Build.VERSION.SDK_INT < 21) {
      return;
    }
    localObject1 = localObject2;
    if (paramag != null) {
      localObject1 = new d(paramag);
    }
    paramActivity.setEnterSharedElementCallback((SharedElementCallback)localObject1);
  }
  
  public static void a(final Activity paramActivity, String[] paramArrayOfString, final int paramInt)
  {
    if ((wc != null) && (wc.cy())) {}
    do
    {
      return;
      if (Build.VERSION.SDK_INT >= 23)
      {
        if ((paramActivity instanceof c)) {
          ((c)paramActivity).validateRequestPermissionsRequestCode(paramInt);
        }
        paramActivity.requestPermissions(paramArrayOfString, paramInt);
        return;
      }
    } while (!(paramActivity instanceof a));
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public final void run()
      {
        int[] arrayOfInt = new int[this.wd.length];
        PackageManager localPackageManager = paramActivity.getPackageManager();
        String str = paramActivity.getPackageName();
        int j = this.wd.length;
        int i = 0;
        while (i < j)
        {
          arrayOfInt[i] = localPackageManager.checkPermission(this.wd[i], str);
          i += 1;
        }
        ((a.a)paramActivity).onRequestPermissionsResult(paramInt, this.wd, arrayOfInt);
      }
    });
  }
  
  public static boolean a(Activity paramActivity, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramActivity.shouldShowRequestPermissionRationale(paramString);
    }
    return false;
  }
  
  public static void b(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramActivity.finishAffinity();
      return;
    }
    paramActivity.finish();
  }
  
  public static void b(Activity paramActivity, ag paramag)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (Build.VERSION.SDK_INT >= 23)
    {
      if (paramag != null) {
        localObject1 = new e(paramag);
      }
      paramActivity.setExitSharedElementCallback((SharedElementCallback)localObject1);
    }
    while (Build.VERSION.SDK_INT < 21) {
      return;
    }
    localObject1 = localObject2;
    if (paramag != null) {
      localObject1 = new d(paramag);
    }
    paramActivity.setExitSharedElementCallback((SharedElementCallback)localObject1);
  }
  
  public static void c(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramActivity.finishAfterTransition();
      return;
    }
    paramActivity.finish();
  }
  
  public static b cx()
  {
    return wc;
  }
  
  public static void d(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramActivity.postponeEnterTransition();
    }
  }
  
  public static void e(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramActivity.startPostponedEnterTransition();
    }
  }
  
  public static abstract interface a
  {
    public abstract void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt);
  }
  
  public static abstract interface b
  {
    public abstract boolean cy();
    
    public abstract boolean cz();
  }
  
  public static abstract interface c
  {
    public abstract void validateRequestPermissionsRequestCode(int paramInt);
  }
  
  private static class d
    extends SharedElementCallback
  {
    protected ag wf;
    
    d(ag paramag)
    {
      this.wf = paramag;
    }
    
    public Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF)
    {
      ag localag = this.wf;
      ImageView localImageView;
      Object localObject1;
      if ((paramView instanceof ImageView))
      {
        localImageView = (ImageView)paramView;
        localObject1 = localImageView.getDrawable();
        Object localObject2 = localImageView.getBackground();
        if ((localObject1 != null) && (localObject2 == null))
        {
          localObject2 = ag.a((Drawable)localObject1);
          if (localObject2 != null)
          {
            localObject1 = new Bundle();
            ((Bundle)localObject1).putParcelable("sharedElement:snapshot:bitmap", (Parcelable)localObject2);
            ((Bundle)localObject1).putString("sharedElement:snapshot:imageScaleType", localImageView.getScaleType().toString());
            if (localImageView.getScaleType() == ImageView.ScaleType.MATRIX)
            {
              paramView = localImageView.getImageMatrix();
              paramMatrix = new float[9];
              paramView.getValues(paramMatrix);
              ((Bundle)localObject1).putFloatArray("sharedElement:snapshot:imageMatrix", paramMatrix);
            }
          }
        }
      }
      do
      {
        do
        {
          return (Parcelable)localObject1;
          j = Math.round(paramRectF.width());
          i = Math.round(paramRectF.height());
          localImageView = null;
          localObject1 = localImageView;
        } while (j <= 0);
        localObject1 = localImageView;
      } while (i <= 0);
      float f = Math.min(1.0F, ag.AP / (j * i));
      int j = (int)(j * f);
      int i = (int)(i * f);
      if (localag.AO == null) {
        localag.AO = new Matrix();
      }
      localag.AO.set(paramMatrix);
      localag.AO.postTranslate(-paramRectF.left, -paramRectF.top);
      localag.AO.postScale(f, f);
      paramMatrix = Bitmap.createBitmap(j, i, Bitmap.Config.ARGB_8888);
      paramRectF = new Canvas(paramMatrix);
      paramRectF.concat(localag.AO);
      paramView.draw(paramRectF);
      return paramMatrix;
    }
    
    public View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable)
    {
      return ag.onCreateSnapshotView(paramContext, paramParcelable);
    }
    
    public void onMapSharedElements(List<String> paramList, Map<String, View> paramMap) {}
    
    public void onRejectSharedElements(List<View> paramList) {}
    
    public void onSharedElementEnd(List<String> paramList, List<View> paramList1, List<View> paramList2) {}
    
    public void onSharedElementStart(List<String> paramList, List<View> paramList1, List<View> paramList2) {}
  }
  
  private static final class e
    extends a.d
  {
    e(ag paramag)
    {
      super();
    }
    
    public final void onSharedElementsArrived(List<String> paramList, List<View> paramList1, final SharedElementCallback.OnSharedElementsReadyListener paramOnSharedElementsReadyListener)
    {
      ag.a(new ag.a()
      {
        public final void onSharedElementsReady()
        {
          paramOnSharedElementsReadyListener.onSharedElementsReady();
        }
      });
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */