package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.StateListDrawable;
import android.support.design.a.d;
import android.support.design.a.e;
import android.support.design.a.f;
import android.support.design.a.h;
import android.support.v4.view.r;
import android.support.v4.widget.o;
import android.support.v7.a.a.a;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.p.a;
import android.support.v7.widget.at.a;
import android.support.v7.widget.bq;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;

public class NavigationMenuItemView
  extends a
  implements p.a
{
  private static final int[] ik = { 16842912 };
  private final int il;
  private boolean im;
  boolean io;
  private final CheckedTextView ip;
  private FrameLayout iq;
  private j ir;
  private ColorStateList is;
  private boolean it;
  private Drawable iu;
  private final android.support.v4.view.b iv = new android.support.v4.view.b()
  {
    public final void a(View paramAnonymousView, android.support.v4.view.a.a paramAnonymousa)
    {
      super.a(paramAnonymousView, paramAnonymousa);
      paramAnonymousa.setCheckable(NavigationMenuItemView.this.io);
    }
  };
  
  public NavigationMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOrientation(0);
    LayoutInflater.from(paramContext).inflate(a.h.design_navigation_menu_item, this, true);
    this.il = paramContext.getResources().getDimensionPixelSize(a.d.design_navigation_icon_size);
    this.ip = ((CheckedTextView)findViewById(a.f.design_menu_item_text));
    this.ip.setDuplicateParentStateEnabled(true);
    r.a(this.ip, this.iv);
  }
  
  private void setActionView(View paramView)
  {
    if (paramView != null)
    {
      if (this.iq == null) {
        this.iq = ((FrameLayout)((ViewStub)findViewById(a.f.design_menu_item_action_area_stub)).inflate());
      }
      this.iq.removeAllViews();
      this.iq.addView(paramView);
    }
  }
  
  public final void a(j paramj)
  {
    this.ir = paramj;
    int i;
    StateListDrawable localStateListDrawable;
    if (paramj.isVisible())
    {
      i = 0;
      setVisibility(i);
      if (getBackground() == null)
      {
        TypedValue localTypedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(a.a.colorControlHighlight, localTypedValue, true)) {
          break label248;
        }
        localStateListDrawable = new StateListDrawable();
        localStateListDrawable.addState(ik, new ColorDrawable(localTypedValue.data));
        localStateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
        label96:
        r.setBackground(this, localStateListDrawable);
      }
      setCheckable(paramj.isCheckable());
      setChecked(paramj.isChecked());
      setEnabled(paramj.isEnabled());
      setTitle(paramj.getTitle());
      setIcon(paramj.getIcon());
      setActionView(paramj.getActionView());
      setContentDescription(paramj.getContentDescription());
      bq.a(this, paramj.getTooltipText());
      if ((this.ir.getTitle() != null) || (this.ir.getIcon() != null) || (this.ir.getActionView() == null)) {
        break label253;
      }
      i = 1;
      label197:
      if (i == 0) {
        break label258;
      }
      this.ip.setVisibility(8);
      if (this.iq != null)
      {
        paramj = (at.a)this.iq.getLayoutParams();
        paramj.width = -1;
        this.iq.setLayoutParams(paramj);
      }
    }
    label248:
    label253:
    label258:
    do
    {
      return;
      i = 8;
      break;
      localStateListDrawable = null;
      break label96;
      i = 0;
      break label197;
      this.ip.setVisibility(0);
    } while (this.iq == null);
    paramj = (at.a)this.iq.getLayoutParams();
    paramj.width = -2;
    this.iq.setLayoutParams(paramj);
  }
  
  public final boolean aY()
  {
    return false;
  }
  
  public j getItemData()
  {
    return this.ir;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if ((this.ir != null) && (this.ir.isCheckable()) && (this.ir.isChecked())) {
      mergeDrawableStates(arrayOfInt, ik);
    }
    return arrayOfInt;
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    refreshDrawableState();
    if (this.io != paramBoolean)
    {
      this.io = paramBoolean;
      android.support.v4.view.b.sendAccessibilityEvent(this.ip, 2048);
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    refreshDrawableState();
    this.ip.setChecked(paramBoolean);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    Object localObject;
    if (paramDrawable != null)
    {
      localObject = paramDrawable;
      if (this.it)
      {
        localObject = paramDrawable.getConstantState();
        if (localObject == null)
        {
          localObject = android.support.v4.a.a.a.f(paramDrawable).mutate();
          android.support.v4.a.a.a.a((Drawable)localObject, this.is);
        }
      }
      else
      {
        ((Drawable)localObject).setBounds(0, 0, this.il, this.il);
        paramDrawable = (Drawable)localObject;
      }
    }
    for (;;)
    {
      o.a(this.ip, paramDrawable, null, null, null);
      return;
      paramDrawable = ((Drawable.ConstantState)localObject).newDrawable();
      break;
      if (this.im)
      {
        if (this.iu == null)
        {
          this.iu = android.support.v4.content.a.b.b(getResources(), a.e.navigation_empty_icon, getContext().getTheme());
          if (this.iu != null) {
            this.iu.setBounds(0, 0, this.il, this.il);
          }
        }
        paramDrawable = this.iu;
      }
    }
  }
  
  void setIconTintList(ColorStateList paramColorStateList)
  {
    this.is = paramColorStateList;
    if (this.is != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.it = bool;
      if (this.ir != null) {
        setIcon(this.ir.getIcon());
      }
      return;
    }
  }
  
  public void setNeedsEmptyIcon(boolean paramBoolean)
  {
    this.im = paramBoolean;
  }
  
  public void setTextAppearance(int paramInt)
  {
    o.b(this.ip, paramInt);
  }
  
  public void setTextColor(ColorStateList paramColorStateList)
  {
    this.ip.setTextColor(paramColorStateList);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.ip.setText(paramCharSequence);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/internal/NavigationMenuItemView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */