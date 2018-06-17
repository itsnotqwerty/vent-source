package android.support.constraint;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.AttributeSet;

public final class a
  extends b
{
  private int bj = 0;
  private int bk = 0;
  private android.support.constraint.a.a.a bl;
  
  public a(Context paramContext)
  {
    super(paramContext);
    super.setVisibility(8);
  }
  
  protected final void a(AttributeSet paramAttributeSet)
  {
    super.a(paramAttributeSet);
    this.bl = new android.support.constraint.a.a.a();
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, g.b.ConstraintLayout_Layout);
      int j = paramAttributeSet.getIndexCount();
      int i = 0;
      if (i < j)
      {
        int k = paramAttributeSet.getIndex(i);
        if (k == g.b.ConstraintLayout_Layout_barrierDirection) {
          setType(paramAttributeSet.getInt(k, 0));
        }
        for (;;)
        {
          i += 1;
          break;
          if (k == g.b.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
            this.bl.ft = paramAttributeSet.getBoolean(k, true);
          }
        }
      }
    }
    this.bp = this.bl;
    ah();
  }
  
  public final int getType()
  {
    return this.bj;
  }
  
  public final void setType(int paramInt)
  {
    this.bj = paramInt;
    this.bk = paramInt;
    if (Build.VERSION.SDK_INT < 17) {
      if (this.bj == 5) {
        this.bk = 0;
      }
    }
    for (;;)
    {
      this.bl.fr = this.bk;
      return;
      if (this.bj == 6)
      {
        this.bk = 1;
        continue;
        if (1 == getResources().getConfiguration().getLayoutDirection()) {
          paramInt = 1;
        }
        for (;;)
        {
          if (paramInt != 0)
          {
            if (this.bj == 5)
            {
              this.bk = 1;
              break;
              paramInt = 0;
              continue;
            }
            if (this.bj != 6) {
              break;
            }
            this.bk = 0;
            break;
          }
        }
        if (this.bj == 5) {
          this.bk = 0;
        } else if (this.bj == 6) {
          this.bk = 1;
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */