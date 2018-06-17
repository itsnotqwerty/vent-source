package com.theartofdev.edmodo.cropper;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import java.lang.ref.WeakReference;
import java.util.UUID;

public class CropImageView
  extends FrameLayout
{
  private final CropOverlayView bPU;
  private int bPq;
  boolean bPy;
  boolean bPz;
  private final Matrix bQZ = new Matrix();
  private int bRA;
  private boolean bRB;
  private Uri bRC;
  WeakReference<b> bRD;
  WeakReference<a> bRE;
  private final Matrix bRa = new Matrix();
  private final ProgressBar bRb;
  private final float[] bRc = new float[8];
  private final float[] bRd = new float[8];
  private e bRe;
  int bRf;
  private int bRg;
  private int bRh;
  private int bRi;
  private j bRj;
  private boolean bRk = false;
  private boolean bRl = true;
  private boolean bRm = true;
  private boolean bRn = true;
  private int bRo;
  private f bRp;
  private e bRq;
  private g bRr;
  h bRs;
  d bRt;
  Uri bRu;
  private int bRv = 1;
  private float bRw = 1.0F;
  private float bRx;
  private float bRy;
  private RectF bRz;
  Bitmap bmT;
  private final ImageView boV;
  
  public CropImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CropImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if ((paramContext instanceof Activity))
    {
      localObject = ((Activity)paramContext).getIntent();
      if (localObject == null) {
        break label885;
      }
      localObject = ((Intent)localObject).getBundleExtra("CROP_IMAGE_EXTRA_BUNDLE");
      if (localObject == null) {
        break label885;
      }
    }
    label885:
    for (Object localObject = (f)((Bundle)localObject).getParcelable("CROP_IMAGE_EXTRA_OPTIONS");; localObject = null)
    {
      if (localObject == null)
      {
        localObject = new f();
        if (paramAttributeSet != null) {
          paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, i.e.CropImageView, 0, 0);
        }
      }
      for (;;)
      {
        try
        {
          ((f)localObject).bQp = paramAttributeSet.getBoolean(i.e.CropImageView_cropFixAspectRatio, ((f)localObject).bQp);
          ((f)localObject).bQq = paramAttributeSet.getInteger(i.e.CropImageView_cropAspectRatioX, ((f)localObject).bQq);
          ((f)localObject).bQr = paramAttributeSet.getInteger(i.e.CropImageView_cropAspectRatioY, ((f)localObject).bQr);
          ((f)localObject).bQi = j.values()[paramAttributeSet.getInt(i.e.CropImageView_cropScaleType, localObject.bQi.ordinal())];
          ((f)localObject).bQl = paramAttributeSet.getBoolean(i.e.CropImageView_cropAutoZoomEnabled, ((f)localObject).bQl);
          ((f)localObject).bQm = paramAttributeSet.getBoolean(i.e.CropImageView_cropMultiTouchEnabled, ((f)localObject).bQm);
          ((f)localObject).bQn = paramAttributeSet.getInteger(i.e.CropImageView_cropMaxZoom, ((f)localObject).bQn);
          ((f)localObject).bQe = b.values()[paramAttributeSet.getInt(i.e.CropImageView_cropShape, localObject.bQe.ordinal())];
          ((f)localObject).bQh = c.values()[paramAttributeSet.getInt(i.e.CropImageView_cropGuidelines, localObject.bQh.ordinal())];
          ((f)localObject).bQf = paramAttributeSet.getDimension(i.e.CropImageView_cropSnapRadius, ((f)localObject).bQf);
          ((f)localObject).bQg = paramAttributeSet.getDimension(i.e.CropImageView_cropTouchRadius, ((f)localObject).bQg);
          ((f)localObject).bQo = paramAttributeSet.getFloat(i.e.CropImageView_cropInitialCropWindowPaddingRatio, ((f)localObject).bQo);
          ((f)localObject).bQs = paramAttributeSet.getDimension(i.e.CropImageView_cropBorderLineThickness, ((f)localObject).bQs);
          ((f)localObject).bQt = paramAttributeSet.getInteger(i.e.CropImageView_cropBorderLineColor, ((f)localObject).bQt);
          ((f)localObject).bQu = paramAttributeSet.getDimension(i.e.CropImageView_cropBorderCornerThickness, ((f)localObject).bQu);
          ((f)localObject).bQv = paramAttributeSet.getDimension(i.e.CropImageView_cropBorderCornerOffset, ((f)localObject).bQv);
          ((f)localObject).bQw = paramAttributeSet.getDimension(i.e.CropImageView_cropBorderCornerLength, ((f)localObject).bQw);
          ((f)localObject).bQx = paramAttributeSet.getInteger(i.e.CropImageView_cropBorderCornerColor, ((f)localObject).bQx);
          ((f)localObject).bQy = paramAttributeSet.getDimension(i.e.CropImageView_cropGuidelinesThickness, ((f)localObject).bQy);
          ((f)localObject).bQz = paramAttributeSet.getInteger(i.e.CropImageView_cropGuidelinesColor, ((f)localObject).bQz);
          ((f)localObject).backgroundColor = paramAttributeSet.getInteger(i.e.CropImageView_cropBackgroundColor, ((f)localObject).backgroundColor);
          ((f)localObject).bQj = paramAttributeSet.getBoolean(i.e.CropImageView_cropShowCropOverlay, this.bRl);
          ((f)localObject).bQk = paramAttributeSet.getBoolean(i.e.CropImageView_cropShowProgressBar, this.bRm);
          ((f)localObject).bQu = paramAttributeSet.getDimension(i.e.CropImageView_cropBorderCornerThickness, ((f)localObject).bQu);
          ((f)localObject).bQA = ((int)paramAttributeSet.getDimension(i.e.CropImageView_cropMinCropWindowWidth, ((f)localObject).bQA));
          ((f)localObject).bQB = ((int)paramAttributeSet.getDimension(i.e.CropImageView_cropMinCropWindowHeight, ((f)localObject).bQB));
          ((f)localObject).bQC = ((int)paramAttributeSet.getFloat(i.e.CropImageView_cropMinCropResultWidthPX, ((f)localObject).bQC));
          ((f)localObject).bQD = ((int)paramAttributeSet.getFloat(i.e.CropImageView_cropMinCropResultHeightPX, ((f)localObject).bQD));
          ((f)localObject).bQE = ((int)paramAttributeSet.getFloat(i.e.CropImageView_cropMaxCropResultWidthPX, ((f)localObject).bQE));
          ((f)localObject).bQF = ((int)paramAttributeSet.getFloat(i.e.CropImageView_cropMaxCropResultHeightPX, ((f)localObject).bQF));
          ((f)localObject).bQV = paramAttributeSet.getBoolean(i.e.CropImageView_cropFlipHorizontally, ((f)localObject).bQV);
          ((f)localObject).bQW = paramAttributeSet.getBoolean(i.e.CropImageView_cropFlipHorizontally, ((f)localObject).bQW);
          this.bRk = paramAttributeSet.getBoolean(i.e.CropImageView_cropSaveBitmapToInstanceState, this.bRk);
          if ((paramAttributeSet.hasValue(i.e.CropImageView_cropAspectRatioX)) && (paramAttributeSet.hasValue(i.e.CropImageView_cropAspectRatioX)) && (!paramAttributeSet.hasValue(i.e.CropImageView_cropFixAspectRatio))) {
            ((f)localObject).bQp = true;
          }
          paramAttributeSet.recycle();
          paramAttributeSet = (AttributeSet)localObject;
          paramAttributeSet.ak();
          this.bRj = paramAttributeSet.bQi;
          this.bRn = paramAttributeSet.bQl;
          this.bRo = paramAttributeSet.bQn;
          this.bRl = paramAttributeSet.bQj;
          this.bRm = paramAttributeSet.bQk;
          this.bPy = paramAttributeSet.bQV;
          this.bPz = paramAttributeSet.bQW;
          paramContext = LayoutInflater.from(paramContext).inflate(i.b.crop_image_view, this, true);
          this.boV = ((ImageView)paramContext.findViewById(i.a.ImageView_image));
          this.boV.setScaleType(ImageView.ScaleType.MATRIX);
          this.bPU = ((CropOverlayView)paramContext.findViewById(i.a.CropOverlayView));
          this.bPU.setCropWindowChangeListener(new CropOverlayView.a()
          {
            public final void aN(boolean paramAnonymousBoolean)
            {
              CropImageView.a(CropImageView.this, paramAnonymousBoolean);
              if ((CropImageView.a(CropImageView.this) != null) && (!paramAnonymousBoolean)) {
                CropImageView.this.getCropRect();
              }
              if ((CropImageView.b(CropImageView.this) != null) && (paramAnonymousBoolean)) {
                CropImageView.this.getCropRect();
              }
            }
          });
          this.bPU.setInitialAttributeValues(paramAttributeSet);
          this.bRb = ((ProgressBar)paramContext.findViewById(i.a.CropProgressBar));
          return;
        }
        finally
        {
          paramAttributeSet.recycle();
        }
        localObject = null;
        break;
        continue;
        paramAttributeSet = (AttributeSet)localObject;
      }
    }
  }
  
  private void AI()
  {
    if ((this.bmT != null) && ((this.bRi > 0) || (this.bRu != null))) {
      this.bmT.recycle();
    }
    this.bmT = null;
    this.bRi = 0;
    this.bRu = null;
    this.bRv = 1;
    this.bPq = 0;
    this.bRw = 1.0F;
    this.bRx = 0.0F;
    this.bRy = 0.0F;
    this.bQZ.reset();
    this.bRC = null;
    this.boV.setImageBitmap(null);
    AK();
  }
  
  private void AJ()
  {
    this.bRc[0] = 0.0F;
    this.bRc[1] = 0.0F;
    this.bRc[2] = this.bmT.getWidth();
    this.bRc[3] = 0.0F;
    this.bRc[4] = this.bmT.getWidth();
    this.bRc[5] = this.bmT.getHeight();
    this.bRc[6] = 0.0F;
    this.bRc[7] = this.bmT.getHeight();
    this.bQZ.mapPoints(this.bRc);
    this.bRd[0] = 0.0F;
    this.bRd[1] = 0.0F;
    this.bRd[2] = 100.0F;
    this.bRd[3] = 0.0F;
    this.bRd[4] = 100.0F;
    this.bRd[5] = 100.0F;
    this.bRd[6] = 0.0F;
    this.bRd[7] = 100.0F;
    this.bQZ.mapPoints(this.bRd);
  }
  
  private void AK()
  {
    CropOverlayView localCropOverlayView;
    if (this.bPU != null)
    {
      localCropOverlayView = this.bPU;
      if ((!this.bRl) || (this.bmT == null)) {
        break label34;
      }
    }
    label34:
    for (int i = 0;; i = 4)
    {
      localCropOverlayView.setVisibility(i);
      return;
    }
  }
  
  private void aM(boolean paramBoolean)
  {
    if ((this.bmT != null) && (!paramBoolean))
    {
      float f1 = this.bRv * 100.0F / c.g(this.bRd);
      float f2 = this.bRv * 100.0F / c.h(this.bRd);
      localObject = this.bPU;
      float f3 = getWidth();
      float f4 = getHeight();
      localObject = ((CropOverlayView)localObject).bSh;
      ((g)localObject).bSJ = f3;
      ((g)localObject).bSK = f4;
      ((g)localObject).bSP = f1;
      ((g)localObject).bSQ = f2;
    }
    CropOverlayView localCropOverlayView = this.bPU;
    if (paramBoolean) {}
    for (Object localObject = null;; localObject = this.bRc)
    {
      localCropOverlayView.a((float[])localObject, getWidth(), getHeight());
      return;
    }
  }
  
  private void e(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = getWidth();
    int j = getHeight();
    Object localObject;
    if ((this.bmT != null) && (i > 0) && (j > 0))
    {
      localObject = this.bPU.getCropWindowRect();
      if (!paramBoolean1) {
        break label99;
      }
      if ((((RectF)localObject).left < 0.0F) || (((RectF)localObject).top < 0.0F) || (((RectF)localObject).right > i) || (((RectF)localObject).bottom > j)) {
        a(i, j, false, false);
      }
    }
    label99:
    while ((!this.bRn) && (this.bRw <= 1.0F)) {
      return;
    }
    if ((this.bRw < this.bRo) && (((RectF)localObject).width() < i * 0.5F) && (((RectF)localObject).height() < j * 0.5F)) {}
    for (float f1 = Math.min(this.bRo, Math.min(i / (((RectF)localObject).width() / this.bRw / 0.64F), j / (((RectF)localObject).height() / this.bRw / 0.64F)));; f1 = 0.0F)
    {
      float f2 = f1;
      if (this.bRw > 1.0F) {
        if (((RectF)localObject).width() <= i * 0.65F)
        {
          f2 = f1;
          if (((RectF)localObject).height() <= j * 0.65F) {}
        }
        else
        {
          f2 = Math.max(1.0F, Math.min(i / (((RectF)localObject).width() / this.bRw / 0.51F), j / (((RectF)localObject).height() / this.bRw / 0.51F)));
        }
      }
      if (!this.bRn) {
        f2 = 1.0F;
      }
      if ((f2 <= 0.0F) || (f2 == this.bRw)) {
        break;
      }
      if (paramBoolean2)
      {
        if (this.bRe == null) {
          this.bRe = new e(this.boV, this.bPU);
        }
        localObject = this.bRe;
        float[] arrayOfFloat = this.bRc;
        Matrix localMatrix = this.bQZ;
        ((e)localObject).reset();
        System.arraycopy(arrayOfFloat, 0, ((e)localObject).bPV, 0, 8);
        ((e)localObject).bPX.set(((e)localObject).bPU.getCropWindowRect());
        localMatrix.getValues(((e)localObject).bPZ);
      }
      this.bRw = f2;
      a(i, j, true, paramBoolean2);
      return;
    }
  }
  
  private static int n(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 1073741824) {
      return paramInt2;
    }
    if (paramInt1 == Integer.MIN_VALUE) {
      return Math.min(paramInt3, paramInt2);
    }
    return paramInt3;
  }
  
  final void AL()
  {
    int j = 0;
    ProgressBar localProgressBar;
    if ((this.bRm) && (((this.bmT == null) && (this.bRD != null)) || (this.bRE != null)))
    {
      i = 1;
      localProgressBar = this.bRb;
      if (i == 0) {
        break label54;
      }
    }
    label54:
    for (int i = j;; i = 4)
    {
      localProgressBar.setVisibility(i);
      return;
      i = 0;
      break;
    }
  }
  
  final void a(float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    float f3 = 0.0F;
    Object localObject;
    float f1;
    float f2;
    if ((this.bmT != null) && (paramFloat1 > 0.0F) && (paramFloat2 > 0.0F))
    {
      this.bQZ.invert(this.bRa);
      localObject = this.bPU.getCropWindowRect();
      this.bRa.mapRect((RectF)localObject);
      this.bQZ.reset();
      this.bQZ.postTranslate((paramFloat1 - this.bmT.getWidth()) / 2.0F, (paramFloat2 - this.bmT.getHeight()) / 2.0F);
      AJ();
      if (this.bPq > 0)
      {
        this.bQZ.postRotate(this.bPq, c.i(this.bRc), c.j(this.bRc));
        AJ();
      }
      f1 = Math.min(paramFloat1 / c.g(this.bRc), paramFloat2 / c.h(this.bRc));
      if ((this.bRj == j.bSa) || ((this.bRj == j.bSd) && (f1 < 1.0F)) || ((f1 > 1.0F) && (this.bRn)))
      {
        this.bQZ.postScale(f1, f1, c.i(this.bRc), c.j(this.bRc));
        AJ();
      }
      if (!this.bPy) {
        break label480;
      }
      f1 = -this.bRw;
      if (!this.bPz) {
        break label489;
      }
      f2 = -this.bRw;
      label256:
      this.bQZ.postScale(f1, f2, c.i(this.bRc), c.j(this.bRc));
      AJ();
      this.bQZ.mapRect((RectF)localObject);
      if (!paramBoolean1) {
        break label584;
      }
      if (paramFloat1 <= c.g(this.bRc)) {
        break label498;
      }
      paramFloat1 = 0.0F;
      label314:
      this.bRx = paramFloat1;
      if (paramFloat2 <= c.h(this.bRc)) {
        break label541;
      }
      paramFloat1 = f3;
      label334:
      this.bRy = paramFloat1;
      label339:
      this.bQZ.postTranslate(this.bRx * f1, this.bRy * f2);
      ((RectF)localObject).offset(f1 * this.bRx, f2 * this.bRy);
      this.bPU.setCropWindowRect((RectF)localObject);
      AJ();
      this.bPU.invalidate();
      if (!paramBoolean2) {
        break label655;
      }
      localObject = this.bRe;
      float[] arrayOfFloat = this.bRc;
      Matrix localMatrix = this.bQZ;
      System.arraycopy(arrayOfFloat, 0, ((e)localObject).bPW, 0, 8);
      ((e)localObject).bPY.set(((e)localObject).bPU.getCropWindowRect());
      localMatrix.getValues(((e)localObject).bQa);
      this.boV.startAnimation(this.bRe);
    }
    for (;;)
    {
      aM(false);
      return;
      label480:
      f1 = this.bRw;
      break;
      label489:
      f2 = this.bRw;
      break label256;
      label498:
      paramFloat1 = Math.max(Math.min(paramFloat1 / 2.0F - ((RectF)localObject).centerX(), -c.c(this.bRc)), getWidth() - c.e(this.bRc)) / f1;
      break label314;
      label541:
      paramFloat1 = Math.max(Math.min(paramFloat2 / 2.0F - ((RectF)localObject).centerY(), -c.d(this.bRc)), getHeight() - c.f(this.bRc)) / f2;
      break label334;
      label584:
      this.bRx = (Math.min(Math.max(this.bRx * f1, -((RectF)localObject).left), -((RectF)localObject).right + paramFloat1) / f1);
      this.bRy = (Math.min(Math.max(this.bRy * f2, -((RectF)localObject).top), -((RectF)localObject).bottom + paramFloat2) / f2);
      break label339;
      label655:
      this.boV.setImageMatrix(this.bQZ);
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, Uri paramUri, Bitmap.CompressFormat paramCompressFormat, int paramInt4)
  {
    Bitmap localBitmap = this.bmT;
    a locala;
    label56:
    label63:
    int i;
    int j;
    int k;
    int m;
    if (localBitmap != null)
    {
      this.boV.clearAnimation();
      if (this.bRE == null) {
        break label216;
      }
      locala = (a)this.bRE.get();
      if (locala != null) {
        locala.cancel(true);
      }
      if (paramInt3 == i.bRU) {
        break label222;
      }
      if (paramInt3 == i.bRU) {
        break label227;
      }
      i = localBitmap.getWidth();
      j = this.bRv;
      k = localBitmap.getHeight();
      m = this.bRv;
      if ((this.bRu == null) || ((this.bRv <= 1) && (paramInt3 != i.bRV))) {
        break label232;
      }
    }
    label216:
    label222:
    label227:
    label232:
    for (this.bRE = new WeakReference(new a(this, this.bRu, getCropPoints(), this.bPq, i * j, k * m, this.bPU.bPt, this.bPU.getAspectRatioX(), this.bPU.getAspectRatioY(), paramInt1, paramInt2, this.bPy, this.bPz, paramInt3, paramUri, paramCompressFormat, paramInt4));; this.bRE = new WeakReference(new a(this, localBitmap, getCropPoints(), this.bPq, this.bPU.bPt, this.bPU.getAspectRatioX(), this.bPU.getAspectRatioY(), paramInt1, paramInt2, this.bPy, this.bPz, paramInt3, paramUri, paramCompressFormat, paramInt4)))
    {
      ((a)this.bRE.get()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
      AL();
      return;
      locala = null;
      break;
      paramInt1 = 0;
      break label56;
      paramInt2 = 0;
      break label63;
    }
  }
  
  final void a(Bitmap paramBitmap, int paramInt1, Uri paramUri, int paramInt2, int paramInt3)
  {
    if ((this.bmT == null) || (!this.bmT.equals(paramBitmap)))
    {
      this.boV.clearAnimation();
      AI();
      this.bmT = paramBitmap;
      this.boV.setImageBitmap(this.bmT);
      this.bRu = paramUri;
      this.bRi = paramInt1;
      this.bRv = paramInt2;
      this.bPq = paramInt3;
      a(getWidth(), getHeight(), true, false);
      if (this.bPU != null)
      {
        this.bPU.AO();
        AK();
      }
    }
  }
  
  public final void ef(int paramInt)
  {
    int i;
    label61:
    label87:
    float f2;
    if (this.bmT != null)
    {
      if (paramInt >= 0) {
        break label482;
      }
      paramInt = paramInt % 360 + 360;
      if ((this.bPU.bPt) || (((paramInt <= 45) || (paramInt >= 135)) && ((paramInt <= 215) || (paramInt >= 305)))) {
        break label491;
      }
      i = 1;
      c.bPK.set(this.bPU.getCropWindowRect());
      if (i == 0) {
        break label497;
      }
      f1 = c.bPK.height();
      f2 = f1 / 2.0F;
      if (i == 0) {
        break label508;
      }
    }
    label482:
    label491:
    label497:
    label508:
    for (float f1 = c.bPK.width();; f1 = c.bPK.height())
    {
      f1 /= 2.0F;
      if (i != 0)
      {
        boolean bool = this.bPy;
        this.bPy = this.bPz;
        this.bPz = bool;
      }
      this.bQZ.invert(this.bRa);
      c.bPL[0] = c.bPK.centerX();
      c.bPL[1] = c.bPK.centerY();
      c.bPL[2] = 0.0F;
      c.bPL[3] = 0.0F;
      c.bPL[4] = 1.0F;
      c.bPL[5] = 0.0F;
      this.bRa.mapPoints(c.bPL);
      this.bPq = ((paramInt + this.bPq) % 360);
      a(getWidth(), getHeight(), true, false);
      this.bQZ.mapPoints(c.bPM, c.bPL);
      this.bRw = ((float)(this.bRw / Math.sqrt(Math.pow(c.bPM[4] - c.bPM[2], 2.0D) + Math.pow(c.bPM[5] - c.bPM[3], 2.0D))));
      this.bRw = Math.max(this.bRw, 1.0F);
      a(getWidth(), getHeight(), true, false);
      this.bQZ.mapPoints(c.bPM, c.bPL);
      double d = Math.sqrt(Math.pow(c.bPM[4] - c.bPM[2], 2.0D) + Math.pow(c.bPM[5] - c.bPM[3], 2.0D));
      f2 = (float)(f2 * d);
      f1 = (float)(d * f1);
      c.bPK.set(c.bPM[0] - f2, c.bPM[1] - f1, f2 + c.bPM[0], f1 + c.bPM[1]);
      this.bPU.AO();
      this.bPU.setCropWindowRect(c.bPK);
      a(getWidth(), getHeight(), true, false);
      e(false, false);
      this.bPU.AN();
      return;
      paramInt %= 360;
      break;
      i = 0;
      break label61;
      f1 = c.bPK.width();
      break label87;
    }
  }
  
  public Pair<Integer, Integer> getAspectRatio()
  {
    return new Pair(Integer.valueOf(this.bPU.getAspectRatioX()), Integer.valueOf(this.bPU.getAspectRatioY()));
  }
  
  public float[] getCropPoints()
  {
    int i = 0;
    RectF localRectF = this.bPU.getCropWindowRect();
    float[] arrayOfFloat = new float[8];
    arrayOfFloat[0] = localRectF.left;
    arrayOfFloat[1] = localRectF.top;
    arrayOfFloat[2] = localRectF.right;
    arrayOfFloat[3] = localRectF.top;
    arrayOfFloat[4] = localRectF.right;
    arrayOfFloat[5] = localRectF.bottom;
    arrayOfFloat[6] = localRectF.left;
    arrayOfFloat[7] = localRectF.bottom;
    this.bQZ.invert(this.bRa);
    this.bRa.mapPoints(arrayOfFloat);
    while (i < 8)
    {
      arrayOfFloat[i] *= this.bRv;
      i += 1;
    }
    return arrayOfFloat;
  }
  
  public Rect getCropRect()
  {
    int i = this.bRv;
    Bitmap localBitmap = this.bmT;
    if (localBitmap == null) {
      return null;
    }
    return c.a(getCropPoints(), localBitmap.getWidth() * i, i * localBitmap.getHeight(), this.bPU.bPt, this.bPU.getAspectRatioX(), this.bPU.getAspectRatioY());
  }
  
  public b getCropShape()
  {
    return this.bPU.getCropShape();
  }
  
  public RectF getCropWindowRect()
  {
    if (this.bPU == null) {
      return null;
    }
    return this.bPU.getCropWindowRect();
  }
  
  public Bitmap getCroppedImage()
  {
    int i = i.bRU;
    Bitmap localBitmap = null;
    int j;
    int k;
    int m;
    int n;
    if (this.bmT != null)
    {
      this.boV.clearAnimation();
      j = i.bRU;
      j = i.bRU;
      if ((this.bRu == null) || ((this.bRv <= 1) && (i != i.bRV))) {
        break label155;
      }
      j = this.bmT.getWidth();
      k = this.bRv;
      m = this.bmT.getHeight();
      n = this.bRv;
    }
    label155:
    for (localBitmap = c.a(getContext(), this.bRu, getCropPoints(), this.bPq, j * k, m * n, this.bPU.bPt, this.bPU.getAspectRatioX(), this.bPU.getAspectRatioY(), 0, 0, this.bPy, this.bPz).avo;; localBitmap = c.a(this.bmT, getCropPoints(), this.bPq, this.bPU.bPt, this.bPU.getAspectRatioX(), this.bPU.getAspectRatioY(), this.bPy, this.bPz).avo)
    {
      localBitmap = c.a(localBitmap, 0, 0, i);
      return localBitmap;
    }
  }
  
  public void getCroppedImageAsync()
  {
    int i = i.bRU;
    if (this.bRt == null) {
      throw new IllegalArgumentException("mOnCropImageCompleteListener is not set");
    }
    a(0, 0, i, null, null, 0);
  }
  
  public c getGuidelines()
  {
    return this.bPU.getGuidelines();
  }
  
  public int getImageResource()
  {
    return this.bRi;
  }
  
  public Uri getImageUri()
  {
    return this.bRu;
  }
  
  public int getMaxZoom()
  {
    return this.bRo;
  }
  
  public int getRotatedDegrees()
  {
    return this.bPq;
  }
  
  public j getScaleType()
  {
    return this.bRj;
  }
  
  public Rect getWholeImageRect()
  {
    int i = this.bRv;
    Bitmap localBitmap = this.bmT;
    if (localBitmap == null) {
      return null;
    }
    return new Rect(0, 0, localBitmap.getWidth() * i, localBitmap.getHeight() * i);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((this.bRg > 0) && (this.bRh > 0))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      localLayoutParams.width = this.bRg;
      localLayoutParams.height = this.bRh;
      setLayoutParams(localLayoutParams);
      if (this.bmT != null)
      {
        a(paramInt3 - paramInt1, paramInt4 - paramInt2, true, false);
        if (this.bRz != null)
        {
          if (this.bRA != this.bRf)
          {
            this.bPq = this.bRA;
            a(paramInt3 - paramInt1, paramInt4 - paramInt2, true, false);
          }
          this.bQZ.mapRect(this.bRz);
          this.bPU.setCropWindowRect(this.bRz);
          e(false, false);
          this.bPU.AN();
          this.bRz = null;
        }
        while (!this.bRB) {
          return;
        }
        this.bRB = false;
        e(false, false);
        return;
      }
      aM(true);
      return;
    }
    aM(true);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int k = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (this.bmT != null)
    {
      paramInt1 = paramInt2;
      if (paramInt2 == 0) {
        paramInt1 = this.bmT.getHeight();
      }
      double d1 = Double.POSITIVE_INFINITY;
      double d2 = Double.POSITIVE_INFINITY;
      if (j < this.bmT.getWidth()) {
        d1 = j / this.bmT.getWidth();
      }
      if (paramInt1 < this.bmT.getHeight()) {
        d2 = paramInt1 / this.bmT.getHeight();
      }
      int i;
      if ((d1 != Double.POSITIVE_INFINITY) || (d2 != Double.POSITIVE_INFINITY)) {
        if (d1 <= d2)
        {
          paramInt2 = (int)(d1 * this.bmT.getHeight());
          i = j;
        }
      }
      for (;;)
      {
        i = n(k, j, i);
        paramInt1 = n(m, paramInt1, paramInt2);
        this.bRg = i;
        this.bRh = paramInt1;
        setMeasuredDimension(this.bRg, this.bRh);
        return;
        i = (int)(this.bmT.getWidth() * d2);
        paramInt2 = paramInt1;
        continue;
        i = this.bmT.getWidth();
        paramInt2 = this.bmT.getHeight();
      }
    }
    setMeasuredDimension(j, paramInt2);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof Bundle))
    {
      Bundle localBundle = (Bundle)paramParcelable;
      if ((this.bRD == null) && (this.bRu == null) && (this.bmT == null) && (this.bRi == 0))
      {
        Uri localUri = (Uri)localBundle.getParcelable("LOADED_IMAGE_URI");
        if (localUri == null) {
          break label322;
        }
        paramParcelable = localBundle.getString("LOADED_IMAGE_STATE_BITMAP_KEY");
        if (paramParcelable != null)
        {
          if ((c.bPO == null) || (!((String)c.bPO.first).equals(paramParcelable))) {
            break label317;
          }
          paramParcelable = (Bitmap)((WeakReference)c.bPO.second).get();
          c.bPO = null;
          if ((paramParcelable != null) && (!paramParcelable.isRecycled())) {
            a(paramParcelable, 0, localUri, localBundle.getInt("LOADED_SAMPLE_SIZE"), 0);
          }
        }
        if (this.bRu == null) {
          setImageUriAsync(localUri);
        }
      }
      for (;;)
      {
        int i = localBundle.getInt("DEGREES_ROTATED");
        this.bRA = i;
        this.bPq = i;
        paramParcelable = (Rect)localBundle.getParcelable("INITIAL_CROP_RECT");
        if ((paramParcelable != null) && ((paramParcelable.width() > 0) || (paramParcelable.height() > 0))) {
          this.bPU.setInitialCropWindowRect(paramParcelable);
        }
        paramParcelable = (RectF)localBundle.getParcelable("CROP_WINDOW_RECT");
        if ((paramParcelable != null) && ((paramParcelable.width() > 0.0F) || (paramParcelable.height() > 0.0F))) {
          this.bRz = paramParcelable;
        }
        this.bPU.setCropShape(b.valueOf(localBundle.getString("CROP_SHAPE")));
        this.bRn = localBundle.getBoolean("CROP_AUTO_ZOOM_ENABLED");
        this.bRo = localBundle.getInt("CROP_MAX_ZOOM");
        this.bPy = localBundle.getBoolean("CROP_FLIP_HORIZONTALLY");
        this.bPz = localBundle.getBoolean("CROP_FLIP_VERTICALLY");
        super.onRestoreInstanceState(localBundle.getParcelable("instanceState"));
        return;
        label317:
        paramParcelable = null;
        break;
        label322:
        i = localBundle.getInt("LOADED_IMAGE_RESOURCE");
        if (i > 0)
        {
          setImageResource(i);
        }
        else
        {
          paramParcelable = (Uri)localBundle.getParcelable("LOADING_IMAGE_URI");
          if (paramParcelable != null) {
            setImageUriAsync(paramParcelable);
          }
        }
      }
    }
    super.onRestoreInstanceState(paramParcelable);
  }
  
  public Parcelable onSaveInstanceState()
  {
    if ((this.bRu == null) && (this.bmT == null) && (this.bRi <= 0)) {
      return super.onSaveInstanceState();
    }
    Bundle localBundle = new Bundle();
    Object localObject2 = this.bRu;
    Object localObject1 = localObject2;
    if (this.bRk)
    {
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (this.bRi <= 0)
        {
          localObject1 = c.a(getContext(), this.bmT, this.bRC);
          this.bRC = ((Uri)localObject1);
        }
      }
    }
    if ((localObject1 != null) && (this.bmT != null))
    {
      localObject2 = UUID.randomUUID().toString();
      c.bPO = new Pair(localObject2, new WeakReference(this.bmT));
      localBundle.putString("LOADED_IMAGE_STATE_BITMAP_KEY", (String)localObject2);
    }
    if (this.bRD != null)
    {
      localObject2 = (b)this.bRD.get();
      if (localObject2 != null) {
        localBundle.putParcelable("LOADING_IMAGE_URI", ((b)localObject2).DD);
      }
    }
    localBundle.putParcelable("instanceState", super.onSaveInstanceState());
    localBundle.putParcelable("LOADED_IMAGE_URI", (Parcelable)localObject1);
    localBundle.putInt("LOADED_IMAGE_RESOURCE", this.bRi);
    localBundle.putInt("LOADED_SAMPLE_SIZE", this.bRv);
    localBundle.putInt("DEGREES_ROTATED", this.bPq);
    localBundle.putParcelable("INITIAL_CROP_RECT", this.bPU.getInitialCropWindowRect());
    c.bPK.set(this.bPU.getCropWindowRect());
    this.bQZ.invert(this.bRa);
    this.bRa.mapRect(c.bPK);
    localBundle.putParcelable("CROP_WINDOW_RECT", c.bPK);
    localBundle.putString("CROP_SHAPE", this.bPU.getCropShape().name());
    localBundle.putBoolean("CROP_AUTO_ZOOM_ENABLED", this.bRn);
    localBundle.putInt("CROP_MAX_ZOOM", this.bRo);
    localBundle.putBoolean("CROP_FLIP_HORIZONTALLY", this.bPy);
    localBundle.putBoolean("CROP_FLIP_VERTICALLY", this.bPz);
    return localBundle;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt3 > 0) && (paramInt4 > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      this.bRB = bool;
      return;
    }
  }
  
  public void setAutoZoomEnabled(boolean paramBoolean)
  {
    if (this.bRn != paramBoolean)
    {
      this.bRn = paramBoolean;
      e(false, false);
      this.bPU.invalidate();
    }
  }
  
  public void setCropRect(Rect paramRect)
  {
    this.bPU.setInitialCropWindowRect(paramRect);
  }
  
  public void setCropShape(b paramb)
  {
    this.bPU.setCropShape(paramb);
  }
  
  public void setFixedAspectRatio(boolean paramBoolean)
  {
    this.bPU.setFixedAspectRatio(paramBoolean);
  }
  
  public void setFlippedHorizontally(boolean paramBoolean)
  {
    if (this.bPy != paramBoolean)
    {
      this.bPy = paramBoolean;
      a(getWidth(), getHeight(), true, false);
    }
  }
  
  public void setFlippedVertically(boolean paramBoolean)
  {
    if (this.bPz != paramBoolean)
    {
      this.bPz = paramBoolean;
      a(getWidth(), getHeight(), true, false);
    }
  }
  
  public void setGuidelines(c paramc)
  {
    this.bPU.setGuidelines(paramc);
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    this.bPU.setInitialCropWindowRect(null);
    a(paramBitmap, 0, null, 1, 0);
  }
  
  public void setImageResource(int paramInt)
  {
    if (paramInt != 0)
    {
      this.bPU.setInitialCropWindowRect(null);
      a(BitmapFactory.decodeResource(getResources(), paramInt), paramInt, null, 1, 0);
    }
  }
  
  public void setImageUriAsync(Uri paramUri)
  {
    if (paramUri != null) {
      if (this.bRD == null) {
        break label100;
      }
    }
    label100:
    for (b localb = (b)this.bRD.get();; localb = null)
    {
      if (localb != null) {
        localb.cancel(true);
      }
      AI();
      this.bRz = null;
      this.bRA = 0;
      this.bPU.setInitialCropWindowRect(null);
      this.bRD = new WeakReference(new b(this, paramUri));
      ((b)this.bRD.get()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
      AL();
      return;
    }
  }
  
  public void setMaxZoom(int paramInt)
  {
    if ((this.bRo != paramInt) && (paramInt > 0))
    {
      this.bRo = paramInt;
      e(false, false);
      this.bPU.invalidate();
    }
  }
  
  public void setMultiTouchEnabled(boolean paramBoolean)
  {
    if (this.bPU.aO(paramBoolean))
    {
      e(false, false);
      this.bPU.invalidate();
    }
  }
  
  public void setOnCropImageCompleteListener(d paramd)
  {
    this.bRt = paramd;
  }
  
  public void setOnCropWindowChangedListener(g paramg)
  {
    this.bRr = paramg;
  }
  
  public void setOnSetCropOverlayMovedListener(e parame)
  {
    this.bRq = parame;
  }
  
  public void setOnSetCropOverlayReleasedListener(f paramf)
  {
    this.bRp = paramf;
  }
  
  public void setOnSetImageUriCompleteListener(h paramh)
  {
    this.bRs = paramh;
  }
  
  public void setRotatedDegrees(int paramInt)
  {
    if (this.bPq != paramInt) {
      ef(paramInt - this.bPq);
    }
  }
  
  public void setSaveBitmapToInstanceState(boolean paramBoolean)
  {
    this.bRk = paramBoolean;
  }
  
  public void setScaleType(j paramj)
  {
    if (paramj != this.bRj)
    {
      this.bRj = paramj;
      this.bRw = 1.0F;
      this.bRy = 0.0F;
      this.bRx = 0.0F;
      this.bPU.AO();
      requestLayout();
    }
  }
  
  public void setShowCropOverlay(boolean paramBoolean)
  {
    if (this.bRl != paramBoolean)
    {
      this.bRl = paramBoolean;
      AK();
    }
  }
  
  public void setShowProgressBar(boolean paramBoolean)
  {
    if (this.bRm != paramBoolean)
    {
      this.bRm = paramBoolean;
      AL();
    }
  }
  
  public void setSnapRadius(float paramFloat)
  {
    if (paramFloat >= 0.0F) {
      this.bPU.setSnapRadius(paramFloat);
    }
  }
  
  public static class a
  {
    public final Uri DD;
    final float[] bPp;
    private final Bitmap bRG;
    final Uri bRH;
    public final Exception bRI;
    final Rect bRJ;
    final Rect bRK;
    final int bRL;
    final int bRM;
    private final Bitmap bmT;
    
    a(Bitmap paramBitmap1, Uri paramUri1, Bitmap paramBitmap2, Uri paramUri2, Exception paramException, float[] paramArrayOfFloat, Rect paramRect1, Rect paramRect2, int paramInt1, int paramInt2)
    {
      this.bRG = paramBitmap1;
      this.bRH = paramUri1;
      this.bmT = paramBitmap2;
      this.DD = paramUri2;
      this.bRI = paramException;
      this.bPp = paramArrayOfFloat;
      this.bRJ = paramRect1;
      this.bRK = paramRect2;
      this.bRL = paramInt1;
      this.bRM = paramInt2;
    }
  }
  
  public static enum b
  {
    private b() {}
  }
  
  public static enum c
  {
    private c() {}
  }
  
  public static abstract interface d
  {
    public abstract void a(CropImageView.a parama);
  }
  
  public static abstract interface e {}
  
  public static abstract interface f {}
  
  public static abstract interface g {}
  
  public static abstract interface h
  {
    public abstract void g(Exception paramException);
  }
  
  public static enum i
  {
    public static final int bRU = 1;
    public static final int bRV = 2;
    public static final int bRW = 3;
    public static final int bRX = 4;
    public static final int bRY = 5;
    
    public static int[] AM()
    {
      return (int[])bRZ.clone();
    }
  }
  
  public static enum j
  {
    private j() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/CropImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */