package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.view.r;
import android.support.v7.a.a.a;
import android.support.v7.a.a.f;
import android.support.v7.a.a.g;
import android.support.v7.a.a.j;
import android.support.v7.widget.bo;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.TextView;

public class ListMenuItemView
  extends LinearLayout
  implements p.a
{
  private LayoutInflater JR;
  private TextView LC;
  private RadioButton RG;
  private CheckBox RH;
  private TextView RI;
  private ImageView RJ;
  private Drawable RK;
  private int RL;
  private Context RM;
  private boolean RN;
  private Drawable RO;
  private int RP;
  private boolean Rt;
  private j ir;
  private ImageView ph;
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.listMenuViewStyle);
  }
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = bo.a(getContext(), paramAttributeSet, a.j.MenuView, paramInt, 0);
    this.RK = paramAttributeSet.getDrawable(a.j.MenuView_android_itemBackground);
    this.RL = paramAttributeSet.getResourceId(a.j.MenuView_android_itemTextAppearance, -1);
    this.RN = paramAttributeSet.getBoolean(a.j.MenuView_preserveIconSpacing, false);
    this.RM = paramContext;
    this.RO = paramAttributeSet.getDrawable(a.j.MenuView_subMenuArrow);
    paramAttributeSet.ajT.recycle();
  }
  
  private void fd()
  {
    this.RG = ((RadioButton)getInflater().inflate(a.g.abc_list_menu_item_radio, this, false));
    addView(this.RG);
  }
  
  private void fe()
  {
    this.RH = ((CheckBox)getInflater().inflate(a.g.abc_list_menu_item_checkbox, this, false));
    addView(this.RH);
  }
  
  private LayoutInflater getInflater()
  {
    if (this.JR == null) {
      this.JR = LayoutInflater.from(getContext());
    }
    return this.JR;
  }
  
  private void setShortcut$25d965e(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.ir.ft())) {}
    char c;
    for (int i = 0;; i = 8)
    {
      if (i == 0)
      {
        TextView localTextView = this.RI;
        c = this.ir.fs();
        if (c != 0) {
          break;
        }
        localObject = "";
        localTextView.setText((CharSequence)localObject);
      }
      if (this.RI.getVisibility() != i) {
        this.RI.setVisibility(i);
      }
      return;
    }
    Object localObject = new StringBuilder(j.SG);
    switch (c)
    {
    default: 
      ((StringBuilder)localObject).append(c);
    }
    for (;;)
    {
      localObject = ((StringBuilder)localObject).toString();
      break;
      ((StringBuilder)localObject).append(j.SH);
      continue;
      ((StringBuilder)localObject).append(j.SI);
      continue;
      ((StringBuilder)localObject).append(j.SJ);
    }
  }
  
  private void setSubMenuArrowVisible(boolean paramBoolean)
  {
    ImageView localImageView;
    if (this.RJ != null)
    {
      localImageView = this.RJ;
      if (!paramBoolean) {
        break label24;
      }
    }
    label24:
    for (int i = 0;; i = 8)
    {
      localImageView.setVisibility(i);
      return;
    }
  }
  
  public final void a(j paramj)
  {
    int j = 0;
    this.ir = paramj;
    this.RP = 0;
    if (paramj.isVisible())
    {
      i = 0;
      setVisibility(i);
      setTitle(paramj.a(this));
      setCheckable(paramj.isCheckable());
      boolean bool = paramj.ft();
      paramj.fs();
      if ((!bool) || (!this.ir.ft())) {
        break label164;
      }
    }
    char c;
    label164:
    for (int i = j;; i = 8)
    {
      if (i == 0)
      {
        TextView localTextView = this.RI;
        c = this.ir.fs();
        if (c != 0) {
          break label170;
        }
        localObject = "";
        localTextView.setText((CharSequence)localObject);
      }
      if (this.RI.getVisibility() != i) {
        this.RI.setVisibility(i);
      }
      setIcon(paramj.getIcon());
      setEnabled(paramj.isEnabled());
      setSubMenuArrowVisible(paramj.hasSubMenu());
      setContentDescription(paramj.getContentDescription());
      return;
      i = 8;
      break;
    }
    label170:
    Object localObject = new StringBuilder(j.SG);
    switch (c)
    {
    default: 
      ((StringBuilder)localObject).append(c);
    }
    for (;;)
    {
      localObject = ((StringBuilder)localObject).toString();
      break;
      ((StringBuilder)localObject).append(j.SH);
      continue;
      ((StringBuilder)localObject).append(j.SI);
      continue;
      ((StringBuilder)localObject).append(j.SJ);
    }
  }
  
  public final boolean aY()
  {
    return false;
  }
  
  public j getItemData()
  {
    return this.ir;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    r.setBackground(this, this.RK);
    this.LC = ((TextView)findViewById(a.f.title));
    if (this.RL != -1) {
      this.LC.setTextAppearance(this.RM, this.RL);
    }
    this.RI = ((TextView)findViewById(a.f.shortcut));
    this.RJ = ((ImageView)findViewById(a.f.submenuarrow));
    if (this.RJ != null) {
      this.RJ.setImageDrawable(this.RO);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.ph != null) && (this.RN))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)this.ph.getLayoutParams();
      if ((localLayoutParams.height > 0) && (localLayoutParams1.width <= 0)) {
        localLayoutParams1.width = localLayoutParams.height;
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    if ((!paramBoolean) && (this.RG == null) && (this.RH == null)) {}
    label51:
    label133:
    label139:
    do
    {
      return;
      Object localObject2;
      Object localObject1;
      if (this.ir.fu())
      {
        if (this.RG == null) {
          fd();
        }
        localObject2 = this.RG;
        localObject1 = this.RH;
        if (!paramBoolean) {
          break label139;
        }
        ((CompoundButton)localObject2).setChecked(this.ir.isChecked());
        if (!paramBoolean) {
          break label133;
        }
      }
      for (int i = 0;; i = 8)
      {
        if (((CompoundButton)localObject2).getVisibility() != i) {
          ((CompoundButton)localObject2).setVisibility(i);
        }
        if ((localObject1 == null) || (((CompoundButton)localObject1).getVisibility() == 8)) {
          break;
        }
        ((CompoundButton)localObject1).setVisibility(8);
        return;
        if (this.RH == null) {
          fe();
        }
        localObject2 = this.RH;
        localObject1 = this.RG;
        break label51;
      }
      if (this.RH != null) {
        this.RH.setVisibility(8);
      }
    } while (this.RG == null);
    this.RG.setVisibility(8);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (this.ir.fu()) {
      if (this.RG == null) {
        fd();
      }
    }
    for (Object localObject = this.RG;; localObject = this.RH)
    {
      ((CompoundButton)localObject).setChecked(paramBoolean);
      return;
      if (this.RH == null) {
        fe();
      }
    }
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    this.Rt = paramBoolean;
    this.RN = paramBoolean;
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    int i;
    if ((this.ir.Pj.Sp) || (this.Rt))
    {
      i = 1;
      if ((i != 0) || (this.RN)) {
        break label39;
      }
    }
    label39:
    while ((this.ph == null) && (paramDrawable == null) && (!this.RN))
    {
      return;
      i = 0;
      break;
    }
    if (this.ph == null)
    {
      this.ph = ((ImageView)getInflater().inflate(a.g.abc_list_menu_item_icon, this, false));
      addView(this.ph, 0);
    }
    if ((paramDrawable != null) || (this.RN))
    {
      ImageView localImageView = this.ph;
      if (i != 0) {}
      for (;;)
      {
        localImageView.setImageDrawable(paramDrawable);
        if (this.ph.getVisibility() == 0) {
          break;
        }
        this.ph.setVisibility(0);
        return;
        paramDrawable = null;
      }
    }
    this.ph.setVisibility(8);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      this.LC.setText(paramCharSequence);
      if (this.LC.getVisibility() != 0) {
        this.LC.setVisibility(0);
      }
    }
    while (this.LC.getVisibility() == 8) {
      return;
    }
    this.LC.setVisibility(8);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/ListMenuItemView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */