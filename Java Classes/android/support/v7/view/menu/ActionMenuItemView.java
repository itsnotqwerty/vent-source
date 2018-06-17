package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v7.a.a.j;
import android.support.v7.widget.ActionMenuView.a;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.aq;
import android.support.v7.widget.bq;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;

public class ActionMenuItemView
  extends AppCompatTextView
  implements p.a, ActionMenuView.a, View.OnClickListener
{
  private CharSequence Ch;
  h.b QK;
  private aq QL;
  b QM;
  private boolean QN;
  private boolean QO;
  private int QP;
  private int QQ;
  private int bw;
  j ir;
  private Drawable oa;
  
  public ActionMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = paramContext.getResources();
    this.QN = eU();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.j.ActionMenuItemView, paramInt, 0);
    this.bw = paramContext.getDimensionPixelSize(a.j.ActionMenuItemView_android_minWidth, 0);
    paramContext.recycle();
    this.QQ = ((int)(localResources.getDisplayMetrics().density * 32.0F + 0.5F));
    setOnClickListener(this);
    this.QP = -1;
    setSaveEnabled(false);
  }
  
  private boolean eU()
  {
    Configuration localConfiguration = getContext().getResources().getConfiguration();
    int i = localConfiguration.screenWidthDp;
    int j = localConfiguration.screenHeightDp;
    return (i >= 480) || ((i >= 640) && (j >= 480)) || (localConfiguration.orientation == 2);
  }
  
  private void eV()
  {
    Object localObject2 = null;
    int m = 0;
    int i;
    int j;
    if (!TextUtils.isEmpty(this.Ch))
    {
      i = 1;
      if (this.oa != null)
      {
        if ((this.ir.SA & 0x4) != 4) {
          break label153;
        }
        j = 1;
        label40:
        k = m;
        if (j == 0) {
          break label66;
        }
        if (!this.QN)
        {
          k = m;
          if (!this.QO) {
            break label66;
          }
        }
      }
      int k = 1;
      label66:
      i &= k;
      if (i == 0) {
        break label158;
      }
      localObject1 = this.Ch;
      label80:
      setText((CharSequence)localObject1);
      localObject1 = this.ir.getContentDescription();
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        break label176;
      }
      if (i == 0) {
        break label164;
      }
      localObject1 = null;
      label110:
      setContentDescription((CharSequence)localObject1);
      label116:
      localObject1 = this.ir.getTooltipText();
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        break label197;
      }
      if (i == 0) {
        break label185;
      }
    }
    label153:
    label158:
    label164:
    label176:
    label185:
    for (Object localObject1 = localObject2;; localObject1 = this.ir.getTitle())
    {
      bq.a(this, (CharSequence)localObject1);
      return;
      i = 0;
      break;
      j = 0;
      break label40;
      localObject1 = null;
      break label80;
      localObject1 = this.ir.getTitle();
      break label110;
      setContentDescription((CharSequence)localObject1);
      break label116;
    }
    label197:
    bq.a(this, (CharSequence)localObject1);
  }
  
  public final void a(j paramj)
  {
    this.ir = paramj;
    setIcon(paramj.getIcon());
    setTitle(paramj.a(this));
    setId(paramj.getItemId());
    if (paramj.isVisible()) {}
    for (int i = 0;; i = 8)
    {
      setVisibility(i);
      setEnabled(paramj.isEnabled());
      if ((paramj.hasSubMenu()) && (this.QL == null)) {
        this.QL = new a();
      }
      return;
    }
  }
  
  public final boolean aY()
  {
    return true;
  }
  
  public final boolean eW()
  {
    return (hasText()) && (this.ir.getIcon() == null);
  }
  
  public final boolean eX()
  {
    return hasText();
  }
  
  public j getItemData()
  {
    return this.ir;
  }
  
  public final boolean hasText()
  {
    return !TextUtils.isEmpty(getText());
  }
  
  public void onClick(View paramView)
  {
    if (this.QK != null) {
      this.QK.e(this.ir);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.QN = eU();
    eV();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = hasText();
    if ((bool) && (this.QP >= 0)) {
      super.setPadding(this.QP, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int j = getMeasuredWidth();
    if (i == Integer.MIN_VALUE) {}
    for (paramInt1 = Math.min(paramInt1, this.bw);; paramInt1 = this.bw)
    {
      if ((i != 1073741824) && (this.bw > 0) && (j < paramInt1)) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      }
      if ((!bool) && (this.oa != null)) {
        super.setPadding((getMeasuredWidth() - this.oa.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
      }
      return;
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    super.onRestoreInstanceState(null);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.ir.hasSubMenu()) && (this.QL != null) && (this.QL.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setCheckable(boolean paramBoolean) {}
  
  public void setChecked(boolean paramBoolean) {}
  
  public void setExpandedFormat(boolean paramBoolean)
  {
    if (this.QO != paramBoolean)
    {
      this.QO = paramBoolean;
      if (this.ir != null) {
        this.ir.Pj.fm();
      }
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    this.oa = paramDrawable;
    if (paramDrawable != null)
    {
      int m = paramDrawable.getIntrinsicWidth();
      int k = paramDrawable.getIntrinsicHeight();
      int j = k;
      int i = m;
      float f;
      if (m > this.QQ)
      {
        f = this.QQ / m;
        i = this.QQ;
        j = (int)(k * f);
      }
      m = j;
      k = i;
      if (j > this.QQ)
      {
        f = this.QQ / j;
        m = this.QQ;
        k = (int)(i * f);
      }
      paramDrawable.setBounds(0, 0, k, m);
    }
    setCompoundDrawables(paramDrawable, null, null, null);
    eV();
  }
  
  public void setItemInvoker(h.b paramb)
  {
    this.QK = paramb;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.QP = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setPopupCallback(b paramb)
  {
    this.QM = paramb;
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.Ch = paramCharSequence;
    eV();
  }
  
  private final class a
    extends aq
  {
    public a()
    {
      super();
    }
    
    public final s eY()
    {
      if (ActionMenuItemView.this.QM != null) {
        return ActionMenuItemView.this.QM.eY();
      }
      return null;
    }
    
    protected final boolean eZ()
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (ActionMenuItemView.this.QK != null)
      {
        bool1 = bool2;
        if (ActionMenuItemView.this.QK.e(ActionMenuItemView.this.ir))
        {
          s locals = eY();
          bool1 = bool2;
          if (locals != null)
          {
            bool1 = bool2;
            if (locals.isShowing()) {
              bool1 = true;
            }
          }
        }
      }
      return bool1;
    }
  }
  
  public static abstract class b
  {
    public abstract s eY();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/ActionMenuItemView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */