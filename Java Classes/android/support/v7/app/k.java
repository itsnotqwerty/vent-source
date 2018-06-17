package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.y;
import android.support.v4.widget.l;
import android.support.v7.a.a.a;
import android.support.v7.a.a.c;
import android.support.v7.a.a.f;
import android.support.v7.a.a.g;
import android.support.v7.a.a.i;
import android.support.v7.a.a.j;
import android.support.v7.view.b.a;
import android.support.v7.view.d;
import android.support.v7.view.menu.ExpandedMenuView;
import android.support.v7.view.menu.f.a;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.h.a;
import android.support.v7.view.menu.o.a;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.ContentFrameLayout.a;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.ViewStubCompat;
import android.support.v7.widget.aj;
import android.support.v7.widget.ap;
import android.support.v7.widget.ap.a;
import android.support.v7.widget.bl;
import android.support.v7.widget.bt;
import android.support.v7.widget.bw;
import android.support.v7.widget.i;
import android.support.v7.widget.j;
import android.support.v7.widget.m;
import android.support.v7.widget.p;
import android.support.v7.widget.s;
import android.support.v7.widget.w;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.LayoutInflater.Factory2;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.Window.Callback;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.lang.reflect.Constructor;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

class k
  extends g
  implements h.a, LayoutInflater.Factory2
{
  private static final boolean Nf;
  private TextView LC;
  private boolean NA;
  private AppCompatViewInflater NB;
  private aj Ng;
  private a Nh;
  private e Ni;
  android.support.v7.view.b Nj;
  ActionBarContextView Nk;
  PopupWindow Nl;
  Runnable Nm;
  android.support.v4.view.v Nn = null;
  private boolean No;
  private ViewGroup Np;
  private View Nq;
  private boolean Nr;
  private boolean Ns;
  private boolean Nt;
  private d[] Nu;
  private d Nv;
  private boolean Nw;
  boolean Nx;
  int Ny;
  private final Runnable Nz = new Runnable()
  {
    public final void run()
    {
      if ((k.this.Ny & 0x1) != 0) {
        k.this.aT(0);
      }
      if ((k.this.Ny & 0x1000) != 0) {
        k.this.aT(108);
      }
      k.this.Nx = false;
      k.this.Ny = 0;
    }
  };
  private Rect ng;
  private Rect nh;
  
  static
  {
    if (Build.VERSION.SDK_INT < 21) {}
    for (boolean bool = true;; bool = false)
    {
      Nf = bool;
      return;
    }
  }
  
  k(Context paramContext, Window paramWindow, e parame)
  {
    super(paramContext, paramWindow, parame);
  }
  
  private View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    int k = 1;
    Object localObject;
    boolean bool1;
    if (this.NB == null)
    {
      localObject = this.mContext.obtainStyledAttributes(a.j.AppCompatTheme).getString(a.j.AppCompatTheme_viewInflaterClass);
      if ((localObject == null) || (AppCompatViewInflater.class.getName().equals(localObject))) {
        this.NB = new AppCompatViewInflater();
      }
    }
    else
    {
      if (!Nf) {
        break label1049;
      }
      if (!(paramAttributeSet instanceof XmlPullParser)) {
        break label569;
      }
      if (((XmlPullParser)paramAttributeSet).getDepth() <= 1) {
        break label563;
      }
      bool1 = true;
    }
    for (;;)
    {
      label88:
      AppCompatViewInflater localAppCompatViewInflater = this.NB;
      boolean bool2 = Nf;
      boolean bool3 = bt.jb();
      if ((bool1) && (paramView != null)) {}
      for (paramView = paramView.getContext();; paramView = paramContext)
      {
        localObject = paramView.obtainStyledAttributes(paramAttributeSet, a.j.View, 0, 0);
        if (bool2) {}
        for (int i = ((TypedArray)localObject).getResourceId(a.j.View_android_theme, 0);; i = 0)
        {
          int j = i;
          if (i == 0)
          {
            i = ((TypedArray)localObject).getResourceId(a.j.View_theme, 0);
            j = i;
            if (i != 0)
            {
              Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
              j = i;
            }
          }
          ((TypedArray)localObject).recycle();
          if ((j != 0) && ((!(paramView instanceof d)) || (((d)paramView).Pt != j))) {
            paramView = new d(paramView, j);
          }
          for (;;)
          {
            localObject = paramView;
            if (bool3) {
              localObject = bl.n(paramView);
            }
            switch (paramString.hashCode())
            {
            default: 
              label360:
              i = -1;
              switch (i)
              {
              default: 
                label363:
                paramView = null;
                label434:
                if ((paramView == null) && (paramContext != localObject)) {
                  paramView = localAppCompatViewInflater.a((Context)localObject, paramString, paramAttributeSet);
                }
                break;
              }
              break;
            }
            for (;;)
            {
              if (paramView != null)
              {
                paramString = paramView.getContext();
                if (((paramString instanceof ContextWrapper)) && ((Build.VERSION.SDK_INT < 15) || (android.support.v4.view.r.ai(paramView)))) {}
              }
              else
              {
                return paramView;
                try
                {
                  this.NB = ((AppCompatViewInflater)Class.forName((String)localObject).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
                catch (Throwable localThrowable)
                {
                  Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + (String)localObject + ". Falling back to default.", localThrowable);
                  this.NB = new AppCompatViewInflater();
                }
                break;
                label563:
                bool1 = false;
                break label88;
                label569:
                bool1 = a((ViewParent)paramView);
                break label88;
                if (!paramString.equals("TextView")) {
                  break label360;
                }
                i = 0;
                break label363;
                if (!paramString.equals("ImageView")) {
                  break label360;
                }
                i = k;
                break label363;
                if (!paramString.equals("Button")) {
                  break label360;
                }
                i = 2;
                break label363;
                if (!paramString.equals("EditText")) {
                  break label360;
                }
                i = 3;
                break label363;
                if (!paramString.equals("Spinner")) {
                  break label360;
                }
                i = 4;
                break label363;
                if (!paramString.equals("ImageButton")) {
                  break label360;
                }
                i = 5;
                break label363;
                if (!paramString.equals("CheckBox")) {
                  break label360;
                }
                i = 6;
                break label363;
                if (!paramString.equals("RadioButton")) {
                  break label360;
                }
                i = 7;
                break label363;
                if (!paramString.equals("CheckedTextView")) {
                  break label360;
                }
                i = 8;
                break label363;
                if (!paramString.equals("AutoCompleteTextView")) {
                  break label360;
                }
                i = 9;
                break label363;
                if (!paramString.equals("MultiAutoCompleteTextView")) {
                  break label360;
                }
                i = 10;
                break label363;
                if (!paramString.equals("RatingBar")) {
                  break label360;
                }
                i = 11;
                break label363;
                if (!paramString.equals("SeekBar")) {
                  break label360;
                }
                i = 12;
                break label363;
                paramView = new AppCompatTextView((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new android.support.v7.widget.r((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new i((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new android.support.v7.widget.n((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new android.support.v7.widget.z((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new p((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new j((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new android.support.v7.widget.v((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new android.support.v7.widget.k((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new android.support.v7.widget.g((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new s((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new w((Context)localObject, paramAttributeSet);
                break label434;
                paramView = new android.support.v7.widget.x((Context)localObject, paramAttributeSet);
                break label434;
              }
              paramString = paramString.obtainStyledAttributes(paramAttributeSet, AppCompatViewInflater.NV);
              paramContext = paramString.getString(0);
              if (paramContext != null) {
                paramView.setOnClickListener(new AppCompatViewInflater.a(paramView, paramContext));
              }
              paramString.recycle();
              return paramView;
            }
          }
        }
      }
      label1049:
      bool1 = false;
    }
  }
  
  private void a(d paramd, KeyEvent paramKeyEvent)
  {
    int j = -1;
    if ((paramd.NP) || (this.MP)) {}
    int i;
    Object localObject1;
    label90:
    label95:
    Object localObject2;
    label236:
    do
    {
      do
      {
        for (;;)
        {
          return;
          if (paramd.NG == 0) {
            if ((this.mContext.getResources().getConfiguration().screenLayout & 0xF) != 4) {
              break label90;
            }
          }
          for (i = 1; i == 0; i = 0)
          {
            localObject1 = this.Le.getCallback();
            if ((localObject1 == null) || (((Window.Callback)localObject1).onMenuOpened(paramd.NG, paramd.NK))) {
              break label95;
            }
            a(paramd, true);
            return;
          }
        }
        localObject1 = (WindowManager)this.mContext.getSystemService("window");
      } while ((localObject1 == null) || (!b(paramd, paramKeyEvent)));
      if ((paramd.NH != null) && (!paramd.NR)) {
        break label796;
      }
      if (paramd.NH != null) {
        break label551;
      }
      localObject2 = ez();
      TypedValue localTypedValue = new TypedValue();
      paramKeyEvent = ((Context)localObject2).getResources().newTheme();
      paramKeyEvent.setTo(((Context)localObject2).getTheme());
      paramKeyEvent.resolveAttribute(a.a.actionBarPopupTheme, localTypedValue, true);
      if (localTypedValue.resourceId != 0) {
        paramKeyEvent.applyStyle(localTypedValue.resourceId, true);
      }
      paramKeyEvent.resolveAttribute(a.a.panelMenuListTheme, localTypedValue, true);
      if (localTypedValue.resourceId == 0) {
        break;
      }
      paramKeyEvent.applyStyle(localTypedValue.resourceId, true);
      localObject2 = new d((Context)localObject2, 0);
      ((Context)localObject2).getTheme().setTo(paramKeyEvent);
      paramd.NM = ((Context)localObject2);
      paramKeyEvent = ((Context)localObject2).obtainStyledAttributes(a.j.AppCompatTheme);
      paramd.background = paramKeyEvent.getResourceId(a.j.AppCompatTheme_panelBackground, 0);
      paramd.windowAnimations = paramKeyEvent.getResourceId(a.j.AppCompatTheme_android_windowAnimationStyle, 0);
      paramKeyEvent.recycle();
      paramd.NH = new c(paramd.NM);
      paramd.gravity = 81;
    } while (paramd.NH == null);
    label329:
    if (paramd.NJ != null)
    {
      paramd.NI = paramd.NJ;
      i = 1;
      label346:
      if (i == 0) {
        break label769;
      }
      if (paramd.NI == null) {
        break label791;
      }
      if (paramd.NJ == null) {
        break label771;
      }
      i = 1;
      label366:
      if (i == 0) {
        break label794;
      }
      paramKeyEvent = paramd.NI.getLayoutParams();
      if (paramKeyEvent != null) {
        break label832;
      }
      paramKeyEvent = new ViewGroup.LayoutParams(-2, -2);
    }
    label551:
    label766:
    label769:
    label771:
    label791:
    label794:
    label796:
    label832:
    for (;;)
    {
      i = paramd.background;
      paramd.NH.setBackgroundResource(i);
      localObject2 = paramd.NI.getParent();
      if ((localObject2 != null) && ((localObject2 instanceof ViewGroup))) {
        ((ViewGroup)localObject2).removeView(paramd.NI);
      }
      paramd.NH.addView(paramd.NI, paramKeyEvent);
      if (!paramd.NI.hasFocus()) {
        paramd.NI.requestFocus();
      }
      i = -2;
      for (;;)
      {
        paramd.NO = false;
        paramKeyEvent = new WindowManager.LayoutParams(i, -2, paramd.x, paramd.y, 1002, 8519680, -3);
        paramKeyEvent.gravity = paramd.gravity;
        paramKeyEvent.windowAnimations = paramd.windowAnimations;
        ((WindowManager)localObject1).addView(paramd.NH, paramKeyEvent);
        paramd.NP = true;
        return;
        paramKeyEvent.applyStyle(a.i.Theme_AppCompat_CompactMenu, true);
        break label236;
        if ((!paramd.NR) || (paramd.NH.getChildCount() <= 0)) {
          break label329;
        }
        paramd.NH.removeAllViews();
        break label329;
        if (paramd.NK != null)
        {
          if (this.Ni == null) {
            this.Ni = new e();
          }
          paramKeyEvent = this.Ni;
          if (paramd.NK == null) {}
          for (paramKeyEvent = null;; paramKeyEvent = paramKeyEvent.RQ)
          {
            paramd.NI = ((View)paramKeyEvent);
            if (paramd.NI == null) {
              break label766;
            }
            i = 1;
            break;
            if (paramd.NL == null)
            {
              paramd.NL = new android.support.v7.view.menu.f(paramd.NM, a.g.abc_list_menu_item_layout);
              paramd.NL.QU = paramKeyEvent;
              paramd.NK.a(paramd.NL);
            }
            paramKeyEvent = paramd.NL;
            localObject2 = paramd.NH;
            if (paramKeyEvent.RQ == null)
            {
              paramKeyEvent.RQ = ((ExpandedMenuView)paramKeyEvent.JR.inflate(a.g.abc_expanded_menu_layout, (ViewGroup)localObject2, false));
              if (paramKeyEvent.RT == null) {
                paramKeyEvent.RT = new f.a(paramKeyEvent);
              }
              paramKeyEvent.RQ.setAdapter(paramKeyEvent.RT);
              paramKeyEvent.RQ.setOnItemClickListener(paramKeyEvent);
            }
          }
        }
        i = 0;
        break label346;
        break;
        if (paramd.NL.getAdapter().getCount() > 0)
        {
          i = 1;
          break label366;
        }
        i = 0;
        break label366;
        break;
        if (paramd.NJ != null)
        {
          paramKeyEvent = paramd.NJ.getLayoutParams();
          if (paramKeyEvent != null)
          {
            i = j;
            if (paramKeyEvent.width == -1) {
              continue;
            }
          }
        }
        i = -2;
      }
    }
  }
  
  private boolean a(d paramd, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.isSystem()) {}
    while (((!paramd.NN) && (!b(paramd, paramKeyEvent))) || (paramd.NK == null)) {
      return false;
    }
    return paramd.NK.performShortcut(paramInt, paramKeyEvent, 1);
  }
  
  private boolean a(ViewParent paramViewParent)
  {
    if (paramViewParent == null) {
      return false;
    }
    View localView = this.Le.getDecorView();
    for (;;)
    {
      if (paramViewParent == null) {
        return true;
      }
      if ((paramViewParent == localView) || (!(paramViewParent instanceof View)) || (android.support.v4.view.r.ah((View)paramViewParent))) {
        return false;
      }
      paramViewParent = paramViewParent.getParent();
    }
  }
  
  private boolean b(d paramd, KeyEvent paramKeyEvent)
  {
    if (this.MP) {
      return false;
    }
    if (paramd.NN) {
      return true;
    }
    if ((this.Nv != null) && (this.Nv != paramd)) {
      a(this.Nv, false);
    }
    Window.Callback localCallback = this.Le.getCallback();
    if (localCallback != null) {
      paramd.NJ = localCallback.onCreatePanelView(paramd.NG);
    }
    int i;
    label89:
    Context localContext;
    TypedValue localTypedValue;
    Resources.Theme localTheme;
    Object localObject1;
    if ((paramd.NG == 0) || (paramd.NG == 108))
    {
      i = 1;
      if ((i != 0) && (this.Ng != null)) {
        this.Ng.fF();
      }
      if ((paramd.NJ != null) || ((i != 0) && ((this.MH instanceof n)))) {
        break label624;
      }
      if ((paramd.NK != null) && (!paramd.NS)) {
        break label494;
      }
      if (paramd.NK == null)
      {
        localContext = this.mContext;
        if (((paramd.NG != 0) && (paramd.NG != 108)) || (this.Ng == null)) {
          break label652;
        }
        localTypedValue = new TypedValue();
        localTheme = localContext.getTheme();
        localTheme.resolveAttribute(a.a.actionBarTheme, localTypedValue, true);
        if (localTypedValue.resourceId == 0) {
          break label471;
        }
        localObject1 = localContext.getResources().newTheme();
        ((Resources.Theme)localObject1).setTo(localTheme);
        ((Resources.Theme)localObject1).applyStyle(localTypedValue.resourceId, true);
        ((Resources.Theme)localObject1).resolveAttribute(a.a.actionBarWidgetTheme, localTypedValue, true);
        label256:
        Object localObject2 = localObject1;
        if (localTypedValue.resourceId != 0)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = localContext.getResources().newTheme();
            ((Resources.Theme)localObject2).setTo(localTheme);
          }
          ((Resources.Theme)localObject2).applyStyle(localTypedValue.resourceId, true);
        }
        if (localObject2 == null) {
          break label652;
        }
        localObject1 = new d(localContext, 0);
        ((Context)localObject1).getTheme().setTo((Resources.Theme)localObject2);
      }
    }
    for (;;)
    {
      localObject1 = new h((Context)localObject1);
      ((h)localObject1).a(this);
      paramd.e((h)localObject1);
      if (paramd.NK == null) {
        break;
      }
      if ((i != 0) && (this.Ng != null))
      {
        if (this.Nh == null) {
          this.Nh = new a();
        }
        this.Ng.a(paramd.NK, this.Nh);
      }
      paramd.NK.fj();
      if (!localCallback.onCreatePanelMenu(paramd.NG, paramd.NK))
      {
        paramd.e(null);
        if ((i == 0) || (this.Ng == null)) {
          break;
        }
        this.Ng.a(null, this.Nh);
        return false;
        i = 0;
        break label89;
        label471:
        localTheme.resolveAttribute(a.a.actionBarWidgetTheme, localTypedValue, true);
        localObject1 = null;
        break label256;
      }
      paramd.NS = false;
      label494:
      paramd.NK.fj();
      if (paramd.NT != null)
      {
        paramd.NK.c(paramd.NT);
        paramd.NT = null;
      }
      if (!localCallback.onPreparePanel(0, paramd.NJ, paramd.NK))
      {
        if ((i != 0) && (this.Ng != null)) {
          this.Ng.a(null, this.Nh);
        }
        paramd.NK.fk();
        return false;
      }
      if (paramKeyEvent != null)
      {
        i = paramKeyEvent.getDeviceId();
        if (KeyCharacterMap.load(i).getKeyboardType() == 1) {
          break label646;
        }
      }
      label624:
      label646:
      for (boolean bool = true;; bool = false)
      {
        paramd.NQ = bool;
        paramd.NK.setQwertyMode(paramd.NQ);
        paramd.NK.fk();
        paramd.NN = true;
        paramd.NO = false;
        this.Nv = paramd;
        return true;
        i = -1;
        break;
      }
      label652:
      localObject1 = localContext;
    }
  }
  
  private void eC()
  {
    Object localObject1;
    if (!this.No)
    {
      localObject1 = this.mContext.obtainStyledAttributes(a.j.AppCompatTheme);
      if (!((TypedArray)localObject1).hasValue(a.j.AppCompatTheme_windowActionBar))
      {
        ((TypedArray)localObject1).recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
      }
      if (((TypedArray)localObject1).getBoolean(a.j.AppCompatTheme_windowNoTitle, false))
      {
        requestWindowFeature(1);
        if (((TypedArray)localObject1).getBoolean(a.j.AppCompatTheme_windowActionBarOverlay, false)) {
          requestWindowFeature(109);
        }
        if (((TypedArray)localObject1).getBoolean(a.j.AppCompatTheme_windowActionModeOverlay, false)) {
          requestWindowFeature(10);
        }
        this.MM = ((TypedArray)localObject1).getBoolean(a.j.AppCompatTheme_android_windowIsFloating, false);
        ((TypedArray)localObject1).recycle();
        this.Le.getDecorView();
        localObject1 = LayoutInflater.from(this.mContext);
        if (this.MN) {
          break label459;
        }
        if (!this.MM) {
          break label288;
        }
        localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(a.g.abc_dialog_title_material, null);
        this.MK = false;
        this.MJ = false;
      }
    }
    for (;;)
    {
      if (localObject1 == null)
      {
        throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.MJ + ", windowActionBarOverlay: " + this.MK + ", android:windowIsFloating: " + this.MM + ", windowActionModeOverlay: " + this.ML + ", windowNoTitle: " + this.MN + " }");
        if (!((TypedArray)localObject1).getBoolean(a.j.AppCompatTheme_windowActionBar, false)) {
          break;
        }
        requestWindowFeature(108);
        break;
        label288:
        if (!this.MJ) {
          break label1002;
        }
        localObject1 = new TypedValue();
        this.mContext.getTheme().resolveAttribute(a.a.actionBarTheme, (TypedValue)localObject1, true);
        if (((TypedValue)localObject1).resourceId != 0) {}
        for (localObject1 = new d(this.mContext, ((TypedValue)localObject1).resourceId);; localObject1 = this.mContext)
        {
          localObject1 = (ViewGroup)LayoutInflater.from((Context)localObject1).inflate(a.g.abc_screen_toolbar, null);
          this.Ng = ((aj)((ViewGroup)localObject1).findViewById(a.f.decor_content_parent));
          this.Ng.setWindowCallback(this.Le.getCallback());
          if (this.MK) {
            this.Ng.aX(109);
          }
          if (this.Nr) {
            this.Ng.aX(2);
          }
          if (this.Ns) {
            this.Ng.aX(5);
          }
          break;
        }
        label459:
        if (this.ML) {}
        for (localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(a.g.abc_screen_simple_overlay_action_mode, null);; localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(a.g.abc_screen_simple, null))
        {
          if (Build.VERSION.SDK_INT < 21) {
            break label521;
          }
          android.support.v4.view.r.a((View)localObject1, new android.support.v4.view.n()
          {
            public final android.support.v4.view.z a(View paramAnonymousView, android.support.v4.view.z paramAnonymousz)
            {
              int i = paramAnonymousz.getSystemWindowInsetTop();
              int j = k.this.aU(i);
              android.support.v4.view.z localz = paramAnonymousz;
              if (i != j) {
                localz = paramAnonymousz.e(paramAnonymousz.getSystemWindowInsetLeft(), j, paramAnonymousz.getSystemWindowInsetRight(), paramAnonymousz.getSystemWindowInsetBottom());
              }
              return android.support.v4.view.r.a(paramAnonymousView, localz);
            }
          });
          break;
        }
        label521:
        ((ap)localObject1).setOnFitSystemWindowsListener(new ap.a()
        {
          public final void d(Rect paramAnonymousRect)
          {
            paramAnonymousRect.top = k.this.aU(paramAnonymousRect.top);
          }
        });
        continue;
      }
      if (this.Ng == null) {
        this.LC = ((TextView)((ViewGroup)localObject1).findViewById(a.f.title));
      }
      bw.bk((View)localObject1);
      Object localObject2 = (ContentFrameLayout)((ViewGroup)localObject1).findViewById(a.f.action_bar_activity_content);
      ViewGroup localViewGroup = (ViewGroup)this.Le.findViewById(16908290);
      if (localViewGroup != null)
      {
        while (localViewGroup.getChildCount() > 0)
        {
          View localView = localViewGroup.getChildAt(0);
          localViewGroup.removeViewAt(0);
          ((ContentFrameLayout)localObject2).addView(localView);
        }
        localViewGroup.setId(-1);
        ((ContentFrameLayout)localObject2).setId(16908290);
        if ((localViewGroup instanceof FrameLayout)) {
          ((FrameLayout)localViewGroup).setForeground(null);
        }
      }
      this.Le.setContentView((View)localObject1);
      ((ContentFrameLayout)localObject2).setAttachListener(new ContentFrameLayout.a()
      {
        public final void onDetachedFromWindow()
        {
          k.this.eH();
        }
      });
      this.Np = ((ViewGroup)localObject1);
      if ((this.ME instanceof Activity)) {}
      for (localObject1 = ((Activity)this.ME).getTitle();; localObject1 = this.Ch)
      {
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          l((CharSequence)localObject1);
        }
        localObject1 = (ContentFrameLayout)this.Np.findViewById(16908290);
        localObject2 = this.Le.getDecorView();
        int i = ((View)localObject2).getPaddingLeft();
        int j = ((View)localObject2).getPaddingTop();
        int k = ((View)localObject2).getPaddingRight();
        int m = ((View)localObject2).getPaddingBottom();
        ((ContentFrameLayout)localObject1).XK.set(i, j, k, m);
        if (android.support.v4.view.r.ae((View)localObject1)) {
          ((ContentFrameLayout)localObject1).requestLayout();
        }
        localObject2 = this.mContext.obtainStyledAttributes(a.j.AppCompatTheme);
        ((TypedArray)localObject2).getValue(a.j.AppCompatTheme_windowMinWidthMajor, ((ContentFrameLayout)localObject1).getMinWidthMajor());
        ((TypedArray)localObject2).getValue(a.j.AppCompatTheme_windowMinWidthMinor, ((ContentFrameLayout)localObject1).getMinWidthMinor());
        if (((TypedArray)localObject2).hasValue(a.j.AppCompatTheme_windowFixedWidthMajor)) {
          ((TypedArray)localObject2).getValue(a.j.AppCompatTheme_windowFixedWidthMajor, ((ContentFrameLayout)localObject1).getFixedWidthMajor());
        }
        if (((TypedArray)localObject2).hasValue(a.j.AppCompatTheme_windowFixedWidthMinor)) {
          ((TypedArray)localObject2).getValue(a.j.AppCompatTheme_windowFixedWidthMinor, ((ContentFrameLayout)localObject1).getFixedWidthMinor());
        }
        if (((TypedArray)localObject2).hasValue(a.j.AppCompatTheme_windowFixedHeightMajor)) {
          ((TypedArray)localObject2).getValue(a.j.AppCompatTheme_windowFixedHeightMajor, ((ContentFrameLayout)localObject1).getFixedHeightMajor());
        }
        if (((TypedArray)localObject2).hasValue(a.j.AppCompatTheme_windowFixedHeightMinor)) {
          ((TypedArray)localObject2).getValue(a.j.AppCompatTheme_windowFixedHeightMinor, ((ContentFrameLayout)localObject1).getFixedHeightMinor());
        }
        ((TypedArray)localObject2).recycle();
        ((ContentFrameLayout)localObject1).requestLayout();
        this.No = true;
        localObject1 = aS(0);
        if ((!this.MP) && ((localObject1 == null) || (((d)localObject1).NK == null))) {
          invalidatePanelMenu(108);
        }
        return;
      }
      label1002:
      localObject1 = null;
    }
  }
  
  private void eG()
  {
    if (this.No) {
      throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }
  }
  
  private void invalidatePanelMenu(int paramInt)
  {
    this.Ny |= 1 << paramInt;
    if (!this.Nx)
    {
      android.support.v4.view.r.b(this.Le.getDecorView(), this.Nz);
      this.Nx = true;
    }
  }
  
  final d a(Menu paramMenu)
  {
    d[] arrayOfd = this.Nu;
    int i;
    int j;
    if (arrayOfd != null)
    {
      i = arrayOfd.length;
      j = 0;
    }
    for (;;)
    {
      if (j >= i) {
        break label57;
      }
      d locald = arrayOfd[j];
      if ((locald != null) && (locald.NK == paramMenu))
      {
        return locald;
        i = 0;
        break;
      }
      j += 1;
    }
    label57:
    return null;
  }
  
  View a(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if ((this.ME instanceof LayoutInflater.Factory))
    {
      paramString = ((LayoutInflater.Factory)this.ME).onCreateView(paramString, paramContext, paramAttributeSet);
      if (paramString != null) {
        return paramString;
      }
    }
    return null;
  }
  
  final void a(int paramInt, d paramd, Menu paramMenu)
  {
    Object localObject1 = paramd;
    Object localObject2 = paramMenu;
    if (paramMenu == null)
    {
      d locald = paramd;
      if (paramd == null)
      {
        locald = paramd;
        if (paramInt >= 0)
        {
          locald = paramd;
          if (paramInt < this.Nu.length) {
            locald = this.Nu[paramInt];
          }
        }
      }
      localObject1 = locald;
      localObject2 = paramMenu;
      if (locald != null)
      {
        localObject2 = locald.NK;
        localObject1 = locald;
      }
    }
    if ((localObject1 != null) && (!((d)localObject1).NP)) {}
    while (this.MP) {
      return;
    }
    this.ME.onPanelClosed(paramInt, (Menu)localObject2);
  }
  
  final void a(d paramd, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramd.NG == 0) && (this.Ng != null) && (this.Ng.isOverflowMenuShowing())) {
      c(paramd.NK);
    }
    do
    {
      return;
      WindowManager localWindowManager = (WindowManager)this.mContext.getSystemService("window");
      if ((localWindowManager != null) && (paramd.NP) && (paramd.NH != null))
      {
        localWindowManager.removeView(paramd.NH);
        if (paramBoolean) {
          a(paramd.NG, paramd, null);
        }
      }
      paramd.NN = false;
      paramd.NO = false;
      paramd.NP = false;
      paramd.NI = null;
      paramd.NR = true;
    } while (this.Nv != paramd);
    this.Nv = null;
  }
  
  public final boolean a(h paramh, MenuItem paramMenuItem)
  {
    Window.Callback localCallback = this.Le.getCallback();
    if ((localCallback != null) && (!this.MP))
    {
      paramh = a(paramh.fq());
      if (paramh != null) {
        return localCallback.onMenuItemSelected(paramh.NG, paramMenuItem);
      }
    }
    return false;
  }
  
  final void aP(int paramInt)
  {
    Object localObject;
    if (paramInt == 108)
    {
      localObject = getSupportActionBar();
      if (localObject != null) {
        ((a)localObject).B(false);
      }
    }
    do
    {
      do
      {
        return;
      } while (paramInt != 0);
      localObject = aS(paramInt);
    } while (!((d)localObject).NP);
    a((d)localObject, false);
  }
  
  final boolean aQ(int paramInt)
  {
    if (paramInt == 108)
    {
      a locala = getSupportActionBar();
      if (locala != null) {
        locala.B(true);
      }
      return true;
    }
    return false;
  }
  
  protected final d aS(int paramInt)
  {
    Object localObject2 = this.Nu;
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (localObject2.length > paramInt) {}
    }
    else
    {
      localObject1 = new d[paramInt + 1];
      if (localObject2 != null) {
        System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
      }
      this.Nu = ((d[])localObject1);
    }
    localObject2 = localObject1[paramInt];
    if (localObject2 == null)
    {
      localObject2 = new d(paramInt);
      localObject1[paramInt] = localObject2;
      return (d)localObject2;
    }
    return (d)localObject2;
  }
  
  final void aT(int paramInt)
  {
    d locald = aS(paramInt);
    if (locald.NK != null)
    {
      Bundle localBundle = new Bundle();
      locald.NK.b(localBundle);
      if (localBundle.size() > 0) {
        locald.NT = localBundle;
      }
      locald.NK.fj();
      locald.NK.clear();
    }
    locald.NS = true;
    locald.NR = true;
    if (((paramInt == 108) || (paramInt == 0)) && (this.Ng != null))
    {
      locald = aS(0);
      if (locald != null)
      {
        locald.NN = false;
        b(locald, null);
      }
    }
  }
  
  final int aU(int paramInt)
  {
    int j = 1;
    int m = 0;
    Object localObject1;
    Object localObject2;
    int i;
    if ((this.Nk != null) && ((this.Nk.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)))
    {
      localObject1 = (ViewGroup.MarginLayoutParams)this.Nk.getLayoutParams();
      if (this.Nk.isShown())
      {
        if (this.ng == null)
        {
          this.ng = new Rect();
          this.nh = new Rect();
        }
        localObject2 = this.ng;
        Rect localRect = this.nh;
        ((Rect)localObject2).set(0, paramInt, 0, 0);
        bw.a(this.Np, (Rect)localObject2, localRect);
        if (localRect.top == 0)
        {
          i = paramInt;
          if (((ViewGroup.MarginLayoutParams)localObject1).topMargin == i) {
            break label351;
          }
          ((ViewGroup.MarginLayoutParams)localObject1).topMargin = paramInt;
          if (this.Nq != null) {
            break label274;
          }
          this.Nq = new View(this.mContext);
          this.Nq.setBackgroundColor(this.mContext.getResources().getColor(a.c.abc_input_method_navigation_guard));
          this.Np.addView(this.Nq, -1, new ViewGroup.LayoutParams(-1, paramInt));
          i = 1;
          label198:
          if (this.Nq == null) {
            break label312;
          }
          label205:
          int k = paramInt;
          if (!this.ML)
          {
            k = paramInt;
            if (j != 0) {
              k = 0;
            }
          }
          paramInt = k;
          label228:
          if (i != 0) {
            this.Nk.setLayoutParams((ViewGroup.LayoutParams)localObject1);
          }
        }
      }
    }
    for (;;)
    {
      if (this.Nq != null)
      {
        localObject1 = this.Nq;
        if (j == 0) {
          break label338;
        }
      }
      label274:
      label312:
      label338:
      for (i = m;; i = 8)
      {
        ((View)localObject1).setVisibility(i);
        return paramInt;
        i = 0;
        break;
        localObject2 = this.Nq.getLayoutParams();
        if (((ViewGroup.LayoutParams)localObject2).height != paramInt)
        {
          ((ViewGroup.LayoutParams)localObject2).height = paramInt;
          this.Nq.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        }
        i = 1;
        break label198;
        j = 0;
        break label205;
        if (((ViewGroup.MarginLayoutParams)localObject1).topMargin == 0) {
          break label344;
        }
        ((ViewGroup.MarginLayoutParams)localObject1).topMargin = 0;
        i = 1;
        j = 0;
        break label228;
      }
      label344:
      i = 0;
      j = 0;
      break label228;
      label351:
      i = 0;
      break label198;
      j = 0;
    }
  }
  
  public final void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    eC();
    ((ViewGroup)this.Np.findViewById(16908290)).addView(paramView, paramLayoutParams);
    this.ME.onContentChanged();
  }
  
  final android.support.v7.view.b b(b.a parama)
  {
    eE();
    if (this.Nj != null) {
      this.Nj.finish();
    }
    if ((this.MG != null) && (!this.MP)) {}
    for (;;)
    {
      try
      {
        android.support.v7.view.b localb = this.MG.onWindowStartingSupportActionMode(parama);
        if (localb == null) {
          break label95;
        }
        this.Nj = localb;
        if ((this.Nj != null) && (this.MG != null)) {
          this.MG.onSupportActionModeStarted(this.Nj);
        }
        return this.Nj;
      }
      catch (AbstractMethodError localAbstractMethodError) {}
      Object localObject1 = null;
      continue;
      label95:
      Object localObject2;
      label201:
      label319:
      boolean bool;
      if (this.Nk == null)
      {
        if (!this.MM) {
          break label492;
        }
        localObject2 = new TypedValue();
        localObject1 = this.mContext.getTheme();
        ((Resources.Theme)localObject1).resolveAttribute(a.a.actionBarTheme, (TypedValue)localObject2, true);
        if (((TypedValue)localObject2).resourceId != 0)
        {
          Resources.Theme localTheme = this.mContext.getResources().newTheme();
          localTheme.setTo((Resources.Theme)localObject1);
          localTheme.applyStyle(((TypedValue)localObject2).resourceId, true);
          localObject1 = new d(this.mContext, 0);
          ((Context)localObject1).getTheme().setTo(localTheme);
          this.Nk = new ActionBarContextView((Context)localObject1);
          this.Nl = new PopupWindow((Context)localObject1, null, a.a.actionModePopupWindowStyle);
          l.a(this.Nl, 2);
          this.Nl.setContentView(this.Nk);
          this.Nl.setWidth(-1);
          ((Context)localObject1).getTheme().resolveAttribute(a.a.actionBarSize, (TypedValue)localObject2, true);
          int i = TypedValue.complexToDimensionPixelSize(((TypedValue)localObject2).data, ((Context)localObject1).getResources().getDisplayMetrics());
          this.Nk.setContentHeight(i);
          this.Nl.setHeight(-2);
          this.Nm = new Runnable()
          {
            public final void run()
            {
              k.this.Nl.showAtLocation(k.this.Nk, 55, 0, 0);
              k.this.eE();
              if (k.this.eD())
              {
                k.this.Nk.setAlpha(0.0F);
                k.this.Nn = android.support.v4.view.r.S(k.this.Nk).k(1.0F);
                k.this.Nn.a(new android.support.v4.view.x()
                {
                  public final void ao(View paramAnonymous2View)
                  {
                    k.this.Nk.setVisibility(0);
                  }
                  
                  public final void ap(View paramAnonymous2View)
                  {
                    k.this.Nk.setAlpha(1.0F);
                    k.this.Nn.a(null);
                    k.this.Nn = null;
                  }
                });
                return;
              }
              k.this.Nk.setAlpha(1.0F);
              k.this.Nk.setVisibility(0);
            }
          };
        }
      }
      else
      {
        if (this.Nk == null) {
          break label537;
        }
        eE();
        this.Nk.fC();
        localObject1 = this.Nk.getContext();
        localObject2 = this.Nk;
        if (this.Nl != null) {
          break label539;
        }
        bool = true;
        label361:
        localObject1 = new android.support.v7.view.e((Context)localObject1, (ActionBarContextView)localObject2, parama, bool);
        if (!parama.a((android.support.v7.view.b)localObject1, ((android.support.v7.view.b)localObject1).getMenu())) {
          break label598;
        }
        ((android.support.v7.view.b)localObject1).invalidate();
        this.Nk.c((android.support.v7.view.b)localObject1);
        this.Nj = ((android.support.v7.view.b)localObject1);
        if (!eD()) {
          break label544;
        }
        this.Nk.setAlpha(0.0F);
        this.Nn = android.support.v4.view.r.S(this.Nk).k(1.0F);
        this.Nn.a(new android.support.v4.view.x()
        {
          public final void ao(View paramAnonymousView)
          {
            k.this.Nk.setVisibility(0);
            k.this.Nk.sendAccessibilityEvent(32);
            if ((k.this.Nk.getParent() instanceof View)) {
              android.support.v4.view.r.W((View)k.this.Nk.getParent());
            }
          }
          
          public final void ap(View paramAnonymousView)
          {
            k.this.Nk.setAlpha(1.0F);
            k.this.Nn.a(null);
            k.this.Nn = null;
          }
        });
      }
      for (;;)
      {
        if (this.Nl == null) {
          break label596;
        }
        this.Le.getDecorView().post(this.Nm);
        break;
        localObject1 = this.mContext;
        break label201;
        label492:
        localObject1 = (ViewStubCompat)this.Np.findViewById(a.f.action_mode_bar_stub);
        if (localObject1 == null) {
          break label319;
        }
        ((ViewStubCompat)localObject1).setLayoutInflater(LayoutInflater.from(ez()));
        this.Nk = ((ActionBarContextView)((ViewStubCompat)localObject1).inflate());
        break label319;
        label537:
        break;
        label539:
        bool = false;
        break label361;
        label544:
        this.Nk.setAlpha(1.0F);
        this.Nk.setVisibility(0);
        this.Nk.sendAccessibilityEvent(32);
        if ((this.Nk.getParent() instanceof View)) {
          android.support.v4.view.r.W((View)this.Nk.getParent());
        }
      }
      label596:
      continue;
      label598:
      this.Nj = null;
    }
  }
  
  public final void b(h paramh)
  {
    if ((this.Ng != null) && (this.Ng.canShowOverflowMenu()) && ((!ViewConfiguration.get(this.mContext).hasPermanentMenuKey()) || (this.Ng.isOverflowMenuShowPending())))
    {
      paramh = this.Le.getCallback();
      if (!this.Ng.isOverflowMenuShowing()) {
        if ((paramh != null) && (!this.MP))
        {
          if ((this.Nx) && ((this.Ny & 0x1) != 0))
          {
            this.Le.getDecorView().removeCallbacks(this.Nz);
            this.Nz.run();
          }
          d locald = aS(0);
          if ((locald.NK != null) && (!locald.NS) && (paramh.onPreparePanel(0, locald.NJ, locald.NK)))
          {
            paramh.onMenuOpened(108, locald.NK);
            this.Ng.showOverflowMenu();
          }
        }
      }
      do
      {
        return;
        this.Ng.hideOverflowMenu();
      } while (this.MP);
      paramh.onPanelClosed(108, aS(0).NK);
      return;
    }
    paramh = aS(0);
    paramh.NR = true;
    a(paramh, false);
    a(paramh, null);
  }
  
  final void c(h paramh)
  {
    if (this.Nt) {
      return;
    }
    this.Nt = true;
    this.Ng.eH();
    Window.Callback localCallback = this.Le.getCallback();
    if ((localCallback != null) && (!this.MP)) {
      localCallback.onPanelClosed(108, paramh);
    }
    this.Nt = false;
  }
  
  final boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 82) && (this.ME.dispatchKeyEvent(paramKeyEvent))) {}
    int i;
    label164:
    do
    {
      int j;
      do
      {
        do
        {
          return true;
          j = paramKeyEvent.getKeyCode();
          if (paramKeyEvent.getAction() == 0) {}
          for (i = 1; i != 0; i = 0) {
            switch (j)
            {
            default: 
              return false;
            }
          }
        } while (paramKeyEvent.getRepeatCount() != 0);
        locald = aS(0);
      } while (locald.NP);
      b(locald, paramKeyEvent);
      return true;
      if ((paramKeyEvent.getFlags() & 0x80) != 0) {}
      for (bool = true;; bool = false)
      {
        this.Nw = bool;
        break;
      }
      switch (j)
      {
      default: 
        return false;
      }
    } while (this.Nj != null);
    d locald = aS(0);
    if ((this.Ng != null) && (this.Ng.canShowOverflowMenu()) && (!ViewConfiguration.get(this.mContext).hasPermanentMenuKey())) {
      if (!this.Ng.isOverflowMenuShowing())
      {
        if ((this.MP) || (!b(locald, paramKeyEvent))) {
          break label478;
        }
        bool = this.Ng.showOverflowMenu();
      }
    }
    label252:
    while (bool)
    {
      paramKeyEvent = (AudioManager)this.mContext.getSystemService("audio");
      if (paramKeyEvent == null) {
        break label378;
      }
      paramKeyEvent.playSoundEffect(0);
      return true;
      bool = this.Ng.hideOverflowMenu();
      continue;
      if ((!locald.NP) && (!locald.NO)) {
        break label329;
      }
      bool = locald.NP;
      a(locald, true);
    }
    label329:
    if (locald.NN)
    {
      if (!locald.NS) {
        break label484;
      }
      locald.NN = false;
    }
    label378:
    label478:
    label484:
    for (boolean bool = b(locald, paramKeyEvent);; bool = true)
    {
      if (bool)
      {
        a(locald, paramKeyEvent);
        bool = true;
        break label252;
        Log.w("AppCompatDelegate", "Couldn't get audio manager");
        return true;
        bool = this.Nw;
        this.Nw = false;
        paramKeyEvent = aS(0);
        if ((paramKeyEvent != null) && (paramKeyEvent.NP))
        {
          if (bool) {
            break;
          }
          a(paramKeyEvent, true);
          return true;
        }
        if (this.Nj != null)
        {
          this.Nj.finish();
          i = 1;
        }
        while (i != 0)
        {
          return true;
          paramKeyEvent = getSupportActionBar();
          if ((paramKeyEvent != null) && (paramKeyEvent.collapseActionView())) {
            i = 1;
          } else {
            i = 0;
          }
        }
        break label164;
      }
      bool = false;
      break label252;
    }
  }
  
  final boolean eD()
  {
    return (this.No) && (this.Np != null) && (android.support.v4.view.r.ae(this.Np));
  }
  
  final void eE()
  {
    if (this.Nn != null) {
      this.Nn.cancel();
    }
  }
  
  final void eF()
  {
    a(aS(0), true);
  }
  
  final void eH()
  {
    if (this.Ng != null) {
      this.Ng.eH();
    }
    if (this.Nl != null)
    {
      this.Le.getDecorView().removeCallbacks(this.Nm);
      if (!this.Nl.isShowing()) {}
    }
    try
    {
      this.Nl.dismiss();
      this.Nl = null;
      eE();
      d locald = aS(0);
      if ((locald != null) && (locald.NK != null)) {
        locald.NK.close();
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
  }
  
  public final void eu()
  {
    eC();
  }
  
  public final void ev()
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.mContext);
    if (localLayoutInflater.getFactory() == null) {
      android.support.v4.view.f.b(localLayoutInflater, this);
    }
    while ((localLayoutInflater.getFactory2() instanceof k)) {
      return;
    }
    Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
  }
  
  public final void ey()
  {
    eC();
    if ((!this.MJ) || (this.MH != null)) {}
    for (;;)
    {
      return;
      if ((this.ME instanceof Activity)) {
        this.MH = new q((Activity)this.ME, this.MK);
      }
      while (this.MH != null)
      {
        this.MH.z(this.NA);
        return;
        if ((this.ME instanceof Dialog)) {
          this.MH = new q((Dialog)this.ME);
        }
      }
    }
  }
  
  public final <T extends View> T findViewById(int paramInt)
  {
    eC();
    return this.Le.findViewById(paramInt);
  }
  
  public final void invalidateOptionsMenu()
  {
    a locala = getSupportActionBar();
    if ((locala != null) && (locala.et())) {
      return;
    }
    invalidatePanelMenu(0);
  }
  
  final void l(CharSequence paramCharSequence)
  {
    if (this.Ng != null) {
      this.Ng.setWindowTitle(paramCharSequence);
    }
    do
    {
      return;
      if (this.MH != null)
      {
        this.MH.setWindowTitle(paramCharSequence);
        return;
      }
    } while (this.LC == null);
    this.LC.setText(paramCharSequence);
  }
  
  public final void onConfigurationChanged(Configuration arg1)
  {
    if ((this.MJ) && (this.No))
    {
      localObject1 = getSupportActionBar();
      if (localObject1 != null) {
        ((a)localObject1).onConfigurationChanged(???);
      }
    }
    Object localObject1 = m.gh();
    Context localContext = this.mContext;
    synchronized (((m)localObject1).Wg)
    {
      localObject1 = (android.support.v4.g.f)((m)localObject1).Wh.get(localContext);
      if (localObject1 != null) {
        ((android.support.v4.g.f)localObject1).clear();
      }
      ew();
      return;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    if (((this.ME instanceof Activity)) && (y.g((Activity)this.ME) != null))
    {
      paramBundle = this.MH;
      if (paramBundle == null) {
        this.NA = true;
      }
    }
    else
    {
      return;
    }
    paramBundle.z(true);
  }
  
  public final View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = a(paramString, paramContext, paramAttributeSet);
    if (localView != null) {
      return localView;
    }
    return a(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return onCreateView(null, paramString, paramContext, paramAttributeSet);
  }
  
  public void onDestroy()
  {
    if (this.Nx) {
      this.Le.getDecorView().removeCallbacks(this.Nz);
    }
    super.onDestroy();
    if (this.MH != null) {
      this.MH.onDestroy();
    }
  }
  
  final boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject = getSupportActionBar();
    if ((localObject != null) && (((a)localObject).onKeyShortcut(paramInt, paramKeyEvent))) {}
    boolean bool;
    do
    {
      do
      {
        return true;
        if ((this.Nv == null) || (!a(this.Nv, paramKeyEvent.getKeyCode(), paramKeyEvent))) {
          break;
        }
      } while (this.Nv == null);
      this.Nv.NO = true;
      return true;
      if (this.Nv != null) {
        break;
      }
      localObject = aS(0);
      b((d)localObject, paramKeyEvent);
      bool = a((d)localObject, paramKeyEvent.getKeyCode(), paramKeyEvent);
      ((d)localObject).NN = false;
    } while (bool);
    return false;
  }
  
  public final void onPostResume()
  {
    a locala = getSupportActionBar();
    if (locala != null) {
      locala.A(true);
    }
  }
  
  public void onStop()
  {
    a locala = getSupportActionBar();
    if (locala != null) {
      locala.A(false);
    }
  }
  
  public final boolean requestWindowFeature(int paramInt)
  {
    int i;
    if (paramInt == 8)
    {
      Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
      i = 108;
    }
    while ((this.MN) && (i == 108))
    {
      return false;
      i = paramInt;
      if (paramInt == 9)
      {
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        i = 109;
      }
    }
    if ((this.MJ) && (i == 1)) {
      this.MJ = false;
    }
    switch (i)
    {
    default: 
      return this.Le.requestFeature(i);
    case 108: 
      eG();
      this.MJ = true;
      return true;
    case 109: 
      eG();
      this.MK = true;
      return true;
    case 10: 
      eG();
      this.ML = true;
      return true;
    case 2: 
      eG();
      this.Nr = true;
      return true;
    case 5: 
      eG();
      this.Ns = true;
      return true;
    }
    eG();
    this.MN = true;
    return true;
  }
  
  public final void setContentView(int paramInt)
  {
    eC();
    ViewGroup localViewGroup = (ViewGroup)this.Np.findViewById(16908290);
    localViewGroup.removeAllViews();
    LayoutInflater.from(this.mContext).inflate(paramInt, localViewGroup);
    this.ME.onContentChanged();
  }
  
  public final void setContentView(View paramView)
  {
    eC();
    ViewGroup localViewGroup = (ViewGroup)this.Np.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
    this.ME.onContentChanged();
  }
  
  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    eC();
    ViewGroup localViewGroup = (ViewGroup)this.Np.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
    this.ME.onContentChanged();
  }
  
  public final void setSupportActionBar(Toolbar paramToolbar)
  {
    if (!(this.ME instanceof Activity)) {
      return;
    }
    a locala = getSupportActionBar();
    if ((locala instanceof q)) {
      throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
    }
    this.MI = null;
    if (locala != null) {
      locala.onDestroy();
    }
    if (paramToolbar != null)
    {
      paramToolbar = new n(paramToolbar, ((Activity)this.ME).getTitle(), this.MF);
      this.MH = paramToolbar;
      this.Le.setCallback(paramToolbar.On);
    }
    for (;;)
    {
      invalidateOptionsMenu();
      return;
      this.MH = null;
      this.Le.setCallback(this.MF);
    }
  }
  
  public final android.support.v7.view.b startSupportActionMode(b.a parama)
  {
    if (parama == null) {
      throw new IllegalArgumentException("ActionMode callback can not be null.");
    }
    if (this.Nj != null) {
      this.Nj.finish();
    }
    parama = new b(parama);
    a locala = getSupportActionBar();
    if (locala != null)
    {
      this.Nj = locala.a(parama);
      if ((this.Nj != null) && (this.MG != null)) {
        this.MG.onSupportActionModeStarted(this.Nj);
      }
    }
    if (this.Nj == null) {
      this.Nj = b(parama);
    }
    return this.Nj;
  }
  
  private final class a
    implements o.a
  {
    a() {}
    
    public final void a(h paramh, boolean paramBoolean)
    {
      k.this.c(paramh);
    }
    
    public final boolean d(h paramh)
    {
      Window.Callback localCallback = k.this.Le.getCallback();
      if (localCallback != null) {
        localCallback.onMenuOpened(108, paramh);
      }
      return true;
    }
  }
  
  final class b
    implements b.a
  {
    private b.a NE;
    
    public b(b.a parama)
    {
      this.NE = parama;
    }
    
    public final void a(android.support.v7.view.b paramb)
    {
      this.NE.a(paramb);
      if (k.this.Nl != null) {
        k.this.Le.getDecorView().removeCallbacks(k.this.Nm);
      }
      if (k.this.Nk != null)
      {
        k.this.eE();
        k.this.Nn = android.support.v4.view.r.S(k.this.Nk).k(0.0F);
        k.this.Nn.a(new android.support.v4.view.x()
        {
          public final void ap(View paramAnonymousView)
          {
            k.this.Nk.setVisibility(8);
            if (k.this.Nl != null) {
              k.this.Nl.dismiss();
            }
            for (;;)
            {
              k.this.Nk.removeAllViews();
              k.this.Nn.a(null);
              k.this.Nn = null;
              return;
              if ((k.this.Nk.getParent() instanceof View)) {
                android.support.v4.view.r.W((View)k.this.Nk.getParent());
              }
            }
          }
        });
      }
      if (k.this.MG != null) {
        k.this.MG.onSupportActionModeFinished(k.this.Nj);
      }
      k.this.Nj = null;
    }
    
    public final boolean a(android.support.v7.view.b paramb, Menu paramMenu)
    {
      return this.NE.a(paramb, paramMenu);
    }
    
    public final boolean a(android.support.v7.view.b paramb, MenuItem paramMenuItem)
    {
      return this.NE.a(paramb, paramMenuItem);
    }
    
    public final boolean b(android.support.v7.view.b paramb, Menu paramMenu)
    {
      return this.NE.b(paramb, paramMenu);
    }
  }
  
  private final class c
    extends ContentFrameLayout
  {
    public c(Context paramContext)
    {
      super();
    }
    
    public final boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      return (k.this.dispatchKeyEvent(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
    }
    
    public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
    {
      if (paramMotionEvent.getAction() == 0)
      {
        int i = (int)paramMotionEvent.getX();
        int j = (int)paramMotionEvent.getY();
        if ((i < -5) || (j < -5) || (i > getWidth() + 5) || (j > getHeight() + 5)) {}
        for (i = 1; i != 0; i = 0)
        {
          k.this.eF();
          return true;
        }
      }
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    
    public final void setBackgroundResource(int paramInt)
    {
      setBackgroundDrawable(android.support.v7.c.a.b.a(getContext(), paramInt));
    }
  }
  
  protected static final class d
  {
    int NG;
    ViewGroup NH;
    View NI;
    View NJ;
    h NK;
    android.support.v7.view.menu.f NL;
    Context NM;
    boolean NN;
    boolean NO;
    boolean NP;
    public boolean NQ;
    boolean NR;
    boolean NS;
    Bundle NT;
    int background;
    int gravity;
    int windowAnimations;
    int x;
    int y;
    
    d(int paramInt)
    {
      this.NG = paramInt;
      this.NR = false;
    }
    
    final void e(h paramh)
    {
      if (paramh == this.NK) {}
      do
      {
        return;
        if (this.NK != null) {
          this.NK.b(this.NL);
        }
        this.NK = paramh;
      } while ((paramh == null) || (this.NL == null));
      paramh.a(this.NL);
    }
  }
  
  private final class e
    implements o.a
  {
    e() {}
    
    public final void a(h paramh, boolean paramBoolean)
    {
      h localh = paramh.fq();
      if (localh != paramh) {}
      for (int i = 1;; i = 0)
      {
        k localk = k.this;
        if (i != 0) {
          paramh = localh;
        }
        paramh = localk.a(paramh);
        if (paramh != null)
        {
          if (i == 0) {
            break;
          }
          k.this.a(paramh.NG, paramh, localh);
          k.this.a(paramh, true);
        }
        return;
      }
      k.this.a(paramh, paramBoolean);
    }
    
    public final boolean d(h paramh)
    {
      if ((paramh == null) && (k.this.MJ))
      {
        Window.Callback localCallback = k.this.Le.getCallback();
        if ((localCallback != null) && (!k.this.MP)) {
          localCallback.onMenuOpened(108, paramh);
        }
      }
      return true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */