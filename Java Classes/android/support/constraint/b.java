package android.support.constraint;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.constraint.a.a.g;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;

public abstract class b
  extends View
{
  protected int[] bm = new int[32];
  protected int bn = 0;
  protected Context bo;
  protected g bp = null;
  protected boolean bq = false;
  private String br;
  
  public b(Context paramContext)
  {
    super(paramContext);
    this.bo = paramContext;
    a(null);
  }
  
  private void p(String paramString)
  {
    if (paramString == null) {}
    while (this.bo == null) {
      return;
    }
    String str1 = paramString.trim();
    i = 0;
    try
    {
      j = g.a.class.getField(str1).getInt(null);
      i = j;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        int j;
        String str2;
        continue;
        i = j;
      }
    }
    j = i;
    if (i == 0) {
      j = this.bo.getResources().getIdentifier(str1, "id", this.bo.getPackageName());
    }
    if ((j == 0) && (isInEditMode()) && ((getParent() instanceof ConstraintLayout)))
    {
      paramString = (ConstraintLayout)getParent();
      if ((str1 instanceof String))
      {
        str2 = (String)str1;
        if ((paramString.bE == null) || (!paramString.bE.containsKey(str2))) {}
      }
      for (paramString = paramString.bE.get(str2);; paramString = null)
      {
        if ((paramString == null) || (!(paramString instanceof Integer))) {
          break label203;
        }
        i = ((Integer)paramString).intValue();
        if (i == 0) {
          break;
        }
        setTag(i, null);
        return;
      }
      Log.w("ConstraintHelper", "Could not find id of \"" + str1 + "\"");
      return;
    }
  }
  
  private void setIds(String paramString)
  {
    if (paramString == null) {
      return;
    }
    int j;
    for (int i = 0;; i = j + 1)
    {
      j = paramString.indexOf(',', i);
      if (j == -1)
      {
        p(paramString.substring(i));
        return;
      }
      p(paramString.substring(i, j));
    }
  }
  
  public final void a(ConstraintLayout paramConstraintLayout)
  {
    if (isInEditMode()) {
      setIds(this.br);
    }
    if (this.bp == null) {}
    for (;;)
    {
      return;
      this.bp.aT();
      int i = 0;
      while (i < this.bn)
      {
        View localView = paramConstraintLayout.findViewById(this.bm[i]);
        if (localView != null) {
          this.bp.a(paramConstraintLayout.a(localView));
        }
        i += 1;
      }
    }
  }
  
  protected void a(AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, g.b.ConstraintLayout_Layout);
      int j = paramAttributeSet.getIndexCount();
      int i = 0;
      while (i < j)
      {
        int k = paramAttributeSet.getIndex(i);
        if (k == g.b.ConstraintLayout_Layout_constraint_referenced_ids)
        {
          this.br = paramAttributeSet.getString(k);
          setIds(this.br);
        }
        i += 1;
      }
    }
  }
  
  public final void ah()
  {
    if (this.bp == null) {}
    ViewGroup.LayoutParams localLayoutParams;
    do
    {
      return;
      localLayoutParams = getLayoutParams();
    } while (!(localLayoutParams instanceof ConstraintLayout.a));
    ((ConstraintLayout.a)localLayoutParams).cU = this.bp;
  }
  
  public int[] getReferencedIds()
  {
    return Arrays.copyOf(this.bm, this.bn);
  }
  
  public void onDraw(Canvas paramCanvas) {}
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.bq)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    setMeasuredDimension(0, 0);
  }
  
  public void setReferencedIds(int[] paramArrayOfInt)
  {
    int i = 0;
    this.bn = 0;
    while (i < paramArrayOfInt.length)
    {
      setTag(paramArrayOfInt[i], null);
      i += 1;
    }
  }
  
  public void setTag(int paramInt, Object paramObject)
  {
    if (this.bn + 1 > this.bm.length) {
      this.bm = Arrays.copyOf(this.bm, this.bm.length * 2);
    }
    this.bm[this.bn] = paramInt;
    this.bn += 1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */