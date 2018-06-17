package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.XmlResourceParser;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.support.c.a.i;
import android.support.v4.g.f;
import android.support.v4.g.g;
import android.support.v4.g.n;
import android.support.v7.a.a.a;
import android.support.v7.a.a.c;
import android.support.v7.a.a.e;
import android.support.v7.c.a.b;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class m
{
  private static final PorterDuff.Mode VU = PorterDuff.Mode.SRC_IN;
  private static m VV;
  private static final b VW = new b();
  private static final int[] VX = { a.e.abc_textfield_search_default_mtrl_alpha, a.e.abc_textfield_default_mtrl_alpha, a.e.abc_ab_share_pack_mtrl_alpha };
  private static final int[] VY = { a.e.abc_ic_commit_search_api_mtrl_alpha, a.e.abc_seekbar_tick_mark_material, a.e.abc_ic_menu_share_mtrl_alpha, a.e.abc_ic_menu_copy_mtrl_am_alpha, a.e.abc_ic_menu_cut_mtrl_alpha, a.e.abc_ic_menu_selectall_mtrl_alpha, a.e.abc_ic_menu_paste_mtrl_am_alpha };
  private static final int[] VZ = { a.e.abc_textfield_activated_mtrl_alpha, a.e.abc_textfield_search_activated_mtrl_alpha, a.e.abc_cab_background_top_mtrl_alpha, a.e.abc_text_cursor_material, a.e.abc_text_select_handle_left_mtrl_dark, a.e.abc_text_select_handle_middle_mtrl_dark, a.e.abc_text_select_handle_right_mtrl_dark, a.e.abc_text_select_handle_left_mtrl_light, a.e.abc_text_select_handle_middle_mtrl_light, a.e.abc_text_select_handle_right_mtrl_light };
  private static final int[] Wa = { a.e.abc_popup_background_mtrl_mult, a.e.abc_cab_background_internal_bg, a.e.abc_menu_hardkey_panel_mtrl_mult };
  private static final int[] Wb = { a.e.abc_tab_indicator_material, a.e.abc_textfield_search_material };
  private static final int[] Wc = { a.e.abc_btn_check_material, a.e.abc_btn_radio_material };
  private WeakHashMap<Context, n<ColorStateList>> Wd;
  private android.support.v4.g.a<String, c> We;
  private n<String> Wf;
  public final Object Wg = new Object();
  public final WeakHashMap<Context, f<WeakReference<Drawable.ConstantState>>> Wh = new WeakHashMap(0);
  private TypedValue Wi;
  private boolean Wj;
  
  private static long a(TypedValue paramTypedValue)
  {
    return paramTypedValue.assetCookie << 32 | paramTypedValue.data;
  }
  
  public static PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
  {
    PorterDuffColorFilter localPorterDuffColorFilter2 = (PorterDuffColorFilter)VW.get(Integer.valueOf(b.b(paramInt, paramMode)));
    PorterDuffColorFilter localPorterDuffColorFilter1 = localPorterDuffColorFilter2;
    if (localPorterDuffColorFilter2 == null)
    {
      localPorterDuffColorFilter1 = new PorterDuffColorFilter(paramInt, paramMode);
      VW.put(Integer.valueOf(b.b(paramInt, paramMode)), localPorterDuffColorFilter1);
    }
    return localPorterDuffColorFilter1;
  }
  
  private Drawable a(Context paramContext, long paramLong)
  {
    f localf;
    synchronized (this.Wg)
    {
      localf = (f)this.Wh.get(paramContext);
      if (localf == null) {
        return null;
      }
      Object localObject2 = (WeakReference)localf.get(paramLong);
      if (localObject2 == null) {
        break label136;
      }
      localObject2 = (Drawable.ConstantState)((WeakReference)localObject2).get();
      if (localObject2 != null)
      {
        paramContext = ((Drawable.ConstantState)localObject2).newDrawable(paramContext.getResources());
        return paramContext;
      }
    }
    int i = android.support.v4.g.c.a(localf.EB, localf.ai, paramLong);
    if ((i >= 0) && (localf.EC[i] != f.Ez))
    {
      localf.EC[i] = f.Ez;
      localf.EA = true;
    }
    label136:
    return null;
  }
  
  private static void a(Drawable paramDrawable, int paramInt, PorterDuff.Mode paramMode)
  {
    Drawable localDrawable = paramDrawable;
    if (am.m(paramDrawable)) {
      localDrawable = paramDrawable.mutate();
    }
    paramDrawable = paramMode;
    if (paramMode == null) {
      paramDrawable = VU;
    }
    localDrawable.setColorFilter(a(paramInt, paramDrawable));
  }
  
  static void a(Drawable paramDrawable, bm parambm, int[] paramArrayOfInt)
  {
    Object localObject2 = null;
    if ((am.m(paramDrawable)) && (paramDrawable.mutate() != paramDrawable)) {
      Log.d("AppCompatDrawableManag", "Mutated drawable is not the same instance as the input.");
    }
    label67:
    label83:
    label107:
    label114:
    label134:
    for (;;)
    {
      return;
      ColorStateList localColorStateList;
      Object localObject1;
      if ((parambm.ajR) || (parambm.ajQ)) {
        if (parambm.ajR)
        {
          localColorStateList = parambm.ajP;
          if (!parambm.ajQ) {
            break label107;
          }
          parambm = parambm.rO;
          localObject1 = localObject2;
          if (localColorStateList != null)
          {
            if (parambm != null) {
              break label114;
            }
            localObject1 = localObject2;
          }
          paramDrawable.setColorFilter((ColorFilter)localObject1);
        }
      }
      for (;;)
      {
        if (Build.VERSION.SDK_INT > 23) {
          break label134;
        }
        paramDrawable.invalidateSelf();
        return;
        localColorStateList = null;
        break;
        parambm = VU;
        break label67;
        localObject1 = a(localColorStateList.getColorForState(paramArrayOfInt, 0), parambm);
        break label83;
        paramDrawable.clearColorFilter();
      }
    }
  }
  
  private void a(String paramString, c paramc)
  {
    if (this.We == null) {
      this.We = new android.support.v4.g.a();
    }
    this.We.put(paramString, paramc);
  }
  
  static boolean a(Context paramContext, int paramInt, Drawable paramDrawable)
  {
    int j = 16842801;
    PorterDuff.Mode localMode = VU;
    int i;
    if (a(VX, paramInt))
    {
      j = a.a.colorControlNormal;
      paramInt = -1;
      i = 1;
    }
    for (;;)
    {
      if (i != 0)
      {
        Drawable localDrawable = paramDrawable;
        if (am.m(paramDrawable)) {
          localDrawable = paramDrawable.mutate();
        }
        localDrawable.setColorFilter(a(bk.k(paramContext, j), localMode));
        if (paramInt != -1) {
          localDrawable.setAlpha(paramInt);
        }
        return true;
        if (a(VZ, paramInt))
        {
          j = a.a.colorControlActivated;
          paramInt = -1;
          i = 1;
          continue;
        }
        if (a(Wa, paramInt))
        {
          localMode = PorterDuff.Mode.MULTIPLY;
          paramInt = -1;
          i = 1;
          continue;
        }
        if (paramInt == a.e.abc_list_divider_mtrl_alpha)
        {
          j = 16842800;
          paramInt = Math.round(40.8F);
          i = 1;
          continue;
        }
        if (paramInt == a.e.abc_dialog_material_background)
        {
          paramInt = -1;
          i = 1;
        }
      }
      else
      {
        return false;
      }
      paramInt = -1;
      j = 0;
      i = 0;
    }
  }
  
  private boolean a(Context paramContext, long paramLong, Drawable paramDrawable)
  {
    Drawable.ConstantState localConstantState = paramDrawable.getConstantState();
    if (localConstantState != null) {
      synchronized (this.Wg)
      {
        f localf = (f)this.Wh.get(paramContext);
        paramDrawable = localf;
        if (localf == null)
        {
          paramDrawable = new f();
          this.Wh.put(paramContext, paramDrawable);
        }
        paramDrawable.put(paramLong, new WeakReference(localConstantState));
        return true;
      }
    }
    return false;
  }
  
  private static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    boolean bool2 = false;
    int j = paramArrayOfInt.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (paramArrayOfInt[i] == paramInt) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public static m gh()
  {
    if (VV == null)
    {
      m localm = new m();
      VV = localm;
      if (Build.VERSION.SDK_INT < 24)
      {
        localm.a("vector", new d());
        localm.a("animated-vector", new a());
      }
    }
    return VV;
  }
  
  private static ColorStateList i(Context paramContext, int paramInt)
  {
    int k = bk.k(paramContext, a.a.colorControlHighlight);
    int i = bk.m(paramContext, a.a.colorButtonNormal);
    paramContext = bk.ajJ;
    int[] arrayOfInt1 = bk.PRESSED_STATE_SET;
    int j = android.support.v4.a.a.l(k, paramInt);
    int[] arrayOfInt2 = bk.FOCUSED_STATE_SET;
    k = android.support.v4.a.a.l(k, paramInt);
    return new ColorStateList(new int[][] { paramContext, arrayOfInt1, arrayOfInt2, bk.EMPTY_STATE_SET }, new int[] { i, j, k, paramInt });
  }
  
  public final Drawable a(Context paramContext, int paramInt, boolean paramBoolean)
  {
    if (!this.Wj)
    {
      this.Wj = true;
      localObject1 = a(paramContext, a.e.abc_vector_test, false);
      if (localObject1 != null) {
        if ((!(localObject1 instanceof i)) && (!"android.graphics.drawable.VectorDrawable".equals(localObject1.getClass().getName()))) {
          break label77;
        }
      }
      label77:
      for (int i = 1; i == 0; i = 0)
      {
        this.Wj = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
      }
    }
    Object localObject2 = g(paramContext, paramInt);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      if (this.Wi == null) {
        this.Wi = new TypedValue();
      }
      TypedValue localTypedValue = this.Wi;
      paramContext.getResources().getValue(paramInt, localTypedValue, true);
      long l = a(localTypedValue);
      localObject2 = a(paramContext, l);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        if (paramInt == a.e.abc_cab_background_top_material) {
          localObject2 = new LayerDrawable(new Drawable[] { a(paramContext, a.e.abc_cab_background_internal_bg, false), a(paramContext, a.e.abc_cab_background_top_mtrl_alpha, false) });
        }
        localObject1 = localObject2;
        if (localObject2 != null)
        {
          ((Drawable)localObject2).setChangingConfigurations(localTypedValue.changingConfigurations);
          a(paramContext, l, (Drawable)localObject2);
          localObject1 = localObject2;
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = android.support.v4.content.a.a(paramContext, paramInt);
    }
    localObject1 = localObject2;
    if (localObject2 != null) {
      localObject1 = a(paramContext, paramInt, paramBoolean, (Drawable)localObject2);
    }
    if (localObject1 != null) {
      am.l((Drawable)localObject1);
    }
    return (Drawable)localObject1;
  }
  
  final Drawable a(Context paramContext, int paramInt, boolean paramBoolean, Drawable paramDrawable)
  {
    Object localObject = null;
    ColorStateList localColorStateList = h(paramContext, paramInt);
    if (localColorStateList != null)
    {
      paramContext = paramDrawable;
      if (am.m(paramDrawable)) {
        paramContext = paramDrawable.mutate();
      }
      paramDrawable = android.support.v4.a.a.a.f(paramContext);
      android.support.v4.a.a.a.a(paramDrawable, localColorStateList);
      paramContext = (Context)localObject;
      if (paramInt == a.e.abc_switch_thumb_material) {
        paramContext = PorterDuff.Mode.MULTIPLY;
      }
      localObject = paramDrawable;
      if (paramContext != null)
      {
        android.support.v4.a.a.a.a(paramDrawable, paramContext);
        localObject = paramDrawable;
      }
    }
    do
    {
      do
      {
        return (Drawable)localObject;
        if (paramInt == a.e.abc_seekbar_track_material)
        {
          localObject = (LayerDrawable)paramDrawable;
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908288), bk.k(paramContext, a.a.colorControlNormal), VU);
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908303), bk.k(paramContext, a.a.colorControlNormal), VU);
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908301), bk.k(paramContext, a.a.colorControlActivated), VU);
          return paramDrawable;
        }
        if ((paramInt == a.e.abc_ratingbar_material) || (paramInt == a.e.abc_ratingbar_indicator_material) || (paramInt == a.e.abc_ratingbar_small_material))
        {
          localObject = (LayerDrawable)paramDrawable;
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908288), bk.m(paramContext, a.a.colorControlNormal), VU);
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908303), bk.k(paramContext, a.a.colorControlActivated), VU);
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908301), bk.k(paramContext, a.a.colorControlActivated), VU);
          return paramDrawable;
        }
        localObject = paramDrawable;
      } while (a(paramContext, paramInt, paramDrawable));
      localObject = paramDrawable;
    } while (!paramBoolean);
    return null;
  }
  
  final Drawable g(Context paramContext, int paramInt)
  {
    if ((this.We != null) && (!this.We.isEmpty()))
    {
      if (this.Wf != null)
      {
        localObject1 = (String)this.Wf.get(paramInt);
        if (("appcompat_skip_skip".equals(localObject1)) || ((localObject1 != null) && (this.We.get(localObject1) == null)))
        {
          localObject1 = null;
          return (Drawable)localObject1;
        }
      }
      else
      {
        this.Wf = new n();
      }
      if (this.Wi == null) {
        this.Wi = new TypedValue();
      }
      TypedValue localTypedValue = this.Wi;
      Object localObject1 = paramContext.getResources();
      ((Resources)localObject1).getValue(paramInt, localTypedValue, true);
      long l = a(localTypedValue);
      Drawable localDrawable = a(paramContext, l);
      if (localDrawable != null) {
        return localDrawable;
      }
      Object localObject2 = localDrawable;
      XmlResourceParser localXmlResourceParser;
      AttributeSet localAttributeSet;
      if (localTypedValue.string != null)
      {
        localObject2 = localDrawable;
        if (localTypedValue.string.toString().endsWith(".xml"))
        {
          localObject2 = localDrawable;
          try
          {
            localXmlResourceParser = ((Resources)localObject1).getXml(paramInt);
            localObject2 = localDrawable;
            localAttributeSet = Xml.asAttributeSet(localXmlResourceParser);
            int i;
            do
            {
              localObject2 = localDrawable;
              i = localXmlResourceParser.next();
            } while ((i != 2) && (i != 1));
            if (i != 2)
            {
              localObject2 = localDrawable;
              throw new XmlPullParserException("No start tag found");
            }
          }
          catch (Exception paramContext)
          {
            Log.e("AppCompatDrawableManag", "Exception while inflating drawable", paramContext);
          }
        }
      }
      for (paramContext = (Context)localObject2;; paramContext = (Context)localObject1)
      {
        localObject1 = paramContext;
        if (paramContext != null) {
          break;
        }
        this.Wf.append(paramInt, "appcompat_skip_skip");
        return paramContext;
        localObject2 = localDrawable;
        localObject1 = localXmlResourceParser.getName();
        localObject2 = localDrawable;
        this.Wf.append(paramInt, localObject1);
        localObject2 = localDrawable;
        c localc = (c)this.We.get(localObject1);
        localObject1 = localDrawable;
        if (localc != null)
        {
          localObject2 = localDrawable;
          localObject1 = localc.a(paramContext, localXmlResourceParser, localAttributeSet, paramContext.getTheme());
        }
        if (localObject1 != null)
        {
          localObject2 = localObject1;
          ((Drawable)localObject1).setChangingConfigurations(localTypedValue.changingConfigurations);
          localObject2 = localObject1;
          a(paramContext, l, (Drawable)localObject1);
        }
      }
    }
    return null;
  }
  
  final ColorStateList h(Context paramContext, int paramInt)
  {
    Object localObject1;
    Object localObject2;
    if (this.Wd != null)
    {
      localObject1 = (n)this.Wd.get(paramContext);
      if (localObject1 != null)
      {
        localObject1 = (ColorStateList)((n)localObject1).get(paramInt);
        localObject2 = localObject1;
        if (localObject1 == null)
        {
          if (paramInt != a.e.abc_edit_text_material) {
            break label141;
          }
          localObject1 = b.b(paramContext, a.c.abc_tint_edittext);
        }
      }
    }
    for (;;)
    {
      Object localObject3;
      if (localObject1 != null)
      {
        if (this.Wd == null) {
          this.Wd = new WeakHashMap();
        }
        localObject3 = (n)this.Wd.get(paramContext);
        localObject2 = localObject3;
        if (localObject3 == null)
        {
          localObject2 = new n();
          this.Wd.put(paramContext, localObject2);
        }
        ((n)localObject2).append(paramInt, localObject1);
      }
      localObject2 = localObject1;
      return (ColorStateList)localObject2;
      localObject1 = null;
      break;
      localObject1 = null;
      break;
      label141:
      if (paramInt == a.e.abc_switch_track_mtrl_alpha)
      {
        localObject1 = b.b(paramContext, a.c.abc_tint_switch_track);
      }
      else
      {
        if (paramInt == a.e.abc_switch_thumb_material)
        {
          localObject1 = new int[3][];
          localObject2 = new int[3];
          localObject3 = bk.l(paramContext, a.a.colorSwitchThumbNormal);
          if ((localObject3 != null) && (((ColorStateList)localObject3).isStateful()))
          {
            localObject1[0] = bk.ajJ;
            localObject2[0] = ((ColorStateList)localObject3).getColorForState(localObject1[0], 0);
            localObject1[1] = bk.ik;
            localObject2[1] = bk.k(paramContext, a.a.colorControlActivated);
            localObject1[2] = bk.EMPTY_STATE_SET;
            localObject2[2] = ((ColorStateList)localObject3).getDefaultColor();
          }
          for (;;)
          {
            localObject1 = new ColorStateList((int[][])localObject1, (int[])localObject2);
            break;
            localObject1[0] = bk.ajJ;
            localObject2[0] = bk.m(paramContext, a.a.colorSwitchThumbNormal);
            localObject1[1] = bk.ik;
            localObject2[1] = bk.k(paramContext, a.a.colorControlActivated);
            localObject1[2] = bk.EMPTY_STATE_SET;
            localObject2[2] = bk.k(paramContext, a.a.colorSwitchThumbNormal);
          }
        }
        if (paramInt == a.e.abc_btn_default_mtrl_shape) {
          localObject1 = i(paramContext, bk.k(paramContext, a.a.colorButtonNormal));
        } else if (paramInt == a.e.abc_btn_borderless_material) {
          localObject1 = i(paramContext, 0);
        } else if (paramInt == a.e.abc_btn_colored_material) {
          localObject1 = i(paramContext, bk.k(paramContext, a.a.colorAccent));
        } else if ((paramInt == a.e.abc_spinner_mtrl_am_alpha) || (paramInt == a.e.abc_spinner_textfield_background_material)) {
          localObject1 = b.b(paramContext, a.c.abc_tint_spinner);
        } else if (a(VY, paramInt)) {
          localObject1 = bk.l(paramContext, a.a.colorControlNormal);
        } else if (a(Wb, paramInt)) {
          localObject1 = b.b(paramContext, a.c.abc_tint_default);
        } else if (a(Wc, paramInt)) {
          localObject1 = b.b(paramContext, a.c.abc_tint_btn_checkable);
        } else if (paramInt == a.e.abc_seekbar_thumb_material) {
          localObject1 = b.b(paramContext, a.c.abc_tint_seek_thumb);
        }
      }
    }
  }
  
  private static final class a
    implements m.c
  {
    public final Drawable a(Context paramContext, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    {
      try
      {
        paramContext = android.support.c.a.c.a(paramContext, paramContext.getResources(), paramXmlPullParser, paramAttributeSet, paramTheme);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", paramContext);
      }
      return null;
    }
  }
  
  private static final class b
    extends g<Integer, PorterDuffColorFilter>
  {
    public b()
    {
      super();
    }
    
    static int b(int paramInt, PorterDuff.Mode paramMode)
    {
      return (paramInt + 31) * 31 + paramMode.hashCode();
    }
  }
  
  private static abstract interface c
  {
    public abstract Drawable a(Context paramContext, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme);
  }
  
  private static final class d
    implements m.c
  {
    public final Drawable a(Context paramContext, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    {
      try
      {
        paramContext = i.a(paramContext.getResources(), paramXmlPullParser, paramAttributeSet, paramTheme);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        Log.e("VdcInflateDelegate", "Exception while inflating <vector>", paramContext);
      }
      return null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */