package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.StaticLayout.Builder;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

final class ac
{
  private static final RectF WZ = new RectF();
  private static ConcurrentHashMap<String, Method> Xa = new ConcurrentHashMap();
  int Xb = 0;
  boolean Xc = false;
  float Xd = -1.0F;
  float Xe = -1.0F;
  float Xf = -1.0F;
  int[] Xg = new int[0];
  boolean Xh = false;
  private TextPaint Xi;
  final Context mContext;
  private final TextView pg;
  
  ac(TextView paramTextView)
  {
    this.pg = paramTextView;
    this.mContext = this.pg.getContext();
  }
  
  private static Method D(String paramString)
  {
    try
    {
      Method localMethod2 = (Method)Xa.get(paramString);
      Method localMethod1 = localMethod2;
      if (localMethod2 == null)
      {
        localMethod2 = TextView.class.getDeclaredMethod(paramString, new Class[0]);
        localMethod1 = localMethod2;
        if (localMethod2 != null)
        {
          localMethod2.setAccessible(true);
          Xa.put(paramString, localMethod2);
          localMethod1 = localMethod2;
        }
      }
      return localMethod1;
    }
    catch (Exception localException)
    {
      Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + paramString + "() method", localException);
    }
    return null;
  }
  
  private static <T> T a(Object paramObject, String paramString, T paramT)
  {
    try
    {
      paramObject = D(paramString).invoke(paramObject, new Object[0]);
      if (paramObject == null) {}
      return (T)paramObject;
    }
    catch (Exception paramObject)
    {
      paramObject = paramObject;
      Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + paramString + "() method", (Throwable)paramObject);
      return paramT;
    }
    finally {}
  }
  
  static int[] c(int[] paramArrayOfInt)
  {
    int j = paramArrayOfInt.length;
    if (j == 0) {}
    ArrayList localArrayList;
    do
    {
      return paramArrayOfInt;
      Arrays.sort(paramArrayOfInt);
      localArrayList = new ArrayList();
      i = 0;
      while (i < j)
      {
        int k = paramArrayOfInt[i];
        if ((k > 0) && (Collections.binarySearch(localArrayList, Integer.valueOf(k)) < 0)) {
          localArrayList.add(Integer.valueOf(k));
        }
        i += 1;
      }
    } while (j == localArrayList.size());
    j = localArrayList.size();
    int[] arrayOfInt = new int[j];
    int i = 0;
    for (;;)
    {
      paramArrayOfInt = arrayOfInt;
      if (i >= j) {
        break;
      }
      arrayOfInt[i] = ((Integer)localArrayList.get(i)).intValue();
      i += 1;
    }
  }
  
  final void c(int paramInt, float paramFloat)
  {
    Object localObject;
    if (this.mContext == null)
    {
      localObject = Resources.getSystem();
      paramFloat = TypedValue.applyDimension(paramInt, paramFloat, ((Resources)localObject).getDisplayMetrics());
      if (paramFloat != this.pg.getPaint().getTextSize())
      {
        this.pg.getPaint().setTextSize(paramFloat);
        if (Build.VERSION.SDK_INT < 18) {
          break label162;
        }
      }
    }
    label162:
    for (boolean bool = this.pg.isInLayout();; bool = false)
    {
      if (this.pg.getLayout() != null) {
        this.Xc = false;
      }
      try
      {
        localObject = D("nullLayouts");
        if (localObject != null) {
          ((Method)localObject).invoke(this.pg, new Object[0]);
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", localException);
          continue;
          this.pg.forceLayout();
        }
      }
      if (!bool)
      {
        this.pg.requestLayout();
        this.pg.invalidate();
        return;
        localObject = this.mContext.getResources();
        break;
      }
    }
  }
  
  final void e(float paramFloat1, float paramFloat2, float paramFloat3)
    throws IllegalArgumentException
  {
    if (paramFloat1 <= 0.0F) {
      throw new IllegalArgumentException("Minimum auto-size text size (" + paramFloat1 + "px) is less or equal to (0px)");
    }
    if (paramFloat2 <= paramFloat1) {
      throw new IllegalArgumentException("Maximum auto-size text size (" + paramFloat2 + "px) is less or equal to minimum auto-size text size (" + paramFloat1 + "px)");
    }
    if (paramFloat3 <= 0.0F) {
      throw new IllegalArgumentException("The auto-size step granularity (" + paramFloat3 + "px) is less or equal to (0px)");
    }
    this.Xb = 1;
    this.Xe = paramFloat1;
    this.Xf = paramFloat2;
    this.Xd = paramFloat3;
    this.Xh = false;
  }
  
  final boolean gn()
  {
    int i = this.Xg.length;
    if (i > 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.Xh = bool;
      if (this.Xh)
      {
        this.Xb = 1;
        this.Xe = this.Xg[0];
        this.Xf = this.Xg[(i - 1)];
        this.Xd = -1.0F;
      }
      return this.Xh;
    }
  }
  
  final boolean go()
  {
    if ((gr()) && (this.Xb == 1)) {
      if ((!this.Xh) || (this.Xg.length == 0))
      {
        float f1 = Math.round(this.Xe);
        int i = 1;
        while (Math.round(this.Xd + f1) <= Math.round(this.Xf))
        {
          i += 1;
          f1 += this.Xd;
        }
        int[] arrayOfInt = new int[i];
        f1 = this.Xe;
        int j = 0;
        while (j < i)
        {
          arrayOfInt[j] = Math.round(f1);
          float f2 = this.Xd;
          j += 1;
          f1 = f2 + f1;
        }
        this.Xg = c(arrayOfInt);
      }
    }
    for (this.Xc = true;; this.Xc = false) {
      return this.Xc;
    }
  }
  
  final void gp()
  {
    if (!gq()) {}
    do
    {
      return;
      if (!this.Xc) {
        break;
      }
    } while ((this.pg.getMeasuredHeight() <= 0) || (this.pg.getMeasuredWidth() <= 0));
    if (((Boolean)a(this.pg, "getHorizontallyScrolling", Boolean.valueOf(false))).booleanValue()) {}
    RectF localRectF2;
    int k;
    for (int i = 1048576;; i = this.pg.getMeasuredWidth() - this.pg.getTotalPaddingLeft() - this.pg.getTotalPaddingRight())
    {
      j = this.pg.getHeight() - this.pg.getCompoundPaddingBottom() - this.pg.getCompoundPaddingTop();
      if ((i <= 0) || (j <= 0)) {
        break;
      }
      synchronized (WZ)
      {
        WZ.setEmpty();
        WZ.right = i;
        WZ.bottom = j;
        localRectF2 = WZ;
        k = this.Xg.length;
        if (k != 0) {
          break label190;
        }
        throw new IllegalStateException("No available text sizes to choose from.");
      }
    }
    label190:
    int j = 0;
    i = 1;
    k -= 1;
    for (;;)
    {
      int n;
      int m;
      Object localObject2;
      Object localObject3;
      if (i <= k)
      {
        n = (i + k) / 2;
        m = this.Xg[n];
        localObject2 = this.pg.getText();
        localObject3 = this.pg.getTransformationMethod();
        if (localObject3 == null) {
          break label729;
        }
        localObject3 = ((TransformationMethod)localObject3).getTransformation((CharSequence)localObject2, this.pg);
        if (localObject3 == null) {
          break label729;
        }
        localObject2 = localObject3;
      }
      label288:
      label468:
      label672:
      label729:
      for (;;)
      {
        if (Build.VERSION.SDK_INT < 16) {
          break label755;
        }
        j = this.pg.getMaxLines();
        if (this.Xi == null) {
          this.Xi = new TextPaint();
        }
        Object localObject4;
        for (;;)
        {
          this.Xi.set(this.pg.getPaint());
          this.Xi.setTextSize(m);
          localObject4 = (Layout.Alignment)a(this.pg, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
          if (Build.VERSION.SDK_INT < 23) {
            break;
          }
          m = Math.round(localRectF2.right);
          localObject3 = (TextDirectionHeuristic)a(this.pg, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR);
          localObject4 = StaticLayout.Builder.obtain((CharSequence)localObject2, 0, ((CharSequence)localObject2).length(), this.Xi, m).setAlignment((Layout.Alignment)localObject4).setLineSpacing(this.pg.getLineSpacingExtra(), this.pg.getLineSpacingMultiplier()).setIncludePad(this.pg.getIncludeFontPadding()).setBreakStrategy(this.pg.getBreakStrategy()).setHyphenationFrequency(this.pg.getHyphenationFrequency());
          if (j != -1) {
            break label761;
          }
          m = Integer.MAX_VALUE;
          localObject3 = ((StaticLayout.Builder)localObject4).setMaxLines(m).setTextDirection((TextDirectionHeuristic)localObject3).build();
          if (j == -1) {
            break label672;
          }
          if (((StaticLayout)localObject3).getLineCount() > j) {
            break label732;
          }
          if (((StaticLayout)localObject3).getLineEnd(((StaticLayout)localObject3).getLineCount() - 1) == ((CharSequence)localObject2).length()) {
            break label672;
          }
          break label732;
          this.Xi.reset();
        }
        m = Math.round(localRectF2.right);
        float f2;
        if (Build.VERSION.SDK_INT >= 16)
        {
          f1 = this.pg.getLineSpacingMultiplier();
          f2 = this.pg.getLineSpacingExtra();
        }
        for (boolean bool = this.pg.getIncludeFontPadding();; bool = ((Boolean)a(this.pg, "getIncludeFontPadding", Boolean.valueOf(true))).booleanValue())
        {
          localObject3 = new StaticLayout((CharSequence)localObject2, this.Xi, m, (Layout.Alignment)localObject4, f1, f2, bool);
          break;
          f1 = ((Float)a(this.pg, "getLineSpacingMultiplier", Float.valueOf(1.0F))).floatValue();
          f2 = ((Float)a(this.pg, "getLineSpacingExtra", Float.valueOf(0.0F))).floatValue();
        }
        if (((StaticLayout)localObject3).getHeight() <= localRectF2.bottom) {
          break label768;
        }
        j = 0;
        break label735;
        float f1 = this.Xg[j];
        if (f1 != this.pg.getTextSize()) {
          c(0, f1);
        }
        this.Xc = true;
        return;
      }
      label732:
      label735:
      label755:
      label761:
      label768:
      for (j = 0;; j = 1)
      {
        if (j == 0) {
          break label774;
        }
        m = n + 1;
        j = i;
        i = m;
        break;
        j = -1;
        break label288;
        m = j;
        break label468;
      }
      label774:
      k = n - 1;
      j = k;
    }
  }
  
  final boolean gq()
  {
    return (gr()) && (this.Xb != 0);
  }
  
  final boolean gr()
  {
    return !(this.pg instanceof n);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */