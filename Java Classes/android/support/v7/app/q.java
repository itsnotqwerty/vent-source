package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.support.v4.view.r;
import android.support.v4.view.v;
import android.support.v4.view.w;
import android.support.v4.view.x;
import android.support.v4.view.y;
import android.support.v7.a.a.a;
import android.support.v7.a.a.f;
import android.support.v7.a.a.j;
import android.support.v7.view.b;
import android.support.v7.view.b.a;
import android.support.v7.view.g;
import android.support.v7.view.menu.h.a;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.ActionBarOverlayLayout.a;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.ak;
import android.support.v7.widget.bh;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class q
  extends a
  implements ActionBarOverlayLayout.a
{
  private static final Interpolator OG;
  private static final Interpolator OH;
  private Context OI;
  ActionBarOverlayLayout OJ;
  ActionBarContainer OK;
  ActionBarContextView OL;
  View OM;
  bh ON;
  private int OO = -1;
  private boolean OP;
  a OQ;
  b OS;
  b.a OT;
  private boolean OU;
  private int OV = 0;
  boolean OW = true;
  boolean OX;
  boolean OY;
  private boolean OZ;
  ak Ol;
  private boolean Op;
  private ArrayList<Object> Oq = new ArrayList();
  private boolean Pa = true;
  android.support.v7.view.h Pb;
  private boolean Pc;
  boolean Pd;
  final w Pe = new x()
  {
    public final void ap(View paramAnonymousView)
    {
      if ((q.this.OW) && (q.this.OM != null))
      {
        q.this.OM.setTranslationY(0.0F);
        q.this.OK.setTranslationY(0.0F);
      }
      q.this.OK.setVisibility(8);
      q.this.OK.setTransitioning(false);
      q.this.Pb = null;
      paramAnonymousView = q.this;
      if (paramAnonymousView.OT != null)
      {
        paramAnonymousView.OT.a(paramAnonymousView.OS);
        paramAnonymousView.OS = null;
        paramAnonymousView.OT = null;
      }
      if (q.this.OJ != null) {
        r.W(q.this.OJ);
      }
    }
  };
  final w Pf = new x()
  {
    public final void ap(View paramAnonymousView)
    {
      q.this.Pb = null;
      q.this.OK.requestLayout();
    }
  };
  final y Pg = new y()
  {
    public final void dX()
    {
      ((View)q.this.OK.getParent()).invalidate();
    }
  };
  Context mContext;
  private ArrayList<Object> od = new ArrayList();
  private Dialog wP;
  private Activity xs;
  
  static
  {
    if (!q.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      OG = new AccelerateInterpolator();
      OH = new DecelerateInterpolator();
      return;
    }
  }
  
  public q(Activity paramActivity, boolean paramBoolean)
  {
    this.xs = paramActivity;
    paramActivity = paramActivity.getWindow().getDecorView();
    au(paramActivity);
    if (!paramBoolean) {
      this.OM = paramActivity.findViewById(16908290);
    }
  }
  
  public q(Dialog paramDialog)
  {
    this.wP = paramDialog;
    au(paramDialog.getWindow().getDecorView());
  }
  
  private void C(boolean paramBoolean)
  {
    boolean bool = true;
    this.OU = paramBoolean;
    int i;
    label50:
    label83:
    Object localObject;
    if (!this.OU)
    {
      this.Ol.a(null);
      this.OK.setTabContainer(this.ON);
      if (this.Ol.getNavigationMode() != 2) {
        break label160;
      }
      i = 1;
      if (this.ON != null)
      {
        if (i == 0) {
          break label165;
        }
        this.ON.setVisibility(0);
        if (this.OJ != null) {
          r.W(this.OJ);
        }
      }
      localObject = this.Ol;
      if ((this.OU) || (i == 0)) {
        break label177;
      }
      paramBoolean = true;
      label102:
      ((ak)localObject).setCollapsible(paramBoolean);
      localObject = this.OJ;
      if ((this.OU) || (i == 0)) {
        break label182;
      }
    }
    label160:
    label165:
    label177:
    label182:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      ((ActionBarOverlayLayout)localObject).setHasNonEmbeddedTabs(paramBoolean);
      return;
      this.OK.setTabContainer(null);
      this.Ol.a(this.ON);
      break;
      i = 0;
      break label50;
      this.ON.setVisibility(8);
      break label83;
      paramBoolean = false;
      break label102;
    }
  }
  
  private void E(boolean paramBoolean)
  {
    float f2;
    float f1;
    Object localObject1;
    Object localObject2;
    if (b(this.OX, this.OY, this.OZ)) {
      if (!this.Pa)
      {
        this.Pa = true;
        if (this.Pb != null) {
          this.Pb.cancel();
        }
        this.OK.setVisibility(0);
        if ((this.OV != 0) || ((!this.Pc) && (!paramBoolean))) {
          break label265;
        }
        this.OK.setTranslationY(0.0F);
        f2 = -this.OK.getHeight();
        f1 = f2;
        if (paramBoolean)
        {
          localObject1 = new int[2];
          Object tmp101_99 = localObject1;
          tmp101_99[0] = 0;
          Object tmp105_101 = tmp101_99;
          tmp105_101[1] = 0;
          tmp105_101;
          this.OK.getLocationInWindow((int[])localObject1);
          f1 = f2 - localObject1[1];
        }
        this.OK.setTranslationY(f1);
        localObject1 = new android.support.v7.view.h();
        localObject2 = r.S(this.OK).l(0.0F);
        ((v)localObject2).a(this.Pg);
        ((android.support.v7.view.h)localObject1).a((v)localObject2);
        if ((this.OW) && (this.OM != null))
        {
          this.OM.setTranslationY(f1);
          ((android.support.v7.view.h)localObject1).a(r.S(this.OM).l(0.0F));
        }
        ((android.support.v7.view.h)localObject1).b(OH);
        ((android.support.v7.view.h)localObject1).eS();
        ((android.support.v7.view.h)localObject1).b(this.Pf);
        this.Pb = ((android.support.v7.view.h)localObject1);
        ((android.support.v7.view.h)localObject1).start();
        if (this.OJ != null) {
          r.W(this.OJ);
        }
      }
    }
    label265:
    while (!this.Pa) {
      for (;;)
      {
        return;
        this.OK.setAlpha(1.0F);
        this.OK.setTranslationY(0.0F);
        if ((this.OW) && (this.OM != null)) {
          this.OM.setTranslationY(0.0F);
        }
        this.Pf.ap(null);
      }
    }
    this.Pa = false;
    if (this.Pb != null) {
      this.Pb.cancel();
    }
    if ((this.OV == 0) && ((this.Pc) || (paramBoolean)))
    {
      this.OK.setAlpha(1.0F);
      this.OK.setTransitioning(true);
      localObject1 = new android.support.v7.view.h();
      f2 = -this.OK.getHeight();
      f1 = f2;
      if (paramBoolean)
      {
        localObject2 = new int[2];
        Object tmp408_406 = localObject2;
        tmp408_406[0] = 0;
        Object tmp412_408 = tmp408_406;
        tmp412_408[1] = 0;
        tmp412_408;
        this.OK.getLocationInWindow((int[])localObject2);
        f1 = f2 - localObject2[1];
      }
      localObject2 = r.S(this.OK).l(f1);
      ((v)localObject2).a(this.Pg);
      ((android.support.v7.view.h)localObject1).a((v)localObject2);
      if ((this.OW) && (this.OM != null)) {
        ((android.support.v7.view.h)localObject1).a(r.S(this.OM).l(f1));
      }
      ((android.support.v7.view.h)localObject1).b(OG);
      ((android.support.v7.view.h)localObject1).eS();
      ((android.support.v7.view.h)localObject1).b(this.Pe);
      this.Pb = ((android.support.v7.view.h)localObject1);
      ((android.support.v7.view.h)localObject1).start();
      return;
    }
    this.Pe.ap(null);
  }
  
  private void au(View paramView)
  {
    this.OJ = ((ActionBarOverlayLayout)paramView.findViewById(a.f.decor_content_parent));
    if (this.OJ != null) {
      this.OJ.setActionBarVisibilityCallback(this);
    }
    Object localObject = paramView.findViewById(a.f.action_bar);
    if ((localObject instanceof ak)) {}
    for (localObject = (ak)localObject;; localObject = ((Toolbar)localObject).getWrapper())
    {
      this.Ol = ((ak)localObject);
      this.OL = ((ActionBarContextView)paramView.findViewById(a.f.action_context_bar));
      this.OK = ((ActionBarContainer)paramView.findViewById(a.f.action_bar_container));
      if ((this.Ol != null) && (this.OL != null) && (this.OK != null)) {
        break label209;
      }
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
      if (!(localObject instanceof Toolbar)) {
        break;
      }
    }
    if ("Can't make a decor toolbar out of " + localObject != null) {}
    for (paramView = localObject.getClass().getSimpleName();; paramView = "null") {
      throw new IllegalStateException(paramView);
    }
    label209:
    this.mContext = this.Ol.getContext();
    if ((this.Ol.getDisplayOptions() & 0x4) != 0) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        this.OP = true;
      }
      paramView = android.support.v7.view.a.k(this.mContext);
      i = paramView.mContext.getApplicationInfo().targetSdkVersion;
      C(paramView.eO());
      paramView = this.mContext.obtainStyledAttributes(null, a.j.ActionBar, a.a.actionBarStyle, 0);
      if (!paramView.getBoolean(a.j.ActionBar_hideOnContentScroll, false)) {
        break label340;
      }
      if (this.OJ.TI) {
        break;
      }
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }
    this.Pd = true;
    this.OJ.setHideOnContentScrollEnabled(true);
    label340:
    i = paramView.getDimensionPixelSize(a.j.ActionBar_elevation, 0);
    if (i != 0)
    {
      float f = i;
      r.d(this.OK, f);
    }
    paramView.recycle();
  }
  
  static boolean b(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean3) {}
    while ((!paramBoolean1) && (!paramBoolean2)) {
      return true;
    }
    return false;
  }
  
  private void setDisplayOptions(int paramInt1, int paramInt2)
  {
    int i = this.Ol.getDisplayOptions();
    if ((paramInt2 & 0x4) != 0) {
      this.OP = true;
    }
    this.Ol.setDisplayOptions(i & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public final void A(boolean paramBoolean)
  {
    this.Pc = paramBoolean;
    if ((!paramBoolean) && (this.Pb != null)) {
      this.Pb.cancel();
    }
  }
  
  public final void B(boolean paramBoolean)
  {
    if (paramBoolean == this.Op) {}
    for (;;)
    {
      return;
      this.Op = paramBoolean;
      int j = this.Oq.size();
      int i = 0;
      while (i < j)
      {
        this.Oq.get(i);
        i += 1;
      }
    }
  }
  
  public final void D(boolean paramBoolean)
  {
    this.OW = paramBoolean;
  }
  
  public final void F(boolean paramBoolean)
  {
    Object localObject;
    v localv;
    label78:
    android.support.v7.view.h localh;
    if (paramBoolean)
    {
      if (!this.OZ)
      {
        this.OZ = true;
        if (this.OJ != null) {
          this.OJ.setShowingForActionMode(true);
        }
        E(false);
      }
      if (!r.ae(this.OK)) {
        break label242;
      }
      if (!paramBoolean) {
        break label205;
      }
      localObject = this.Ol.b(4, 100L);
      localv = this.OL.b(0, 200L);
      localh = new android.support.v7.view.h();
      localh.qG.add(localObject);
      localObject = (View)((v)localObject).Hr.get();
      if (localObject == null) {
        break label237;
      }
    }
    label205:
    label237:
    for (long l = ((View)localObject).animate().getDuration();; l = 0L)
    {
      localObject = (View)localv.Hr.get();
      if (localObject != null) {
        ((View)localObject).animate().setStartDelay(l);
      }
      localh.qG.add(localv);
      localh.start();
      return;
      if (!this.OZ) {
        break;
      }
      this.OZ = false;
      if (this.OJ != null) {
        this.OJ.setShowingForActionMode(false);
      }
      E(false);
      break;
      localv = this.Ol.b(0, 200L);
      localObject = this.OL.b(8, 100L);
      break label78;
    }
    label242:
    if (paramBoolean)
    {
      this.Ol.setVisibility(4);
      this.OL.setVisibility(0);
      return;
    }
    this.Ol.setVisibility(0);
    this.OL.setVisibility(8);
  }
  
  public final b a(b.a parama)
  {
    if (this.OQ != null) {
      this.OQ.finish();
    }
    this.OJ.setHideOnContentScrollEnabled(false);
    this.OL.fC();
    parama = new a(this.OL.getContext(), parama);
    if (parama.eM())
    {
      this.OQ = parama;
      parama.invalidate();
      this.OL.c(parama);
      F(true);
      this.OL.sendAccessibilityEvent(32);
      return parama;
    }
    return null;
  }
  
  public final boolean collapseActionView()
  {
    if ((this.Ol != null) && (this.Ol.hasExpandedActionView()))
    {
      this.Ol.collapseActionView();
      return true;
    }
    return false;
  }
  
  public final void eJ()
  {
    if (this.OY)
    {
      this.OY = false;
      E(true);
    }
  }
  
  public final void eK()
  {
    if (!this.OY)
    {
      this.OY = true;
      E(true);
    }
  }
  
  public final void eL()
  {
    if (this.Pb != null)
    {
      this.Pb.cancel();
      this.Pb = null;
    }
  }
  
  public final void ep()
  {
    setDisplayOptions(2, 2);
  }
  
  public final void eq()
  {
    setDisplayOptions(0, 8);
  }
  
  public final int getDisplayOptions()
  {
    return this.Ol.getDisplayOptions();
  }
  
  public final Context getThemedContext()
  {
    int i;
    if (this.OI == null)
    {
      TypedValue localTypedValue = new TypedValue();
      this.mContext.getTheme().resolveAttribute(a.a.actionBarWidgetTheme, localTypedValue, true);
      i = localTypedValue.resourceId;
      if (i == 0) {
        break label61;
      }
    }
    label61:
    for (this.OI = new ContextThemeWrapper(this.mContext, i);; this.OI = this.mContext) {
      return this.OI;
    }
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    C(android.support.v7.view.a.k(this.mContext).eO());
  }
  
  public final boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.OQ == null) {}
    android.support.v7.view.menu.h localh;
    do
    {
      return false;
      localh = this.OQ.Pj;
    } while (localh == null);
    int i;
    if (paramKeyEvent != null)
    {
      i = paramKeyEvent.getDeviceId();
      if (KeyCharacterMap.load(i).getKeyboardType() == 1) {
        break label71;
      }
    }
    label71:
    for (boolean bool = true;; bool = false)
    {
      localh.setQwertyMode(bool);
      return localh.performShortcut(paramInt, paramKeyEvent, 0);
      i = -1;
      break;
    }
  }
  
  public final void onWindowVisibilityChanged(int paramInt)
  {
    this.OV = paramInt;
  }
  
  public final void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 4;; i = 0)
    {
      setDisplayOptions(i, 4);
      return;
    }
  }
  
  public final void setTitle(int paramInt)
  {
    setTitle(this.mContext.getString(paramInt));
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    this.Ol.setTitle(paramCharSequence);
  }
  
  public final void setWindowTitle(CharSequence paramCharSequence)
  {
    this.Ol.setWindowTitle(paramCharSequence);
  }
  
  public final void z(boolean paramBoolean)
  {
    if (!this.OP) {
      setDisplayHomeAsUpEnabled(paramBoolean);
    }
  }
  
  public final class a
    extends b
    implements h.a
  {
    private final Context Pi;
    final android.support.v7.view.menu.h Pj;
    private b.a Pk;
    private WeakReference<View> Pl;
    
    public a(Context paramContext, b.a parama)
    {
      this.Pi = paramContext;
      this.Pk = parama;
      this$1 = new android.support.v7.view.menu.h(paramContext);
      q.this.Sh = 1;
      this.Pj = q.this;
      this.Pj.a(this);
    }
    
    public final boolean a(android.support.v7.view.menu.h paramh, MenuItem paramMenuItem)
    {
      if (this.Pk != null) {
        return this.Pk.a(this, paramMenuItem);
      }
      return false;
    }
    
    public final void b(android.support.v7.view.menu.h paramh)
    {
      if (this.Pk == null) {
        return;
      }
      invalidate();
      q.this.OL.showOverflowMenu();
    }
    
    public final boolean eM()
    {
      this.Pj.fj();
      try
      {
        boolean bool = this.Pk.a(this, this.Pj);
        return bool;
      }
      finally
      {
        this.Pj.fk();
      }
    }
    
    public final void finish()
    {
      if (q.this.OQ != this) {
        return;
      }
      if (!q.b(q.this.OX, q.this.OY, false))
      {
        q.this.OS = this;
        q.this.OT = this.Pk;
      }
      for (;;)
      {
        this.Pk = null;
        q.this.F(false);
        ActionBarContextView localActionBarContextView = q.this.OL;
        if (localActionBarContextView.Ts == null) {
          localActionBarContextView.fC();
        }
        q.this.Ol.gy().sendAccessibilityEvent(32);
        q.this.OJ.setHideOnContentScrollEnabled(q.this.Pd);
        q.this.OQ = null;
        return;
        this.Pk.a(this);
      }
    }
    
    public final View getCustomView()
    {
      if (this.Pl != null) {
        return (View)this.Pl.get();
      }
      return null;
    }
    
    public final Menu getMenu()
    {
      return this.Pj;
    }
    
    public final MenuInflater getMenuInflater()
    {
      return new g(this.Pi);
    }
    
    public final CharSequence getSubtitle()
    {
      return q.this.OL.getSubtitle();
    }
    
    public final CharSequence getTitle()
    {
      return q.this.OL.getTitle();
    }
    
    public final void invalidate()
    {
      if (q.this.OQ != this) {
        return;
      }
      this.Pj.fj();
      try
      {
        this.Pk.b(this, this.Pj);
        return;
      }
      finally
      {
        this.Pj.fk();
      }
    }
    
    public final boolean isTitleOptional()
    {
      return q.this.OL.Tx;
    }
    
    public final void setCustomView(View paramView)
    {
      q.this.OL.setCustomView(paramView);
      this.Pl = new WeakReference(paramView);
    }
    
    public final void setSubtitle(int paramInt)
    {
      setSubtitle(q.this.mContext.getResources().getString(paramInt));
    }
    
    public final void setSubtitle(CharSequence paramCharSequence)
    {
      q.this.OL.setSubtitle(paramCharSequence);
    }
    
    public final void setTitle(int paramInt)
    {
      setTitle(q.this.mContext.getResources().getString(paramInt));
    }
    
    public final void setTitle(CharSequence paramCharSequence)
    {
      q.this.OL.setTitle(paramCharSequence);
    }
    
    public final void setTitleOptionalHint(boolean paramBoolean)
    {
      super.setTitleOptionalHint(paramBoolean);
      q.this.OL.setTitleOptional(paramBoolean);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */