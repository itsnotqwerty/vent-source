package com.layer.atlas.util.imagepopup;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.widget.ContentLoadingProgressBar;
import android.view.Window;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.e;
import com.layer.atlas.b.c;
import com.layer.atlas.b.f;
import com.layer.atlas.b.g;
import com.layer.atlas.b.e.a.b;
import com.layer.sdk.LayerClient;
import com.layer.sdk.listeners.LayerProgressListener.BackgroundThread.Weak;
import com.layer.sdk.listeners.LayerProgressListener.Operation;
import com.layer.sdk.messaging.MessagePart;

public final class AtlasImagePopupActivity
  extends Activity
  implements SubsamplingScaleImageView.e, LayerProgressListener.BackgroundThread.Weak
{
  private static LayerClient bpt;
  private ContentLoadingProgressBar boW;
  private SubsamplingScaleImageView bpu;
  private Uri bpv;
  
  public static void b(LayerClient paramLayerClient)
  {
    bpt = paramLayerClient;
    a.b(paramLayerClient);
    b.b(paramLayerClient);
  }
  
  public final void b(Exception paramException)
  {
    if (com.layer.atlas.util.b.dm(6)) {
      com.layer.atlas.util.b.e(paramException.getMessage(), paramException);
    }
    this.boW.hide();
  }
  
  public final void c(Exception paramException)
  {
    if (com.layer.atlas.util.b.dm(6)) {
      com.layer.atlas.util.b.e(paramException.getMessage(), paramException);
    }
    this.boW.hide();
  }
  
  public final void d(Exception paramException)
  {
    if (com.layer.atlas.util.b.dm(6)) {
      com.layer.atlas.util.b.e(paramException.getMessage(), paramException);
    }
    this.boW.hide();
  }
  
  public final void ky()
  {
    this.boW.hide();
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setBackgroundDrawableResource(b.c.atlas_image_popup_background);
    setContentView(b.g.atlas_image_popup);
    this.bpu = ((SubsamplingScaleImageView)findViewById(b.f.image_popup));
    this.boW = ((ContentLoadingProgressBar)findViewById(b.f.image_popup_progress));
    this.bpu.setPanEnabled(true);
    this.bpu.setZoomEnabled(true);
    this.bpu.setDoubleTapZoomDpi(160);
    this.bpu.setMinimumDpi(80);
    this.bpu.setBitmapDecoderClass(a.class);
    this.bpu.setRegionDecoderClass(b.class);
    Object localObject = getIntent();
    if (localObject == null) {
      return;
    }
    this.bpv = ((Uri)((Intent)localObject).getParcelableExtra("fullId"));
    paramBundle = (Uri)((Intent)localObject).getParcelableExtra("previewId");
    localObject = (a.b)((Intent)localObject).getParcelableExtra("info");
    this.boW.show();
    if ((paramBundle != null) && (localObject != null)) {
      switch (((a.b)localObject).orientation)
      {
      }
    }
    for (;;)
    {
      this.bpu.setOnImageEventListener(this);
      return;
      this.bpu.setOrientation(0);
      this.bpu.a(com.davemorrissey.labs.subscaleview.a.i(this.bpv).as(((a.b)localObject).width, ((a.b)localObject).height), com.davemorrissey.labs.subscaleview.a.i(paramBundle));
      continue;
      this.bpu.setOrientation(270);
      this.bpu.a(com.davemorrissey.labs.subscaleview.a.i(this.bpv).as(((a.b)localObject).height, ((a.b)localObject).width), com.davemorrissey.labs.subscaleview.a.i(paramBundle));
      continue;
      this.bpu.setOrientation(180);
      this.bpu.a(com.davemorrissey.labs.subscaleview.a.i(this.bpv).as(((a.b)localObject).width, ((a.b)localObject).height), com.davemorrissey.labs.subscaleview.a.i(paramBundle));
      continue;
      this.bpu.setOrientation(90);
      this.bpu.a(com.davemorrissey.labs.subscaleview.a.i(this.bpv).as(((a.b)localObject).height, ((a.b)localObject).width), com.davemorrissey.labs.subscaleview.a.i(paramBundle));
      continue;
      this.bpu.setImage(com.davemorrissey.labs.subscaleview.a.i(this.bpv));
    }
  }
  
  protected final void onDestroy()
  {
    if (this.bpu != null) {
      this.bpu.recycle();
    }
    super.onDestroy();
  }
  
  protected final void onPause()
  {
    super.onPause();
    bpt.unregisterProgressListener(null, this);
  }
  
  public final void onProgressComplete(MessagePart paramMessagePart, LayerProgressListener.Operation paramOperation)
  {
    if (!paramMessagePart.getId().equals(this.bpv)) {
      return;
    }
    this.boW.setProgress(this.boW.getMax());
  }
  
  public final void onProgressError(MessagePart paramMessagePart, LayerProgressListener.Operation paramOperation, Throwable paramThrowable)
  {
    if (!paramMessagePart.getId().equals(this.bpv)) {}
    while (!com.layer.atlas.util.b.dm(6)) {
      return;
    }
    com.layer.atlas.util.b.e(paramThrowable.getMessage(), paramThrowable);
  }
  
  public final void onProgressStart(MessagePart paramMessagePart, LayerProgressListener.Operation paramOperation)
  {
    if (!paramMessagePart.getId().equals(this.bpv)) {
      return;
    }
    this.boW.setProgress(0);
  }
  
  public final void onProgressUpdate(MessagePart paramMessagePart, LayerProgressListener.Operation paramOperation, long paramLong)
  {
    if (!paramMessagePart.getId().equals(this.bpv)) {
      return;
    }
    int i = (int)Math.round(paramLong / paramMessagePart.getSize() * this.boW.getMax());
    this.boW.setProgress(i);
  }
  
  protected final void onResume()
  {
    super.onResume();
    bpt.registerProgressListener(null, this);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/util/imagepopup/AtlasImagePopupActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */