package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.content.a.b.a;
import android.support.v7.a.a.j;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

class aa
{
  final TextView WN;
  private bm WO;
  private bm WP;
  private bm WQ;
  private bm WR;
  final ac WS;
  Typeface WT;
  boolean WU;
  int wL = 0;
  
  aa(TextView paramTextView)
  {
    this.WN = paramTextView;
    this.WS = new ac(this.WN);
  }
  
  protected static bm a(Context paramContext, m paramm, int paramInt)
  {
    paramContext = paramm.h(paramContext, paramInt);
    if (paramContext != null)
    {
      paramm = new bm();
      paramm.ajR = true;
      paramm.ajP = paramContext;
      return paramm;
    }
    return null;
  }
  
  private void a(Context paramContext, bo parambo)
  {
    this.wL = parambo.getInt(a.j.TextAppearance_android_textStyle, this.wL);
    if ((parambo.hasValue(a.j.TextAppearance_android_fontFamily)) || (parambo.hasValue(a.j.TextAppearance_fontFamily)))
    {
      this.WT = null;
      if (parambo.hasValue(a.j.TextAppearance_fontFamily))
      {
        i = a.j.TextAppearance_fontFamily;
        if (!paramContext.isRestricted()) {
          paramContext = new b.a()
          {
            public final void b(Typeface paramAnonymousTypeface)
            {
              aa localaa = aa.this;
              Object localObject = this.WV;
              if (localaa.WU)
              {
                localaa.WT = paramAnonymousTypeface;
                localObject = (TextView)((WeakReference)localObject).get();
                if (localObject != null) {
                  ((TextView)localObject).setTypeface(paramAnonymousTypeface, localaa.wL);
                }
              }
            }
          };
        }
      }
    }
    try
    {
      j = this.wL;
      k = parambo.ajT.getResourceId(i, 0);
      if (k != 0) {
        break label163;
      }
      paramContext = null;
      this.WT = paramContext;
      if (this.WT != null) {
        break label241;
      }
      bool = true;
      this.WU = bool;
    }
    catch (UnsupportedOperationException paramContext)
    {
      for (;;) {}
    }
    catch (Resources.NotFoundException paramContext)
    {
      for (;;) {}
    }
    if (this.WT == null)
    {
      paramContext = parambo.getString(i);
      if (paramContext != null) {
        this.WT = Typeface.create(paramContext, this.wL);
      }
    }
    label163:
    label241:
    while (!parambo.hasValue(a.j.TextAppearance_android_typeface)) {
      for (;;)
      {
        int j;
        int k;
        boolean bool;
        return;
        int i = a.j.TextAppearance_android_fontFamily;
        continue;
        if (parambo.Wi == null) {
          parambo.Wi = new TypedValue();
        }
        Context localContext = parambo.mContext;
        TypedValue localTypedValue = parambo.Wi;
        if (localContext.isRestricted())
        {
          paramContext = null;
        }
        else
        {
          Resources localResources = localContext.getResources();
          localResources.getValue(k, localTypedValue, true);
          paramContext = android.support.v4.content.a.b.a(localContext, localResources, localTypedValue, k, j, paramContext);
          continue;
          bool = false;
        }
      }
    }
    this.WU = false;
    switch (parambo.getInt(a.j.TextAppearance_android_typeface, 1))
    {
    default: 
      return;
    case 1: 
      this.WT = Typeface.SANS_SERIF;
      return;
    case 2: 
      this.WT = Typeface.SERIF;
      return;
    }
    this.WT = Typeface.MONOSPACE;
  }
  
  static aa d(TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return new ab(paramTextView);
    }
    return new aa(paramTextView);
  }
  
  final void a(Drawable paramDrawable, bm parambm)
  {
    if ((paramDrawable != null) && (parambm != null)) {
      m.a(paramDrawable, parambm, this.WN.getDrawableState());
    }
  }
  
  @SuppressLint({"NewApi"})
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    Context localContext = this.WN.getContext();
    Object localObject1 = m.gh();
    Object localObject2 = bo.a(localContext, paramAttributeSet, a.j.AppCompatTextHelper, paramInt, 0);
    int k = ((bo)localObject2).getResourceId(a.j.AppCompatTextHelper_android_textAppearance, -1);
    if (((bo)localObject2).hasValue(a.j.AppCompatTextHelper_android_drawableLeft)) {
      this.WO = a(localContext, (m)localObject1, ((bo)localObject2).getResourceId(a.j.AppCompatTextHelper_android_drawableLeft, 0));
    }
    if (((bo)localObject2).hasValue(a.j.AppCompatTextHelper_android_drawableTop)) {
      this.WP = a(localContext, (m)localObject1, ((bo)localObject2).getResourceId(a.j.AppCompatTextHelper_android_drawableTop, 0));
    }
    if (((bo)localObject2).hasValue(a.j.AppCompatTextHelper_android_drawableRight)) {
      this.WQ = a(localContext, (m)localObject1, ((bo)localObject2).getResourceId(a.j.AppCompatTextHelper_android_drawableRight, 0));
    }
    if (((bo)localObject2).hasValue(a.j.AppCompatTextHelper_android_drawableBottom)) {
      this.WR = a(localContext, (m)localObject1, ((bo)localObject2).getResourceId(a.j.AppCompatTextHelper_android_drawableBottom, 0));
    }
    ((bo)localObject2).ajT.recycle();
    boolean bool3 = this.WN.getTransformationMethod() instanceof PasswordTransformationMethod;
    boolean bool1 = false;
    boolean bool2 = false;
    int i = 0;
    int j = 0;
    Object localObject7 = null;
    localObject2 = null;
    bo localbo1 = null;
    Object localObject4 = null;
    localObject1 = null;
    Object localObject5 = null;
    Object localObject3 = null;
    Object localObject6 = null;
    if (k != -1)
    {
      bo localbo2 = bo.a(localContext, k, a.j.TextAppearance);
      i = j;
      bool1 = bool2;
      if (!bool3)
      {
        i = j;
        bool1 = bool2;
        if (localbo2.hasValue(a.j.TextAppearance_textAllCaps))
        {
          i = 1;
          bool1 = localbo2.getBoolean(a.j.TextAppearance_textAllCaps, false);
        }
      }
      a(localContext, localbo2);
      localObject2 = localObject7;
      localObject3 = localObject6;
      if (Build.VERSION.SDK_INT < 23)
      {
        localObject1 = localbo1;
        if (localbo2.hasValue(a.j.TextAppearance_android_textColor)) {
          localObject1 = localbo2.getColorStateList(a.j.TextAppearance_android_textColor);
        }
        if (localbo2.hasValue(a.j.TextAppearance_android_textColorHint)) {
          localObject5 = localbo2.getColorStateList(a.j.TextAppearance_android_textColorHint);
        }
        localObject2 = localObject1;
        localObject4 = localObject5;
        localObject3 = localObject6;
        if (localbo2.hasValue(a.j.TextAppearance_android_textColorLink))
        {
          localObject3 = localbo2.getColorStateList(a.j.TextAppearance_android_textColorLink);
          localObject4 = localObject5;
          localObject2 = localObject1;
        }
      }
      localbo2.ajT.recycle();
      localObject1 = localObject4;
    }
    localbo1 = bo.a(localContext, paramAttributeSet, a.j.TextAppearance, paramInt, 0);
    j = i;
    bool2 = bool1;
    if (!bool3)
    {
      j = i;
      bool2 = bool1;
      if (localbo1.hasValue(a.j.TextAppearance_textAllCaps))
      {
        j = 1;
        bool2 = localbo1.getBoolean(a.j.TextAppearance_textAllCaps, false);
      }
    }
    localObject4 = localObject2;
    localObject5 = localObject1;
    localObject6 = localObject3;
    if (Build.VERSION.SDK_INT < 23)
    {
      if (localbo1.hasValue(a.j.TextAppearance_android_textColor)) {
        localObject2 = localbo1.getColorStateList(a.j.TextAppearance_android_textColor);
      }
      if (localbo1.hasValue(a.j.TextAppearance_android_textColorHint)) {
        localObject1 = localbo1.getColorStateList(a.j.TextAppearance_android_textColorHint);
      }
      localObject4 = localObject2;
      localObject5 = localObject1;
      localObject6 = localObject3;
      if (localbo1.hasValue(a.j.TextAppearance_android_textColorLink))
      {
        localObject6 = localbo1.getColorStateList(a.j.TextAppearance_android_textColorLink);
        localObject5 = localObject1;
        localObject4 = localObject2;
      }
    }
    a(localContext, localbo1);
    localbo1.ajT.recycle();
    if (localObject4 != null) {
      this.WN.setTextColor((ColorStateList)localObject4);
    }
    if (localObject5 != null) {
      this.WN.setHintTextColor((ColorStateList)localObject5);
    }
    if (localObject6 != null) {
      this.WN.setLinkTextColor((ColorStateList)localObject6);
    }
    if ((!bool3) && (j != 0)) {
      setAllCaps(bool2);
    }
    if (this.WT != null) {
      this.WN.setTypeface(this.WT, this.wL);
    }
    localObject1 = this.WS;
    float f2 = -1.0F;
    float f3 = -1.0F;
    float f1 = -1.0F;
    paramAttributeSet = ((ac)localObject1).mContext.obtainStyledAttributes(paramAttributeSet, a.j.AppCompatTextView, paramInt, 0);
    if (paramAttributeSet.hasValue(a.j.AppCompatTextView_autoSizeTextType)) {
      ((ac)localObject1).Xb = paramAttributeSet.getInt(a.j.AppCompatTextView_autoSizeTextType, 0);
    }
    if (paramAttributeSet.hasValue(a.j.AppCompatTextView_autoSizeStepGranularity)) {
      f1 = paramAttributeSet.getDimension(a.j.AppCompatTextView_autoSizeStepGranularity, -1.0F);
    }
    if (paramAttributeSet.hasValue(a.j.AppCompatTextView_autoSizeMinTextSize)) {
      f2 = paramAttributeSet.getDimension(a.j.AppCompatTextView_autoSizeMinTextSize, -1.0F);
    }
    if (paramAttributeSet.hasValue(a.j.AppCompatTextView_autoSizeMaxTextSize)) {
      f3 = paramAttributeSet.getDimension(a.j.AppCompatTextView_autoSizeMaxTextSize, -1.0F);
    }
    if (paramAttributeSet.hasValue(a.j.AppCompatTextView_autoSizePresetSizes))
    {
      paramInt = paramAttributeSet.getResourceId(a.j.AppCompatTextView_autoSizePresetSizes, 0);
      if (paramInt > 0)
      {
        localObject2 = paramAttributeSet.getResources().obtainTypedArray(paramInt);
        i = ((TypedArray)localObject2).length();
        localObject3 = new int[i];
        if (i > 0)
        {
          paramInt = 0;
          while (paramInt < i)
          {
            localObject3[paramInt] = ((TypedArray)localObject2).getDimensionPixelSize(paramInt, -1);
            paramInt += 1;
          }
          ((ac)localObject1).Xg = ac.c((int[])localObject3);
          ((ac)localObject1).gn();
        }
        ((TypedArray)localObject2).recycle();
      }
    }
    paramAttributeSet.recycle();
    if (((ac)localObject1).gr()) {
      if (((ac)localObject1).Xb == 1)
      {
        if (!((ac)localObject1).Xh)
        {
          paramAttributeSet = ((ac)localObject1).mContext.getResources().getDisplayMetrics();
          float f4 = f2;
          if (f2 == -1.0F) {
            f4 = TypedValue.applyDimension(2, 12.0F, paramAttributeSet);
          }
          f2 = f3;
          if (f3 == -1.0F) {
            f2 = TypedValue.applyDimension(2, 112.0F, paramAttributeSet);
          }
          f3 = f1;
          if (f1 == -1.0F) {
            f3 = 1.0F;
          }
          ((ac)localObject1).e(f4, f2, f3);
        }
        ((ac)localObject1).go();
      }
    }
    for (;;)
    {
      if ((android.support.v4.widget.b.Im) && (this.WS.Xb != 0))
      {
        paramAttributeSet = this.WS.Xg;
        if (paramAttributeSet.length > 0)
        {
          if (this.WN.getAutoSizeStepGranularity() == -1.0F) {
            break;
          }
          this.WN.setAutoSizeTextTypeUniformWithConfiguration(Math.round(this.WS.Xe), Math.round(this.WS.Xf), Math.round(this.WS.Xd), 0);
        }
      }
      return;
      ((ac)localObject1).Xb = 0;
    }
    this.WN.setAutoSizeTextTypeUniformWithPresetSizes(paramAttributeSet, 0);
  }
  
  void gl()
  {
    if ((this.WO != null) || (this.WP != null) || (this.WQ != null) || (this.WR != null))
    {
      Drawable[] arrayOfDrawable = this.WN.getCompoundDrawables();
      a(arrayOfDrawable[0], this.WO);
      a(arrayOfDrawable[1], this.WP);
      a(arrayOfDrawable[2], this.WQ);
      a(arrayOfDrawable[3], this.WR);
    }
  }
  
  final void gm()
  {
    if (!android.support.v4.widget.b.Im) {
      this.WS.gp();
    }
  }
  
  final void j(Context paramContext, int paramInt)
  {
    bo localbo = bo.a(paramContext, paramInt, a.j.TextAppearance);
    if (localbo.hasValue(a.j.TextAppearance_textAllCaps)) {
      setAllCaps(localbo.getBoolean(a.j.TextAppearance_textAllCaps, false));
    }
    if ((Build.VERSION.SDK_INT < 23) && (localbo.hasValue(a.j.TextAppearance_android_textColor)))
    {
      ColorStateList localColorStateList = localbo.getColorStateList(a.j.TextAppearance_android_textColor);
      if (localColorStateList != null) {
        this.WN.setTextColor(localColorStateList);
      }
    }
    a(paramContext, localbo);
    localbo.ajT.recycle();
    if (this.WT != null) {
      this.WN.setTypeface(this.WT, this.wL);
    }
  }
  
  final void setAllCaps(boolean paramBoolean)
  {
    this.WN.setAllCaps(paramBoolean);
  }
  
  final void setAutoSizeTextTypeUniformWithConfiguration(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IllegalArgumentException
  {
    ac localac = this.WS;
    if (localac.gr())
    {
      DisplayMetrics localDisplayMetrics = localac.mContext.getResources().getDisplayMetrics();
      localac.e(TypedValue.applyDimension(paramInt4, paramInt1, localDisplayMetrics), TypedValue.applyDimension(paramInt4, paramInt2, localDisplayMetrics), TypedValue.applyDimension(paramInt4, paramInt3, localDisplayMetrics));
      if (localac.go()) {
        localac.gp();
      }
    }
  }
  
  final void setAutoSizeTextTypeUniformWithPresetSizes(int[] paramArrayOfInt, int paramInt)
    throws IllegalArgumentException
  {
    int i = 0;
    ac localac = this.WS;
    if (localac.gr())
    {
      int j = paramArrayOfInt.length;
      if (j > 0)
      {
        int[] arrayOfInt2 = new int[j];
        int[] arrayOfInt1;
        if (paramInt == 0)
        {
          arrayOfInt1 = Arrays.copyOf(paramArrayOfInt, j);
          localac.Xg = ac.c(arrayOfInt1);
          if (!localac.gn()) {
            throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(paramArrayOfInt));
          }
        }
        else
        {
          DisplayMetrics localDisplayMetrics = localac.mContext.getResources().getDisplayMetrics();
          for (;;)
          {
            arrayOfInt1 = arrayOfInt2;
            if (i >= j) {
              break;
            }
            arrayOfInt2[i] = Math.round(TypedValue.applyDimension(paramInt, paramArrayOfInt[i], localDisplayMetrics));
            i += 1;
          }
        }
      }
      else
      {
        localac.Xh = false;
      }
      if (localac.go()) {
        localac.gp();
      }
    }
  }
  
  final void setAutoSizeTextTypeWithDefaults(int paramInt)
  {
    ac localac = this.WS;
    if (localac.gr()) {
      switch (paramInt)
      {
      default: 
        throw new IllegalArgumentException("Unknown auto-size text type: " + paramInt);
      case 0: 
        localac.Xb = 0;
        localac.Xe = -1.0F;
        localac.Xf = -1.0F;
        localac.Xd = -1.0F;
        localac.Xg = new int[0];
        localac.Xc = false;
      }
    }
    do
    {
      return;
      DisplayMetrics localDisplayMetrics = localac.mContext.getResources().getDisplayMetrics();
      localac.e(TypedValue.applyDimension(2, 12.0F, localDisplayMetrics), TypedValue.applyDimension(2, 112.0F, localDisplayMetrics), 1.0F);
    } while (!localac.go());
    localac.gp();
  }
  
  final void setTextSize(int paramInt, float paramFloat)
  {
    if ((!android.support.v4.widget.b.Im) && (!this.WS.gq())) {
      this.WS.c(paramInt, paramFloat);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */