package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.v4.view.a;
import android.support.v4.view.e;
import android.support.v7.a.a.j;
import android.support.v7.c.a.b;
import android.support.v7.view.c;
import android.support.v7.view.g;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.h.a;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.o.a;
import android.support.v7.view.menu.u;
import android.text.Layout;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class Toolbar
  extends ViewGroup
{
  private static final String TAG = "Toolbar";
  private o.a mActionMenuPresenterCallback;
  int mButtonGravity;
  ImageButton mCollapseButtonView;
  private CharSequence mCollapseDescription;
  private Drawable mCollapseIcon;
  private boolean mCollapsible;
  private int mContentInsetEndWithActions;
  private int mContentInsetStartWithNavigation;
  private bf mContentInsets;
  private boolean mEatingHover;
  private boolean mEatingTouch;
  View mExpandedActionView;
  private a mExpandedMenuPresenter;
  private int mGravity = 8388627;
  private final ArrayList<View> mHiddenViews = new ArrayList();
  private ImageView mLogoView;
  private int mMaxButtonHeight;
  private h.a mMenuBuilderCallback;
  private ActionMenuView mMenuView;
  private final ActionMenuView.e mMenuViewItemClickListener = new ActionMenuView.e()
  {
    public final boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
    {
      if (Toolbar.this.mOnMenuItemClickListener != null) {
        return Toolbar.this.mOnMenuItemClickListener.onMenuItemClick(paramAnonymousMenuItem);
      }
      return false;
    }
  };
  private ImageButton mNavButtonView;
  c mOnMenuItemClickListener;
  private d mOuterActionMenuPresenter;
  private Context mPopupContext;
  private int mPopupTheme;
  private final Runnable mShowOverflowMenuRunnable = new Runnable()
  {
    public final void run()
    {
      Toolbar.this.showOverflowMenu();
    }
  };
  private CharSequence mSubtitleText;
  private int mSubtitleTextAppearance;
  private int mSubtitleTextColor;
  private TextView mSubtitleTextView;
  private final int[] mTempMargins = new int[2];
  private final ArrayList<View> mTempViews = new ArrayList();
  private int mTitleMarginBottom;
  private int mTitleMarginEnd;
  private int mTitleMarginStart;
  private int mTitleMarginTop;
  private CharSequence mTitleText;
  private int mTitleTextAppearance;
  private int mTitleTextColor;
  private TextView mTitleTextView;
  private bp mWrapper;
  
  public Toolbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, android.support.v7.a.a.a.toolbarStyle);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = bo.a(getContext(), paramAttributeSet, a.j.Toolbar, paramInt, 0);
    this.mTitleTextAppearance = paramContext.getResourceId(a.j.Toolbar_titleTextAppearance, 0);
    this.mSubtitleTextAppearance = paramContext.getResourceId(a.j.Toolbar_subtitleTextAppearance, 0);
    this.mGravity = paramContext.getInteger(a.j.Toolbar_android_gravity, this.mGravity);
    this.mButtonGravity = paramContext.getInteger(a.j.Toolbar_buttonGravity, 48);
    int i = paramContext.getDimensionPixelOffset(a.j.Toolbar_titleMargin, 0);
    paramInt = i;
    if (paramContext.hasValue(a.j.Toolbar_titleMargins)) {
      paramInt = paramContext.getDimensionPixelOffset(a.j.Toolbar_titleMargins, i);
    }
    this.mTitleMarginBottom = paramInt;
    this.mTitleMarginTop = paramInt;
    this.mTitleMarginEnd = paramInt;
    this.mTitleMarginStart = paramInt;
    paramInt = paramContext.getDimensionPixelOffset(a.j.Toolbar_titleMarginStart, -1);
    if (paramInt >= 0) {
      this.mTitleMarginStart = paramInt;
    }
    paramInt = paramContext.getDimensionPixelOffset(a.j.Toolbar_titleMarginEnd, -1);
    if (paramInt >= 0) {
      this.mTitleMarginEnd = paramInt;
    }
    paramInt = paramContext.getDimensionPixelOffset(a.j.Toolbar_titleMarginTop, -1);
    if (paramInt >= 0) {
      this.mTitleMarginTop = paramInt;
    }
    paramInt = paramContext.getDimensionPixelOffset(a.j.Toolbar_titleMarginBottom, -1);
    if (paramInt >= 0) {
      this.mTitleMarginBottom = paramInt;
    }
    this.mMaxButtonHeight = paramContext.getDimensionPixelSize(a.j.Toolbar_maxButtonHeight, -1);
    paramInt = paramContext.getDimensionPixelOffset(a.j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
    i = paramContext.getDimensionPixelOffset(a.j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
    int j = paramContext.getDimensionPixelSize(a.j.Toolbar_contentInsetLeft, 0);
    int k = paramContext.getDimensionPixelSize(a.j.Toolbar_contentInsetRight, 0);
    ensureContentInsets();
    this.mContentInsets.aj(j, k);
    if ((paramInt != Integer.MIN_VALUE) || (i != Integer.MIN_VALUE)) {
      this.mContentInsets.ai(paramInt, i);
    }
    this.mContentInsetStartWithNavigation = paramContext.getDimensionPixelOffset(a.j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
    this.mContentInsetEndWithActions = paramContext.getDimensionPixelOffset(a.j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
    this.mCollapseIcon = paramContext.getDrawable(a.j.Toolbar_collapseIcon);
    this.mCollapseDescription = paramContext.getText(a.j.Toolbar_collapseContentDescription);
    paramAttributeSet = paramContext.getText(a.j.Toolbar_title);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setTitle(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getText(a.j.Toolbar_subtitle);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setSubtitle(paramAttributeSet);
    }
    this.mPopupContext = getContext();
    setPopupTheme(paramContext.getResourceId(a.j.Toolbar_popupTheme, 0));
    paramAttributeSet = paramContext.getDrawable(a.j.Toolbar_navigationIcon);
    if (paramAttributeSet != null) {
      setNavigationIcon(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getText(a.j.Toolbar_navigationContentDescription);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setNavigationContentDescription(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getDrawable(a.j.Toolbar_logo);
    if (paramAttributeSet != null) {
      setLogo(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getText(a.j.Toolbar_logoDescription);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setLogoDescription(paramAttributeSet);
    }
    if (paramContext.hasValue(a.j.Toolbar_titleTextColor)) {
      setTitleTextColor(paramContext.getColor(a.j.Toolbar_titleTextColor, -1));
    }
    if (paramContext.hasValue(a.j.Toolbar_subtitleTextColor)) {
      setSubtitleTextColor(paramContext.getColor(a.j.Toolbar_subtitleTextColor, -1));
    }
    paramContext.ajT.recycle();
  }
  
  private void addCustomViewsWithGravity(List<View> paramList, int paramInt)
  {
    int i = 1;
    int j = 0;
    if (android.support.v4.view.r.K(this) == 1) {}
    int m;
    int k;
    View localView;
    b localb;
    for (;;)
    {
      m = getChildCount();
      k = e.getAbsoluteGravity(paramInt, android.support.v4.view.r.K(this));
      paramList.clear();
      paramInt = j;
      if (i == 0) {
        break;
      }
      paramInt = m - 1;
      while (paramInt >= 0)
      {
        localView = getChildAt(paramInt);
        localb = (b)localView.getLayoutParams();
        if ((localb.ajW == 0) && (shouldLayout(localView)) && (getChildHorizontalGravity(localb.gravity) == k)) {
          paramList.add(localView);
        }
        paramInt -= 1;
      }
      i = 0;
    }
    while (paramInt < m)
    {
      localView = getChildAt(paramInt);
      localb = (b)localView.getLayoutParams();
      if ((localb.ajW == 0) && (shouldLayout(localView)) && (getChildHorizontalGravity(localb.gravity) == k)) {
        paramList.add(localView);
      }
      paramInt += 1;
    }
  }
  
  private void addSystemView(View paramView, boolean paramBoolean)
  {
    Object localObject = paramView.getLayoutParams();
    if (localObject == null) {
      localObject = generateDefaultLayoutParams();
    }
    for (;;)
    {
      ((b)localObject).ajW = 1;
      if ((!paramBoolean) || (this.mExpandedActionView == null)) {
        break;
      }
      paramView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      this.mHiddenViews.add(paramView);
      return;
      if (!checkLayoutParams((ViewGroup.LayoutParams)localObject)) {
        localObject = generateLayoutParams((ViewGroup.LayoutParams)localObject);
      } else {
        localObject = (b)localObject;
      }
    }
    addView(paramView, (ViewGroup.LayoutParams)localObject);
  }
  
  private void ensureContentInsets()
  {
    if (this.mContentInsets == null) {
      this.mContentInsets = new bf();
    }
  }
  
  private void ensureLogoView()
  {
    if (this.mLogoView == null) {
      this.mLogoView = new r(getContext());
    }
  }
  
  private void ensureMenu()
  {
    ensureMenuView();
    if (this.mMenuView.Pj == null)
    {
      h localh = (h)this.mMenuView.getMenu();
      if (this.mExpandedMenuPresenter == null) {
        this.mExpandedMenuPresenter = new a();
      }
      this.mMenuView.setExpandedActionViewsExclusive(true);
      localh.a(this.mExpandedMenuPresenter, this.mPopupContext);
    }
  }
  
  private void ensureMenuView()
  {
    if (this.mMenuView == null)
    {
      this.mMenuView = new ActionMenuView(getContext());
      this.mMenuView.setPopupTheme(this.mPopupTheme);
      this.mMenuView.setOnMenuItemClickListener(this.mMenuViewItemClickListener);
      this.mMenuView.setMenuCallbacks(this.mActionMenuPresenterCallback, this.mMenuBuilderCallback);
      b localb = generateDefaultLayoutParams();
      localb.gravity = (0x800005 | this.mButtonGravity & 0x70);
      this.mMenuView.setLayoutParams(localb);
      addSystemView(this.mMenuView, false);
    }
  }
  
  private void ensureNavButtonView()
  {
    if (this.mNavButtonView == null)
    {
      this.mNavButtonView = new p(getContext(), null, android.support.v7.a.a.a.toolbarNavigationButtonStyle);
      b localb = generateDefaultLayoutParams();
      localb.gravity = (0x800003 | this.mButtonGravity & 0x70);
      this.mNavButtonView.setLayoutParams(localb);
    }
  }
  
  private int getChildHorizontalGravity(int paramInt)
  {
    int j = android.support.v4.view.r.K(this);
    int i = e.getAbsoluteGravity(paramInt, j) & 0x7;
    paramInt = i;
    switch (i)
    {
    case 2: 
    case 4: 
    default: 
      if (j == 1) {
        paramInt = 5;
      }
      break;
    case 1: 
    case 3: 
    case 5: 
      return paramInt;
    }
    return 3;
  }
  
  private int getChildTop(View paramView, int paramInt)
  {
    b localb = (b)paramView.getLayoutParams();
    int j = paramView.getMeasuredHeight();
    int i;
    int k;
    int m;
    if (paramInt > 0)
    {
      paramInt = (j - paramInt) / 2;
      switch (getChildVerticalGravity(localb.gravity))
      {
      default: 
        i = getPaddingTop();
        k = getPaddingBottom();
        m = getHeight();
        paramInt = (m - i - k - j) / 2;
        if (paramInt < localb.topMargin) {
          paramInt = localb.topMargin;
        }
        break;
      }
    }
    for (;;)
    {
      return paramInt + i;
      paramInt = 0;
      break;
      return getPaddingTop() - paramInt;
      return getHeight() - getPaddingBottom() - j - localb.bottomMargin - paramInt;
      j = m - k - j - paramInt - i;
      if (j < localb.bottomMargin) {
        paramInt = Math.max(0, paramInt - (localb.bottomMargin - j));
      }
    }
  }
  
  private int getChildVerticalGravity(int paramInt)
  {
    int i = paramInt & 0x70;
    paramInt = i;
    switch (i)
    {
    default: 
      paramInt = this.mGravity & 0x70;
    }
    return paramInt;
  }
  
  private int getHorizontalMargins(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i;
    if (Build.VERSION.SDK_INT >= 17)
    {
      i = paramView.getMarginStart();
      if (Build.VERSION.SDK_INT < 17) {
        break label46;
      }
    }
    label46:
    for (int j = paramView.getMarginEnd();; j = paramView.rightMargin)
    {
      return j + i;
      i = paramView.leftMargin;
      break;
    }
  }
  
  private MenuInflater getMenuInflater()
  {
    return new g(getContext());
  }
  
  private int getVerticalMargins(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = paramView.topMargin;
    return paramView.bottomMargin + i;
  }
  
  private int getViewListMeasuredWidth(List<View> paramList, int[] paramArrayOfInt)
  {
    int m = paramArrayOfInt[0];
    int k = paramArrayOfInt[1];
    int n = paramList.size();
    int j = 0;
    int i = 0;
    while (j < n)
    {
      paramArrayOfInt = (View)paramList.get(j);
      b localb = (b)paramArrayOfInt.getLayoutParams();
      m = localb.leftMargin - m;
      k = localb.rightMargin - k;
      int i1 = Math.max(0, m);
      int i2 = Math.max(0, k);
      m = Math.max(0, -m);
      k = Math.max(0, -k);
      int i3 = paramArrayOfInt.getMeasuredWidth();
      j += 1;
      i += i3 + i1 + i2;
    }
    return i;
  }
  
  private boolean isChildOrHidden(View paramView)
  {
    return (paramView.getParent() == this) || (this.mHiddenViews.contains(paramView));
  }
  
  private static boolean isCustomView(View paramView)
  {
    return ((b)paramView.getLayoutParams()).ajW == 0;
  }
  
  private int layoutChildLeft(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    b localb = (b)paramView.getLayoutParams();
    int i = localb.leftMargin - paramArrayOfInt[0];
    paramInt1 = Math.max(0, i) + paramInt1;
    paramArrayOfInt[0] = Math.max(0, -i);
    paramInt2 = getChildTop(paramView, paramInt2);
    i = paramView.getMeasuredWidth();
    paramView.layout(paramInt1, paramInt2, paramInt1 + i, paramView.getMeasuredHeight() + paramInt2);
    return localb.rightMargin + i + paramInt1;
  }
  
  private int layoutChildRight(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    b localb = (b)paramView.getLayoutParams();
    int i = localb.rightMargin - paramArrayOfInt[1];
    paramInt1 -= Math.max(0, i);
    paramArrayOfInt[1] = Math.max(0, -i);
    paramInt2 = getChildTop(paramView, paramInt2);
    i = paramView.getMeasuredWidth();
    paramView.layout(paramInt1 - i, paramInt2, paramInt1, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 - (localb.leftMargin + i);
  }
  
  private int measureChildCollapseMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = localMarginLayoutParams.leftMargin - paramArrayOfInt[0];
    int j = localMarginLayoutParams.rightMargin - paramArrayOfInt[1];
    int k = Math.max(0, i) + Math.max(0, j);
    paramArrayOfInt[0] = Math.max(0, -i);
    paramArrayOfInt[1] = Math.max(0, -j);
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + k + paramInt2, localMarginLayoutParams.width), getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin + paramInt4, localMarginLayoutParams.height));
    return paramView.getMeasuredWidth() + k;
  }
  
  private void measureChildConstrained(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin + paramInt2, localMarginLayoutParams.width);
    paramInt2 = getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin + paramInt4, localMarginLayoutParams.height);
    paramInt3 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = paramInt2;
    if (paramInt3 != 1073741824)
    {
      paramInt1 = paramInt2;
      if (paramInt5 >= 0)
      {
        paramInt1 = paramInt5;
        if (paramInt3 != 0) {
          paramInt1 = Math.min(View.MeasureSpec.getSize(paramInt2), paramInt5);
        }
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
      }
    }
    paramView.measure(i, paramInt1);
  }
  
  private void postShowOverflowMenu()
  {
    removeCallbacks(this.mShowOverflowMenuRunnable);
    post(this.mShowOverflowMenuRunnable);
  }
  
  private boolean shouldCollapse()
  {
    if (!this.mCollapsible) {
      return false;
    }
    int j = getChildCount();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label56;
      }
      View localView = getChildAt(i);
      if ((shouldLayout(localView)) && (localView.getMeasuredWidth() > 0) && (localView.getMeasuredHeight() > 0)) {
        break;
      }
      i += 1;
    }
    label56:
    return true;
  }
  
  private boolean shouldLayout(View paramView)
  {
    return (paramView != null) && (paramView.getParent() == this) && (paramView.getVisibility() != 8);
  }
  
  void addChildrenForExpandedActionView()
  {
    int i = this.mHiddenViews.size() - 1;
    while (i >= 0)
    {
      addView((View)this.mHiddenViews.get(i));
      i -= 1;
    }
    this.mHiddenViews.clear();
  }
  
  public boolean canShowOverflowMenu()
  {
    return (getVisibility() == 0) && (this.mMenuView != null) && (this.mMenuView.Ug);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof b));
  }
  
  public void collapseActionView()
  {
    if (this.mExpandedMenuPresenter == null) {}
    for (j localj = null;; localj = this.mExpandedMenuPresenter.ajV)
    {
      if (localj != null) {
        localj.collapseActionView();
      }
      return;
    }
  }
  
  public void dismissPopupMenus()
  {
    if (this.mMenuView != null) {
      this.mMenuView.dismissPopupMenus();
    }
  }
  
  void ensureCollapseButtonView()
  {
    if (this.mCollapseButtonView == null)
    {
      this.mCollapseButtonView = new p(getContext(), null, android.support.v7.a.a.a.toolbarNavigationButtonStyle);
      this.mCollapseButtonView.setImageDrawable(this.mCollapseIcon);
      this.mCollapseButtonView.setContentDescription(this.mCollapseDescription);
      b localb = generateDefaultLayoutParams();
      localb.gravity = (0x800003 | this.mButtonGravity & 0x70);
      localb.ajW = 2;
      this.mCollapseButtonView.setLayoutParams(localb);
      this.mCollapseButtonView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Toolbar.this.collapseActionView();
        }
      });
    }
  }
  
  protected b generateDefaultLayoutParams()
  {
    return new b();
  }
  
  public b generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new b(getContext(), paramAttributeSet);
  }
  
  protected b generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof b)) {
      return new b((b)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof android.support.v7.app.a.a)) {
      return new b((android.support.v7.app.a.a)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new b((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new b(paramLayoutParams);
  }
  
  public int getContentInsetEnd()
  {
    if (this.mContentInsets != null)
    {
      bf localbf = this.mContentInsets;
      if (localbf.hm) {
        return localbf.tD;
      }
      return localbf.tF;
    }
    return 0;
  }
  
  public int getContentInsetEndWithActions()
  {
    if (this.mContentInsetEndWithActions != Integer.MIN_VALUE) {
      return this.mContentInsetEndWithActions;
    }
    return getContentInsetEnd();
  }
  
  public int getContentInsetLeft()
  {
    if (this.mContentInsets != null) {
      return this.mContentInsets.tD;
    }
    return 0;
  }
  
  public int getContentInsetRight()
  {
    if (this.mContentInsets != null) {
      return this.mContentInsets.tF;
    }
    return 0;
  }
  
  public int getContentInsetStart()
  {
    if (this.mContentInsets != null)
    {
      bf localbf = this.mContentInsets;
      if (localbf.hm) {
        return localbf.tF;
      }
      return localbf.tD;
    }
    return 0;
  }
  
  public int getContentInsetStartWithNavigation()
  {
    if (this.mContentInsetStartWithNavigation != Integer.MIN_VALUE) {
      return this.mContentInsetStartWithNavigation;
    }
    return getContentInsetStart();
  }
  
  public int getCurrentContentInsetEnd()
  {
    int i;
    if (this.mMenuView != null)
    {
      h localh = this.mMenuView.Pj;
      if ((localh != null) && (localh.hasVisibleItems())) {
        i = 1;
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        return Math.max(getContentInsetEnd(), Math.max(this.mContentInsetEndWithActions, 0));
        i = 0;
      }
      else
      {
        return getContentInsetEnd();
        i = 0;
      }
    }
  }
  
  public int getCurrentContentInsetLeft()
  {
    if (android.support.v4.view.r.K(this) == 1) {
      return getCurrentContentInsetEnd();
    }
    return getCurrentContentInsetStart();
  }
  
  public int getCurrentContentInsetRight()
  {
    if (android.support.v4.view.r.K(this) == 1) {
      return getCurrentContentInsetStart();
    }
    return getCurrentContentInsetEnd();
  }
  
  public int getCurrentContentInsetStart()
  {
    if (getNavigationIcon() != null) {
      return Math.max(getContentInsetStart(), Math.max(this.mContentInsetStartWithNavigation, 0));
    }
    return getContentInsetStart();
  }
  
  public Drawable getLogo()
  {
    if (this.mLogoView != null) {
      return this.mLogoView.getDrawable();
    }
    return null;
  }
  
  public CharSequence getLogoDescription()
  {
    if (this.mLogoView != null) {
      return this.mLogoView.getContentDescription();
    }
    return null;
  }
  
  public Menu getMenu()
  {
    ensureMenu();
    return this.mMenuView.getMenu();
  }
  
  public CharSequence getNavigationContentDescription()
  {
    if (this.mNavButtonView != null) {
      return this.mNavButtonView.getContentDescription();
    }
    return null;
  }
  
  public Drawable getNavigationIcon()
  {
    if (this.mNavButtonView != null) {
      return this.mNavButtonView.getDrawable();
    }
    return null;
  }
  
  d getOuterActionMenuPresenter()
  {
    return this.mOuterActionMenuPresenter;
  }
  
  public Drawable getOverflowIcon()
  {
    ensureMenu();
    return this.mMenuView.getOverflowIcon();
  }
  
  Context getPopupContext()
  {
    return this.mPopupContext;
  }
  
  public int getPopupTheme()
  {
    return this.mPopupTheme;
  }
  
  public CharSequence getSubtitle()
  {
    return this.mSubtitleText;
  }
  
  public CharSequence getTitle()
  {
    return this.mTitleText;
  }
  
  public int getTitleMarginBottom()
  {
    return this.mTitleMarginBottom;
  }
  
  public int getTitleMarginEnd()
  {
    return this.mTitleMarginEnd;
  }
  
  public int getTitleMarginStart()
  {
    return this.mTitleMarginStart;
  }
  
  public int getTitleMarginTop()
  {
    return this.mTitleMarginTop;
  }
  
  public ak getWrapper()
  {
    if (this.mWrapper == null) {
      this.mWrapper = new bp(this, true);
    }
    return this.mWrapper;
  }
  
  public boolean hasExpandedActionView()
  {
    return (this.mExpandedMenuPresenter != null) && (this.mExpandedMenuPresenter.ajV != null);
  }
  
  public boolean hideOverflowMenu()
  {
    if (this.mMenuView != null)
    {
      ActionMenuView localActionMenuView = this.mMenuView;
      if ((localActionMenuView.UD != null) && (localActionMenuView.UD.hideOverflowMenu())) {}
      for (int i = 1; i != 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  public void inflateMenu(int paramInt)
  {
    getMenuInflater().inflate(paramInt, getMenu());
  }
  
  public boolean isOverflowMenuShowPending()
  {
    if (this.mMenuView != null)
    {
      Object localObject = this.mMenuView;
      if (((ActionMenuView)localObject).UD != null)
      {
        localObject = ((ActionMenuView)localObject).UD;
        if ((((d)localObject).Uu != null) || (((d)localObject).isOverflowMenuShowing()))
        {
          i = 1;
          if (i == 0) {
            break label57;
          }
        }
      }
      label57:
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label62;
        }
        return true;
        i = 0;
        break;
      }
    }
    label62:
    return false;
  }
  
  public boolean isOverflowMenuShowing()
  {
    if (this.mMenuView != null)
    {
      ActionMenuView localActionMenuView = this.mMenuView;
      if ((localActionMenuView.UD != null) && (localActionMenuView.UD.isOverflowMenuShowing())) {}
      for (int i = 1; i != 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  public boolean isTitleTruncated()
  {
    if (this.mTitleTextView == null) {}
    for (;;)
    {
      return false;
      Layout localLayout = this.mTitleTextView.getLayout();
      if (localLayout != null)
      {
        int j = localLayout.getLineCount();
        int i = 0;
        while (i < j)
        {
          if (localLayout.getEllipsisCount(i) > 0) {
            return true;
          }
          i += 1;
        }
      }
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.mShowOverflowMenuRunnable);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 9) {
      this.mEatingHover = false;
    }
    if (!this.mEatingHover)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i == 9) && (!bool)) {
        this.mEatingHover = true;
      }
    }
    if ((i == 10) || (i == 3)) {
      this.mEatingHover = false;
    }
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int k;
    int i1;
    int i4;
    int j;
    int i2;
    int i3;
    int i5;
    int[] arrayOfInt;
    int i;
    if (android.support.v4.view.r.K(this) == 1)
    {
      k = 1;
      i1 = getWidth();
      i4 = getHeight();
      j = getPaddingLeft();
      i2 = getPaddingRight();
      i3 = getPaddingTop();
      i5 = getPaddingBottom();
      paramInt1 = i1 - i2;
      arrayOfInt = this.mTempMargins;
      arrayOfInt[1] = 0;
      arrayOfInt[0] = 0;
      paramInt3 = android.support.v4.view.r.R(this);
      if (paramInt3 < 0) {
        break label898;
      }
      i = Math.min(paramInt3, paramInt4 - paramInt2);
      label91:
      if (!shouldLayout(this.mNavButtonView)) {
        break label1595;
      }
      if (k == 0) {
        break label904;
      }
      paramInt1 = layoutChildRight(this.mNavButtonView, paramInt1, arrayOfInt, i);
      paramInt2 = j;
    }
    for (;;)
    {
      label124:
      paramInt3 = paramInt1;
      paramInt4 = paramInt2;
      if (shouldLayout(this.mCollapseButtonView))
      {
        if (k != 0)
        {
          paramInt3 = layoutChildRight(this.mCollapseButtonView, paramInt1, arrayOfInt, i);
          paramInt4 = paramInt2;
        }
      }
      else
      {
        label164:
        paramInt1 = paramInt3;
        paramInt2 = paramInt4;
        if (shouldLayout(this.mMenuView))
        {
          if (k == 0) {
            break label943;
          }
          paramInt2 = layoutChildLeft(this.mMenuView, paramInt4, arrayOfInt, i);
          paramInt1 = paramInt3;
        }
        label204:
        paramInt3 = getCurrentContentInsetLeft();
        paramInt4 = getCurrentContentInsetRight();
        arrayOfInt[0] = Math.max(0, paramInt3 - paramInt2);
        arrayOfInt[1] = Math.max(0, paramInt4 - (i1 - i2 - paramInt1));
        paramInt3 = Math.max(paramInt2, paramInt3);
        paramInt4 = Math.min(paramInt1, i1 - i2 - paramInt4);
        paramInt2 = paramInt4;
        paramInt1 = paramInt3;
        if (shouldLayout(this.mExpandedActionView))
        {
          if (k == 0) {
            break label964;
          }
          paramInt2 = layoutChildRight(this.mExpandedActionView, paramInt4, arrayOfInt, i);
          paramInt1 = paramInt3;
        }
        label308:
        if (!shouldLayout(this.mLogoView)) {
          break label1587;
        }
        if (k == 0) {
          break label985;
        }
        paramInt3 = layoutChildRight(this.mLogoView, paramInt2, arrayOfInt, i);
        paramInt2 = paramInt1;
      }
      for (;;)
      {
        label341:
        paramBoolean = shouldLayout(this.mTitleTextView);
        boolean bool = shouldLayout(this.mSubtitleTextView);
        paramInt1 = 0;
        Object localObject1;
        if (paramBoolean)
        {
          localObject1 = (b)this.mTitleTextView.getLayoutParams();
          paramInt1 = ((b)localObject1).topMargin;
          paramInt4 = this.mTitleTextView.getMeasuredHeight();
          paramInt1 = ((b)localObject1).bottomMargin + (paramInt1 + paramInt4) + 0;
        }
        int m;
        if (bool)
        {
          localObject1 = (b)this.mSubtitleTextView.getLayoutParams();
          paramInt4 = ((b)localObject1).topMargin;
          m = this.mSubtitleTextView.getMeasuredHeight();
        }
        for (int n = ((b)localObject1).bottomMargin + (paramInt4 + m) + paramInt1;; n = paramInt1)
        {
          label479:
          Object localObject2;
          if (!paramBoolean)
          {
            paramInt4 = paramInt3;
            paramInt1 = paramInt2;
            if (!bool) {}
          }
          else
          {
            if (!paramBoolean) {
              break label1007;
            }
            localObject1 = this.mTitleTextView;
            if (!bool) {
              break label1016;
            }
            localObject2 = this.mSubtitleTextView;
            label490:
            localObject1 = (b)((View)localObject1).getLayoutParams();
            localObject2 = (b)((View)localObject2).getLayoutParams();
            if (((!paramBoolean) || (this.mTitleTextView.getMeasuredWidth() <= 0)) && ((!bool) || (this.mSubtitleTextView.getMeasuredWidth() <= 0))) {
              break label1025;
            }
            m = 1;
            label542:
            switch (this.mGravity & 0x70)
            {
            default: 
              paramInt1 = (i4 - i3 - i5 - n) / 2;
              if (paramInt1 < ((b)localObject1).topMargin + this.mTitleMarginTop) {
                paramInt1 = ((b)localObject1).topMargin + this.mTitleMarginTop;
              }
              break;
            }
          }
          label615:
          label620:
          label636:
          label898:
          label904:
          label943:
          label964:
          label985:
          label1007:
          label1016:
          label1025:
          label1145:
          label1553:
          label1571:
          label1578:
          for (;;)
          {
            paramInt1 = i3 + paramInt1;
            if (k != 0) {
              if (m != 0)
              {
                paramInt4 = this.mTitleMarginStart;
                paramInt4 -= arrayOfInt[1];
                paramInt3 -= Math.max(0, paramInt4);
                arrayOfInt[1] = Math.max(0, -paramInt4);
                if (!paramBoolean) {
                  break label1571;
                }
                localObject1 = (b)this.mTitleTextView.getLayoutParams();
                paramInt4 = paramInt3 - this.mTitleTextView.getMeasuredWidth();
                k = this.mTitleTextView.getMeasuredHeight() + paramInt1;
                this.mTitleTextView.layout(paramInt4, paramInt1, paramInt3, k);
                n = this.mTitleMarginEnd;
                paramInt1 = k + ((b)localObject1).bottomMargin;
                paramInt4 -= n;
              }
            }
            for (;;)
            {
              if (bool)
              {
                localObject1 = (b)this.mSubtitleTextView.getLayoutParams();
                paramInt1 = ((b)localObject1).topMargin + paramInt1;
                k = this.mSubtitleTextView.getMeasuredWidth();
                n = this.mSubtitleTextView.getMeasuredHeight();
                this.mSubtitleTextView.layout(paramInt3 - k, paramInt1, paramInt3, n + paramInt1);
                paramInt1 = this.mTitleMarginEnd;
                k = ((b)localObject1).bottomMargin;
              }
              for (paramInt1 = paramInt3 - paramInt1;; paramInt1 = paramInt3)
              {
                if (m != 0) {}
                for (paramInt1 = Math.min(paramInt4, paramInt1);; paramInt1 = paramInt3)
                {
                  paramInt4 = paramInt1;
                  paramInt1 = paramInt2;
                  addCustomViewsWithGravity(this.mTempViews, 3);
                  paramInt3 = this.mTempViews.size();
                  paramInt2 = 0;
                  for (;;)
                  {
                    if (paramInt2 < paramInt3)
                    {
                      paramInt1 = layoutChildLeft((View)this.mTempViews.get(paramInt2), paramInt1, arrayOfInt, i);
                      paramInt2 += 1;
                      continue;
                      k = 0;
                      break;
                      i = 0;
                      break label91;
                      paramInt2 = layoutChildLeft(this.mNavButtonView, j, arrayOfInt, i);
                      break label124;
                      paramInt4 = layoutChildLeft(this.mCollapseButtonView, paramInt2, arrayOfInt, i);
                      paramInt3 = paramInt1;
                      break label164;
                      paramInt1 = layoutChildRight(this.mMenuView, paramInt3, arrayOfInt, i);
                      paramInt2 = paramInt4;
                      break label204;
                      paramInt1 = layoutChildLeft(this.mExpandedActionView, paramInt3, arrayOfInt, i);
                      paramInt2 = paramInt4;
                      break label308;
                      paramInt1 = layoutChildLeft(this.mLogoView, paramInt1, arrayOfInt, i);
                      paramInt3 = paramInt2;
                      paramInt2 = paramInt1;
                      break label341;
                      localObject1 = this.mSubtitleTextView;
                      break label479;
                      localObject2 = this.mTitleTextView;
                      break label490;
                      m = 0;
                      break label542;
                      paramInt1 = getPaddingTop();
                      paramInt1 = ((b)localObject1).topMargin + paramInt1 + this.mTitleMarginTop;
                      break label620;
                      paramInt4 = i4 - i5 - n - paramInt1 - i3;
                      if (paramInt4 >= ((b)localObject1).bottomMargin + this.mTitleMarginBottom) {
                        break label1578;
                      }
                      paramInt1 = Math.max(0, paramInt1 - (((b)localObject2).bottomMargin + this.mTitleMarginBottom - paramInt4));
                      break label615;
                      paramInt1 = i4 - i5 - ((b)localObject2).bottomMargin - this.mTitleMarginBottom - n;
                      break label620;
                      paramInt4 = 0;
                      break label636;
                      if (m != 0)
                      {
                        paramInt4 = this.mTitleMarginStart;
                        paramInt4 -= arrayOfInt[0];
                        paramInt2 += Math.max(0, paramInt4);
                        arrayOfInt[0] = Math.max(0, -paramInt4);
                        if (!paramBoolean) {
                          break label1553;
                        }
                        localObject1 = (b)this.mTitleTextView.getLayoutParams();
                        k = this.mTitleTextView.getMeasuredWidth() + paramInt2;
                        paramInt4 = this.mTitleTextView.getMeasuredHeight() + paramInt1;
                        this.mTitleTextView.layout(paramInt2, paramInt1, k, paramInt4);
                        n = this.mTitleMarginEnd;
                        paramInt1 = ((b)localObject1).bottomMargin;
                        k += n;
                        paramInt1 += paramInt4;
                      }
                    }
                  }
                  for (;;)
                  {
                    if (bool)
                    {
                      localObject1 = (b)this.mSubtitleTextView.getLayoutParams();
                      paramInt4 = ((b)localObject1).topMargin + paramInt1;
                      paramInt1 = this.mSubtitleTextView.getMeasuredWidth() + paramInt2;
                      n = this.mSubtitleTextView.getMeasuredHeight();
                      this.mSubtitleTextView.layout(paramInt2, paramInt4, paramInt1, n + paramInt4);
                      paramInt4 = this.mTitleMarginEnd;
                      n = ((b)localObject1).bottomMargin;
                    }
                    for (n = paramInt4 + paramInt1;; n = paramInt2)
                    {
                      paramInt4 = paramInt3;
                      paramInt1 = paramInt2;
                      if (m == 0) {
                        break;
                      }
                      paramInt1 = Math.max(k, n);
                      paramInt4 = paramInt3;
                      break;
                      paramInt4 = 0;
                      break label1145;
                      addCustomViewsWithGravity(this.mTempViews, 5);
                      paramInt3 = this.mTempViews.size();
                      paramInt2 = 0;
                      while (paramInt2 < paramInt3)
                      {
                        paramInt4 = layoutChildRight((View)this.mTempViews.get(paramInt2), paramInt4, arrayOfInt, i);
                        paramInt2 += 1;
                      }
                      addCustomViewsWithGravity(this.mTempViews, 1);
                      paramInt3 = getViewListMeasuredWidth(this.mTempViews, arrayOfInt);
                      paramInt2 = (i1 - j - i2) / 2 + j - paramInt3 / 2;
                      paramInt3 += paramInt2;
                      if (paramInt2 < paramInt1) {}
                      for (;;)
                      {
                        paramInt4 = this.mTempViews.size();
                        paramInt3 = 0;
                        paramInt2 = paramInt1;
                        paramInt1 = paramInt3;
                        while (paramInt1 < paramInt4)
                        {
                          paramInt2 = layoutChildLeft((View)this.mTempViews.get(paramInt1), paramInt2, arrayOfInt, i);
                          paramInt1 += 1;
                        }
                        paramInt1 = paramInt2;
                        if (paramInt3 > paramInt4) {
                          paramInt1 = paramInt2 - (paramInt3 - paramInt4);
                        }
                      }
                      this.mTempViews.clear();
                      return;
                    }
                    k = paramInt2;
                  }
                }
              }
              paramInt4 = paramInt3;
            }
          }
        }
        label1587:
        paramInt3 = paramInt2;
        paramInt2 = paramInt1;
      }
      label1595:
      paramInt2 = j;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = this.mTempMargins;
    int n;
    int i1;
    int i;
    int m;
    int k;
    if (bw.bj(this))
    {
      n = 0;
      i1 = 1;
      i = 0;
      if (!shouldLayout(this.mNavButtonView)) {
        break label956;
      }
      measureChildConstrained(this.mNavButtonView, paramInt1, 0, paramInt2, 0, this.mMaxButtonHeight);
      i = this.mNavButtonView.getMeasuredWidth() + getHorizontalMargins(this.mNavButtonView);
      m = Math.max(0, this.mNavButtonView.getMeasuredHeight() + getVerticalMargins(this.mNavButtonView));
      k = View.combineMeasuredStates(0, this.mNavButtonView.getMeasuredState());
    }
    for (;;)
    {
      int i2 = i;
      i = k;
      int j = m;
      if (shouldLayout(this.mCollapseButtonView))
      {
        measureChildConstrained(this.mCollapseButtonView, paramInt1, 0, paramInt2, 0, this.mMaxButtonHeight);
        i2 = this.mCollapseButtonView.getMeasuredWidth() + getHorizontalMargins(this.mCollapseButtonView);
        j = Math.max(m, this.mCollapseButtonView.getMeasuredHeight() + getVerticalMargins(this.mCollapseButtonView));
        i = View.combineMeasuredStates(k, this.mCollapseButtonView.getMeasuredState());
      }
      k = getCurrentContentInsetStart();
      int i3 = Math.max(k, i2) + 0;
      arrayOfInt[i1] = Math.max(0, k - i2);
      i1 = 0;
      k = i;
      m = j;
      if (shouldLayout(this.mMenuView))
      {
        measureChildConstrained(this.mMenuView, paramInt1, i3, paramInt2, 0, this.mMaxButtonHeight);
        i1 = this.mMenuView.getMeasuredWidth() + getHorizontalMargins(this.mMenuView);
        m = Math.max(j, this.mMenuView.getMeasuredHeight() + getVerticalMargins(this.mMenuView));
        k = View.combineMeasuredStates(i, this.mMenuView.getMeasuredState());
      }
      i = getCurrentContentInsetEnd();
      i2 = i3 + Math.max(i, i1);
      arrayOfInt[n] = Math.max(0, i - i1);
      n = i2;
      i = k;
      j = m;
      if (shouldLayout(this.mExpandedActionView))
      {
        n = i2 + measureChildCollapseMargins(this.mExpandedActionView, paramInt1, i2, paramInt2, 0, arrayOfInt);
        j = Math.max(m, this.mExpandedActionView.getMeasuredHeight() + getVerticalMargins(this.mExpandedActionView));
        i = View.combineMeasuredStates(k, this.mExpandedActionView.getMeasuredState());
      }
      k = n;
      i1 = i;
      m = j;
      if (shouldLayout(this.mLogoView))
      {
        k = n + measureChildCollapseMargins(this.mLogoView, paramInt1, n, paramInt2, 0, arrayOfInt);
        m = Math.max(j, this.mLogoView.getMeasuredHeight() + getVerticalMargins(this.mLogoView));
        i1 = View.combineMeasuredStates(i, this.mLogoView.getMeasuredState());
      }
      i2 = getChildCount();
      n = 0;
      i = i1;
      j = m;
      m = n;
      i1 = k;
      label523:
      if (m < i2)
      {
        View localView = getChildAt(m);
        if ((((b)localView.getLayoutParams()).ajW != 0) || (!shouldLayout(localView))) {
          break label943;
        }
        i1 += measureChildCollapseMargins(localView, paramInt1, i1, paramInt2, 0, arrayOfInt);
        k = Math.max(j, localView.getMeasuredHeight() + getVerticalMargins(localView));
        j = View.combineMeasuredStates(i, localView.getMeasuredState());
      }
      for (i = k;; i = k)
      {
        m += 1;
        k = j;
        j = i;
        i = k;
        break label523;
        n = 1;
        i1 = 0;
        break;
        n = 0;
        m = 0;
        int i4 = this.mTitleMarginTop + this.mTitleMarginBottom;
        int i5 = this.mTitleMarginStart + this.mTitleMarginEnd;
        k = i;
        if (shouldLayout(this.mTitleTextView))
        {
          measureChildCollapseMargins(this.mTitleTextView, paramInt1, i1 + i5, paramInt2, i4, arrayOfInt);
          k = this.mTitleTextView.getMeasuredWidth();
          n = getHorizontalMargins(this.mTitleTextView) + k;
          m = this.mTitleTextView.getMeasuredHeight() + getVerticalMargins(this.mTitleTextView);
          k = View.combineMeasuredStates(i, this.mTitleTextView.getMeasuredState());
        }
        i3 = m;
        i2 = n;
        i = k;
        if (shouldLayout(this.mSubtitleTextView))
        {
          i2 = Math.max(n, measureChildCollapseMargins(this.mSubtitleTextView, paramInt1, i1 + i5, paramInt2, i4 + m, arrayOfInt));
          i3 = m + (this.mSubtitleTextView.getMeasuredHeight() + getVerticalMargins(this.mSubtitleTextView));
          i = View.combineMeasuredStates(k, this.mSubtitleTextView.getMeasuredState());
        }
        j = Math.max(j, i3);
        n = getPaddingLeft();
        i3 = getPaddingRight();
        k = getPaddingTop();
        m = getPaddingBottom();
        n = View.resolveSizeAndState(Math.max(i2 + i1 + (n + i3), getSuggestedMinimumWidth()), paramInt1, 0xFF000000 & i);
        paramInt1 = View.resolveSizeAndState(Math.max(j + (k + m), getSuggestedMinimumHeight()), paramInt2, i << 16);
        if (shouldCollapse()) {
          paramInt1 = 0;
        }
        setMeasuredDimension(n, paramInt1);
        return;
        label943:
        k = j;
        j = i;
      }
      label956:
      k = 0;
      m = 0;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof d))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    d locald = (d)paramParcelable;
    super.onRestoreInstanceState(locald.EV);
    if (this.mMenuView != null) {}
    for (paramParcelable = this.mMenuView.Pj;; paramParcelable = null)
    {
      if ((locald.ajX != 0) && (this.mExpandedMenuPresenter != null) && (paramParcelable != null))
      {
        paramParcelable = paramParcelable.findItem(locald.ajX);
        if (paramParcelable != null) {
          paramParcelable.expandActionView();
        }
      }
      if (!locald.ajY) {
        break;
      }
      postShowOverflowMenu();
      return;
    }
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 17) {
      super.onRtlPropertiesChanged(paramInt);
    }
    ensureContentInsets();
    bf localbf = this.mContentInsets;
    if (paramInt == 1) {
      if (bool != localbf.hm)
      {
        localbf.hm = bool;
        if (!localbf.agC) {
          break label168;
        }
        if (!bool) {
          break label113;
        }
        if (localbf.EN == Integer.MIN_VALUE) {
          break label97;
        }
        paramInt = localbf.EN;
        label67:
        localbf.tD = paramInt;
        if (localbf.agz == Integer.MIN_VALUE) {
          break label105;
        }
      }
    }
    label97:
    label105:
    for (paramInt = localbf.agz;; paramInt = localbf.agB)
    {
      localbf.tF = paramInt;
      return;
      bool = false;
      break;
      paramInt = localbf.agA;
      break label67;
    }
    label113:
    if (localbf.agz != Integer.MIN_VALUE)
    {
      paramInt = localbf.agz;
      localbf.tD = paramInt;
      if (localbf.EN == Integer.MIN_VALUE) {
        break label160;
      }
    }
    label160:
    for (paramInt = localbf.EN;; paramInt = localbf.agB)
    {
      localbf.tF = paramInt;
      return;
      paramInt = localbf.agA;
      break;
    }
    label168:
    localbf.tD = localbf.agA;
    localbf.tF = localbf.agB;
  }
  
  protected Parcelable onSaveInstanceState()
  {
    d locald = new d(super.onSaveInstanceState());
    if ((this.mExpandedMenuPresenter != null) && (this.mExpandedMenuPresenter.ajV != null)) {
      locald.ajX = this.mExpandedMenuPresenter.ajV.getItemId();
    }
    locald.ajY = isOverflowMenuShowing();
    return locald;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 0) {
      this.mEatingTouch = false;
    }
    if (!this.mEatingTouch)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i == 0) && (!bool)) {
        this.mEatingTouch = true;
      }
    }
    if ((i == 1) || (i == 3)) {
      this.mEatingTouch = false;
    }
    return true;
  }
  
  void removeChildrenForExpandedActionView()
  {
    int i = getChildCount() - 1;
    while (i >= 0)
    {
      View localView = getChildAt(i);
      if ((((b)localView.getLayoutParams()).ajW != 2) && (localView != this.mMenuView))
      {
        removeViewAt(i);
        this.mHiddenViews.add(localView);
      }
      i -= 1;
    }
  }
  
  public void setCollapsible(boolean paramBoolean)
  {
    this.mCollapsible = paramBoolean;
    requestLayout();
  }
  
  public void setContentInsetEndWithActions(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = Integer.MIN_VALUE;
    }
    if (i != this.mContentInsetEndWithActions)
    {
      this.mContentInsetEndWithActions = i;
      if (getNavigationIcon() != null) {
        requestLayout();
      }
    }
  }
  
  public void setContentInsetStartWithNavigation(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = Integer.MIN_VALUE;
    }
    if (i != this.mContentInsetStartWithNavigation)
    {
      this.mContentInsetStartWithNavigation = i;
      if (getNavigationIcon() != null) {
        requestLayout();
      }
    }
  }
  
  public void setContentInsetsAbsolute(int paramInt1, int paramInt2)
  {
    ensureContentInsets();
    this.mContentInsets.aj(paramInt1, paramInt2);
  }
  
  public void setContentInsetsRelative(int paramInt1, int paramInt2)
  {
    ensureContentInsets();
    this.mContentInsets.ai(paramInt1, paramInt2);
  }
  
  public void setLogo(int paramInt)
  {
    setLogo(b.a(getContext(), paramInt));
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      ensureLogoView();
      if (!isChildOrHidden(this.mLogoView)) {
        addSystemView(this.mLogoView, true);
      }
    }
    for (;;)
    {
      if (this.mLogoView != null) {
        this.mLogoView.setImageDrawable(paramDrawable);
      }
      return;
      if ((this.mLogoView != null) && (isChildOrHidden(this.mLogoView)))
      {
        removeView(this.mLogoView);
        this.mHiddenViews.remove(this.mLogoView);
      }
    }
  }
  
  public void setLogoDescription(int paramInt)
  {
    setLogoDescription(getContext().getText(paramInt));
  }
  
  public void setLogoDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      ensureLogoView();
    }
    if (this.mLogoView != null) {
      this.mLogoView.setContentDescription(paramCharSequence);
    }
  }
  
  public void setMenu(h paramh, d paramd)
  {
    if ((paramh == null) && (this.mMenuView == null)) {}
    h localh;
    do
    {
      return;
      ensureMenuView();
      localh = this.mMenuView.Pj;
    } while (localh == paramh);
    if (localh != null)
    {
      localh.b(this.mOuterActionMenuPresenter);
      localh.b(this.mExpandedMenuPresenter);
    }
    if (this.mExpandedMenuPresenter == null) {
      this.mExpandedMenuPresenter = new a();
    }
    paramd.Uo = true;
    if (paramh != null)
    {
      paramh.a(paramd, this.mPopupContext);
      paramh.a(this.mExpandedMenuPresenter, this.mPopupContext);
    }
    for (;;)
    {
      this.mMenuView.setPopupTheme(this.mPopupTheme);
      this.mMenuView.setPresenter(paramd);
      this.mOuterActionMenuPresenter = paramd;
      return;
      paramd.a(this.mPopupContext, null);
      this.mExpandedMenuPresenter.a(this.mPopupContext, null);
      paramd.G(true);
      this.mExpandedMenuPresenter.G(true);
    }
  }
  
  public void setMenuCallbacks(o.a parama, h.a parama1)
  {
    this.mActionMenuPresenterCallback = parama;
    this.mMenuBuilderCallback = parama1;
    if (this.mMenuView != null) {
      this.mMenuView.setMenuCallbacks(parama, parama1);
    }
  }
  
  public void setNavigationContentDescription(int paramInt)
  {
    if (paramInt != 0) {}
    for (CharSequence localCharSequence = getContext().getText(paramInt);; localCharSequence = null)
    {
      setNavigationContentDescription(localCharSequence);
      return;
    }
  }
  
  public void setNavigationContentDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      ensureNavButtonView();
    }
    if (this.mNavButtonView != null) {
      this.mNavButtonView.setContentDescription(paramCharSequence);
    }
  }
  
  public void setNavigationIcon(int paramInt)
  {
    setNavigationIcon(b.a(getContext(), paramInt));
  }
  
  public void setNavigationIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      ensureNavButtonView();
      if (!isChildOrHidden(this.mNavButtonView)) {
        addSystemView(this.mNavButtonView, true);
      }
    }
    for (;;)
    {
      if (this.mNavButtonView != null) {
        this.mNavButtonView.setImageDrawable(paramDrawable);
      }
      return;
      if ((this.mNavButtonView != null) && (isChildOrHidden(this.mNavButtonView)))
      {
        removeView(this.mNavButtonView);
        this.mHiddenViews.remove(this.mNavButtonView);
      }
    }
  }
  
  public void setNavigationOnClickListener(View.OnClickListener paramOnClickListener)
  {
    ensureNavButtonView();
    this.mNavButtonView.setOnClickListener(paramOnClickListener);
  }
  
  public void setOnMenuItemClickListener(c paramc)
  {
    this.mOnMenuItemClickListener = paramc;
  }
  
  public void setOverflowIcon(Drawable paramDrawable)
  {
    ensureMenu();
    this.mMenuView.setOverflowIcon(paramDrawable);
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (this.mPopupTheme != paramInt)
    {
      this.mPopupTheme = paramInt;
      if (paramInt == 0) {
        this.mPopupContext = getContext();
      }
    }
    else
    {
      return;
    }
    this.mPopupContext = new ContextThemeWrapper(getContext(), paramInt);
  }
  
  public void setSubtitle(int paramInt)
  {
    setSubtitle(getContext().getText(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.mSubtitleTextView == null)
      {
        Context localContext = getContext();
        this.mSubtitleTextView = new AppCompatTextView(localContext);
        this.mSubtitleTextView.setSingleLine();
        this.mSubtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        if (this.mSubtitleTextAppearance != 0) {
          this.mSubtitleTextView.setTextAppearance(localContext, this.mSubtitleTextAppearance);
        }
        if (this.mSubtitleTextColor != 0) {
          this.mSubtitleTextView.setTextColor(this.mSubtitleTextColor);
        }
      }
      if (!isChildOrHidden(this.mSubtitleTextView)) {
        addSystemView(this.mSubtitleTextView, true);
      }
    }
    for (;;)
    {
      if (this.mSubtitleTextView != null) {
        this.mSubtitleTextView.setText(paramCharSequence);
      }
      this.mSubtitleText = paramCharSequence;
      return;
      if ((this.mSubtitleTextView != null) && (isChildOrHidden(this.mSubtitleTextView)))
      {
        removeView(this.mSubtitleTextView);
        this.mHiddenViews.remove(this.mSubtitleTextView);
      }
    }
  }
  
  public void setSubtitleTextAppearance(Context paramContext, int paramInt)
  {
    this.mSubtitleTextAppearance = paramInt;
    if (this.mSubtitleTextView != null) {
      this.mSubtitleTextView.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void setSubtitleTextColor(int paramInt)
  {
    this.mSubtitleTextColor = paramInt;
    if (this.mSubtitleTextView != null) {
      this.mSubtitleTextView.setTextColor(paramInt);
    }
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(getContext().getText(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.mTitleTextView == null)
      {
        Context localContext = getContext();
        this.mTitleTextView = new AppCompatTextView(localContext);
        this.mTitleTextView.setSingleLine();
        this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        if (this.mTitleTextAppearance != 0) {
          this.mTitleTextView.setTextAppearance(localContext, this.mTitleTextAppearance);
        }
        if (this.mTitleTextColor != 0) {
          this.mTitleTextView.setTextColor(this.mTitleTextColor);
        }
      }
      if (!isChildOrHidden(this.mTitleTextView)) {
        addSystemView(this.mTitleTextView, true);
      }
    }
    for (;;)
    {
      if (this.mTitleTextView != null) {
        this.mTitleTextView.setText(paramCharSequence);
      }
      this.mTitleText = paramCharSequence;
      return;
      if ((this.mTitleTextView != null) && (isChildOrHidden(this.mTitleTextView)))
      {
        removeView(this.mTitleTextView);
        this.mHiddenViews.remove(this.mTitleTextView);
      }
    }
  }
  
  public void setTitleMargin(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mTitleMarginStart = paramInt1;
    this.mTitleMarginTop = paramInt2;
    this.mTitleMarginEnd = paramInt3;
    this.mTitleMarginBottom = paramInt4;
    requestLayout();
  }
  
  public void setTitleMarginBottom(int paramInt)
  {
    this.mTitleMarginBottom = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginEnd(int paramInt)
  {
    this.mTitleMarginEnd = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginStart(int paramInt)
  {
    this.mTitleMarginStart = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginTop(int paramInt)
  {
    this.mTitleMarginTop = paramInt;
    requestLayout();
  }
  
  public void setTitleTextAppearance(Context paramContext, int paramInt)
  {
    this.mTitleTextAppearance = paramInt;
    if (this.mTitleTextView != null) {
      this.mTitleTextView.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void setTitleTextColor(int paramInt)
  {
    this.mTitleTextColor = paramInt;
    if (this.mTitleTextView != null) {
      this.mTitleTextView.setTextColor(paramInt);
    }
  }
  
  public boolean showOverflowMenu()
  {
    if (this.mMenuView != null)
    {
      ActionMenuView localActionMenuView = this.mMenuView;
      if ((localActionMenuView.UD != null) && (localActionMenuView.UD.showOverflowMenu())) {}
      for (int i = 1; i != 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  private final class a
    implements o
  {
    h Pj;
    j ajV;
    
    a() {}
    
    public final void G(boolean paramBoolean)
    {
      int k = 0;
      int j;
      int m;
      int i;
      if (this.ajV != null)
      {
        j = k;
        if (this.Pj != null)
        {
          m = this.Pj.size();
          i = 0;
        }
      }
      for (;;)
      {
        j = k;
        if (i < m)
        {
          if (this.Pj.getItem(i) == this.ajV) {
            j = 1;
          }
        }
        else
        {
          if (j == 0) {
            d(this.ajV);
          }
          return;
        }
        i += 1;
      }
    }
    
    public final void a(Context paramContext, h paramh)
    {
      if ((this.Pj != null) && (this.ajV != null)) {
        this.Pj.g(this.ajV);
      }
      this.Pj = paramh;
    }
    
    public final void a(h paramh, boolean paramBoolean) {}
    
    public final void a(o.a parama) {}
    
    public final boolean a(u paramu)
    {
      return false;
    }
    
    public final boolean c(j paramj)
    {
      Toolbar.this.ensureCollapseButtonView();
      Object localObject = Toolbar.this.mCollapseButtonView.getParent();
      if (localObject != Toolbar.this)
      {
        if ((localObject instanceof ViewGroup)) {
          ((ViewGroup)localObject).removeView(Toolbar.this.mCollapseButtonView);
        }
        Toolbar.this.addView(Toolbar.this.mCollapseButtonView);
      }
      Toolbar.this.mExpandedActionView = paramj.getActionView();
      this.ajV = paramj;
      localObject = Toolbar.this.mExpandedActionView.getParent();
      if (localObject != Toolbar.this)
      {
        if ((localObject instanceof ViewGroup)) {
          ((ViewGroup)localObject).removeView(Toolbar.this.mExpandedActionView);
        }
        localObject = Toolbar.this.generateDefaultLayoutParams();
        ((Toolbar.b)localObject).gravity = (0x800003 | Toolbar.this.mButtonGravity & 0x70);
        ((Toolbar.b)localObject).ajW = 2;
        Toolbar.this.mExpandedActionView.setLayoutParams((ViewGroup.LayoutParams)localObject);
        Toolbar.this.addView(Toolbar.this.mExpandedActionView);
      }
      Toolbar.this.removeChildrenForExpandedActionView();
      Toolbar.this.requestLayout();
      paramj.O(true);
      if ((Toolbar.this.mExpandedActionView instanceof c)) {
        ((c)Toolbar.this.mExpandedActionView).onActionViewExpanded();
      }
      return true;
    }
    
    public final boolean d(j paramj)
    {
      if ((Toolbar.this.mExpandedActionView instanceof c)) {
        ((c)Toolbar.this.mExpandedActionView).onActionViewCollapsed();
      }
      Toolbar.this.removeView(Toolbar.this.mExpandedActionView);
      Toolbar.this.removeView(Toolbar.this.mCollapseButtonView);
      Toolbar.this.mExpandedActionView = null;
      Toolbar.this.addChildrenForExpandedActionView();
      this.ajV = null;
      Toolbar.this.requestLayout();
      paramj.O(false);
      return true;
    }
    
    public final boolean fa()
    {
      return false;
    }
  }
  
  public static final class b
    extends android.support.v7.app.a.a
  {
    int ajW = 0;
    
    public b()
    {
      this.gravity = 8388627;
    }
    
    public b(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public b(android.support.v7.app.a.a parama)
    {
      super();
    }
    
    public b(b paramb)
    {
      super();
      this.ajW = paramb.ajW;
    }
    
    public b(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
      this.leftMargin = paramMarginLayoutParams.leftMargin;
      this.topMargin = paramMarginLayoutParams.topMargin;
      this.rightMargin = paramMarginLayoutParams.rightMargin;
      this.bottomMargin = paramMarginLayoutParams.bottomMargin;
    }
  }
  
  public static abstract interface c
  {
    public abstract boolean onMenuItemClick(MenuItem paramMenuItem);
  }
  
  public static final class d
    extends a
  {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.ClassLoaderCreator() {};
    int ajX;
    boolean ajY;
    
    public d(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.ajX = paramParcel.readInt();
      if (paramParcel.readInt() != 0) {}
      for (boolean bool = true;; bool = false)
      {
        this.ajY = bool;
        return;
      }
    }
    
    public d(Parcelable paramParcelable)
    {
      super();
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.ajX);
      if (this.ajY) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/Toolbar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */