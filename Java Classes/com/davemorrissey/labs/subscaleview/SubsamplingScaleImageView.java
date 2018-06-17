package com.davemorrissey.labs.subscaleview;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewParent;
import com.davemorrissey.labs.subscaleview.a.c;
import com.davemorrissey.labs.subscaleview.a.d;
import com.davemorrissey.labs.subscaleview.a.e;
import com.davemorrissey.labs.subscaleview.a.f;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Executor;

public class SubsamplingScaleImageView
  extends View
{
  private static final String TAG = SubsamplingScaleImageView.class.getSimpleName();
  private static final List<Integer> avA = Arrays.asList(new Integer[] { Integer.valueOf(2), Integer.valueOf(1), Integer.valueOf(3) });
  private static final List<Integer> avw = Arrays.asList(new Integer[] { Integer.valueOf(0), Integer.valueOf(90), Integer.valueOf(180), Integer.valueOf(270), Integer.valueOf(-1) });
  private static final List<Integer> avx = Arrays.asList(new Integer[] { Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3) });
  private static final List<Integer> avy = Arrays.asList(new Integer[] { Integer.valueOf(2), Integer.valueOf(1) });
  private static final List<Integer> avz = Arrays.asList(new Integer[] { Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3) });
  private boolean avB;
  private boolean avC;
  private int avD;
  private Map<Integer, List<g>> avE;
  private boolean avF;
  private float avG = 2.0F;
  private float avH = ku();
  private int avI = -1;
  private int avJ = 1;
  private int avK = 1;
  private boolean avL;
  private boolean avM = true;
  private boolean avN = true;
  private boolean avO = true;
  private float avP = 1.0F;
  private int avQ = 1;
  private int avR = 500;
  private float avS;
  private PointF avT;
  private PointF avU;
  private Float avV;
  private PointF avW;
  private PointF avX;
  private int avY;
  private Rect avZ;
  private Bitmap avo;
  private int avr;
  private int avs;
  private Rect avt;
  private float avv;
  private RectF awA;
  private float[] awB = new float[8];
  private float[] awC = new float[8];
  private boolean awa;
  private boolean awb;
  private boolean awc;
  private int awd;
  private GestureDetector awe;
  private d awf;
  private final Object awg = new Object();
  private com.davemorrissey.labs.subscaleview.a.b<? extends c> awh = new com.davemorrissey.labs.subscaleview.a.a(e.class);
  private com.davemorrissey.labs.subscaleview.a.b<? extends d> awi = new com.davemorrissey.labs.subscaleview.a.a(f.class);
  private PointF awj;
  private float awk;
  private final float awl;
  private PointF awm;
  private float awn;
  private PointF awo;
  private boolean awp;
  private a awq;
  private boolean awr;
  private boolean aws;
  private e awt;
  private View.OnLongClickListener awu;
  private Paint awv;
  private Paint aww;
  private Paint awx;
  private f awy;
  private Matrix awz;
  private Handler handler;
  private int orientation = 0;
  private Uri uri;
  
  public SubsamplingScaleImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SubsamplingScaleImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setMinimumDpi(160);
    setDoubleTapZoomDpi(160);
    setGestureDetector(paramContext);
    this.handler = new Handler(new Handler.Callback()
    {
      public final boolean handleMessage(Message paramAnonymousMessage)
      {
        if ((paramAnonymousMessage.what == 1) && (SubsamplingScaleImageView.a(SubsamplingScaleImageView.this) != null))
        {
          SubsamplingScaleImageView.b(SubsamplingScaleImageView.this);
          SubsamplingScaleImageView.a(SubsamplingScaleImageView.this, SubsamplingScaleImageView.a(SubsamplingScaleImageView.this));
          SubsamplingScaleImageView.this.performLongClick();
          SubsamplingScaleImageView.c(SubsamplingScaleImageView.this);
        }
        return true;
      }
    });
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, c.a.SubsamplingScaleImageView);
      if (paramAttributeSet.hasValue(1))
      {
        String str = paramAttributeSet.getString(1);
        if ((str != null) && (str.length() > 0))
        {
          if (str == null) {
            throw new NullPointerException("Asset name must not be null");
          }
          setImage(a.aH("file:///android_asset/" + str).km());
        }
      }
      if (paramAttributeSet.hasValue(0))
      {
        int i = paramAttributeSet.getResourceId(0, 0);
        if (i > 0) {
          setImage(new a(i).km());
        }
      }
      if (paramAttributeSet.hasValue(2)) {
        setPanEnabled(paramAttributeSet.getBoolean(2, true));
      }
      if (paramAttributeSet.hasValue(3)) {
        setZoomEnabled(paramAttributeSet.getBoolean(3, true));
      }
      if (paramAttributeSet.hasValue(4)) {
        setQuickScaleEnabled(paramAttributeSet.getBoolean(4, true));
      }
      if (paramAttributeSet.hasValue(5)) {
        setTileBackgroundColor(paramAttributeSet.getColor(5, Color.argb(0, 0, 0, 0)));
      }
      paramAttributeSet.recycle();
    }
    this.awl = TypedValue.applyDimension(1, 20.0F, paramContext.getResources().getDisplayMetrics());
  }
  
  private static float a(int paramInt, long paramLong1, float paramFloat1, float paramFloat2, long paramLong2)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalStateException("Unexpected easing type: " + paramInt);
    case 2: 
      f = (float)paramLong1 / ((float)paramLong2 / 2.0F);
      if (f < 1.0F) {
        return f * (paramFloat2 / 2.0F * f) + paramFloat1;
      }
      f -= 1.0F;
      return (f * (f - 2.0F) - 1.0F) * (-paramFloat2 / 2.0F) + paramFloat1;
    }
    float f = (float)paramLong1 / (float)paramLong2;
    return (f - 2.0F) * (-paramFloat2 * f) + paramFloat1;
  }
  
  private static Point a(Canvas paramCanvas)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      try
      {
        paramCanvas = new Point(((Integer)Canvas.class.getMethod("getMaximumBitmapWidth", new Class[0]).invoke(paramCanvas, new Object[0])).intValue(), ((Integer)Canvas.class.getMethod("getMaximumBitmapHeight", new Class[0]).invoke(paramCanvas, new Object[0])).intValue());
        return paramCanvas;
      }
      catch (Exception paramCanvas) {}
    }
    return new Point(2048, 2048);
  }
  
  private PointF a(float paramFloat1, float paramFloat2, PointF paramPointF)
  {
    if (this.avT == null) {
      return null;
    }
    paramPointF.set(v(paramFloat1), w(paramFloat2));
    return paramPointF;
  }
  
  private void a(Bitmap paramBitmap)
  {
    for (;;)
    {
      try
      {
        if ((this.avo != null) || (this.aws))
        {
          paramBitmap.recycle();
          return;
        }
        if (this.avZ != null)
        {
          this.avo = Bitmap.createBitmap(paramBitmap, this.avZ.left, this.avZ.top, this.avZ.width(), this.avZ.height());
          this.avB = true;
          if (ko())
          {
            invalidate();
            requestLayout();
          }
        }
        else
        {
          this.avo = paramBitmap;
        }
      }
      finally {}
    }
  }
  
  private void a(Bitmap paramBitmap, int paramInt, boolean paramBoolean)
  {
    try
    {
      if ((this.avr > 0) && (this.avs > 0) && ((this.avr != paramBitmap.getWidth()) || (this.avs != paramBitmap.getHeight()))) {
        am(false);
      }
      if ((this.avo != null) && (!this.avC)) {
        this.avo.recycle();
      }
      this.avB = false;
      this.avC = paramBoolean;
      this.avo = paramBitmap;
      this.avr = paramBitmap.getWidth();
      this.avs = paramBitmap.getHeight();
      this.avY = paramInt;
      paramBoolean = ko();
      boolean bool = kp();
      if ((paramBoolean) || (bool))
      {
        invalidate();
        requestLayout();
      }
      return;
    }
    finally {}
  }
  
  private void a(Point paramPoint)
  {
    for (;;)
    {
      try
      {
        this.awy = new f(0.0F, new PointF(0.0F, 0.0F), (byte)0);
        a(true, this.awy);
        this.avD = u(this.awy.avv);
        if (this.avD > 1) {
          this.avD /= 2;
        }
        if ((this.avD == 1) && (this.avt == null) && (ks() < paramPoint.x) && (kt() < paramPoint.y))
        {
          this.awf.recycle();
          this.awf = null;
          a(new c(this, getContext(), this.awh, this.uri, false));
          return;
        }
        b(paramPoint);
        paramPoint = ((List)this.avE.get(Integer.valueOf(this.avD))).iterator();
        if (paramPoint.hasNext())
        {
          g localg = (g)paramPoint.next();
          a(new h(this, this.awf, localg));
        }
        else
        {
          an(true);
        }
      }
      finally {}
    }
  }
  
  private void a(PointF paramPointF1, PointF paramPointF2)
  {
    float f2;
    int i;
    label68:
    float f1;
    if (!this.avM)
    {
      if (this.avX != null)
      {
        paramPointF1.x = this.avX.x;
        paramPointF1.y = this.avX.y;
      }
    }
    else
    {
      f2 = Math.min(this.avG, this.avP);
      if (this.avv > f2 * 0.9D) {
        break label141;
      }
      i = 1;
      if (i == 0) {
        break label147;
      }
      f1 = f2;
      label76:
      if (this.avQ != 3) {
        break label155;
      }
      this.awq = null;
      this.avV = Float.valueOf(f1);
      this.avW = paramPointF1;
      this.avX = paramPointF1;
      invalidate();
    }
    for (;;)
    {
      invalidate();
      return;
      paramPointF1.x = (ks() / 2);
      paramPointF1.y = (kt() / 2);
      break;
      label141:
      i = 0;
      break label68;
      label147:
      f1 = ku();
      break label76;
      label155:
      if ((this.avQ == 2) || (i == 0) || (!this.avM))
      {
        paramPointF1 = new b(f1, paramPointF1, (byte)0);
        paramPointF1.awL = false;
        paramPointF1.awK = this.avR;
        paramPointF1.start();
      }
      else if (this.avQ == 1)
      {
        paramPointF1 = new b(f2, paramPointF1, paramPointF2, (byte)0);
        paramPointF1.awL = false;
        paramPointF1.awK = this.avR;
        paramPointF1.start();
      }
    }
  }
  
  private void a(AsyncTask<Void, Void, ?> paramAsyncTask)
  {
    if ((this.avL) && (Build.VERSION.SDK_INT >= 11)) {
      try
      {
        Executor localExecutor = (Executor)AsyncTask.class.getField("THREAD_POOL_EXECUTOR").get(null);
        AsyncTask.class.getMethod("executeOnExecutor", new Class[] { Executor.class, Object[].class }).invoke(paramAsyncTask, new Object[] { localExecutor, null });
        return;
      }
      catch (Exception localException)
      {
        Log.i(TAG, "Failed to execute AsyncTask on thread pool executor, falling back to single threaded executor", localException);
      }
    }
    paramAsyncTask.execute(new Void[0]);
  }
  
  private void a(d paramd, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      if ((this.avr > 0) && (this.avs > 0) && ((this.avr != paramInt1) || (this.avs != paramInt2)))
      {
        am(false);
        if (this.avo != null)
        {
          if (!this.avC) {
            this.avo.recycle();
          }
          this.avo = null;
          this.avB = false;
          this.avC = false;
        }
      }
      this.awf = paramd;
      this.avr = paramInt1;
      this.avs = paramInt2;
      this.avY = paramInt3;
      ko();
      kp();
      invalidate();
      requestLayout();
      return;
    }
    finally {}
  }
  
  private void a(boolean paramBoolean, f paramf)
  {
    float f2 = 0.5F;
    boolean bool = paramBoolean;
    if (this.avJ == 2)
    {
      bool = paramBoolean;
      if (this.awr) {
        bool = false;
      }
    }
    PointF localPointF = paramf.avT;
    float f4 = z(paramf.avv);
    float f3 = f4 * ks();
    float f5 = f4 * kt();
    float f1;
    if ((this.avJ == 3) && (this.awr))
    {
      localPointF.x = Math.max(localPointF.x, getWidth() / 2 - f3);
      localPointF.y = Math.max(localPointF.y, getHeight() / 2 - f5);
      if ((getPaddingLeft() <= 0) && (getPaddingRight() <= 0)) {
        break label350;
      }
      f1 = getPaddingLeft() / (getPaddingLeft() + getPaddingRight());
      label157:
      if ((getPaddingTop() > 0) || (getPaddingBottom() > 0)) {
        f2 = getPaddingTop() / (getPaddingTop() + getPaddingBottom());
      }
      if ((this.avJ != 3) || (!this.awr)) {
        break label357;
      }
      f2 = Math.max(0, getWidth() / 2);
      f1 = Math.max(0, getHeight() / 2);
    }
    for (;;)
    {
      localPointF.x = Math.min(localPointF.x, f2);
      localPointF.y = Math.min(localPointF.y, f1);
      paramf.avv = f4;
      return;
      if (bool)
      {
        localPointF.x = Math.max(localPointF.x, getWidth() - f3);
        localPointF.y = Math.max(localPointF.y, getHeight() - f5);
        break;
      }
      localPointF.x = Math.max(localPointF.x, -f3);
      localPointF.y = Math.max(localPointF.y, -f5);
      break;
      label350:
      f1 = 0.5F;
      break label157;
      label357:
      if (bool)
      {
        f3 = Math.max(0.0F, (getWidth() - f3) * f1);
        f1 = Math.max(0.0F, (getHeight() - f5) * f2);
        f2 = f3;
      }
      else
      {
        f2 = Math.max(0, getWidth());
        f1 = Math.max(0, getHeight());
      }
    }
  }
  
  private static void a(float[] paramArrayOfFloat, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    paramArrayOfFloat[0] = paramFloat1;
    paramArrayOfFloat[1] = paramFloat2;
    paramArrayOfFloat[2] = paramFloat3;
    paramArrayOfFloat[3] = paramFloat4;
    paramArrayOfFloat[4] = paramFloat5;
    paramArrayOfFloat[5] = paramFloat6;
    paramArrayOfFloat[6] = paramFloat7;
    paramArrayOfFloat[7] = paramFloat8;
  }
  
  private int aI(String paramString)
  {
    int i = 0;
    int j = 0;
    if (paramString.startsWith("content")) {}
    do
    {
      do
      {
        for (;;)
        {
          try
          {
            paramString = getContext().getContentResolver().query(Uri.parse(paramString), new String[] { "orientation" }, null, null, null);
            if (paramString == null) {
              break label254;
            }
            if (paramString.moveToFirst())
            {
              j = paramString.getInt(0);
              boolean bool = avw.contains(Integer.valueOf(j));
              if ((bool) && (j != -1)) {
                i = j;
              }
            }
          }
          catch (Exception paramString) {}
          try
          {
            paramString.close();
            return i;
          }
          catch (Exception paramString)
          {
            for (;;) {}
          }
          Log.w(TAG, "Unsupported orientation: " + j);
          i = 0;
        }
        Log.w(TAG, "Could not get orientation of image from media store");
        return i;
        i = j;
      } while (!paramString.startsWith("file:///"));
      i = j;
    } while (paramString.startsWith("file:///android_asset/"));
    int k;
    label254:
    label259:
    do
    {
      try
      {
        k = new ExifInterface(paramString.substring(7)).getAttributeInt("Orientation", 1);
        i = j;
        if (k == 1) {
          break;
        }
        i = j;
        if (k == 0) {
          break;
        }
        if (k != 6) {
          break label259;
        }
        return 90;
      }
      catch (Exception paramString)
      {
        Log.w(TAG, "Could not get EXIF orientation of image");
        return 0;
      }
      Log.w(TAG, "Unsupported EXIF orientation: " + k);
      return 0;
      i = 0;
      break;
      if (k == 3) {
        return 180;
      }
    } while (k != 8);
    return 270;
  }
  
  private void am(boolean paramBoolean)
  {
    this.avv = 0.0F;
    this.avS = 0.0F;
    this.avT = null;
    this.avU = null;
    this.avV = Float.valueOf(0.0F);
    this.avW = null;
    this.avX = null;
    this.awa = false;
    this.awb = false;
    this.awc = false;
    this.awd = 0;
    this.avD = 0;
    this.awj = null;
    this.awk = 0.0F;
    this.awm = null;
    this.awn = 0.0F;
    this.awo = null;
    this.awp = false;
    this.awq = null;
    this.awy = null;
    this.awz = null;
    this.awA = null;
    if (paramBoolean)
    {
      this.uri = null;
      if (this.awf == null) {}
    }
    synchronized (this.awg)
    {
      this.awf.recycle();
      this.awf = null;
      if ((this.avo != null) && (!this.avC)) {
        this.avo.recycle();
      }
      this.avr = 0;
      this.avs = 0;
      this.avY = 0;
      this.avt = null;
      this.avZ = null;
      this.awr = false;
      this.aws = false;
      this.avo = null;
      this.avB = false;
      this.avC = false;
      if (this.avE == null) {
        break label338;
      }
      g localg;
      do
      {
        ??? = this.avE.entrySet().iterator();
        Iterator localIterator;
        while (!localIterator.hasNext())
        {
          if (!((Iterator)???).hasNext()) {
            break;
          }
          localIterator = ((List)((Map.Entry)((Iterator)???).next()).getValue()).iterator();
        }
        localg = (g)localIterator.next();
        localg.axa = false;
      } while (localg.avo == null);
      localg.avo.recycle();
      localg.avo = null;
    }
    this.avE = null;
    label338:
    setGestureDetector(getContext());
  }
  
  private void an(boolean paramBoolean)
  {
    if ((this.awf == null) || (this.avE == null)) {
      return;
    }
    int j = Math.min(this.avD, u(this.avv));
    Iterator localIterator1 = this.avE.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((List)((Map.Entry)localIterator1.next()).getValue()).iterator();
      while (localIterator2.hasNext())
      {
        g localg = (g)localIterator2.next();
        if ((localg.awZ < j) || ((localg.awZ > j) && (localg.awZ != this.avD)))
        {
          localg.axa = false;
          if (localg.avo != null)
          {
            localg.avo.recycle();
            localg.avo = null;
          }
        }
        if (localg.awZ == j)
        {
          float f1 = v(0.0F);
          float f2 = v(getWidth());
          float f3 = w(0.0F);
          float f4 = w(getHeight());
          if ((f1 <= localg.awY.right) && (localg.awY.left <= f2) && (f3 <= localg.awY.bottom) && (localg.awY.top <= f4)) {}
          for (int i = 1;; i = 0)
          {
            if (i == 0) {
              break label328;
            }
            localg.axa = true;
            if ((localg.loading) || (localg.avo != null) || (!paramBoolean)) {
              break;
            }
            a(new h(this, this.awf, localg));
            break;
          }
          label328:
          if (localg.awZ != this.avD)
          {
            localg.axa = false;
            if (localg.avo != null)
            {
              localg.avo.recycle();
              localg.avo = null;
            }
          }
        }
        else if (localg.awZ == this.avD)
        {
          localg.axa = true;
        }
      }
    }
  }
  
  private void ao(boolean paramBoolean)
  {
    int i;
    if (this.avT == null)
    {
      i = 1;
      this.avT = new PointF(0.0F, 0.0F);
    }
    for (;;)
    {
      if (this.awy == null) {
        this.awy = new f(0.0F, new PointF(0.0F, 0.0F), (byte)0);
      }
      this.awy.avv = this.avv;
      this.awy.avT.set(this.avT);
      a(paramBoolean, this.awy);
      this.avv = this.awy.avv;
      this.avT.set(this.awy.avT);
      if (i != 0) {
        this.avT.set(f(ks() / 2, kt() / 2, this.avv));
      }
      return;
      i = 0;
    }
  }
  
  private void b(Point paramPoint)
  {
    this.avE = new LinkedHashMap();
    int i = this.avD;
    int j = 1;
    int m = 1;
    int k = ks() / j;
    int i2 = kt() / m;
    int n = k / i;
    int i1 = i2 / i;
    while ((n + j + 1 > paramPoint.x) || ((n > getWidth() * 1.25D) && (i < this.avD)))
    {
      j += 1;
      k = ks() / j;
      n = k / i;
    }
    for (;;)
    {
      if ((i1 + m + 1 > paramPoint.y) || ((i1 > getHeight() * 1.25D) && (i < this.avD)))
      {
        m += 1;
        n = kt() / m;
        i1 = n / i;
      }
      else
      {
        ArrayList localArrayList = new ArrayList(j * m);
        i1 = 0;
        while (i1 < j)
        {
          i2 = 0;
          if (i2 < m)
          {
            g localg = new g((byte)0);
            localg.awZ = i;
            boolean bool;
            label229:
            int i3;
            if (i == this.avD)
            {
              bool = true;
              localg.axa = bool;
              if (i1 != j - 1) {
                break label349;
              }
              i3 = ks();
              label250:
              if (i2 != m - 1) {
                break label361;
              }
            }
            label349:
            label361:
            for (int i4 = kt();; i4 = (i2 + 1) * n)
            {
              localg.awY = new Rect(i1 * k, i2 * n, i3, i4);
              localg.axb = new Rect(0, 0, 0, 0);
              localg.axc = new Rect(localg.awY);
              localArrayList.add(localg);
              i2 += 1;
              break;
              bool = false;
              break label229;
              i3 = (i1 + 1) * k;
              break label250;
            }
          }
          i1 += 1;
        }
        this.avE.put(Integer.valueOf(i), localArrayList);
        if (i != 1)
        {
          i /= 2;
          break;
        }
        return;
        n = i2;
      }
    }
  }
  
  private static float c(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 -= paramFloat2;
    paramFloat2 = paramFloat3 - paramFloat4;
    return (float)Math.sqrt(paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2);
  }
  
  private PointF f(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = getPaddingLeft();
    int j = (getWidth() - getPaddingRight() - getPaddingLeft()) / 2;
    int k = getPaddingTop();
    int m = (getHeight() - getPaddingBottom() - getPaddingTop()) / 2;
    if (this.awy == null) {
      this.awy = new f(0.0F, new PointF(0.0F, 0.0F), (byte)0);
    }
    this.awy.avv = paramFloat3;
    this.awy.avT.set(i + j - paramFloat1 * paramFloat3, k + m - paramFloat2 * paramFloat3);
    a(true, this.awy);
    return this.awy.avT;
  }
  
  private int getRequiredRotation()
  {
    if (this.orientation == -1) {
      return this.avY;
    }
    return this.orientation;
  }
  
  private boolean kn()
  {
    if ((this.avo != null) && (!this.avB)) {
      return true;
    }
    if (this.avE != null)
    {
      Iterator localIterator = this.avE.entrySet().iterator();
      boolean bool2;
      for (boolean bool1 = true; localIterator.hasNext(); bool1 = bool2)
      {
        Object localObject = (Map.Entry)localIterator.next();
        bool2 = bool1;
        if (((Integer)((Map.Entry)localObject).getKey()).intValue() == this.avD)
        {
          localObject = ((List)((Map.Entry)localObject).getValue()).iterator();
          for (;;)
          {
            bool2 = bool1;
            if (!((Iterator)localObject).hasNext()) {
              break;
            }
            g localg = (g)((Iterator)localObject).next();
            if ((localg.loading) || (localg.avo == null)) {
              bool1 = false;
            }
          }
        }
      }
      return bool1;
    }
    return false;
  }
  
  private boolean ko()
  {
    if ((getWidth() > 0) && (getHeight() > 0) && (this.avr > 0) && (this.avs > 0) && ((this.avo != null) || (kn()))) {}
    for (boolean bool = true;; bool = false)
    {
      if ((!this.awr) && (bool))
      {
        kq();
        this.awr = true;
      }
      return bool;
    }
  }
  
  private boolean kp()
  {
    boolean bool = kn();
    if ((!this.aws) && (bool))
    {
      kq();
      this.aws = true;
      if (this.awt != null) {
        this.awt.ky();
      }
    }
    return bool;
  }
  
  private void kq()
  {
    if ((getWidth() == 0) || (getHeight() == 0) || (this.avr <= 0) || (this.avs <= 0)) {
      return;
    }
    if ((this.avW != null) && (this.avV != null))
    {
      this.avv = this.avV.floatValue();
      if (this.avT == null) {
        this.avT = new PointF();
      }
      this.avT.x = (getWidth() / 2 - this.avv * this.avW.x);
      this.avT.y = (getHeight() / 2 - this.avv * this.avW.y);
      this.avW = null;
      this.avV = null;
      ao(true);
      an(true);
    }
    ao(false);
  }
  
  private void kr()
  {
    try
    {
      ko();
      kp();
      if ((kn()) && (this.avo != null))
      {
        if (!this.avC) {
          this.avo.recycle();
        }
        this.avo = null;
        this.avB = false;
        this.avC = false;
      }
      invalidate();
      return;
    }
    finally {}
  }
  
  private int ks()
  {
    int i = getRequiredRotation();
    if ((i == 90) || (i == 270)) {
      return this.avs;
    }
    return this.avr;
  }
  
  private int kt()
  {
    int i = getRequiredRotation();
    if ((i == 90) || (i == 270)) {
      return this.avr;
    }
    return this.avs;
  }
  
  private float ku()
  {
    int i = getPaddingBottom() + getPaddingTop();
    int j = getPaddingLeft() + getPaddingRight();
    if (this.avK == 2) {
      return Math.max((getWidth() - j) / ks(), (getHeight() - i) / kt());
    }
    if ((this.avK == 3) && (this.avH > 0.0F)) {
      return this.avH;
    }
    return Math.min((getWidth() - j) / ks(), (getHeight() - i) / kt());
  }
  
  private void setGestureDetector(final Context paramContext)
  {
    this.awe = new GestureDetector(paramContext, new GestureDetector.SimpleOnGestureListener()
    {
      public final boolean onDoubleTap(MotionEvent paramAnonymousMotionEvent)
      {
        if ((SubsamplingScaleImageView.i(SubsamplingScaleImageView.this)) && (SubsamplingScaleImageView.e(SubsamplingScaleImageView.this)) && (SubsamplingScaleImageView.f(SubsamplingScaleImageView.this) != null))
        {
          SubsamplingScaleImageView.a(SubsamplingScaleImageView.this, paramContext);
          if (SubsamplingScaleImageView.j(SubsamplingScaleImageView.this))
          {
            SubsamplingScaleImageView.a(SubsamplingScaleImageView.this, new PointF(paramAnonymousMotionEvent.getX(), paramAnonymousMotionEvent.getY()));
            SubsamplingScaleImageView.b(SubsamplingScaleImageView.this, new PointF(SubsamplingScaleImageView.f(SubsamplingScaleImageView.this).x, SubsamplingScaleImageView.f(SubsamplingScaleImageView.this).y));
            SubsamplingScaleImageView.a(SubsamplingScaleImageView.this, SubsamplingScaleImageView.h(SubsamplingScaleImageView.this));
            SubsamplingScaleImageView.k(SubsamplingScaleImageView.this);
            SubsamplingScaleImageView.l(SubsamplingScaleImageView.this);
            SubsamplingScaleImageView.c(SubsamplingScaleImageView.this, SubsamplingScaleImageView.this.a(SubsamplingScaleImageView.m(SubsamplingScaleImageView.this)));
            SubsamplingScaleImageView.n(SubsamplingScaleImageView.this);
            SubsamplingScaleImageView.d(SubsamplingScaleImageView.this, new PointF(SubsamplingScaleImageView.o(SubsamplingScaleImageView.this).x, SubsamplingScaleImageView.o(SubsamplingScaleImageView.this).y));
            SubsamplingScaleImageView.p(SubsamplingScaleImageView.this);
            return false;
          }
          SubsamplingScaleImageView.a(SubsamplingScaleImageView.this, SubsamplingScaleImageView.this.a(new PointF(paramAnonymousMotionEvent.getX(), paramAnonymousMotionEvent.getY())), new PointF(paramAnonymousMotionEvent.getX(), paramAnonymousMotionEvent.getY()));
          return true;
        }
        return super.onDoubleTapEvent(paramAnonymousMotionEvent);
      }
      
      public final boolean onFling(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
      {
        if ((SubsamplingScaleImageView.d(SubsamplingScaleImageView.this)) && (SubsamplingScaleImageView.e(SubsamplingScaleImageView.this)) && (SubsamplingScaleImageView.f(SubsamplingScaleImageView.this) != null) && (paramAnonymousMotionEvent1 != null) && (paramAnonymousMotionEvent2 != null) && ((Math.abs(paramAnonymousMotionEvent1.getX() - paramAnonymousMotionEvent2.getX()) > 50.0F) || (Math.abs(paramAnonymousMotionEvent1.getY() - paramAnonymousMotionEvent2.getY()) > 50.0F)) && ((Math.abs(paramAnonymousFloat1) > 500.0F) || (Math.abs(paramAnonymousFloat2) > 500.0F)) && (!SubsamplingScaleImageView.g(SubsamplingScaleImageView.this)))
        {
          paramAnonymousMotionEvent1 = new PointF(SubsamplingScaleImageView.f(SubsamplingScaleImageView.this).x + paramAnonymousFloat1 * 0.25F, SubsamplingScaleImageView.f(SubsamplingScaleImageView.this).y + 0.25F * paramAnonymousFloat2);
          paramAnonymousFloat1 = (SubsamplingScaleImageView.this.getWidth() / 2 - paramAnonymousMotionEvent1.x) / SubsamplingScaleImageView.h(SubsamplingScaleImageView.this);
          paramAnonymousFloat2 = (SubsamplingScaleImageView.this.getHeight() / 2 - paramAnonymousMotionEvent1.y) / SubsamplingScaleImageView.h(SubsamplingScaleImageView.this);
          paramAnonymousMotionEvent1 = new SubsamplingScaleImageView.b(SubsamplingScaleImageView.this, new PointF(paramAnonymousFloat1, paramAnonymousFloat2), (byte)0);
          if (!SubsamplingScaleImageView.kw().contains(Integer.valueOf(1))) {
            throw new IllegalArgumentException("Unknown easing type: 1");
          }
          paramAnonymousMotionEvent1.awM = 1;
          paramAnonymousMotionEvent1.awR = false;
          paramAnonymousMotionEvent1.start();
          return true;
        }
        return super.onFling(paramAnonymousMotionEvent1, paramAnonymousMotionEvent2, paramAnonymousFloat1, paramAnonymousFloat2);
      }
      
      public final boolean onSingleTapConfirmed(MotionEvent paramAnonymousMotionEvent)
      {
        SubsamplingScaleImageView.this.performClick();
        return true;
      }
    });
  }
  
  private int u(float paramFloat)
  {
    float f = paramFloat;
    if (this.avI > 0)
    {
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      f = localDisplayMetrics.xdpi;
      f = (localDisplayMetrics.ydpi + f) / 2.0F;
      f = paramFloat * (this.avI / f);
    }
    int j = (int)(ks() * f);
    int i = (int)(kt() * f);
    if ((j == 0) || (i == 0)) {
      return 32;
    }
    if ((kt() > i) || (ks() > j))
    {
      i = Math.round(kt() / i);
      j = Math.round(ks() / j);
      if (i >= j) {}
    }
    for (;;)
    {
      j = 1;
      for (;;)
      {
        if (j * 2 < i)
        {
          j *= 2;
          continue;
          i = j;
          break;
        }
      }
      return j;
      i = 1;
    }
  }
  
  private float v(float paramFloat)
  {
    if (this.avT == null) {
      return NaN.0F;
    }
    return (paramFloat - this.avT.x) / this.avv;
  }
  
  private float w(float paramFloat)
  {
    if (this.avT == null) {
      return NaN.0F;
    }
    return (paramFloat - this.avT.y) / this.avv;
  }
  
  private float x(float paramFloat)
  {
    if (this.avT == null) {
      return NaN.0F;
    }
    return this.avv * paramFloat + this.avT.x;
  }
  
  private float y(float paramFloat)
  {
    if (this.avT == null) {
      return NaN.0F;
    }
    return this.avv * paramFloat + this.avT.y;
  }
  
  private float z(float paramFloat)
  {
    paramFloat = Math.max(ku(), paramFloat);
    return Math.min(this.avG, paramFloat);
  }
  
  public final PointF a(PointF paramPointF)
  {
    return a(paramPointF.x, paramPointF.y, new PointF());
  }
  
  public final void a(a parama1, a parama2)
  {
    if (parama1 == null) {
      throw new NullPointerException("imageSource must not be null");
    }
    am(true);
    if (parama2 != null)
    {
      if (parama1.avo != null) {
        throw new IllegalArgumentException("Preview image cannot be used when a bitmap is provided for the main image");
      }
      if ((parama1.avr <= 0) || (parama1.avs <= 0)) {
        throw new IllegalArgumentException("Preview image cannot be used unless dimensions are provided for the main image");
      }
      this.avr = parama1.avr;
      this.avs = parama1.avs;
      this.avZ = parama2.avt;
      if (parama2.avo == null) {
        break label170;
      }
      this.avC = parama2.avu;
      a(parama2.avo);
    }
    while ((parama1.avo != null) && (parama1.avt != null))
    {
      a(Bitmap.createBitmap(parama1.avo, parama1.avt.left, parama1.avt.top, parama1.avt.width(), parama1.avt.height()), 0, false);
      return;
      label170:
      Uri localUri2 = parama2.uri;
      Uri localUri1 = localUri2;
      if (localUri2 == null)
      {
        localUri1 = localUri2;
        if (parama2.avp != null) {
          localUri1 = Uri.parse("android.resource://" + getContext().getPackageName() + "/" + parama2.avp);
        }
      }
      a(new c(this, getContext(), this.awh, localUri1, true));
    }
    if (parama1.avo != null)
    {
      a(parama1.avo, 0, parama1.avu);
      return;
    }
    this.avt = parama1.avt;
    this.uri = parama1.uri;
    if ((this.uri == null) && (parama1.avp != null)) {
      this.uri = Uri.parse("android.resource://" + getContext().getPackageName() + "/" + parama1.avp);
    }
    if ((parama1.avq) || (this.avt != null))
    {
      a(new i(this, getContext(), this.awi, this.uri));
      return;
    }
    a(new c(this, getContext(), this.awh, this.uri, false));
  }
  
  public final PointF b(PointF paramPointF)
  {
    float f1 = paramPointF.x;
    float f2 = paramPointF.y;
    paramPointF = new PointF();
    if (this.avT == null) {
      return null;
    }
    paramPointF.set(x(f1), y(f2));
    return paramPointF;
  }
  
  public final int getAppliedOrientation()
  {
    return getRequiredRotation();
  }
  
  public final PointF getCenter()
  {
    int i = getWidth() / 2;
    int j = getHeight() / 2;
    return a(i, j, new PointF());
  }
  
  public float getMaxScale()
  {
    return this.avG;
  }
  
  public final float getMinScale()
  {
    return ku();
  }
  
  public final int getOrientation()
  {
    return this.orientation;
  }
  
  public final int getSHeight()
  {
    return this.avs;
  }
  
  public final int getSWidth()
  {
    return this.avr;
  }
  
  public final float getScale()
  {
    return this.avv;
  }
  
  public final b getState()
  {
    if ((this.avT != null) && (this.avr > 0) && (this.avs > 0)) {
      return new b(getScale(), getCenter(), getOrientation());
    }
    return null;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.awv == null)
    {
      this.awv = new Paint();
      this.awv.setAntiAlias(true);
      this.awv.setFilterBitmap(true);
      this.awv.setDither(true);
    }
    if ((this.aww == null) && (this.avF))
    {
      this.aww = new Paint();
      this.aww.setTextSize(18.0F);
      this.aww.setColor(-65281);
      this.aww.setStyle(Paint.Style.STROKE);
    }
    if ((this.avr == 0) || (this.avs == 0) || (getWidth() == 0) || (getHeight() == 0)) {}
    label453:
    label652:
    label665:
    label743:
    label1018:
    label1212:
    label1487:
    label1537:
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if ((this.avE == null) && (this.awf != null)) {
              a(a(paramCanvas));
            }
          } while (!ko());
          kq();
          boolean bool1;
          boolean bool2;
          int k;
          if (this.awq != null)
          {
            long l = System.currentTimeMillis() - this.awq.time;
            if (l > this.awq.awK)
            {
              bool1 = true;
              l = Math.min(l, this.awq.awK);
              this.avv = a(this.awq.awM, l, this.awq.avS, this.awq.awE - this.awq.avS, this.awq.awK);
              f1 = a(this.awq.awM, l, this.awq.awI.x, this.awq.awJ.x - this.awq.awI.x, this.awq.awK);
              f2 = a(this.awq.awM, l, this.awq.awI.y, this.awq.awJ.y - this.awq.awI.y, this.awq.awK);
              localObject1 = this.avT;
              ((PointF)localObject1).x -= x(this.awq.awG.x) - f1;
              localObject1 = this.avT;
              ((PointF)localObject1).y -= y(this.awq.awG.y) - f2;
              if ((!bool1) && (this.awq.avS != this.awq.awE)) {
                break label652;
              }
              bool2 = true;
              ao(bool2);
              an(bool1);
              if (bool1) {
                this.awq = null;
              }
              invalidate();
            }
          }
          else
          {
            if ((this.avE == null) || (!kn())) {
              break;
            }
            k = Math.min(this.avD, u(this.avv));
            localObject1 = this.avE.entrySet().iterator();
          }
          int j;
          for (int i = 0;; i = j)
          {
            if (!((Iterator)localObject1).hasNext()) {
              break label665;
            }
            localObject2 = (Map.Entry)((Iterator)localObject1).next();
            j = i;
            if (((Integer)((Map.Entry)localObject2).getKey()).intValue() == k)
            {
              localObject2 = ((List)((Map.Entry)localObject2).getValue()).iterator();
              for (;;)
              {
                j = i;
                if (!((Iterator)localObject2).hasNext()) {
                  break;
                }
                localObject3 = (g)((Iterator)localObject2).next();
                if ((((g)localObject3).axa) && ((((g)localObject3).loading) || (((g)localObject3).avo == null))) {
                  i = 1;
                }
              }
              bool1 = false;
              break;
              bool2 = false;
              break label453;
            }
          }
          localObject1 = this.avE.entrySet().iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (Map.Entry)((Iterator)localObject1).next();
            if ((((Integer)((Map.Entry)localObject2).getKey()).intValue() == k) || (i != 0))
            {
              localObject2 = ((List)((Map.Entry)localObject2).getValue()).iterator();
              for (;;)
              {
                if (((Iterator)localObject2).hasNext())
                {
                  localObject3 = (g)((Iterator)localObject2).next();
                  Rect localRect = ((g)localObject3).awY;
                  ((g)localObject3).axb.set((int)x(localRect.left), (int)y(localRect.top), (int)x(localRect.right), (int)y(localRect.bottom));
                  if ((((g)localObject3).loading) || (((g)localObject3).avo == null)) {
                    break label1487;
                  }
                  if (this.awx != null) {
                    paramCanvas.drawRect(((g)localObject3).axb, this.awx);
                  }
                  if (this.awz == null) {
                    this.awz = new Matrix();
                  }
                  this.awz.reset();
                  a(this.awB, 0.0F, 0.0F, ((g)localObject3).avo.getWidth(), 0.0F, ((g)localObject3).avo.getWidth(), ((g)localObject3).avo.getHeight(), 0.0F, ((g)localObject3).avo.getHeight());
                  if (getRequiredRotation() != 0) {
                    break label1212;
                  }
                  a(this.awC, ((g)localObject3).axb.left, ((g)localObject3).axb.top, ((g)localObject3).axb.right, ((g)localObject3).axb.top, ((g)localObject3).axb.right, ((g)localObject3).axb.bottom, ((g)localObject3).axb.left, ((g)localObject3).axb.bottom);
                  this.awz.setPolyToPoly(this.awB, 0, this.awC, 0, 4);
                  paramCanvas.drawBitmap(((g)localObject3).avo, this.awz, this.awv);
                  if (this.avF) {
                    paramCanvas.drawRect(((g)localObject3).axb, this.aww);
                  }
                }
                for (;;)
                {
                  if ((!((g)localObject3).axa) || (!this.avF)) {
                    break label1537;
                  }
                  paramCanvas.drawText("ISS " + ((g)localObject3).awZ + " RECT " + ((g)localObject3).awY.top + "," + ((g)localObject3).awY.left + "," + ((g)localObject3).awY.bottom + "," + ((g)localObject3).awY.right, ((g)localObject3).axb.left + 5, ((g)localObject3).axb.top + 15, this.aww);
                  break label743;
                  break;
                  if (getRequiredRotation() == 90)
                  {
                    a(this.awC, ((g)localObject3).axb.right, ((g)localObject3).axb.top, ((g)localObject3).axb.right, ((g)localObject3).axb.bottom, ((g)localObject3).axb.left, ((g)localObject3).axb.bottom, ((g)localObject3).axb.left, ((g)localObject3).axb.top);
                    break label1018;
                  }
                  if (getRequiredRotation() == 180)
                  {
                    a(this.awC, ((g)localObject3).axb.right, ((g)localObject3).axb.bottom, ((g)localObject3).axb.left, ((g)localObject3).axb.bottom, ((g)localObject3).axb.left, ((g)localObject3).axb.top, ((g)localObject3).axb.right, ((g)localObject3).axb.top);
                    break label1018;
                  }
                  if (getRequiredRotation() != 270) {
                    break label1018;
                  }
                  a(this.awC, ((g)localObject3).axb.left, ((g)localObject3).axb.bottom, ((g)localObject3).axb.left, ((g)localObject3).axb.top, ((g)localObject3).axb.right, ((g)localObject3).axb.top, ((g)localObject3).axb.right, ((g)localObject3).axb.bottom);
                  break label1018;
                  if ((((g)localObject3).loading) && (this.avF)) {
                    paramCanvas.drawText("LOADING", ((g)localObject3).axb.left + 5, ((g)localObject3).axb.top + 35, this.aww);
                  }
                }
              }
            }
          }
        } while (!this.avF);
        paramCanvas.drawText("Scale: " + String.format(Locale.ENGLISH, "%.2f", new Object[] { Float.valueOf(this.avv) }), 5.0F, 15.0F, this.aww);
        paramCanvas.drawText("Translate: " + String.format(Locale.ENGLISH, "%.2f", new Object[] { Float.valueOf(this.avT.x) }) + ":" + String.format(Locale.ENGLISH, "%.2f", new Object[] { Float.valueOf(this.avT.y) }), 5.0F, 35.0F, this.aww);
        localObject1 = getCenter();
        paramCanvas.drawText("Source center: " + String.format(Locale.ENGLISH, "%.2f", new Object[] { Float.valueOf(((PointF)localObject1).x) }) + ":" + String.format(Locale.ENGLISH, "%.2f", new Object[] { Float.valueOf(((PointF)localObject1).y) }), 5.0F, 55.0F, this.aww);
      } while (this.awq == null);
      Object localObject1 = b(this.awq.awF);
      Object localObject2 = b(this.awq.awH);
      Object localObject3 = b(this.awq.awG);
      paramCanvas.drawCircle(((PointF)localObject1).x, ((PointF)localObject1).y, 10.0F, this.aww);
      paramCanvas.drawCircle(((PointF)localObject2).x, ((PointF)localObject2).y, 20.0F, this.aww);
      paramCanvas.drawCircle(((PointF)localObject3).x, ((PointF)localObject3).y, 25.0F, this.aww);
      paramCanvas.drawCircle(getWidth() / 2, getHeight() / 2, 30.0F, this.aww);
      return;
    } while (this.avo == null);
    float f2 = this.avv;
    float f1 = this.avv;
    if (this.avB)
    {
      f1 = this.avv;
      f2 = this.avr / this.avo.getWidth() * f1;
      f1 = this.avv * (this.avs / this.avo.getHeight());
    }
    if (this.awz == null) {
      this.awz = new Matrix();
    }
    this.awz.reset();
    this.awz.postScale(f2, f1);
    this.awz.postRotate(getRequiredRotation());
    this.awz.postTranslate(this.avT.x, this.avT.y);
    if (getRequiredRotation() == 180) {
      this.awz.postTranslate(this.avv * this.avr, this.avv * this.avs);
    }
    for (;;)
    {
      if (this.awx != null)
      {
        if (this.awA == null) {
          this.awA = new RectF();
        }
        this.awA.set(0.0F, 0.0F, this.avr, this.avs);
        this.awz.mapRect(this.awA);
        paramCanvas.drawRect(this.awA, this.awx);
      }
      paramCanvas.drawBitmap(this.avo, this.awz, this.awv);
      return;
      if (getRequiredRotation() == 90) {
        this.awz.postTranslate(this.avv * this.avs, 0.0F);
      } else if (getRequiredRotation() == 270) {
        this.awz.postTranslate(0.0F, this.avv * this.avr);
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = 1;
    int i = View.MeasureSpec.getMode(paramInt1);
    int k = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (i != 1073741824)
    {
      i = 1;
      if (k == 1073741824) {
        break label100;
      }
      label41:
      if ((this.avr <= 0) || (this.avs <= 0)) {
        break label161;
      }
      if ((i == 0) || (j == 0)) {
        break label106;
      }
      paramInt2 = ks();
      paramInt1 = kt();
    }
    for (;;)
    {
      setMeasuredDimension(Math.max(paramInt2, getSuggestedMinimumWidth()), Math.max(paramInt1, getSuggestedMinimumHeight()));
      return;
      i = 0;
      break;
      label100:
      j = 0;
      break label41;
      label106:
      if (j != 0)
      {
        i = (int)(kt() / ks() * paramInt1);
        paramInt2 = paramInt1;
        paramInt1 = i;
      }
      else if (i != 0)
      {
        i = (int)(ks() / kt() * paramInt2);
        paramInt1 = paramInt2;
        paramInt2 = i;
      }
      else
      {
        label161:
        i = paramInt1;
        paramInt1 = paramInt2;
        paramInt2 = i;
      }
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    PointF localPointF = getCenter();
    if ((this.awr) && (localPointF != null))
    {
      this.awq = null;
      this.avV = Float.valueOf(this.avv);
      this.avW = localPointF;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int j = 0;
    if ((this.awq != null) && (!this.awq.awL)) {
      getParent().requestDisallowInterceptTouchEvent(true);
    }
    int k;
    float f1;
    do
    {
      do
      {
        return true;
        this.awq = null;
      } while (this.avT == null);
      if ((!this.awc) && ((this.awe == null) || (this.awe.onTouchEvent(paramMotionEvent))))
      {
        this.awa = false;
        this.awb = false;
        this.awd = 0;
        return true;
      }
      if (this.avU == null) {
        this.avU = new PointF(0.0F, 0.0F);
      }
      if (this.awj == null) {
        this.awj = new PointF(0.0F, 0.0F);
      }
      k = paramMotionEvent.getPointerCount();
      switch (paramMotionEvent.getAction())
      {
      default: 
        return super.onTouchEvent(paramMotionEvent);
      case 0: 
      case 5: 
      case 261: 
        this.awq = null;
        getParent().requestDisallowInterceptTouchEvent(true);
        this.awd = Math.max(this.awd, k);
        if (k >= 2)
        {
          if (this.avN)
          {
            f1 = c(paramMotionEvent.getX(0), paramMotionEvent.getX(1), paramMotionEvent.getY(0), paramMotionEvent.getY(1));
            this.avS = this.avv;
            this.awk = f1;
            this.avU.set(this.avT.x, this.avT.y);
            this.awj.set((paramMotionEvent.getX(0) + paramMotionEvent.getX(1)) / 2.0F, (paramMotionEvent.getY(0) + paramMotionEvent.getY(1)) / 2.0F);
          }
          for (;;)
          {
            this.handler.removeMessages(1);
            return true;
            this.awd = 0;
          }
        }
        break;
      }
    } while (this.awc);
    this.avU.set(this.avT.x, this.avT.y);
    this.awj.set(paramMotionEvent.getX(), paramMotionEvent.getY());
    this.handler.sendEmptyMessageDelayed(1, 600L);
    return true;
    int i = j;
    float f3;
    float f2;
    if (this.awd > 0)
    {
      if (k < 2) {
        break label886;
      }
      f3 = c(paramMotionEvent.getX(0), paramMotionEvent.getX(1), paramMotionEvent.getY(0), paramMotionEvent.getY(1));
      f1 = (paramMotionEvent.getX(0) + paramMotionEvent.getX(1)) / 2.0F;
      f2 = (paramMotionEvent.getY(0) + paramMotionEvent.getY(1)) / 2.0F;
      i = j;
      if (this.avN) {
        if ((c(this.awj.x, f1, this.awj.y, f2) <= 5.0F) && (Math.abs(f3 - this.awk) <= 5.0F))
        {
          i = j;
          if (!this.awb) {}
        }
        else
        {
          this.awa = true;
          this.awb = true;
          this.avv = Math.min(this.avG, f3 / this.awk * this.avS);
          if (this.avv > ku()) {
            break label663;
          }
          this.awk = f3;
          this.avS = ku();
          this.awj.set(f1, f2);
          this.avU.set(this.avT);
        }
      }
    }
    label644:
    label663:
    float f4;
    float f5;
    float f6;
    float f7;
    for (;;)
    {
      ao(true);
      an(false);
      i = 1;
      if (i == 0) {
        break;
      }
      this.handler.removeMessages(1);
      invalidate();
      return true;
      if (this.avM)
      {
        f3 = this.awj.x;
        f4 = this.avU.x;
        f5 = this.awj.y;
        f6 = this.avU.y;
        f7 = this.avv / this.avS;
        float f8 = this.avv / this.avS;
        this.avT.x = (f1 - (f3 - f4) * f7);
        this.avT.y = (f2 - (f5 - f6) * f8);
      }
      else if (this.avX != null)
      {
        this.avT.x = (getWidth() / 2 - this.avv * this.avX.x);
        this.avT.y = (getHeight() / 2 - this.avv * this.avX.y);
      }
      else
      {
        this.avT.x = (getWidth() / 2 - this.avv * (ks() / 2));
        this.avT.y = (getHeight() / 2 - this.avv * (kt() / 2));
      }
    }
    label886:
    if (this.awc)
    {
      f2 = Math.abs(this.awj.y - paramMotionEvent.getY()) * 2.0F + this.awl;
      if (this.awn == -1.0F) {
        this.awn = f2;
      }
      if (paramMotionEvent.getY() > this.awo.y)
      {
        i = 1;
        label950:
        this.awo.set(0.0F, paramMotionEvent.getY());
        f1 = 0.5F * Math.abs(1.0F - f2 / this.awn);
        if ((f1 > 0.03F) || (this.awp))
        {
          this.awp = true;
          if (this.awn <= 0.0F) {
            break label1845;
          }
          if (i == 0) {
            break label1176;
          }
          f1 = 1.0F + f1;
        }
      }
    }
    for (;;)
    {
      label1016:
      this.avv = Math.max(ku(), Math.min(this.avG, f1 * this.avv));
      if (this.avM)
      {
        f1 = this.awj.x;
        f3 = this.avU.x;
        f4 = this.awj.y;
        f5 = this.avU.y;
        f6 = this.avv / this.avS;
        f7 = this.avv / this.avS;
        this.avT.x = (this.awj.x - (f1 - f3) * f6);
        this.avT.y = (this.awj.y - (f4 - f5) * f7);
      }
      for (;;)
      {
        this.awn = f2;
        ao(true);
        an(false);
        i = 1;
        break;
        i = 0;
        break label950;
        label1176:
        f1 = 1.0F - f1;
        break label1016;
        if (this.avX != null)
        {
          this.avT.x = (getWidth() / 2 - this.avv * this.avX.x);
          this.avT.y = (getHeight() / 2 - this.avv * this.avX.y);
        }
        else
        {
          this.avT.x = (getWidth() / 2 - this.avv * (ks() / 2));
          this.avT.y = (getHeight() / 2 - this.avv * (kt() / 2));
        }
      }
      i = j;
      if (this.awa) {
        break label644;
      }
      f1 = Math.abs(paramMotionEvent.getX() - this.awj.x);
      f2 = Math.abs(paramMotionEvent.getY() - this.awj.y);
      if ((f1 <= 5.0F) && (f2 <= 5.0F))
      {
        i = j;
        if (!this.awb) {
          break label644;
        }
      }
      this.avT.x = (this.avU.x + (paramMotionEvent.getX() - this.awj.x));
      this.avT.y = (this.avU.y + (paramMotionEvent.getY() - this.awj.y));
      f3 = this.avT.x;
      f4 = this.avT.y;
      ao(true);
      if (f3 != this.avT.x)
      {
        i = 1;
        label1467:
        if ((i == 0) || (f1 <= f2) || (this.awb)) {
          break label1598;
        }
        j = 1;
        label1488:
        if ((f4 != this.avT.y) || (f2 <= 15.0F)) {
          break label1604;
        }
        k = 1;
        label1512:
        if ((j != 0) || ((i != 0) && (k == 0) && (!this.awb))) {
          break label1610;
        }
        this.awb = true;
      }
      for (;;)
      {
        if (!this.avM)
        {
          this.avT.x = this.avU.x;
          this.avT.y = this.avU.y;
          getParent().requestDisallowInterceptTouchEvent(false);
        }
        an(false);
        break;
        i = 0;
        break label1467;
        label1598:
        j = 0;
        break label1488;
        label1604:
        k = 0;
        break label1512;
        label1610:
        if (f1 > 5.0F)
        {
          this.awd = 0;
          this.handler.removeMessages(1);
          getParent().requestDisallowInterceptTouchEvent(false);
        }
      }
      this.handler.removeMessages(1);
      if (this.awc)
      {
        this.awc = false;
        if (!this.awp) {
          a(this.awm, this.awj);
        }
      }
      if ((this.awd > 0) && ((this.awa) || (this.awb)))
      {
        if ((this.awa) && (k == 2))
        {
          this.awb = true;
          this.avU.set(this.avT.x, this.avT.y);
          if (paramMotionEvent.getActionIndex() != 1) {
            break label1802;
          }
          this.awj.set(paramMotionEvent.getX(0), paramMotionEvent.getY(0));
        }
        for (;;)
        {
          if (k < 3) {
            this.awa = false;
          }
          if (k < 2)
          {
            this.awb = false;
            this.awd = 0;
          }
          an(true);
          return true;
          label1802:
          this.awj.set(paramMotionEvent.getX(1), paramMotionEvent.getY(1));
        }
      }
      if (k != 1) {
        break;
      }
      this.awa = false;
      this.awb = false;
      this.awd = 0;
      return true;
      label1845:
      f1 = 1.0F;
    }
  }
  
  public final void recycle()
  {
    am(true);
    this.awv = null;
    this.aww = null;
    this.awx = null;
  }
  
  public final void setBitmapDecoderClass(Class<? extends c> paramClass)
  {
    if (paramClass == null) {
      throw new IllegalArgumentException("Decoder class cannot be set to null");
    }
    this.awh = new com.davemorrissey.labs.subscaleview.a.a(paramClass);
  }
  
  public final void setBitmapDecoderFactory(com.davemorrissey.labs.subscaleview.a.b<? extends c> paramb)
  {
    if (paramb == null) {
      throw new IllegalArgumentException("Decoder factory cannot be set to null");
    }
    this.awh = paramb;
  }
  
  public final void setDebug(boolean paramBoolean)
  {
    this.avF = paramBoolean;
  }
  
  public final void setDoubleTapZoomDpi(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    float f = localDisplayMetrics.xdpi;
    setDoubleTapZoomScale((localDisplayMetrics.ydpi + f) / 2.0F / paramInt);
  }
  
  public final void setDoubleTapZoomDuration(int paramInt)
  {
    this.avR = Math.max(0, paramInt);
  }
  
  public final void setDoubleTapZoomScale(float paramFloat)
  {
    this.avP = paramFloat;
  }
  
  public final void setDoubleTapZoomStyle(int paramInt)
  {
    if (!avx.contains(Integer.valueOf(paramInt))) {
      throw new IllegalArgumentException("Invalid zoom style: " + paramInt);
    }
    this.avQ = paramInt;
  }
  
  public final void setImage(a parama)
  {
    a(parama, null);
  }
  
  public final void setMaxScale(float paramFloat)
  {
    this.avG = paramFloat;
  }
  
  public final void setMaximumDpi(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    float f = localDisplayMetrics.xdpi;
    setMinScale((localDisplayMetrics.ydpi + f) / 2.0F / paramInt);
  }
  
  public final void setMinScale(float paramFloat)
  {
    this.avH = paramFloat;
  }
  
  public final void setMinimumDpi(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    float f = localDisplayMetrics.xdpi;
    setMaxScale((localDisplayMetrics.ydpi + f) / 2.0F / paramInt);
  }
  
  public final void setMinimumScaleType(int paramInt)
  {
    if (!avA.contains(Integer.valueOf(paramInt))) {
      throw new IllegalArgumentException("Invalid scale type: " + paramInt);
    }
    this.avK = paramInt;
    if (this.awr)
    {
      ao(true);
      invalidate();
    }
  }
  
  public void setMinimumTileDpi(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    float f = localDisplayMetrics.xdpi;
    this.avI = ((int)Math.min((localDisplayMetrics.ydpi + f) / 2.0F, paramInt));
    if (this.awr)
    {
      am(false);
      invalidate();
    }
  }
  
  public void setOnImageEventListener(e parame)
  {
    this.awt = parame;
  }
  
  public void setOnLongClickListener(View.OnLongClickListener paramOnLongClickListener)
  {
    this.awu = paramOnLongClickListener;
  }
  
  public final void setOrientation(int paramInt)
  {
    if (!avw.contains(Integer.valueOf(paramInt))) {
      throw new IllegalArgumentException("Invalid orientation: " + paramInt);
    }
    this.orientation = paramInt;
    am(false);
    invalidate();
    requestLayout();
  }
  
  public final void setPanEnabled(boolean paramBoolean)
  {
    this.avM = paramBoolean;
    if ((!paramBoolean) && (this.avT != null))
    {
      this.avT.x = (getWidth() / 2 - this.avv * (ks() / 2));
      this.avT.y = (getHeight() / 2 - this.avv * (kt() / 2));
      if (this.awr)
      {
        an(true);
        invalidate();
      }
    }
  }
  
  public final void setPanLimit(int paramInt)
  {
    if (!avz.contains(Integer.valueOf(paramInt))) {
      throw new IllegalArgumentException("Invalid pan limit: " + paramInt);
    }
    this.avJ = paramInt;
    if (this.awr)
    {
      ao(true);
      invalidate();
    }
  }
  
  public void setParallelLoadingEnabled(boolean paramBoolean)
  {
    this.avL = paramBoolean;
  }
  
  public final void setQuickScaleEnabled(boolean paramBoolean)
  {
    this.avO = paramBoolean;
  }
  
  public final void setRegionDecoderClass(Class<? extends d> paramClass)
  {
    if (paramClass == null) {
      throw new IllegalArgumentException("Decoder class cannot be set to null");
    }
    this.awi = new com.davemorrissey.labs.subscaleview.a.a(paramClass);
  }
  
  public final void setRegionDecoderFactory(com.davemorrissey.labs.subscaleview.a.b<? extends d> paramb)
  {
    if (paramb == null) {
      throw new IllegalArgumentException("Decoder factory cannot be set to null");
    }
    this.awi = paramb;
  }
  
  public final void setTileBackgroundColor(int paramInt)
  {
    if (Color.alpha(paramInt) == 0) {
      this.awx = null;
    }
    for (;;)
    {
      invalidate();
      return;
      this.awx = new Paint();
      this.awx.setStyle(Paint.Style.FILL);
      this.awx.setColor(paramInt);
    }
  }
  
  public final void setZoomEnabled(boolean paramBoolean)
  {
    this.avN = paramBoolean;
  }
  
  private static final class a
  {
    float avS;
    float awE;
    PointF awF;
    PointF awG;
    PointF awH;
    PointF awI;
    PointF awJ;
    long awK = 500L;
    boolean awL = true;
    int awM = 2;
    SubsamplingScaleImageView.d awN;
    long time = System.currentTimeMillis();
  }
  
  public final class b
  {
    long awK = 500L;
    boolean awL = true;
    int awM = 2;
    private SubsamplingScaleImageView.d awN;
    private final float awO;
    private final PointF awP;
    private final PointF awQ;
    boolean awR = true;
    
    private b(float paramFloat, PointF paramPointF)
    {
      this.awO = paramFloat;
      this.awP = paramPointF;
      this.awQ = null;
    }
    
    private b(float paramFloat, PointF paramPointF1, PointF paramPointF2)
    {
      this.awO = paramFloat;
      this.awP = paramPointF1;
      this.awQ = paramPointF2;
    }
    
    private b(PointF paramPointF)
    {
      this.awO = SubsamplingScaleImageView.h(SubsamplingScaleImageView.this);
      this.awP = paramPointF;
      this.awQ = null;
    }
    
    public final void start()
    {
      if ((SubsamplingScaleImageView.u(SubsamplingScaleImageView.this) != null) && (SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awN != null)) {}
      try
      {
        SubsamplingScaleImageView.u(SubsamplingScaleImageView.this);
        int i = SubsamplingScaleImageView.this.getPaddingLeft();
        int j = (SubsamplingScaleImageView.this.getWidth() - SubsamplingScaleImageView.this.getPaddingRight() - SubsamplingScaleImageView.this.getPaddingLeft()) / 2;
        int k = SubsamplingScaleImageView.this.getPaddingTop();
        int m = (SubsamplingScaleImageView.this.getHeight() - SubsamplingScaleImageView.this.getPaddingBottom() - SubsamplingScaleImageView.this.getPaddingTop()) / 2;
        float f3 = SubsamplingScaleImageView.b(SubsamplingScaleImageView.this, this.awO);
        if (this.awR)
        {
          Object localObject = SubsamplingScaleImageView.a(SubsamplingScaleImageView.this, this.awP.x, this.awP.y, f3, new PointF());
          SubsamplingScaleImageView.a(SubsamplingScaleImageView.this, new SubsamplingScaleImageView.a((byte)0));
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).avS = SubsamplingScaleImageView.h(SubsamplingScaleImageView.this);
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awE = f3;
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).time = System.currentTimeMillis();
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awH = ((PointF)localObject);
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awF = SubsamplingScaleImageView.this.getCenter();
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awG = ((PointF)localObject);
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awI = SubsamplingScaleImageView.this.b((PointF)localObject);
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awJ = new PointF(j + i, m + k);
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awK = this.awK;
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awL = this.awL;
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awM = this.awM;
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).time = System.currentTimeMillis();
          SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awN = this.awN;
          if (this.awQ != null)
          {
            float f1 = this.awQ.x - SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awF.x * f3;
            float f2 = this.awQ.y - SubsamplingScaleImageView.u(SubsamplingScaleImageView.this).awF.y * f3;
            localObject = new SubsamplingScaleImageView.f(f3, new PointF(f1, f2), (byte)0);
            SubsamplingScaleImageView.a(SubsamplingScaleImageView.this, (SubsamplingScaleImageView.f)localObject);
            SubsamplingScaleImageView.a locala = SubsamplingScaleImageView.u(SubsamplingScaleImageView.this);
            f3 = this.awQ.x;
            float f4 = ((SubsamplingScaleImageView.f)localObject).avT.x;
            float f5 = this.awQ.y;
            locala.awJ = new PointF(f4 - f1 + f3, ((SubsamplingScaleImageView.f)localObject).avT.y - f2 + f5);
          }
          SubsamplingScaleImageView.this.invalidate();
          return;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.w(SubsamplingScaleImageView.kv(), "Error thrown by animation listener", localException);
          continue;
          PointF localPointF = this.awP;
        }
      }
    }
  }
  
  private static final class c
    extends AsyncTask<Void, Void, Integer>
  {
    private Bitmap avo;
    private final WeakReference<SubsamplingScaleImageView> awS;
    private final WeakReference<Context> awT;
    private final WeakReference<com.davemorrissey.labs.subscaleview.a.b<? extends c>> awU;
    private final Uri awV;
    private final boolean awW;
    private Exception awX;
    
    public c(SubsamplingScaleImageView paramSubsamplingScaleImageView, Context paramContext, com.davemorrissey.labs.subscaleview.a.b<? extends c> paramb, Uri paramUri, boolean paramBoolean)
    {
      this.awS = new WeakReference(paramSubsamplingScaleImageView);
      this.awT = new WeakReference(paramContext);
      this.awU = new WeakReference(paramb);
      this.awV = paramUri;
      this.awW = paramBoolean;
    }
    
    private Integer kx()
    {
      try
      {
        String str = this.awV.toString();
        Context localContext = (Context)this.awT.get();
        com.davemorrissey.labs.subscaleview.a.b localb = (com.davemorrissey.labs.subscaleview.a.b)this.awU.get();
        SubsamplingScaleImageView localSubsamplingScaleImageView = (SubsamplingScaleImageView)this.awS.get();
        if ((localContext != null) && (localb != null) && (localSubsamplingScaleImageView != null))
        {
          this.avo = ((c)localb.kB()).c(localContext, this.awV);
          int i = SubsamplingScaleImageView.a(localSubsamplingScaleImageView, str);
          return Integer.valueOf(i);
        }
      }
      catch (Exception localException)
      {
        Log.e(SubsamplingScaleImageView.kv(), "Failed to load bitmap", localException);
        this.awX = localException;
        return null;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        for (;;)
        {
          Log.e(SubsamplingScaleImageView.kv(), "Failed to load bitmap - OutOfMemoryError", localOutOfMemoryError);
          this.awX = new RuntimeException(localOutOfMemoryError);
        }
      }
    }
  }
  
  public static abstract interface d {}
  
  public static abstract interface e
  {
    public abstract void b(Exception paramException);
    
    public abstract void c(Exception paramException);
    
    public abstract void d(Exception paramException);
    
    public abstract void ky();
  }
  
  private static final class f
  {
    PointF avT;
    float avv;
    
    private f(float paramFloat, PointF paramPointF)
    {
      this.avv = paramFloat;
      this.avT = paramPointF;
    }
  }
  
  private static final class g
  {
    Bitmap avo;
    Rect awY;
    int awZ;
    boolean axa;
    Rect axb;
    Rect axc;
    boolean loading;
  }
  
  private static final class h
    extends AsyncTask<Void, Void, Bitmap>
  {
    private final WeakReference<SubsamplingScaleImageView> awS;
    private Exception awX;
    private final WeakReference<d> axd;
    private final WeakReference<SubsamplingScaleImageView.g> axe;
    
    public h(SubsamplingScaleImageView paramSubsamplingScaleImageView, d paramd, SubsamplingScaleImageView.g paramg)
    {
      this.awS = new WeakReference(paramSubsamplingScaleImageView);
      this.axd = new WeakReference(paramd);
      this.axe = new WeakReference(paramg);
      paramg.loading = true;
    }
    
    /* Error */
    private Bitmap kz()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 29	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h:awS	Ljava/lang/ref/WeakReference;
      //   4: invokevirtual 50	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
      //   7: checkcast 7	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView
      //   10: astore_2
      //   11: aload_0
      //   12: getfield 31	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h:axd	Ljava/lang/ref/WeakReference;
      //   15: invokevirtual 50	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
      //   18: checkcast 52	com/davemorrissey/labs/subscaleview/a/d
      //   21: astore_3
      //   22: aload_0
      //   23: getfield 33	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h:axe	Ljava/lang/ref/WeakReference;
      //   26: invokevirtual 50	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
      //   29: checkcast 35	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g
      //   32: astore 4
      //   34: aload_3
      //   35: ifnull +123 -> 158
      //   38: aload 4
      //   40: ifnull +118 -> 158
      //   43: aload_2
      //   44: ifnull +114 -> 158
      //   47: aload_3
      //   48: invokeinterface 56 1 0
      //   53: ifeq +105 -> 158
      //   56: aload 4
      //   58: getfield 59	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g:axa	Z
      //   61: ifeq +97 -> 158
      //   64: aload_2
      //   65: invokestatic 63	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView:s	(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Ljava/lang/Object;
      //   68: astore_1
      //   69: aload_1
      //   70: monitorenter
      //   71: aload_2
      //   72: aload 4
      //   74: getfield 67	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g:awY	Landroid/graphics/Rect;
      //   77: aload 4
      //   79: getfield 70	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g:axc	Landroid/graphics/Rect;
      //   82: invokestatic 74	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView:a	(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
      //   85: aload_2
      //   86: invokestatic 78	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView:q	(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;
      //   89: ifnull +25 -> 114
      //   92: aload 4
      //   94: getfield 70	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g:axc	Landroid/graphics/Rect;
      //   97: aload_2
      //   98: invokestatic 78	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView:q	(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;
      //   101: getfield 84	android/graphics/Rect:left	I
      //   104: aload_2
      //   105: invokestatic 78	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView:q	(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;
      //   108: getfield 87	android/graphics/Rect:top	I
      //   111: invokevirtual 91	android/graphics/Rect:offset	(II)V
      //   114: aload_3
      //   115: aload 4
      //   117: getfield 70	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g:axc	Landroid/graphics/Rect;
      //   120: aload 4
      //   122: getfield 94	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g:awZ	I
      //   125: invokeinterface 97 3 0
      //   130: astore_2
      //   131: aload_1
      //   132: monitorexit
      //   133: aload_2
      //   134: areturn
      //   135: astore_2
      //   136: aload_1
      //   137: monitorexit
      //   138: aload_2
      //   139: athrow
      //   140: astore_1
      //   141: invokestatic 101	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView:kv	()Ljava/lang/String;
      //   144: ldc 103
      //   146: aload_1
      //   147: invokestatic 109	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   150: pop
      //   151: aload_0
      //   152: aload_1
      //   153: putfield 111	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h:awX	Ljava/lang/Exception;
      //   156: aconst_null
      //   157: areturn
      //   158: aload 4
      //   160: ifnull -4 -> 156
      //   163: aload 4
      //   165: iconst_0
      //   166: putfield 39	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g:loading	Z
      //   169: goto -13 -> 156
      //   172: astore_1
      //   173: invokestatic 101	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView:kv	()Ljava/lang/String;
      //   176: ldc 113
      //   178: aload_1
      //   179: invokestatic 109	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   182: pop
      //   183: aload_0
      //   184: new 115	java/lang/RuntimeException
      //   187: dup
      //   188: aload_1
      //   189: invokespecial 118	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
      //   192: putfield 111	com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h:awX	Ljava/lang/Exception;
      //   195: goto -39 -> 156
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	198	0	this	h
      //   140	13	1	localException	Exception
      //   172	17	1	localOutOfMemoryError	OutOfMemoryError
      //   10	124	2	localObject2	Object
      //   135	4	2	localObject3	Object
      //   21	94	3	locald	d
      //   32	132	4	localg	SubsamplingScaleImageView.g
      // Exception table:
      //   from	to	target	type
      //   71	114	135	finally
      //   114	133	135	finally
      //   136	138	135	finally
      //   0	34	140	java/lang/Exception
      //   47	71	140	java/lang/Exception
      //   138	140	140	java/lang/Exception
      //   163	169	140	java/lang/Exception
      //   0	34	172	java/lang/OutOfMemoryError
      //   47	71	172	java/lang/OutOfMemoryError
      //   138	140	172	java/lang/OutOfMemoryError
      //   163	169	172	java/lang/OutOfMemoryError
    }
  }
  
  private static final class i
    extends AsyncTask<Void, Void, int[]>
  {
    private final WeakReference<SubsamplingScaleImageView> awS;
    private final WeakReference<Context> awT;
    private final WeakReference<com.davemorrissey.labs.subscaleview.a.b<? extends d>> awU;
    private final Uri awV;
    private Exception awX;
    private d awf;
    
    public i(SubsamplingScaleImageView paramSubsamplingScaleImageView, Context paramContext, com.davemorrissey.labs.subscaleview.a.b<? extends d> paramb, Uri paramUri)
    {
      this.awS = new WeakReference(paramSubsamplingScaleImageView);
      this.awT = new WeakReference(paramContext);
      this.awU = new WeakReference(paramb);
      this.awV = paramUri;
    }
    
    private int[] kA()
    {
      label174:
      for (;;)
      {
        try
        {
          String str = this.awV.toString();
          Object localObject = (Context)this.awT.get();
          com.davemorrissey.labs.subscaleview.a.b localb = (com.davemorrissey.labs.subscaleview.a.b)this.awU.get();
          SubsamplingScaleImageView localSubsamplingScaleImageView = (SubsamplingScaleImageView)this.awS.get();
          if ((localObject != null) && (localb != null) && (localSubsamplingScaleImageView != null))
          {
            this.awf = ((d)localb.kB());
            localObject = this.awf.d((Context)localObject, this.awV);
            int i = ((Point)localObject).x;
            int j = ((Point)localObject).y;
            int k = SubsamplingScaleImageView.a(localSubsamplingScaleImageView, str);
            if (SubsamplingScaleImageView.q(localSubsamplingScaleImageView) == null) {
              break label174;
            }
            i = SubsamplingScaleImageView.q(localSubsamplingScaleImageView).width();
            j = SubsamplingScaleImageView.q(localSubsamplingScaleImageView).height();
            return new int[] { i, j, k };
          }
        }
        catch (Exception localException)
        {
          Log.e(SubsamplingScaleImageView.kv(), "Failed to initialise bitmap decoder", localException);
          this.awX = localException;
        }
        return null;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/davemorrissey/labs/subscaleview/SubsamplingScaleImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */