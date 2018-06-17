package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.r;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.a.a.a;
import android.support.v7.a.a.f;
import android.support.v7.widget.at.a;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;

public final class c
  extends l
  implements DialogInterface
{
  final AlertController My = new AlertController(getContext(), this, getWindow());
  
  protected c(Context paramContext, int paramInt)
  {
    super(paramContext, d(paramContext, paramInt));
  }
  
  static int d(Context paramContext, int paramInt)
  {
    if ((paramInt >>> 24 & 0xFF) > 0) {
      return paramInt;
    }
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(a.a.alertDialogTheme, localTypedValue, true);
    return localTypedValue.resourceId;
  }
  
  public final Button getButton(int paramInt)
  {
    AlertController localAlertController = this.My;
    switch (paramInt)
    {
    default: 
      return null;
    case -1: 
      return localAlertController.Lo;
    case -2: 
      return localAlertController.Ls;
    }
    return localAlertController.Lw;
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AlertController localAlertController = this.My;
    int i;
    Object localObject4;
    Object localObject3;
    Object localObject2;
    Object localObject1;
    label108:
    label114:
    label225:
    label360:
    label418:
    label474:
    label530:
    int j;
    label571:
    label588:
    label594:
    label653:
    label670:
    int k;
    label688:
    label703:
    label788:
    int m;
    label834:
    int n;
    if ((localAlertController.LH != 0) && (localAlertController.LN == 1))
    {
      i = localAlertController.LH;
      localAlertController.Ld.setContentView(i);
      paramBundle = localAlertController.Le.findViewById(a.f.parentPanel);
      localObject4 = paramBundle.findViewById(a.f.topPanel);
      localObject3 = paramBundle.findViewById(a.f.contentPanel);
      localObject2 = paramBundle.findViewById(a.f.buttonPanel);
      localObject1 = (ViewGroup)paramBundle.findViewById(a.f.customPanel);
      if (localAlertController.mView == null) {
        break label1022;
      }
      paramBundle = localAlertController.mView;
      if (paramBundle == null) {
        break label1058;
      }
      i = 1;
      if ((i == 0) || (!AlertController.at(paramBundle))) {
        localAlertController.Le.setFlags(131072, 131072);
      }
      if (i == 0) {
        break label1063;
      }
      Object localObject5 = (FrameLayout)localAlertController.Le.findViewById(a.f.custom);
      ((FrameLayout)localObject5).addView(paramBundle, new ViewGroup.LayoutParams(-1, -1));
      if (localAlertController.Ln) {
        ((FrameLayout)localObject5).setPadding(localAlertController.Lj, localAlertController.Lk, localAlertController.Ll, localAlertController.Lm);
      }
      if (localAlertController.Lh != null) {
        ((at.a)((ViewGroup)localObject1).getLayoutParams()).weight = 0.0F;
      }
      View localView = ((ViewGroup)localObject1).findViewById(a.f.topPanel);
      localObject5 = ((ViewGroup)localObject1).findViewById(a.f.contentPanel);
      paramBundle = ((ViewGroup)localObject1).findViewById(a.f.buttonPanel);
      localObject4 = AlertController.c(localView, (View)localObject4);
      localObject3 = AlertController.c((View)localObject5, (View)localObject3);
      paramBundle = AlertController.c(paramBundle, (View)localObject2);
      localAlertController.LA = ((NestedScrollView)localAlertController.Le.findViewById(a.f.scrollView));
      localAlertController.LA.setFocusable(false);
      localAlertController.LA.setNestedScrollingEnabled(false);
      localAlertController.ix = ((TextView)((ViewGroup)localObject3).findViewById(16908299));
      if (localAlertController.ix != null)
      {
        if (localAlertController.Lg == null) {
          break label1073;
        }
        localAlertController.ix.setText(localAlertController.Lg);
      }
      i = 0;
      localAlertController.Lo = ((Button)paramBundle.findViewById(16908313));
      localAlertController.Lo.setOnClickListener(localAlertController.LO);
      if ((!TextUtils.isEmpty(localAlertController.Lp)) || (localAlertController.Lr != null)) {
        break label1167;
      }
      localAlertController.Lo.setVisibility(8);
      localAlertController.Ls = ((Button)paramBundle.findViewById(16908314));
      localAlertController.Ls.setOnClickListener(localAlertController.LO);
      if ((!TextUtils.isEmpty(localAlertController.Lt)) || (localAlertController.Lv != null)) {
        break label1238;
      }
      localAlertController.Ls.setVisibility(8);
      localAlertController.Lw = ((Button)paramBundle.findViewById(16908315));
      localAlertController.Lw.setOnClickListener(localAlertController.LO);
      if ((!TextUtils.isEmpty(localAlertController.Lx)) || (localAlertController.Lz != null)) {
        break label1311;
      }
      localAlertController.Lw.setVisibility(8);
      localObject2 = localAlertController.mContext;
      localObject5 = new TypedValue();
      ((Context)localObject2).getTheme().resolveAttribute(a.a.alertDialogCenterButtons, (TypedValue)localObject5, true);
      if (((TypedValue)localObject5).data == 0) {
        break label1384;
      }
      j = 1;
      if (j != 0)
      {
        if (i != 1) {
          break label1389;
        }
        AlertController.a(localAlertController.Lo);
      }
      if (i == 0) {
        break label1421;
      }
      i = 1;
      if (i == 0) {
        paramBundle.setVisibility(8);
      }
      if (localAlertController.LD == null) {
        break label1426;
      }
      localObject2 = new ViewGroup.LayoutParams(-1, -2);
      ((ViewGroup)localObject4).addView(localAlertController.LD, 0, (ViewGroup.LayoutParams)localObject2);
      localAlertController.Le.findViewById(a.f.title_template).setVisibility(8);
      if ((localObject1 == null) || (((ViewGroup)localObject1).getVisibility() == 8)) {
        break label1644;
      }
      i = 1;
      if ((localObject4 == null) || (((ViewGroup)localObject4).getVisibility() == 8)) {
        break label1649;
      }
      k = 1;
      if ((paramBundle == null) || (paramBundle.getVisibility() == 8)) {
        break label1655;
      }
      j = 1;
      if ((j == 0) && (localObject3 != null))
      {
        paramBundle = ((ViewGroup)localObject3).findViewById(a.f.textSpacerNoButtons);
        if (paramBundle != null) {
          paramBundle.setVisibility(0);
        }
      }
      if (k == 0) {
        break label1660;
      }
      if (localAlertController.LA != null) {
        localAlertController.LA.setClipToPadding(true);
      }
      paramBundle = null;
      if ((localAlertController.Lg != null) || (localAlertController.Lh != null)) {
        paramBundle = ((ViewGroup)localObject4).findViewById(a.f.titleDividerNoCustom);
      }
      if (paramBundle != null) {
        paramBundle.setVisibility(0);
      }
      if ((localAlertController.Lh instanceof AlertController.RecycleListView))
      {
        paramBundle = (AlertController.RecycleListView)localAlertController.Lh;
        if ((j == 0) || (k == 0))
        {
          int i1 = paramBundle.getPaddingLeft();
          if (k == 0) {
            break label1686;
          }
          m = paramBundle.getPaddingTop();
          int i2 = paramBundle.getPaddingRight();
          if (j == 0) {
            break label1695;
          }
          n = paramBundle.getPaddingBottom();
          label850:
          paramBundle.setPadding(i1, m, i2, n);
        }
      }
      if (i == 0)
      {
        if (localAlertController.Lh == null) {
          break label1704;
        }
        paramBundle = localAlertController.Lh;
        label880:
        if (paramBundle != null)
        {
          if (k == 0) {
            break label1713;
          }
          i = 1;
          label891:
          if (j == 0) {
            break label1718;
          }
          j = 2;
          label897:
          i |= j;
          localObject1 = localAlertController.Le.findViewById(a.f.scrollIndicatorUp);
          localObject2 = localAlertController.Le.findViewById(a.f.scrollIndicatorDown);
          if (Build.VERSION.SDK_INT < 23) {
            break label1723;
          }
          r.o(paramBundle, i);
          if (localObject1 != null) {
            ((ViewGroup)localObject3).removeView((View)localObject1);
          }
          if (localObject2 != null) {
            ((ViewGroup)localObject3).removeView((View)localObject2);
          }
        }
      }
    }
    for (;;)
    {
      paramBundle = localAlertController.Lh;
      if ((paramBundle != null) && (localAlertController.LE != null))
      {
        paramBundle.setAdapter(localAlertController.LE);
        i = localAlertController.LF;
        if (i >= 0)
        {
          paramBundle.setItemChecked(i, true);
          paramBundle.setSelection(i);
        }
      }
      return;
      i = localAlertController.LG;
      break;
      label1022:
      if (localAlertController.Li != 0)
      {
        paramBundle = LayoutInflater.from(localAlertController.mContext).inflate(localAlertController.Li, (ViewGroup)localObject1, false);
        break label108;
      }
      paramBundle = null;
      break label108;
      label1058:
      i = 0;
      break label114;
      label1063:
      ((ViewGroup)localObject1).setVisibility(8);
      break label225;
      label1073:
      localAlertController.ix.setVisibility(8);
      localAlertController.LA.removeView(localAlertController.ix);
      if (localAlertController.Lh != null)
      {
        localObject2 = (ViewGroup)localAlertController.LA.getParent();
        i = ((ViewGroup)localObject2).indexOfChild(localAlertController.LA);
        ((ViewGroup)localObject2).removeViewAt(i);
        ((ViewGroup)localObject2).addView(localAlertController.Lh, i, new ViewGroup.LayoutParams(-1, -1));
        break label360;
      }
      ((ViewGroup)localObject3).setVisibility(8);
      break label360;
      label1167:
      localAlertController.Lo.setText(localAlertController.Lp);
      if (localAlertController.Lr != null)
      {
        localAlertController.Lr.setBounds(0, 0, localAlertController.Lf, localAlertController.Lf);
        localAlertController.Lo.setCompoundDrawables(localAlertController.Lr, null, null, null);
      }
      localAlertController.Lo.setVisibility(0);
      i = 1;
      break label418;
      label1238:
      localAlertController.Ls.setText(localAlertController.Lt);
      if (localAlertController.Lv != null)
      {
        localAlertController.Lv.setBounds(0, 0, localAlertController.Lf, localAlertController.Lf);
        localAlertController.Ls.setCompoundDrawables(localAlertController.Lv, null, null, null);
      }
      localAlertController.Ls.setVisibility(0);
      i |= 0x2;
      break label474;
      label1311:
      localAlertController.Lw.setText(localAlertController.Lx);
      if (localAlertController.Lr != null)
      {
        localAlertController.Lr.setBounds(0, 0, localAlertController.Lf, localAlertController.Lf);
        localAlertController.Lo.setCompoundDrawables(localAlertController.Lr, null, null, null);
      }
      localAlertController.Lw.setVisibility(0);
      i |= 0x4;
      break label530;
      label1384:
      j = 0;
      break label571;
      label1389:
      if (i == 2)
      {
        AlertController.a(localAlertController.Ls);
        break label588;
      }
      if (i != 4) {
        break label588;
      }
      AlertController.a(localAlertController.Lw);
      break label588;
      label1421:
      i = 0;
      break label594;
      label1426:
      localAlertController.ph = ((ImageView)localAlertController.Le.findViewById(16908294));
      if (!TextUtils.isEmpty(localAlertController.Ch)) {
        i = 1;
      }
      for (;;)
      {
        if ((i != 0) && (localAlertController.LM))
        {
          localAlertController.LC = ((TextView)localAlertController.Le.findViewById(a.f.alertTitle));
          localAlertController.LC.setText(localAlertController.Ch);
          if (localAlertController.LB != 0)
          {
            localAlertController.ph.setImageResource(localAlertController.LB);
            break;
            i = 0;
            continue;
          }
          if (localAlertController.oa != null)
          {
            localAlertController.ph.setImageDrawable(localAlertController.oa);
            break;
          }
          localAlertController.LC.setPadding(localAlertController.ph.getPaddingLeft(), localAlertController.ph.getPaddingTop(), localAlertController.ph.getPaddingRight(), localAlertController.ph.getPaddingBottom());
          localAlertController.ph.setVisibility(8);
          break;
        }
      }
      localAlertController.Le.findViewById(a.f.title_template).setVisibility(8);
      localAlertController.ph.setVisibility(8);
      ((ViewGroup)localObject4).setVisibility(8);
      break label653;
      label1644:
      i = 0;
      break label670;
      label1649:
      k = 0;
      break label688;
      label1655:
      j = 0;
      break label703;
      label1660:
      if (localObject3 == null) {
        break label788;
      }
      paramBundle = ((ViewGroup)localObject3).findViewById(a.f.textSpacerNoTitle);
      if (paramBundle == null) {
        break label788;
      }
      paramBundle.setVisibility(0);
      break label788;
      label1686:
      m = paramBundle.Mw;
      break label834;
      label1695:
      n = paramBundle.Mx;
      break label850;
      label1704:
      paramBundle = localAlertController.LA;
      break label880;
      label1713:
      i = 0;
      break label891;
      label1718:
      j = 0;
      break label897;
      label1723:
      paramBundle = (Bundle)localObject1;
      if (localObject1 != null)
      {
        paramBundle = (Bundle)localObject1;
        if ((i & 0x1) == 0)
        {
          ((ViewGroup)localObject3).removeView((View)localObject1);
          paramBundle = null;
        }
      }
      localObject1 = localObject2;
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if ((i & 0x2) == 0)
        {
          ((ViewGroup)localObject3).removeView((View)localObject2);
          localObject1 = null;
        }
      }
      if ((paramBundle != null) || (localObject1 != null)) {
        if (localAlertController.Lg != null)
        {
          localAlertController.LA.setOnScrollChangeListener(new AlertController.2(localAlertController, paramBundle, (View)localObject1));
          localAlertController.LA.post(new AlertController.3(localAlertController, paramBundle, (View)localObject1));
        }
        else if (localAlertController.Lh != null)
        {
          localAlertController.Lh.setOnScrollListener(new AlertController.4(localAlertController, paramBundle, (View)localObject1));
          localAlertController.Lh.post(new AlertController.5(localAlertController, paramBundle, (View)localObject1));
        }
        else
        {
          if (paramBundle != null) {
            ((ViewGroup)localObject3).removeView(paramBundle);
          }
          if (localObject1 != null) {
            ((ViewGroup)localObject3).removeView((View)localObject1);
          }
        }
      }
    }
  }
  
  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    AlertController localAlertController = this.My;
    if ((localAlertController.LA != null) && (localAlertController.LA.executeKeyEvent(paramKeyEvent))) {}
    for (int i = 1; i != 0; i = 0) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public final boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    AlertController localAlertController = this.My;
    if ((localAlertController.LA != null) && (localAlertController.LA.executeKeyEvent(paramKeyEvent))) {}
    for (int i = 1; i != 0; i = 0) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    this.My.setTitle(paramCharSequence);
  }
  
  public static class a
  {
    private final AlertController.a P;
    private final int mTheme;
    
    public a(Context paramContext)
    {
      this(paramContext, c.d(paramContext, 0));
    }
    
    public a(Context paramContext, int paramInt)
    {
      this.P = new AlertController.a(new ContextThemeWrapper(paramContext, c.d(paramContext, paramInt)));
      this.mTheme = paramInt;
    }
    
    public c create()
    {
      c localc = new c(this.P.mContext, this.mTheme);
      AlertController.a locala = this.P;
      AlertController localAlertController = localc.My;
      Object localObject;
      AlertController.RecycleListView localRecycleListView;
      label294:
      label335:
      label367:
      int i;
      if (locala.LD != null)
      {
        localAlertController.LD = locala.LD;
        if (locala.Lg != null)
        {
          localObject = locala.Lg;
          localAlertController.Lg = ((CharSequence)localObject);
          if (localAlertController.ix != null) {
            localAlertController.ix.setText((CharSequence)localObject);
          }
        }
        if ((locala.LT != null) || (locala.LU != null)) {
          localAlertController.a(-1, locala.LT, locala.LV, null, locala.LU);
        }
        if ((locala.LW != null) || (locala.LX != null)) {
          localAlertController.a(-2, locala.LW, locala.LY, null, locala.LX);
        }
        if ((locala.LZ != null) || (locala.Ma != null)) {
          localAlertController.a(-3, locala.LZ, locala.Mb, null, locala.Ma);
        }
        if ((locala.Mf != null) || (locala.Jc != null) || (locala.LE != null))
        {
          localRecycleListView = (AlertController.RecycleListView)locala.JR.inflate(localAlertController.LI, null);
          if (!locala.Mi) {
            break label732;
          }
          if (locala.Jc != null) {
            break label704;
          }
          localObject = new AlertController.a.1(locala, locala.mContext, localAlertController.LJ, locala.Mf, localRecycleListView);
          localAlertController.LE = ((ListAdapter)localObject);
          localAlertController.LF = locala.LF;
          if (locala.Mg == null) {
            break label848;
          }
          localRecycleListView.setOnItemClickListener(new AlertController.a.3(locala, localAlertController));
          if (locala.Mo != null) {
            localRecycleListView.setOnItemSelectedListener(locala.Mo);
          }
          if (!locala.Mj) {
            break label877;
          }
          localRecycleListView.setChoiceMode(1);
          localAlertController.Lh = localRecycleListView;
        }
        if (locala.mView == null) {
          break label919;
        }
        if (!locala.Ln) {
          break label894;
        }
        localObject = locala.mView;
        i = locala.Lj;
        int j = locala.Lk;
        int k = locala.Ll;
        int m = locala.Lm;
        localAlertController.mView = ((View)localObject);
        localAlertController.Li = 0;
        localAlertController.Ln = true;
        localAlertController.Lj = i;
        localAlertController.Lk = j;
        localAlertController.Ll = k;
        localAlertController.Lm = m;
      }
      for (;;)
      {
        localc.setCancelable(this.P.wM);
        if (this.P.wM) {
          localc.setCanceledOnTouchOutside(true);
        }
        localc.setOnCancelListener(this.P.Mc);
        localc.setOnDismissListener(this.P.Md);
        if (this.P.Me != null) {
          localc.setOnKeyListener(this.P.Me);
        }
        return localc;
        if (locala.Ch != null) {
          localAlertController.setTitle(locala.Ch);
        }
        if (locala.oa != null)
        {
          localObject = locala.oa;
          localAlertController.oa = ((Drawable)localObject);
          localAlertController.LB = 0;
          if (localAlertController.ph != null)
          {
            if (localObject == null) {
              break label691;
            }
            localAlertController.ph.setVisibility(0);
            localAlertController.ph.setImageDrawable((Drawable)localObject);
          }
        }
        for (;;)
        {
          if (locala.LB != 0) {
            localAlertController.setIcon(locala.LB);
          }
          if (locala.LS == 0) {
            break;
          }
          i = locala.LS;
          localObject = new TypedValue();
          localAlertController.mContext.getTheme().resolveAttribute(i, (TypedValue)localObject, true);
          localAlertController.setIcon(((TypedValue)localObject).resourceId);
          break;
          label691:
          localAlertController.ph.setVisibility(8);
        }
        label704:
        localObject = new AlertController.a.2(locala, locala.mContext, locala.Jc, localRecycleListView, localAlertController);
        break label294;
        label732:
        if (locala.Mj) {}
        for (i = localAlertController.LK;; i = localAlertController.LL)
        {
          if (locala.Jc == null) {
            break label807;
          }
          localObject = new SimpleCursorAdapter(locala.mContext, i, locala.Jc, new String[] { locala.Ml }, new int[] { 16908308 });
          break;
        }
        label807:
        if (locala.LE != null)
        {
          localObject = locala.LE;
          break label294;
        }
        localObject = new AlertController.c(locala.mContext, i, locala.Mf);
        break label294;
        label848:
        if (locala.Mk == null) {
          break label335;
        }
        localRecycleListView.setOnItemClickListener(new AlertController.a.4(locala, localRecycleListView, localAlertController));
        break label335;
        label877:
        if (!locala.Mi) {
          break label367;
        }
        localRecycleListView.setChoiceMode(2);
        break label367;
        label894:
        localAlertController.mView = locala.mView;
        localAlertController.Li = 0;
        localAlertController.Ln = false;
        continue;
        label919:
        if (locala.Li != 0)
        {
          i = locala.Li;
          localAlertController.mView = null;
          localAlertController.Li = i;
          localAlertController.Ln = false;
        }
      }
    }
    
    public Context getContext()
    {
      return this.P.mContext;
    }
    
    public a setAdapter(ListAdapter paramListAdapter, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.LE = paramListAdapter;
      this.P.Mg = paramOnClickListener;
      return this;
    }
    
    public a setCancelable(boolean paramBoolean)
    {
      this.P.wM = paramBoolean;
      return this;
    }
    
    public a setCursor(Cursor paramCursor, DialogInterface.OnClickListener paramOnClickListener, String paramString)
    {
      this.P.Jc = paramCursor;
      this.P.Ml = paramString;
      this.P.Mg = paramOnClickListener;
      return this;
    }
    
    public a setCustomTitle(View paramView)
    {
      this.P.LD = paramView;
      return this;
    }
    
    public a setIcon(int paramInt)
    {
      this.P.LB = paramInt;
      return this;
    }
    
    public a setIcon(Drawable paramDrawable)
    {
      this.P.oa = paramDrawable;
      return this;
    }
    
    public a setIconAttribute(int paramInt)
    {
      TypedValue localTypedValue = new TypedValue();
      this.P.mContext.getTheme().resolveAttribute(paramInt, localTypedValue, true);
      this.P.LB = localTypedValue.resourceId;
      return this;
    }
    
    @Deprecated
    public a setInverseBackgroundForced(boolean paramBoolean)
    {
      this.P.Mn = paramBoolean;
      return this;
    }
    
    public a setItems(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.Mf = this.P.mContext.getResources().getTextArray(paramInt);
      this.P.Mg = paramOnClickListener;
      return this;
    }
    
    public a setItems(CharSequence[] paramArrayOfCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.Mf = paramArrayOfCharSequence;
      this.P.Mg = paramOnClickListener;
      return this;
    }
    
    public a setMessage(int paramInt)
    {
      this.P.Lg = this.P.mContext.getText(paramInt);
      return this;
    }
    
    public a setMessage(CharSequence paramCharSequence)
    {
      this.P.Lg = paramCharSequence;
      return this;
    }
    
    public a setMultiChoiceItems(int paramInt, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
    {
      this.P.Mf = this.P.mContext.getResources().getTextArray(paramInt);
      this.P.Mk = paramOnMultiChoiceClickListener;
      this.P.Mh = paramArrayOfBoolean;
      this.P.Mi = true;
      return this;
    }
    
    public a setMultiChoiceItems(Cursor paramCursor, String paramString1, String paramString2, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
    {
      this.P.Jc = paramCursor;
      this.P.Mk = paramOnMultiChoiceClickListener;
      this.P.Mm = paramString1;
      this.P.Ml = paramString2;
      this.P.Mi = true;
      return this;
    }
    
    public a setMultiChoiceItems(CharSequence[] paramArrayOfCharSequence, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
    {
      this.P.Mf = paramArrayOfCharSequence;
      this.P.Mk = paramOnMultiChoiceClickListener;
      this.P.Mh = paramArrayOfBoolean;
      this.P.Mi = true;
      return this;
    }
    
    public a setNegativeButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.LW = this.P.mContext.getText(paramInt);
      this.P.LY = paramOnClickListener;
      return this;
    }
    
    public a setNegativeButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.LW = paramCharSequence;
      this.P.LY = paramOnClickListener;
      return this;
    }
    
    public a setNegativeButtonIcon(Drawable paramDrawable)
    {
      this.P.LX = paramDrawable;
      return this;
    }
    
    public a setNeutralButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.LZ = this.P.mContext.getText(paramInt);
      this.P.Mb = paramOnClickListener;
      return this;
    }
    
    public a setNeutralButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.LZ = paramCharSequence;
      this.P.Mb = paramOnClickListener;
      return this;
    }
    
    public a setNeutralButtonIcon(Drawable paramDrawable)
    {
      this.P.Ma = paramDrawable;
      return this;
    }
    
    public a setOnCancelListener(DialogInterface.OnCancelListener paramOnCancelListener)
    {
      this.P.Mc = paramOnCancelListener;
      return this;
    }
    
    public a setOnDismissListener(DialogInterface.OnDismissListener paramOnDismissListener)
    {
      this.P.Md = paramOnDismissListener;
      return this;
    }
    
    public a setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
    {
      this.P.Mo = paramOnItemSelectedListener;
      return this;
    }
    
    public a setOnKeyListener(DialogInterface.OnKeyListener paramOnKeyListener)
    {
      this.P.Me = paramOnKeyListener;
      return this;
    }
    
    public a setPositiveButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.LT = this.P.mContext.getText(paramInt);
      this.P.LV = paramOnClickListener;
      return this;
    }
    
    public a setPositiveButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.LT = paramCharSequence;
      this.P.LV = paramOnClickListener;
      return this;
    }
    
    public a setPositiveButtonIcon(Drawable paramDrawable)
    {
      this.P.LU = paramDrawable;
      return this;
    }
    
    public a setRecycleOnMeasureEnabled(boolean paramBoolean)
    {
      this.P.Mp = paramBoolean;
      return this;
    }
    
    public a setSingleChoiceItems(int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.Mf = this.P.mContext.getResources().getTextArray(paramInt1);
      this.P.Mg = paramOnClickListener;
      this.P.LF = paramInt2;
      this.P.Mj = true;
      return this;
    }
    
    public a setSingleChoiceItems(Cursor paramCursor, int paramInt, String paramString, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.Jc = paramCursor;
      this.P.Mg = paramOnClickListener;
      this.P.LF = paramInt;
      this.P.Ml = paramString;
      this.P.Mj = true;
      return this;
    }
    
    public a setSingleChoiceItems(ListAdapter paramListAdapter, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.LE = paramListAdapter;
      this.P.Mg = paramOnClickListener;
      this.P.LF = paramInt;
      this.P.Mj = true;
      return this;
    }
    
    public a setSingleChoiceItems(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      this.P.Mf = paramArrayOfCharSequence;
      this.P.Mg = paramOnClickListener;
      this.P.LF = paramInt;
      this.P.Mj = true;
      return this;
    }
    
    public a setTitle(int paramInt)
    {
      this.P.Ch = this.P.mContext.getText(paramInt);
      return this;
    }
    
    public a setTitle(CharSequence paramCharSequence)
    {
      this.P.Ch = paramCharSequence;
      return this;
    }
    
    public a setView(int paramInt)
    {
      this.P.mView = null;
      this.P.Li = paramInt;
      this.P.Ln = false;
      return this;
    }
    
    public a setView(View paramView)
    {
      this.P.mView = paramView;
      this.P.Li = 0;
      this.P.Ln = false;
      return this;
    }
    
    @Deprecated
    public a setView(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.P.mView = paramView;
      this.P.Li = 0;
      this.P.Ln = true;
      this.P.Lj = paramInt1;
      this.P.Lk = paramInt2;
      this.P.Ll = paramInt3;
      this.P.Lm = paramInt4;
      return this;
    }
    
    public c show()
    {
      c localc = create();
      localc.show();
      return localc;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */