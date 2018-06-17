package android.support.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.VectorDrawable;
import android.os.Build.VERSION;
import android.support.v4.a.b.b;
import android.support.v4.content.a.c;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class i
  extends h
{
  static final PorterDuff.Mode qO = PorterDuff.Mode.SRC_IN;
  f qP;
  private PorterDuffColorFilter qQ;
  private ColorFilter qR;
  private boolean qS;
  boolean qT = true;
  private Drawable.ConstantState qU;
  private final float[] qV = new float[9];
  private final Matrix qW = new Matrix();
  private final Rect qX = new Rect();
  
  i()
  {
    this.qP = new f();
  }
  
  i(f paramf)
  {
    this.qP = paramf;
    this.qQ = a(paramf.rN, paramf.rO);
  }
  
  private PorterDuffColorFilter a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList == null) || (paramMode == null)) {
      return null;
    }
    return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
  }
  
  public static i a(Resources paramResources, int paramInt, Resources.Theme paramTheme)
  {
    Object localObject;
    if (Build.VERSION.SDK_INT >= 24)
    {
      localObject = new i();
      ((i)localObject).qN = android.support.v4.content.a.b.b(paramResources, paramInt, paramTheme);
      ((i)localObject).qU = new g(((i)localObject).qN.getConstantState());
      return (i)localObject;
    }
    try
    {
      localObject = paramResources.getXml(paramInt);
      localAttributeSet = Xml.asAttributeSet((XmlPullParser)localObject);
      do
      {
        paramInt = ((XmlPullParser)localObject).next();
      } while ((paramInt != 2) && (paramInt != 1));
      if (paramInt != 2) {
        throw new XmlPullParserException("No start tag found");
      }
    }
    catch (XmlPullParserException paramResources)
    {
      AttributeSet localAttributeSet;
      Log.e("VectorDrawableCompat", "parser error", paramResources);
      return null;
      paramResources = a(paramResources, (XmlPullParser)localObject, localAttributeSet, paramTheme);
      return paramResources;
    }
    catch (IOException paramResources)
    {
      for (;;)
      {
        Log.e("VectorDrawableCompat", "parser error", paramResources);
      }
    }
  }
  
  public static i a(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    i locali = new i();
    locali.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return locali;
  }
  
  static int b(int paramInt, float paramFloat)
  {
    return (int)(Color.alpha(paramInt) * paramFloat) << 24 | 0xFFFFFF & paramInt;
  }
  
  private void b(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    f localf = this.qP;
    e locale = localf.rM;
    int i = 1;
    ArrayDeque localArrayDeque = new ArrayDeque();
    localArrayDeque.push(locale.rE);
    int j = paramXmlPullParser.getEventType();
    int k = paramXmlPullParser.getDepth();
    if ((j != 1) && ((paramXmlPullParser.getDepth() >= k + 1) || (j != 3)))
    {
      Object localObject;
      c localc;
      TypedArray localTypedArray;
      if (j == 2)
      {
        localObject = paramXmlPullParser.getName();
        localc = (c)localArrayDeque.peek();
        if ("path".equals(localObject))
        {
          localObject = new b();
          localTypedArray = c.a(paramResources, paramTheme, paramAttributeSet, a.qn);
          ((b)localObject).a(localTypedArray, paramXmlPullParser);
          localTypedArray.recycle();
          localc.ib.add(localObject);
          if (((b)localObject).getPathName() != null) {
            locale.rL.put(((b)localObject).getPathName(), localObject);
          }
          i = 0;
          j = localf.qD;
          localf.qD = (((b)localObject).qD | j);
        }
      }
      for (;;)
      {
        j = paramXmlPullParser.next();
        break;
        if ("clip-path".equals(localObject))
        {
          localObject = new a();
          if (c.a(paramXmlPullParser, "pathData"))
          {
            localTypedArray = c.a(paramResources, paramTheme, paramAttributeSet, a.qo);
            ((a)localObject).a(localTypedArray);
            localTypedArray.recycle();
          }
          localc.ib.add(localObject);
          if (((a)localObject).getPathName() != null) {
            locale.rL.put(((a)localObject).getPathName(), localObject);
          }
          localf.qD |= ((a)localObject).qD;
        }
        else
        {
          if ("group".equals(localObject))
          {
            localObject = new c();
            localTypedArray = c.a(paramResources, paramTheme, paramAttributeSet, a.qm);
            ((c)localObject).qY = null;
            ((c)localObject).rm = c.a(localTypedArray, paramXmlPullParser, "rotation", 5, ((c)localObject).rm);
            ((c)localObject).rn = localTypedArray.getFloat(1, ((c)localObject).rn);
            ((c)localObject).ro = localTypedArray.getFloat(2, ((c)localObject).ro);
            ((c)localObject).rp = c.a(localTypedArray, paramXmlPullParser, "scaleX", 3, ((c)localObject).rp);
            ((c)localObject).rq = c.a(localTypedArray, paramXmlPullParser, "scaleY", 4, ((c)localObject).rq);
            ((c)localObject).rr = c.a(localTypedArray, paramXmlPullParser, "translateX", 6, ((c)localObject).rr);
            ((c)localObject).rs = c.a(localTypedArray, paramXmlPullParser, "translateY", 7, ((c)localObject).rs);
            String str = localTypedArray.getString(0);
            if (str != null) {
              ((c)localObject).ru = str;
            }
            ((c)localObject).cg();
            localTypedArray.recycle();
            localc.ib.add(localObject);
            localArrayDeque.push(localObject);
            if (((c)localObject).getGroupName() != null) {
              locale.rL.put(((c)localObject).getGroupName(), localObject);
            }
            localf.qD |= ((c)localObject).qD;
          }
          continue;
          if ((j == 3) && ("group".equals(paramXmlPullParser.getName()))) {
            localArrayDeque.pop();
          }
        }
      }
    }
    if (i != 0) {
      throw new XmlPullParserException("no path defined");
    }
  }
  
  public final boolean canApplyTheme()
  {
    if (this.qN != null) {
      android.support.v4.a.a.a.d(this.qN);
    }
    return false;
  }
  
  public final void draw(Canvas paramCanvas)
  {
    if (this.qN != null) {
      this.qN.draw(paramCanvas);
    }
    int i;
    int k;
    int m;
    do
    {
      do
      {
        return;
        copyBounds(this.qX);
      } while ((this.qX.width() <= 0) || (this.qX.height() <= 0));
      if (this.qR != null) {
        break;
      }
      localObject = this.qQ;
      paramCanvas.getMatrix(this.qW);
      this.qW.getValues(this.qV);
      float f2 = Math.abs(this.qV[0]);
      float f1 = Math.abs(this.qV[4]);
      float f4 = Math.abs(this.qV[1]);
      float f3 = Math.abs(this.qV[3]);
      if ((f4 != 0.0F) || (f3 != 0.0F))
      {
        f1 = 1.0F;
        f2 = 1.0F;
      }
      j = (int)(f2 * this.qX.width());
      i = (int)(f1 * this.qX.height());
      k = Math.min(2048, j);
      m = Math.min(2048, i);
    } while ((k <= 0) || (m <= 0));
    int j = paramCanvas.save();
    paramCanvas.translate(this.qX.left, this.qX.top);
    label244:
    f localf;
    label322:
    label366:
    Rect localRect;
    if (Build.VERSION.SDK_INT >= 17) {
      if ((isAutoMirrored()) && (android.support.v4.a.a.a.g(this) == 1))
      {
        i = 1;
        if (i != 0)
        {
          paramCanvas.translate(this.qX.width(), 0.0F);
          paramCanvas.scale(-1.0F, 1.0F);
        }
        this.qX.offsetTo(0, 0);
        localf = this.qP;
        if (localf.rQ != null)
        {
          if ((k != localf.rQ.getWidth()) || (m != localf.rQ.getHeight())) {
            break label450;
          }
          i = 1;
          if (i != 0) {}
        }
        else
        {
          localf.rQ = Bitmap.createBitmap(k, m, Bitmap.Config.ARGB_8888);
          localf.rV = true;
        }
        if (this.qT) {
          break label456;
        }
        this.qP.j(k, m);
        localf = this.qP;
        localRect = this.qX;
        if (localf.rM.getRootAlpha() >= 255) {
          break label608;
        }
        i = 1;
        label395:
        if ((i != 0) || (localObject != null)) {
          break label614;
        }
      }
    }
    for (Object localObject = null;; localObject = localf.rW)
    {
      paramCanvas.drawBitmap(localf.rQ, null, localRect, (Paint)localObject);
      paramCanvas.restoreToCount(j);
      return;
      localObject = this.qR;
      break;
      i = 0;
      break label244;
      i = 0;
      break label244;
      label450:
      i = 0;
      break label322;
      label456:
      localf = this.qP;
      if ((!localf.rV) && (localf.rR == localf.rN) && (localf.rS == localf.rO) && (localf.rU == localf.rP) && (localf.rT == localf.rM.getRootAlpha())) {}
      for (i = 1;; i = 0)
      {
        if (i != 0) {
          break label606;
        }
        this.qP.j(k, m);
        localf = this.qP;
        localf.rR = localf.rN;
        localf.rS = localf.rO;
        localf.rT = localf.rM.getRootAlpha();
        localf.rU = localf.rP;
        localf.rV = false;
        break;
      }
      label606:
      break label366;
      label608:
      i = 0;
      break label395;
      label614:
      if (localf.rW == null)
      {
        localf.rW = new Paint();
        localf.rW.setFilterBitmap(true);
      }
      localf.rW.setAlpha(localf.rM.getRootAlpha());
      localf.rW.setColorFilter((ColorFilter)localObject);
    }
  }
  
  public final int getAlpha()
  {
    if (this.qN != null) {
      return android.support.v4.a.a.a.c(this.qN);
    }
    return this.qP.rM.getRootAlpha();
  }
  
  public final int getChangingConfigurations()
  {
    if (this.qN != null) {
      return this.qN.getChangingConfigurations();
    }
    return super.getChangingConfigurations() | this.qP.getChangingConfigurations();
  }
  
  public final Drawable.ConstantState getConstantState()
  {
    if ((this.qN != null) && (Build.VERSION.SDK_INT >= 24)) {
      return new g(this.qN.getConstantState());
    }
    this.qP.qD = getChangingConfigurations();
    return this.qP;
  }
  
  public final int getIntrinsicHeight()
  {
    if (this.qN != null) {
      return this.qN.getIntrinsicHeight();
    }
    return (int)this.qP.rM.rG;
  }
  
  public final int getIntrinsicWidth()
  {
    if (this.qN != null) {
      return this.qN.getIntrinsicWidth();
    }
    return (int)this.qP.rM.rF;
  }
  
  public final int getOpacity()
  {
    if (this.qN != null) {
      return this.qN.getOpacity();
    }
    return -3;
  }
  
  public final void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    if (this.qN != null)
    {
      this.qN.inflate(paramResources, paramXmlPullParser, paramAttributeSet);
      return;
    }
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, null);
  }
  
  public final void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    if (this.qN != null)
    {
      android.support.v4.a.a.a.a(this.qN, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    f localf1 = this.qP;
    localf1.rM = new e();
    TypedArray localTypedArray = c.a(paramResources, paramTheme, paramAttributeSet, a.ql);
    f localf2 = this.qP;
    e locale = localf2.rM;
    int i = c.a(localTypedArray, paramXmlPullParser, "tintMode", 6, -1);
    PorterDuff.Mode localMode = PorterDuff.Mode.SRC_IN;
    Object localObject = localMode;
    boolean bool;
    switch (i)
    {
    default: 
      localObject = localMode;
    case 4: 
    case 6: 
    case 7: 
    case 8: 
    case 10: 
    case 11: 
    case 12: 
    case 13: 
      localf2.rO = ((PorterDuff.Mode)localObject);
      localObject = localTypedArray.getColorStateList(1);
      if (localObject != null) {
        localf2.rN = ((ColorStateList)localObject);
      }
      bool = localf2.rP;
      if (c.a(paramXmlPullParser, "autoMirrored")) {
        break;
      }
    }
    for (;;)
    {
      localf2.rP = bool;
      locale.rH = c.a(localTypedArray, paramXmlPullParser, "viewportWidth", 7, locale.rH);
      locale.rI = c.a(localTypedArray, paramXmlPullParser, "viewportHeight", 8, locale.rI);
      if (locale.rH > 0.0F) {
        break label360;
      }
      throw new XmlPullParserException(localTypedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
      localObject = PorterDuff.Mode.SRC_OVER;
      break;
      localObject = PorterDuff.Mode.SRC_IN;
      break;
      localObject = PorterDuff.Mode.SRC_ATOP;
      break;
      localObject = PorterDuff.Mode.MULTIPLY;
      break;
      localObject = PorterDuff.Mode.SCREEN;
      break;
      localObject = PorterDuff.Mode.ADD;
      break;
      bool = localTypedArray.getBoolean(5, bool);
    }
    label360:
    if (locale.rI <= 0.0F) {
      throw new XmlPullParserException(localTypedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }
    locale.rF = localTypedArray.getDimension(3, locale.rF);
    locale.rG = localTypedArray.getDimension(2, locale.rG);
    if (locale.rF <= 0.0F) {
      throw new XmlPullParserException(localTypedArray.getPositionDescription() + "<vector> tag requires width > 0");
    }
    if (locale.rG <= 0.0F) {
      throw new XmlPullParserException(localTypedArray.getPositionDescription() + "<vector> tag requires height > 0");
    }
    locale.setAlpha(c.a(localTypedArray, paramXmlPullParser, "alpha", 4, locale.getAlpha()));
    localObject = localTypedArray.getString(0);
    if (localObject != null)
    {
      locale.rK = ((String)localObject);
      locale.rL.put(localObject, locale);
    }
    localTypedArray.recycle();
    localf1.qD = getChangingConfigurations();
    localf1.rV = true;
    b(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    this.qQ = a(localf1.rN, localf1.rO);
  }
  
  public final void invalidateSelf()
  {
    if (this.qN != null)
    {
      this.qN.invalidateSelf();
      return;
    }
    super.invalidateSelf();
  }
  
  public final boolean isAutoMirrored()
  {
    if (this.qN != null) {
      return android.support.v4.a.a.a.b(this.qN);
    }
    return this.qP.rP;
  }
  
  public final boolean isStateful()
  {
    if (this.qN != null) {
      return this.qN.isStateful();
    }
    return (super.isStateful()) || ((this.qP != null) && (this.qP.rN != null) && (this.qP.rN.isStateful()));
  }
  
  public final Drawable mutate()
  {
    if (this.qN != null) {
      this.qN.mutate();
    }
    while ((this.qS) || (super.mutate() != this)) {
      return this;
    }
    this.qP = new f(this.qP);
    this.qS = true;
    return this;
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    if (this.qN != null) {
      this.qN.setBounds(paramRect);
    }
  }
  
  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    if (this.qN != null) {
      return this.qN.setState(paramArrayOfInt);
    }
    paramArrayOfInt = this.qP;
    if ((paramArrayOfInt.rN != null) && (paramArrayOfInt.rO != null))
    {
      this.qQ = a(paramArrayOfInt.rN, paramArrayOfInt.rO);
      invalidateSelf();
      return true;
    }
    return false;
  }
  
  public final void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    if (this.qN != null)
    {
      this.qN.scheduleSelf(paramRunnable, paramLong);
      return;
    }
    super.scheduleSelf(paramRunnable, paramLong);
  }
  
  public final void setAlpha(int paramInt)
  {
    if (this.qN != null) {
      this.qN.setAlpha(paramInt);
    }
    while (this.qP.rM.getRootAlpha() == paramInt) {
      return;
    }
    this.qP.rM.setRootAlpha(paramInt);
    invalidateSelf();
  }
  
  public final void setAutoMirrored(boolean paramBoolean)
  {
    if (this.qN != null)
    {
      android.support.v4.a.a.a.a(this.qN, paramBoolean);
      return;
    }
    this.qP.rP = paramBoolean;
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    if (this.qN != null)
    {
      this.qN.setColorFilter(paramColorFilter);
      return;
    }
    this.qR = paramColorFilter;
    invalidateSelf();
  }
  
  public final void setTint(int paramInt)
  {
    if (this.qN != null)
    {
      android.support.v4.a.a.a.a(this.qN, paramInt);
      return;
    }
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public final void setTintList(ColorStateList paramColorStateList)
  {
    if (this.qN != null) {
      android.support.v4.a.a.a.a(this.qN, paramColorStateList);
    }
    f localf;
    do
    {
      return;
      localf = this.qP;
    } while (localf.rN == paramColorStateList);
    localf.rN = paramColorStateList;
    this.qQ = a(paramColorStateList, localf.rO);
    invalidateSelf();
  }
  
  public final void setTintMode(PorterDuff.Mode paramMode)
  {
    if (this.qN != null) {
      android.support.v4.a.a.a.a(this.qN, paramMode);
    }
    f localf;
    do
    {
      return;
      localf = this.qP;
    } while (localf.rO == paramMode);
    localf.rO = paramMode;
    this.qQ = a(localf.rN, paramMode);
    invalidateSelf();
  }
  
  public final boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.qN != null) {
      return this.qN.setVisible(paramBoolean1, paramBoolean2);
    }
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public final void unscheduleSelf(Runnable paramRunnable)
  {
    if (this.qN != null)
    {
      this.qN.unscheduleSelf(paramRunnable);
      return;
    }
    super.unscheduleSelf(paramRunnable);
  }
  
  private static final class a
    extends i.d
  {
    public a() {}
    
    public a(a parama)
    {
      super();
    }
    
    final void a(TypedArray paramTypedArray)
    {
      String str = paramTypedArray.getString(0);
      if (str != null) {
        this.rw = str;
      }
      paramTypedArray = paramTypedArray.getString(1);
      if (paramTypedArray != null) {
        this.rv = android.support.v4.a.b.y(paramTypedArray);
      }
    }
    
    public final boolean cf()
    {
      return true;
    }
  }
  
  private static final class b
    extends i.d
  {
    private int[] qY;
    int qZ = 0;
    float ra = 0.0F;
    int rb = 0;
    float rc = 1.0F;
    int rd = 0;
    float re = 1.0F;
    float rf = 0.0F;
    float rg = 1.0F;
    float rh = 0.0F;
    Paint.Cap ri = Paint.Cap.BUTT;
    Paint.Join rj = Paint.Join.MITER;
    float rk = 4.0F;
    
    public b() {}
    
    public b(b paramb)
    {
      super();
      this.qY = paramb.qY;
      this.qZ = paramb.qZ;
      this.ra = paramb.ra;
      this.rc = paramb.rc;
      this.rb = paramb.rb;
      this.rd = paramb.rd;
      this.re = paramb.re;
      this.rf = paramb.rf;
      this.rg = paramb.rg;
      this.rh = paramb.rh;
      this.ri = paramb.ri;
      this.rj = paramb.rj;
      this.rk = paramb.rk;
    }
    
    final void a(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser)
    {
      this.qY = null;
      if (!c.a(paramXmlPullParser, "pathData")) {
        return;
      }
      Object localObject = paramTypedArray.getString(0);
      if (localObject != null) {
        this.rw = ((String)localObject);
      }
      localObject = paramTypedArray.getString(2);
      if (localObject != null) {
        this.rv = android.support.v4.a.b.y((String)localObject);
      }
      this.rb = c.b(paramTypedArray, paramXmlPullParser, "fillColor", 1, this.rb);
      this.re = c.a(paramTypedArray, paramXmlPullParser, "fillAlpha", 12, this.re);
      int i = c.a(paramTypedArray, paramXmlPullParser, "strokeLineCap", 8, -1);
      localObject = this.ri;
      switch (i)
      {
      default: 
        this.ri = ((Paint.Cap)localObject);
        i = c.a(paramTypedArray, paramXmlPullParser, "strokeLineJoin", 9, -1);
        localObject = this.rj;
        switch (i)
        {
        }
        break;
      }
      for (;;)
      {
        this.rj = ((Paint.Join)localObject);
        this.rk = c.a(paramTypedArray, paramXmlPullParser, "strokeMiterLimit", 10, this.rk);
        this.qZ = c.b(paramTypedArray, paramXmlPullParser, "strokeColor", 3, this.qZ);
        this.rc = c.a(paramTypedArray, paramXmlPullParser, "strokeAlpha", 11, this.rc);
        this.ra = c.a(paramTypedArray, paramXmlPullParser, "strokeWidth", 4, this.ra);
        this.rg = c.a(paramTypedArray, paramXmlPullParser, "trimPathEnd", 6, this.rg);
        this.rh = c.a(paramTypedArray, paramXmlPullParser, "trimPathOffset", 7, this.rh);
        this.rf = c.a(paramTypedArray, paramXmlPullParser, "trimPathStart", 5, this.rf);
        this.rd = c.a(paramTypedArray, paramXmlPullParser, "fillType", 13, this.rd);
        return;
        localObject = Paint.Cap.BUTT;
        break;
        localObject = Paint.Cap.ROUND;
        break;
        localObject = Paint.Cap.SQUARE;
        break;
        localObject = Paint.Join.MITER;
        continue;
        localObject = Paint.Join.ROUND;
        continue;
        localObject = Paint.Join.BEVEL;
      }
    }
    
    final float getFillAlpha()
    {
      return this.re;
    }
    
    final int getFillColor()
    {
      return this.rb;
    }
    
    final float getStrokeAlpha()
    {
      return this.rc;
    }
    
    final int getStrokeColor()
    {
      return this.qZ;
    }
    
    final float getStrokeWidth()
    {
      return this.ra;
    }
    
    final float getTrimPathEnd()
    {
      return this.rg;
    }
    
    final float getTrimPathOffset()
    {
      return this.rh;
    }
    
    final float getTrimPathStart()
    {
      return this.rf;
    }
    
    final void setFillAlpha(float paramFloat)
    {
      this.re = paramFloat;
    }
    
    final void setFillColor(int paramInt)
    {
      this.rb = paramInt;
    }
    
    final void setStrokeAlpha(float paramFloat)
    {
      this.rc = paramFloat;
    }
    
    final void setStrokeColor(int paramInt)
    {
      this.qZ = paramInt;
    }
    
    final void setStrokeWidth(float paramFloat)
    {
      this.ra = paramFloat;
    }
    
    final void setTrimPathEnd(float paramFloat)
    {
      this.rg = paramFloat;
    }
    
    final void setTrimPathOffset(float paramFloat)
    {
      this.rh = paramFloat;
    }
    
    final void setTrimPathStart(float paramFloat)
    {
      this.rf = paramFloat;
    }
  }
  
  private static final class c
  {
    final ArrayList<Object> ib = new ArrayList();
    int qD;
    int[] qY;
    final Matrix rl = new Matrix();
    float rm = 0.0F;
    float rn = 0.0F;
    float ro = 0.0F;
    float rp = 1.0F;
    float rq = 1.0F;
    float rr = 0.0F;
    float rs = 0.0F;
    final Matrix rt = new Matrix();
    String ru = null;
    
    public c() {}
    
    public c(c paramc, android.support.v4.g.a<String, Object> parama)
    {
      this.rm = paramc.rm;
      this.rn = paramc.rn;
      this.ro = paramc.ro;
      this.rp = paramc.rp;
      this.rq = paramc.rq;
      this.rr = paramc.rr;
      this.rs = paramc.rs;
      this.qY = paramc.qY;
      this.ru = paramc.ru;
      this.qD = paramc.qD;
      if (this.ru != null) {
        parama.put(this.ru, this);
      }
      this.rt.set(paramc.rt);
      ArrayList localArrayList = paramc.ib;
      int i = 0;
      while (i < localArrayList.size())
      {
        paramc = localArrayList.get(i);
        if ((paramc instanceof c))
        {
          paramc = (c)paramc;
          this.ib.add(new c(paramc, parama));
          i += 1;
        }
        else
        {
          if ((paramc instanceof i.b)) {}
          for (paramc = new i.b((i.b)paramc);; paramc = new i.a((i.a)paramc))
          {
            this.ib.add(paramc);
            if (paramc.rw == null) {
              break;
            }
            parama.put(paramc.rw, paramc);
            break;
            if (!(paramc instanceof i.a)) {
              break label315;
            }
          }
          label315:
          throw new IllegalStateException("Unknown object in the tree!");
        }
      }
    }
    
    final void cg()
    {
      this.rt.reset();
      this.rt.postTranslate(-this.rn, -this.ro);
      this.rt.postScale(this.rp, this.rq);
      this.rt.postRotate(this.rm, 0.0F, 0.0F);
      this.rt.postTranslate(this.rr + this.rn, this.rs + this.ro);
    }
    
    public final String getGroupName()
    {
      return this.ru;
    }
    
    public final Matrix getLocalMatrix()
    {
      return this.rt;
    }
    
    public final float getPivotX()
    {
      return this.rn;
    }
    
    public final float getPivotY()
    {
      return this.ro;
    }
    
    public final float getRotation()
    {
      return this.rm;
    }
    
    public final float getScaleX()
    {
      return this.rp;
    }
    
    public final float getScaleY()
    {
      return this.rq;
    }
    
    public final float getTranslateX()
    {
      return this.rr;
    }
    
    public final float getTranslateY()
    {
      return this.rs;
    }
    
    public final void setPivotX(float paramFloat)
    {
      if (paramFloat != this.rn)
      {
        this.rn = paramFloat;
        cg();
      }
    }
    
    public final void setPivotY(float paramFloat)
    {
      if (paramFloat != this.ro)
      {
        this.ro = paramFloat;
        cg();
      }
    }
    
    public final void setRotation(float paramFloat)
    {
      if (paramFloat != this.rm)
      {
        this.rm = paramFloat;
        cg();
      }
    }
    
    public final void setScaleX(float paramFloat)
    {
      if (paramFloat != this.rp)
      {
        this.rp = paramFloat;
        cg();
      }
    }
    
    public final void setScaleY(float paramFloat)
    {
      if (paramFloat != this.rq)
      {
        this.rq = paramFloat;
        cg();
      }
    }
    
    public final void setTranslateX(float paramFloat)
    {
      if (paramFloat != this.rr)
      {
        this.rr = paramFloat;
        cg();
      }
    }
    
    public final void setTranslateY(float paramFloat)
    {
      if (paramFloat != this.rs)
      {
        this.rs = paramFloat;
        cg();
      }
    }
  }
  
  private static class d
  {
    int qD;
    protected b.b[] rv = null;
    String rw;
    
    public d() {}
    
    public d(d paramd)
    {
      this.rw = paramd.rw;
      this.qD = paramd.qD;
      this.rv = android.support.v4.a.b.a(paramd.rv);
    }
    
    public final void b(Path paramPath)
    {
      paramPath.reset();
      if (this.rv != null) {
        b.b.a(this.rv, paramPath);
      }
    }
    
    public boolean cf()
    {
      return false;
    }
    
    public b.b[] getPathData()
    {
      return this.rv;
    }
    
    public String getPathName()
    {
      return this.rw;
    }
    
    public void setPathData(b.b[] paramArrayOfb)
    {
      if (!android.support.v4.a.b.a(this.rv, paramArrayOfb)) {
        this.rv = android.support.v4.a.b.a(paramArrayOfb);
      }
      for (;;)
      {
        return;
        b.b[] arrayOfb = this.rv;
        int i = 0;
        while (i < paramArrayOfb.length)
        {
          arrayOfb[i].BG = paramArrayOfb[i].BG;
          int j = 0;
          while (j < paramArrayOfb[i].BH.length)
          {
            arrayOfb[i].BH[j] = paramArrayOfb[i].BH[j];
            j += 1;
          }
          i += 1;
        }
      }
    }
  }
  
  private static final class e
  {
    private static final Matrix rz = new Matrix();
    private int qD;
    private final Matrix rA = new Matrix();
    private Paint rB;
    private Paint rC;
    private PathMeasure rD;
    final i.c rE;
    float rF = 0.0F;
    float rG = 0.0F;
    float rH = 0.0F;
    float rI = 0.0F;
    int rJ = 255;
    String rK = null;
    final android.support.v4.g.a<String, Object> rL = new android.support.v4.g.a();
    private final Path rx;
    private final Path ry;
    
    public e()
    {
      this.rE = new i.c();
      this.rx = new Path();
      this.ry = new Path();
    }
    
    public e(e parame)
    {
      this.rE = new i.c(parame.rE, this.rL);
      this.rx = new Path(parame.rx);
      this.ry = new Path(parame.ry);
      this.rF = parame.rF;
      this.rG = parame.rG;
      this.rH = parame.rH;
      this.rI = parame.rI;
      this.qD = parame.qD;
      this.rJ = parame.rJ;
      this.rK = parame.rK;
      if (parame.rK != null) {
        this.rL.put(parame.rK, this);
      }
    }
    
    private void a(i.c paramc, Matrix paramMatrix, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
    {
      paramc.rl.set(paramMatrix);
      paramc.rl.preConcat(paramc.rt);
      paramCanvas.save();
      int i = 0;
      if (i < paramc.ib.size())
      {
        paramMatrix = paramc.ib.get(i);
        if ((paramMatrix instanceof i.c)) {
          a((i.c)paramMatrix, paramc.rl, paramCanvas, paramInt1, paramInt2, paramColorFilter);
        }
      }
      label494:
      label785:
      label801:
      for (;;)
      {
        i += 1;
        break;
        if ((paramMatrix instanceof i.d))
        {
          paramMatrix = (i.d)paramMatrix;
          float f1 = paramInt1 / this.rH;
          float f3 = paramInt2 / this.rI;
          float f2 = Math.min(f1, f3);
          Object localObject1 = paramc.rl;
          this.rA.set((Matrix)localObject1);
          this.rA.postScale(f1, f3);
          Object localObject2 = new float[4];
          tmp160_158 = localObject2;
          tmp160_158[0] = 0.0F;
          tmp164_160 = tmp160_158;
          tmp164_160[1] = 1.0F;
          tmp168_164 = tmp164_160;
          tmp168_164[2] = 1.0F;
          tmp172_168 = tmp168_164;
          tmp172_168[3] = 0.0F;
          tmp172_168;
          ((Matrix)localObject1).mapVectors((float[])localObject2);
          float f6 = (float)Math.hypot(localObject2[0], localObject2[1]);
          float f7 = (float)Math.hypot(localObject2[2], localObject2[3]);
          f1 = localObject2[0];
          f3 = localObject2[1];
          float f4 = localObject2[2];
          float f5 = localObject2[3];
          f6 = Math.max(f6, f7);
          if (f6 > 0.0F) {}
          for (f1 = Math.abs(f5 * f1 - f3 * f4) / f6;; f1 = 0.0F)
          {
            if (f1 == 0.0F) {
              break label801;
            }
            paramMatrix.b(this.rx);
            localObject2 = this.rx;
            this.ry.reset();
            if (paramMatrix.cf())
            {
              this.ry.addPath((Path)localObject2, this.rA);
              paramCanvas.clipPath(this.ry);
              break;
            }
            localObject1 = (i.b)paramMatrix;
            Path localPath;
            if ((((i.b)localObject1).rf != 0.0F) || (((i.b)localObject1).rg != 1.0F))
            {
              f6 = ((i.b)localObject1).rf;
              f7 = ((i.b)localObject1).rh;
              f4 = ((i.b)localObject1).rg;
              f5 = ((i.b)localObject1).rh;
              if (this.rD == null) {
                this.rD = new PathMeasure();
              }
              this.rD.setPath(this.rx, false);
              f3 = this.rD.getLength();
              f6 = (f6 + f7) % 1.0F * f3;
              f4 = (f4 + f5) % 1.0F * f3;
              ((Path)localObject2).reset();
              if (f6 > f4)
              {
                this.rD.getSegment(f6, f3, (Path)localObject2, true);
                this.rD.getSegment(0.0F, f4, (Path)localObject2, true);
                ((Path)localObject2).rLineTo(0.0F, 0.0F);
              }
            }
            else
            {
              this.ry.addPath((Path)localObject2, this.rA);
              if (((i.b)localObject1).rb != 0)
              {
                if (this.rC == null)
                {
                  this.rC = new Paint();
                  this.rC.setStyle(Paint.Style.FILL);
                  this.rC.setAntiAlias(true);
                }
                localObject2 = this.rC;
                ((Paint)localObject2).setColor(i.b(((i.b)localObject1).rb, ((i.b)localObject1).re));
                ((Paint)localObject2).setColorFilter(paramColorFilter);
                localPath = this.ry;
                if (((i.b)localObject1).rd != 0) {
                  break label785;
                }
              }
            }
            for (paramMatrix = Path.FillType.WINDING;; paramMatrix = Path.FillType.EVEN_ODD)
            {
              localPath.setFillType(paramMatrix);
              paramCanvas.drawPath(this.ry, (Paint)localObject2);
              if (((i.b)localObject1).qZ == 0) {
                break;
              }
              if (this.rB == null)
              {
                this.rB = new Paint();
                this.rB.setStyle(Paint.Style.STROKE);
                this.rB.setAntiAlias(true);
              }
              paramMatrix = this.rB;
              if (((i.b)localObject1).rj != null) {
                paramMatrix.setStrokeJoin(((i.b)localObject1).rj);
              }
              if (((i.b)localObject1).ri != null) {
                paramMatrix.setStrokeCap(((i.b)localObject1).ri);
              }
              paramMatrix.setStrokeMiter(((i.b)localObject1).rk);
              paramMatrix.setColor(i.b(((i.b)localObject1).qZ, ((i.b)localObject1).rc));
              paramMatrix.setColorFilter(paramColorFilter);
              paramMatrix.setStrokeWidth(((i.b)localObject1).ra * (f1 * f2));
              paramCanvas.drawPath(this.ry, paramMatrix);
              break;
              this.rD.getSegment(f6, f4, (Path)localObject2, true);
              break label494;
            }
            paramCanvas.restore();
            return;
          }
        }
      }
    }
    
    public final void a(Canvas paramCanvas, int paramInt1, int paramInt2)
    {
      a(this.rE, rz, paramCanvas, paramInt1, paramInt2, null);
    }
    
    public final float getAlpha()
    {
      return getRootAlpha() / 255.0F;
    }
    
    public final int getRootAlpha()
    {
      return this.rJ;
    }
    
    public final void setAlpha(float paramFloat)
    {
      setRootAlpha((int)(255.0F * paramFloat));
    }
    
    public final void setRootAlpha(int paramInt)
    {
      this.rJ = paramInt;
    }
  }
  
  private static final class f
    extends Drawable.ConstantState
  {
    int qD;
    i.e rM;
    ColorStateList rN = null;
    PorterDuff.Mode rO = i.qO;
    boolean rP;
    Bitmap rQ;
    ColorStateList rR;
    PorterDuff.Mode rS;
    int rT;
    boolean rU;
    boolean rV;
    Paint rW;
    
    public f()
    {
      this.rM = new i.e();
    }
    
    public f(f paramf)
    {
      if (paramf != null)
      {
        this.qD = paramf.qD;
        this.rM = new i.e(paramf.rM);
        if (i.e.a(paramf.rM) != null) {
          i.e.a(this.rM, new Paint(i.e.a(paramf.rM)));
        }
        if (i.e.b(paramf.rM) != null) {
          i.e.b(this.rM, new Paint(i.e.b(paramf.rM)));
        }
        this.rN = paramf.rN;
        this.rO = paramf.rO;
        this.rP = paramf.rP;
      }
    }
    
    public final int getChangingConfigurations()
    {
      return this.qD;
    }
    
    public final void j(int paramInt1, int paramInt2)
    {
      this.rQ.eraseColor(0);
      Canvas localCanvas = new Canvas(this.rQ);
      this.rM.a(localCanvas, paramInt1, paramInt2);
    }
    
    public final Drawable newDrawable()
    {
      return new i(this);
    }
    
    public final Drawable newDrawable(Resources paramResources)
    {
      return new i(this);
    }
  }
  
  private static final class g
    extends Drawable.ConstantState
  {
    private final Drawable.ConstantState qI;
    
    public g(Drawable.ConstantState paramConstantState)
    {
      this.qI = paramConstantState;
    }
    
    public final boolean canApplyTheme()
    {
      return this.qI.canApplyTheme();
    }
    
    public final int getChangingConfigurations()
    {
      return this.qI.getChangingConfigurations();
    }
    
    public final Drawable newDrawable()
    {
      i locali = new i();
      locali.qN = ((VectorDrawable)this.qI.newDrawable());
      return locali;
    }
    
    public final Drawable newDrawable(Resources paramResources)
    {
      i locali = new i();
      locali.qN = ((VectorDrawable)this.qI.newDrawable(paramResources));
      return locali;
    }
    
    public final Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme)
    {
      i locali = new i();
      locali.qN = ((VectorDrawable)this.qI.newDrawable(paramResources, paramTheme));
      return locali;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/c/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */