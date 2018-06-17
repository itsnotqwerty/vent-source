package android.support.constraint;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.util.HashMap;

public final class d
  extends ViewGroup
{
  c dE;
  
  protected final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new ConstraintLayout.a(paramLayoutParams);
  }
  
  public final c getConstraintSet()
  {
    if (this.dE == null) {
      this.dE = new c();
    }
    c localc = this.dE;
    int j = getChildCount();
    localc.cY.clear();
    int i = 0;
    while (i < j)
    {
      Object localObject = getChildAt(i);
      a locala = (a)((View)localObject).getLayoutParams();
      int k = ((View)localObject).getId();
      if (k == -1) {
        throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
      }
      if (!localc.cY.containsKey(Integer.valueOf(k))) {
        localc.cY.put(Integer.valueOf(k), new c.a((byte)0));
      }
      c.a locala1 = (c.a)localc.cY.get(Integer.valueOf(k));
      if ((localObject instanceof b))
      {
        localObject = (b)localObject;
        locala1.a(k, locala);
        if ((localObject instanceof a))
        {
          locala1.dC = 1;
          localObject = (a)localObject;
          locala1.dB = ((a)localObject).getType();
          locala1.dD = ((a)localObject).getReferencedIds();
        }
      }
      locala1.a(k, locala);
      i += 1;
    }
    return this.dE;
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public static final class a
    extends ConstraintLayout.a
  {
    public float alpha = 1.0F;
    public boolean dg = false;
    public float dh = 0.0F;
    public float di = 0.0F;
    public float dj = 0.0F;
    public float dk = 0.0F;
    public float dl = 1.0F;
    public float dm = 1.0F;
    public float jdField_do = 0.0F;
    public float dp = 0.0F;
    public float dq = 0.0F;
    public float dr = 0.0F;
    public float ds = 0.0F;
    
    public a() {}
    
    public a(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, g.b.ConstraintSet);
      int j = paramContext.getIndexCount();
      if (i < j)
      {
        int k = paramContext.getIndex(i);
        if (k == g.b.ConstraintSet_android_alpha) {
          this.alpha = paramContext.getFloat(k, this.alpha);
        }
        for (;;)
        {
          i += 1;
          break;
          if (k == g.b.ConstraintSet_android_elevation)
          {
            this.dh = paramContext.getFloat(k, this.dh);
            this.dg = true;
          }
          else if (k == g.b.ConstraintSet_android_rotationX)
          {
            this.dj = paramContext.getFloat(k, this.dj);
          }
          else if (k == g.b.ConstraintSet_android_rotationY)
          {
            this.dk = paramContext.getFloat(k, this.dk);
          }
          else if (k == g.b.ConstraintSet_android_rotation)
          {
            this.di = paramContext.getFloat(k, this.di);
          }
          else if (k == g.b.ConstraintSet_android_scaleX)
          {
            this.dl = paramContext.getFloat(k, this.dl);
          }
          else if (k == g.b.ConstraintSet_android_scaleY)
          {
            this.dm = paramContext.getFloat(k, this.dm);
          }
          else if (k == g.b.ConstraintSet_android_transformPivotX)
          {
            this.jdField_do = paramContext.getFloat(k, this.jdField_do);
          }
          else if (k == g.b.ConstraintSet_android_transformPivotY)
          {
            this.dp = paramContext.getFloat(k, this.dp);
          }
          else if (k == g.b.ConstraintSet_android_translationX)
          {
            this.dq = paramContext.getFloat(k, this.dq);
          }
          else if (k == g.b.ConstraintSet_android_translationY)
          {
            this.dr = paramContext.getFloat(k, this.dr);
          }
          else if (k == g.b.ConstraintSet_android_translationZ)
          {
            this.dq = paramContext.getFloat(k, this.ds);
          }
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */