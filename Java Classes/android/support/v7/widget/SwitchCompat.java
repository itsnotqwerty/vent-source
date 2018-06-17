package android.support.v7.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.r;
import android.support.v7.a.a.a;
import android.support.v7.a.a.j;
import android.support.v7.c.a.b;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import java.util.List;

public class SwitchCompat
  extends CompoundButton
{
  private static final Property<SwitchCompat, Float> ajb = new Property(Float.class, "thumbPos") {};
  private static final int[] ik = { 16842912 };
  private final Rect Gl = new Rect();
  private int aew;
  private int ajA;
  private int ajB;
  private int ajC;
  private int ajD;
  private ColorStateList ajE;
  private Layout ajF;
  private Layout ajG;
  private TransformationMethod ajH;
  ObjectAnimator ajI;
  private Drawable ajc;
  private ColorStateList ajd = null;
  private PorterDuff.Mode aje = null;
  private boolean ajf = false;
  private boolean ajg = false;
  private Drawable ajh;
  private ColorStateList aji = null;
  private PorterDuff.Mode ajj = null;
  private boolean ajk = false;
  private boolean ajl = false;
  private int ajm;
  private int ajn;
  private int ajo;
  private boolean ajp;
  private CharSequence ajq;
  private CharSequence ajr;
  private boolean ajs;
  private int ajt;
  private float aju;
  private float ajv;
  private float ajw;
  private int ajx;
  private int ajy;
  private int ajz;
  private VelocityTracker jJ = VelocityTracker.obtain();
  private final TextPaint kM = new TextPaint(1);
  private int nc;
  
  public SwitchCompat(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SwitchCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.switchStyle);
  }
  
  public SwitchCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = getResources();
    this.kM.density = ((Resources)localObject).getDisplayMetrics().density;
    localObject = bo.a(paramContext, paramAttributeSet, a.j.SwitchCompat, paramInt, 0);
    this.ajc = ((bo)localObject).getDrawable(a.j.SwitchCompat_android_thumb);
    if (this.ajc != null) {
      this.ajc.setCallback(this);
    }
    this.ajh = ((bo)localObject).getDrawable(a.j.SwitchCompat_track);
    if (this.ajh != null) {
      this.ajh.setCallback(this);
    }
    this.ajq = ((bo)localObject).getText(a.j.SwitchCompat_android_textOn);
    this.ajr = ((bo)localObject).getText(a.j.SwitchCompat_android_textOff);
    this.ajs = ((bo)localObject).getBoolean(a.j.SwitchCompat_showText, true);
    this.ajm = ((bo)localObject).getDimensionPixelSize(a.j.SwitchCompat_thumbTextPadding, 0);
    this.ajn = ((bo)localObject).getDimensionPixelSize(a.j.SwitchCompat_switchMinWidth, 0);
    this.ajo = ((bo)localObject).getDimensionPixelSize(a.j.SwitchCompat_switchPadding, 0);
    this.ajp = ((bo)localObject).getBoolean(a.j.SwitchCompat_splitTrack, false);
    paramAttributeSet = ((bo)localObject).getColorStateList(a.j.SwitchCompat_thumbTint);
    if (paramAttributeSet != null)
    {
      this.ajd = paramAttributeSet;
      this.ajf = true;
    }
    paramAttributeSet = am.c(((bo)localObject).getInt(a.j.SwitchCompat_thumbTintMode, -1), null);
    if (this.aje != paramAttributeSet)
    {
      this.aje = paramAttributeSet;
      this.ajg = true;
    }
    if ((this.ajf) || (this.ajg)) {
      iX();
    }
    paramAttributeSet = ((bo)localObject).getColorStateList(a.j.SwitchCompat_trackTint);
    if (paramAttributeSet != null)
    {
      this.aji = paramAttributeSet;
      this.ajk = true;
    }
    paramAttributeSet = am.c(((bo)localObject).getInt(a.j.SwitchCompat_trackTintMode, -1), null);
    if (this.ajj != paramAttributeSet)
    {
      this.ajj = paramAttributeSet;
      this.ajl = true;
    }
    if ((this.ajk) || (this.ajl)) {
      iW();
    }
    paramInt = ((bo)localObject).getResourceId(a.j.SwitchCompat_switchTextAppearance, 0);
    bo localbo;
    int i;
    label530:
    label545:
    label559:
    boolean bool;
    label580:
    float f;
    if (paramInt != 0)
    {
      localbo = bo.a(paramContext, paramInt, a.j.TextAppearance);
      paramAttributeSet = localbo.getColorStateList(a.j.TextAppearance_android_textColor);
      if (paramAttributeSet == null) {
        break label685;
      }
      this.ajE = paramAttributeSet;
      paramInt = localbo.getDimensionPixelSize(a.j.TextAppearance_android_textSize, 0);
      if ((paramInt != 0) && (paramInt != this.kM.getTextSize()))
      {
        this.kM.setTextSize(paramInt);
        requestLayout();
      }
      paramInt = localbo.getInt(a.j.TextAppearance_android_typeface, -1);
      i = localbo.getInt(a.j.TextAppearance_android_textStyle, -1);
      switch (paramInt)
      {
      default: 
        paramAttributeSet = null;
        if (i > 0) {
          if (paramAttributeSet == null)
          {
            paramAttributeSet = Typeface.defaultFromStyle(i);
            setSwitchTypeface(paramAttributeSet);
            if (paramAttributeSet == null) {
              break label727;
            }
            paramInt = paramAttributeSet.getStyle();
            paramInt = i & (paramInt ^ 0xFFFFFFFF);
            paramAttributeSet = this.kM;
            if ((paramInt & 0x1) == 0) {
              break label732;
            }
            bool = true;
            paramAttributeSet.setFakeBoldText(bool);
            paramAttributeSet = this.kM;
            if ((paramInt & 0x2) == 0) {
              break label738;
            }
            f = -0.25F;
            label602:
            paramAttributeSet.setTextSkewX(f);
            label608:
            if (!localbo.getBoolean(a.j.TextAppearance_textAllCaps, false)) {
              break label768;
            }
          }
        }
        break;
      }
    }
    label685:
    label727:
    label732:
    label738:
    label768:
    for (this.ajH = new android.support.v7.g.a(getContext());; this.ajH = null)
    {
      localbo.ajT.recycle();
      ((bo)localObject).ajT.recycle();
      paramContext = ViewConfiguration.get(paramContext);
      this.nc = paramContext.getScaledTouchSlop();
      this.aew = paramContext.getScaledMinimumFlingVelocity();
      refreshDrawableState();
      setChecked(isChecked());
      return;
      this.ajE = getTextColors();
      break;
      paramAttributeSet = Typeface.SANS_SERIF;
      break label530;
      paramAttributeSet = Typeface.SERIF;
      break label530;
      paramAttributeSet = Typeface.MONOSPACE;
      break label530;
      paramAttributeSet = Typeface.create(paramAttributeSet, i);
      break label545;
      paramInt = 0;
      break label559;
      bool = false;
      break label580;
      f = 0.0F;
      break label602;
      this.kM.setFakeBoldText(false);
      this.kM.setTextSkewX(0.0F);
      setSwitchTypeface(paramAttributeSet);
      break label608;
    }
  }
  
  private boolean getTargetCheckedState()
  {
    return this.ajw > 0.5F;
  }
  
  private int getThumbOffset()
  {
    if (bw.bj(this)) {}
    for (float f = 1.0F - this.ajw;; f = this.ajw) {
      return (int)(f * getThumbScrollRange() + 0.5F);
    }
  }
  
  private int getThumbScrollRange()
  {
    if (this.ajh != null)
    {
      Rect localRect2 = this.Gl;
      this.ajh.getPadding(localRect2);
      if (this.ajc != null) {}
      for (Rect localRect1 = am.k(this.ajc);; localRect1 = am.Yr) {
        return this.ajx - this.ajz - localRect2.left - localRect2.right - localRect1.left - localRect1.right;
      }
    }
    return 0;
  }
  
  private void iW()
  {
    if ((this.ajh != null) && ((this.ajk) || (this.ajl)))
    {
      this.ajh = this.ajh.mutate();
      if (this.ajk) {
        android.support.v4.a.a.a.a(this.ajh, this.aji);
      }
      if (this.ajl) {
        android.support.v4.a.a.a.a(this.ajh, this.ajj);
      }
      if (this.ajh.isStateful()) {
        this.ajh.setState(getDrawableState());
      }
    }
  }
  
  private void iX()
  {
    if ((this.ajc != null) && ((this.ajf) || (this.ajg)))
    {
      this.ajc = this.ajc.mutate();
      if (this.ajf) {
        android.support.v4.a.a.a.a(this.ajc, this.ajd);
      }
      if (this.ajg) {
        android.support.v4.a.a.a.a(this.ajc, this.aje);
      }
      if (this.ajc.isStateful()) {
        this.ajc.setState(getDrawableState());
      }
    }
  }
  
  private Layout n(CharSequence paramCharSequence)
  {
    TextPaint localTextPaint;
    if (this.ajH != null)
    {
      paramCharSequence = this.ajH.getTransformation(paramCharSequence, this);
      localTextPaint = this.kM;
      if (paramCharSequence == null) {
        break label62;
      }
    }
    label62:
    for (int i = (int)Math.ceil(Layout.getDesiredWidth(paramCharSequence, this.kM));; i = 0)
    {
      return new StaticLayout(paramCharSequence, localTextPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true);
      break;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = this.Gl;
    int j = this.ajA;
    int n = this.ajB;
    int i2 = this.ajC;
    int i1 = this.ajD;
    int i3 = j + getThumbOffset();
    Object localObject;
    int i4;
    label139:
    int m;
    int k;
    if (this.ajc != null)
    {
      localObject = am.k(this.ajc);
      if (this.ajh == null) {
        break label340;
      }
      this.ajh.getPadding(localRect);
      i4 = localRect.left;
      if (localObject == null) {
        break label320;
      }
      i = j;
      if (((Rect)localObject).left > localRect.left) {
        i = j + (((Rect)localObject).left - localRect.left);
      }
      if (((Rect)localObject).top <= localRect.top) {
        break label314;
      }
      j = ((Rect)localObject).top - localRect.top + n;
      m = i2;
      if (((Rect)localObject).right > localRect.right) {
        m = i2 - (((Rect)localObject).right - localRect.right);
      }
      if (((Rect)localObject).bottom <= localRect.bottom) {
        break label307;
      }
      k = i1 - (((Rect)localObject).bottom - localRect.bottom);
      label201:
      this.ajh.setBounds(i, j, m, k);
    }
    label307:
    label314:
    label320:
    label340:
    for (int i = i4 + i3;; i = i3)
    {
      if (this.ajc != null)
      {
        this.ajc.getPadding(localRect);
        j = i - localRect.left;
        i = i + this.ajz + localRect.right;
        this.ajc.setBounds(j, n, i, i1);
        localObject = getBackground();
        if (localObject != null) {
          android.support.v4.a.a.a.a((Drawable)localObject, j, n, i, i1);
        }
      }
      super.draw(paramCanvas);
      return;
      localObject = am.Yr;
      break;
      k = i1;
      break label201;
      j = n;
      break label139;
      k = i1;
      m = n;
      i = j;
      j = m;
      m = i2;
      break label201;
    }
  }
  
  public void drawableHotspotChanged(float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      super.drawableHotspotChanged(paramFloat1, paramFloat2);
    }
    if (this.ajc != null) {
      android.support.v4.a.a.a.a(this.ajc, paramFloat1, paramFloat2);
    }
    if (this.ajh != null) {
      android.support.v4.a.a.a.a(this.ajh, paramFloat1, paramFloat2);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    boolean bool2 = false;
    Drawable localDrawable = this.ajc;
    boolean bool1 = bool2;
    if (localDrawable != null)
    {
      bool1 = bool2;
      if (localDrawable.isStateful()) {
        bool1 = localDrawable.setState(arrayOfInt) | false;
      }
    }
    localDrawable = this.ajh;
    bool2 = bool1;
    if (localDrawable != null)
    {
      bool2 = bool1;
      if (localDrawable.isStateful()) {
        bool2 = bool1 | localDrawable.setState(arrayOfInt);
      }
    }
    if (bool2) {
      invalidate();
    }
  }
  
  public int getCompoundPaddingLeft()
  {
    int i;
    if (!bw.bj(this)) {
      i = super.getCompoundPaddingLeft();
    }
    int j;
    do
    {
      return i;
      j = super.getCompoundPaddingLeft() + this.ajx;
      i = j;
    } while (TextUtils.isEmpty(getText()));
    return j + this.ajo;
  }
  
  public int getCompoundPaddingRight()
  {
    int i;
    if (bw.bj(this)) {
      i = super.getCompoundPaddingRight();
    }
    int j;
    do
    {
      return i;
      j = super.getCompoundPaddingRight() + this.ajx;
      i = j;
    } while (TextUtils.isEmpty(getText()));
    return j + this.ajo;
  }
  
  public boolean getShowText()
  {
    return this.ajs;
  }
  
  public boolean getSplitTrack()
  {
    return this.ajp;
  }
  
  public int getSwitchMinWidth()
  {
    return this.ajn;
  }
  
  public int getSwitchPadding()
  {
    return this.ajo;
  }
  
  public CharSequence getTextOff()
  {
    return this.ajr;
  }
  
  public CharSequence getTextOn()
  {
    return this.ajq;
  }
  
  public Drawable getThumbDrawable()
  {
    return this.ajc;
  }
  
  public int getThumbTextPadding()
  {
    return this.ajm;
  }
  
  public ColorStateList getThumbTintList()
  {
    return this.ajd;
  }
  
  public PorterDuff.Mode getThumbTintMode()
  {
    return this.aje;
  }
  
  public Drawable getTrackDrawable()
  {
    return this.ajh;
  }
  
  public ColorStateList getTrackTintList()
  {
    return this.aji;
  }
  
  public PorterDuff.Mode getTrackTintMode()
  {
    return this.ajj;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (this.ajc != null) {
      this.ajc.jumpToCurrentState();
    }
    if (this.ajh != null) {
      this.ajh.jumpToCurrentState();
    }
    if ((this.ajI != null) && (this.ajI.isStarted()))
    {
      this.ajI.end();
      this.ajI = null;
    }
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (isChecked()) {
      mergeDrawableStates(arrayOfInt, ik);
    }
    return arrayOfInt;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Object localObject1 = this.Gl;
    Object localObject3 = this.ajh;
    int k;
    int m;
    int n;
    int i1;
    Object localObject2;
    label151:
    int j;
    if (localObject3 != null)
    {
      ((Drawable)localObject3).getPadding((Rect)localObject1);
      k = this.ajB;
      m = this.ajD;
      n = ((Rect)localObject1).top;
      i1 = ((Rect)localObject1).bottom;
      localObject2 = this.ajc;
      if (localObject3 != null)
      {
        if ((!this.ajp) || (localObject2 == null)) {
          break label322;
        }
        Rect localRect = am.k((Drawable)localObject2);
        ((Drawable)localObject2).copyBounds((Rect)localObject1);
        ((Rect)localObject1).left += localRect.left;
        ((Rect)localObject1).right -= localRect.right;
        i = paramCanvas.save();
        paramCanvas.clipRect((Rect)localObject1, Region.Op.DIFFERENCE);
        ((Drawable)localObject3).draw(paramCanvas);
        paramCanvas.restoreToCount(i);
      }
      j = paramCanvas.save();
      if (localObject2 != null) {
        ((Drawable)localObject2).draw(paramCanvas);
      }
      if (!getTargetCheckedState()) {
        break label331;
      }
      localObject1 = this.ajF;
      label180:
      if (localObject1 != null)
      {
        localObject3 = getDrawableState();
        if (this.ajE != null) {
          this.kM.setColor(this.ajE.getColorForState((int[])localObject3, 0));
        }
        this.kM.drawableState = ((int[])localObject3);
        if (localObject2 == null) {
          break label340;
        }
        localObject2 = ((Drawable)localObject2).getBounds();
        i = ((Rect)localObject2).left;
      }
    }
    label322:
    label331:
    label340:
    for (int i = ((Rect)localObject2).right + i;; i = getWidth())
    {
      i /= 2;
      int i2 = ((Layout)localObject1).getWidth() / 2;
      k = (k + n + (m - i1)) / 2;
      m = ((Layout)localObject1).getHeight() / 2;
      paramCanvas.translate(i - i2, k - m);
      ((Layout)localObject1).draw(paramCanvas);
      paramCanvas.restoreToCount(j);
      return;
      ((Rect)localObject1).setEmpty();
      break;
      ((Drawable)localObject3).draw(paramCanvas);
      break label151;
      localObject1 = this.ajG;
      break label180;
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName("android.widget.Switch");
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName("android.widget.Switch");
    if (isChecked()) {}
    CharSequence localCharSequence2;
    for (CharSequence localCharSequence1 = this.ajq;; localCharSequence1 = this.ajr)
    {
      if (!TextUtils.isEmpty(localCharSequence1))
      {
        localCharSequence2 = paramAccessibilityNodeInfo.getText();
        if (!TextUtils.isEmpty(localCharSequence2)) {
          break;
        }
        paramAccessibilityNodeInfo.setText(localCharSequence1);
      }
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localCharSequence2).append(' ').append(localCharSequence1);
    paramAccessibilityNodeInfo.setText(localStringBuilder);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    Rect localRect1;
    if (this.ajc != null)
    {
      localRect1 = this.Gl;
      if (this.ajh != null)
      {
        this.ajh.getPadding(localRect1);
        Rect localRect2 = am.k(this.ajc);
        paramInt2 = Math.max(0, localRect2.left - localRect1.left);
        paramInt1 = Math.max(0, localRect2.right - localRect1.right);
      }
    }
    for (;;)
    {
      if (bw.bj(this))
      {
        paramInt3 = getPaddingLeft() + paramInt2;
        paramInt4 = this.ajx + paramInt3 - paramInt2 - paramInt1;
        label110:
        switch (getGravity() & 0x70)
        {
        default: 
          paramInt2 = getPaddingTop();
          paramInt1 = this.ajy + paramInt2;
        }
      }
      for (;;)
      {
        this.ajA = paramInt3;
        this.ajB = paramInt2;
        this.ajD = paramInt1;
        this.ajC = paramInt4;
        return;
        localRect1.setEmpty();
        break;
        paramInt4 = getWidth() - getPaddingRight() - paramInt1;
        paramInt3 = paramInt1 + (paramInt2 + (paramInt4 - this.ajx));
        break label110;
        paramInt2 = (getPaddingTop() + getHeight() - getPaddingBottom()) / 2 - this.ajy / 2;
        paramInt1 = this.ajy + paramInt2;
        continue;
        paramInt1 = getHeight() - getPaddingBottom();
        paramInt2 = paramInt1 - this.ajy;
      }
      paramInt1 = 0;
      paramInt2 = 0;
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int m = 0;
    if (this.ajs)
    {
      if (this.ajF == null) {
        this.ajF = n(this.ajq);
      }
      if (this.ajG == null) {
        this.ajG = n(this.ajr);
      }
    }
    Rect localRect = this.Gl;
    int i;
    int k;
    if (this.ajc != null)
    {
      this.ajc.getPadding(localRect);
      j = this.ajc.getIntrinsicWidth() - localRect.left - localRect.right;
      i = this.ajc.getIntrinsicHeight();
      if (!this.ajs) {
        break label303;
      }
      k = Math.max(this.ajF.getWidth(), this.ajG.getWidth()) + this.ajm * 2;
      label133:
      this.ajz = Math.max(k, j);
      if (this.ajh == null) {
        break label309;
      }
      this.ajh.getPadding(localRect);
    }
    for (int j = this.ajh.getIntrinsicHeight();; j = m)
    {
      int i1 = localRect.left;
      int n = localRect.right;
      m = i1;
      k = n;
      if (this.ajc != null)
      {
        localRect = am.k(this.ajc);
        m = Math.max(i1, localRect.left);
        k = Math.max(n, localRect.right);
      }
      k = Math.max(this.ajn, m + this.ajz * 2 + k);
      i = Math.max(j, i);
      this.ajx = k;
      this.ajy = i;
      super.onMeasure(paramInt1, paramInt2);
      if (getMeasuredHeight() < i) {
        setMeasuredDimension(getMeasuredWidthAndState(), i);
      }
      return;
      i = 0;
      j = 0;
      break;
      label303:
      k = 0;
      break label133;
      label309:
      localRect.setEmpty();
    }
  }
  
  public void onPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onPopulateAccessibilityEvent(paramAccessibilityEvent);
    if (isChecked()) {}
    for (CharSequence localCharSequence = this.ajq;; localCharSequence = this.ajr)
    {
      if (localCharSequence != null) {
        paramAccessibilityEvent.getText().add(localCharSequence);
      }
      return;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f3 = 1.0F;
    int j = 0;
    boolean bool1 = true;
    this.jJ.addMovement(paramMotionEvent);
    switch (paramMotionEvent.getActionMasked())
    {
    }
    for (;;)
    {
      bool1 = super.onTouchEvent(paramMotionEvent);
      float f1;
      int i;
      label474:
      label486:
      for (;;)
      {
        return bool1;
        f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        if (!isEnabled()) {
          break;
        }
        i = j;
        if (this.ajc != null)
        {
          i = getThumbOffset();
          this.ajc.getPadding(this.Gl);
          int k = this.ajB;
          int m = this.nc;
          int n = i + this.ajA - this.nc;
          int i1 = this.ajz;
          int i2 = this.Gl.left;
          int i3 = this.Gl.right;
          int i4 = this.nc;
          int i5 = this.ajD;
          int i6 = this.nc;
          i = j;
          if (f1 > n)
          {
            i = j;
            if (f1 < i1 + n + i2 + i3 + i4)
            {
              i = j;
              if (f2 > k - m)
              {
                i = j;
                if (f2 < i5 + i6) {
                  i = 1;
                }
              }
            }
          }
        }
        if (i == 0) {
          break;
        }
        this.ajt = 1;
        this.aju = f1;
        this.ajv = f2;
        break;
        switch (this.ajt)
        {
        case 0: 
        default: 
          break;
        case 1: 
          f1 = paramMotionEvent.getX();
          f2 = paramMotionEvent.getY();
          if ((Math.abs(f1 - this.aju) <= this.nc) && (Math.abs(f2 - this.ajv) <= this.nc)) {
            break;
          }
          this.ajt = 2;
          getParent().requestDisallowInterceptTouchEvent(true);
          this.aju = f1;
          this.ajv = f2;
          return true;
        case 2: 
          float f4 = paramMotionEvent.getX();
          i = getThumbScrollRange();
          f1 = f4 - this.aju;
          if (i != 0)
          {
            f1 /= i;
            f2 = f1;
            if (bw.bj(this)) {
              f2 = -f1;
            }
            f2 += this.ajw;
            if (f2 >= 0.0F) {
              break label474;
            }
            f1 = 0.0F;
          }
          for (;;)
          {
            if (f1 == this.ajw) {
              break label486;
            }
            this.aju = f4;
            setThumbPosition(f1);
            return true;
            if (f1 > 0.0F)
            {
              f1 = 1.0F;
              break;
            }
            f1 = -1.0F;
            break;
            f1 = f3;
            if (f2 <= 1.0F) {
              f1 = f2;
            }
          }
        }
      }
      if (this.ajt == 2)
      {
        this.ajt = 0;
        boolean bool2;
        if ((paramMotionEvent.getAction() == 1) && (isEnabled()))
        {
          i = 1;
          bool2 = isChecked();
          if (i == 0) {
            break label666;
          }
          this.jJ.computeCurrentVelocity(1000);
          f1 = this.jJ.getXVelocity();
          if (Math.abs(f1) <= this.aew) {
            break label657;
          }
          if (!bw.bj(this)) {
            break label639;
          }
          if (f1 >= 0.0F) {
            break label633;
          }
          bool1 = true;
        }
        for (;;)
        {
          if (bool1 != bool2) {
            playSoundEffect(0);
          }
          setChecked(bool1);
          MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
          localMotionEvent.setAction(3);
          super.onTouchEvent(localMotionEvent);
          localMotionEvent.recycle();
          super.onTouchEvent(paramMotionEvent);
          return true;
          i = 0;
          break;
          label633:
          bool1 = false;
          continue;
          label639:
          if (f1 > 0.0F)
          {
            bool1 = true;
          }
          else
          {
            bool1 = false;
            continue;
            label657:
            bool1 = getTargetCheckedState();
            continue;
            label666:
            bool1 = bool2;
          }
        }
      }
      this.ajt = 0;
      this.jJ.clear();
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    float f = 1.0F;
    super.setChecked(paramBoolean);
    paramBoolean = isChecked();
    if ((getWindowToken() != null) && (r.ae(this)))
    {
      if (paramBoolean) {}
      for (;;)
      {
        this.ajI = ObjectAnimator.ofFloat(this, ajb, new float[] { f });
        this.ajI.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
          this.ajI.setAutoCancel(true);
        }
        this.ajI.start();
        return;
        f = 0.0F;
      }
    }
    if (this.ajI != null) {
      this.ajI.cancel();
    }
    if (paramBoolean) {}
    for (;;)
    {
      setThumbPosition(f);
      return;
      f = 0.0F;
    }
  }
  
  public void setShowText(boolean paramBoolean)
  {
    if (this.ajs != paramBoolean)
    {
      this.ajs = paramBoolean;
      requestLayout();
    }
  }
  
  public void setSplitTrack(boolean paramBoolean)
  {
    this.ajp = paramBoolean;
    invalidate();
  }
  
  public void setSwitchMinWidth(int paramInt)
  {
    this.ajn = paramInt;
    requestLayout();
  }
  
  public void setSwitchPadding(int paramInt)
  {
    this.ajo = paramInt;
    requestLayout();
  }
  
  public void setSwitchTypeface(Typeface paramTypeface)
  {
    if (((this.kM.getTypeface() != null) && (!this.kM.getTypeface().equals(paramTypeface))) || ((this.kM.getTypeface() == null) && (paramTypeface != null)))
    {
      this.kM.setTypeface(paramTypeface);
      requestLayout();
      invalidate();
    }
  }
  
  public void setTextOff(CharSequence paramCharSequence)
  {
    this.ajr = paramCharSequence;
    requestLayout();
  }
  
  public void setTextOn(CharSequence paramCharSequence)
  {
    this.ajq = paramCharSequence;
    requestLayout();
  }
  
  public void setThumbDrawable(Drawable paramDrawable)
  {
    if (this.ajc != null) {
      this.ajc.setCallback(null);
    }
    this.ajc = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
    requestLayout();
  }
  
  void setThumbPosition(float paramFloat)
  {
    this.ajw = paramFloat;
    invalidate();
  }
  
  public void setThumbResource(int paramInt)
  {
    setThumbDrawable(b.a(getContext(), paramInt));
  }
  
  public void setThumbTextPadding(int paramInt)
  {
    this.ajm = paramInt;
    requestLayout();
  }
  
  public void setThumbTintList(ColorStateList paramColorStateList)
  {
    this.ajd = paramColorStateList;
    this.ajf = true;
    iX();
  }
  
  public void setThumbTintMode(PorterDuff.Mode paramMode)
  {
    this.aje = paramMode;
    this.ajg = true;
    iX();
  }
  
  public void setTrackDrawable(Drawable paramDrawable)
  {
    if (this.ajh != null) {
      this.ajh.setCallback(null);
    }
    this.ajh = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
    requestLayout();
  }
  
  public void setTrackResource(int paramInt)
  {
    setTrackDrawable(b.a(getContext(), paramInt));
  }
  
  public void setTrackTintList(ColorStateList paramColorStateList)
  {
    this.aji = paramColorStateList;
    this.ajk = true;
    iW();
  }
  
  public void setTrackTintMode(PorterDuff.Mode paramMode)
  {
    this.ajj = paramMode;
    this.ajl = true;
    iW();
  }
  
  public void toggle()
  {
    if (!isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.ajc) || (paramDrawable == this.ajh);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/SwitchCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */