package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.DataSetObserver;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.q;
import android.support.v4.view.r;
import android.support.v7.a.a.a;
import android.support.v7.c.a.b;
import android.support.v7.view.menu.s;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

public final class z
  extends Spinner
  implements q
{
  private static final int[] Wz = { 16843505 };
  private final Rect Gl;
  private aq QL;
  private SpinnerAdapter WA;
  private final boolean WB;
  private b WC;
  private int WD;
  private final h mBackgroundTintHelper;
  private final Context mPopupContext;
  
  public z(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.spinnerStyle);
  }
  
  public z(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, (byte)0);
  }
  
  private z(Context paramContext, AttributeSet paramAttributeSet, int paramInt, byte paramByte)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  /* Error */
  private z(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial 63	android/widget/Spinner:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: new 65	android/graphics/Rect
    //   11: dup
    //   12: invokespecial 67	android/graphics/Rect:<init>	()V
    //   15: putfield 69	android/support/v7/widget/z:Gl	Landroid/graphics/Rect;
    //   18: aload_1
    //   19: aload_2
    //   20: getstatic 74	android/support/v7/a/a$j:Spinner	[I
    //   23: iload_3
    //   24: iconst_0
    //   25: invokestatic 79	android/support/v7/widget/bo:a	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;
    //   28: astore 10
    //   30: aload_0
    //   31: new 81	android/support/v7/widget/h
    //   34: dup
    //   35: aload_0
    //   36: invokespecial 84	android/support/v7/widget/h:<init>	(Landroid/view/View;)V
    //   39: putfield 86	android/support/v7/widget/z:mBackgroundTintHelper	Landroid/support/v7/widget/h;
    //   42: aload 10
    //   44: getstatic 89	android/support/v7/a/a$j:Spinner_popupTheme	I
    //   47: iconst_0
    //   48: invokevirtual 93	android/support/v7/widget/bo:getResourceId	(II)I
    //   51: istore 5
    //   53: iload 5
    //   55: ifeq +284 -> 339
    //   58: new 95	android/support/v7/view/d
    //   61: dup
    //   62: aload_1
    //   63: iload 5
    //   65: invokespecial 98	android/support/v7/view/d:<init>	(Landroid/content/Context;I)V
    //   68: astore 7
    //   70: aload_0
    //   71: aload 7
    //   73: putfield 100	android/support/v7/widget/z:mPopupContext	Landroid/content/Context;
    //   76: aload_0
    //   77: getfield 100	android/support/v7/widget/z:mPopupContext	Landroid/content/Context;
    //   80: ifnull +169 -> 249
    //   83: aload_1
    //   84: aload_2
    //   85: getstatic 43	android/support/v7/widget/z:Wz	[I
    //   88: iload_3
    //   89: iconst_0
    //   90: invokevirtual 106	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   93: astore 8
    //   95: iload 4
    //   97: istore 5
    //   99: aload 8
    //   101: astore 7
    //   103: aload 8
    //   105: iconst_0
    //   106: invokevirtual 112	android/content/res/TypedArray:hasValue	(I)Z
    //   109: ifeq +16 -> 125
    //   112: aload 8
    //   114: astore 7
    //   116: aload 8
    //   118: iconst_0
    //   119: iconst_0
    //   120: invokevirtual 115	android/content/res/TypedArray:getInt	(II)I
    //   123: istore 5
    //   125: iload 5
    //   127: istore 6
    //   129: aload 8
    //   131: ifnull +12 -> 143
    //   134: aload 8
    //   136: invokevirtual 118	android/content/res/TypedArray:recycle	()V
    //   139: iload 5
    //   141: istore 6
    //   143: iload 6
    //   145: iconst_1
    //   146: if_icmpne +103 -> 249
    //   149: new 13	android/support/v7/widget/z$b
    //   152: dup
    //   153: aload_0
    //   154: aload_0
    //   155: getfield 100	android/support/v7/widget/z:mPopupContext	Landroid/content/Context;
    //   158: aload_2
    //   159: iload_3
    //   160: invokespecial 121	android/support/v7/widget/z$b:<init>	(Landroid/support/v7/widget/z;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   163: astore 7
    //   165: aload_0
    //   166: getfield 100	android/support/v7/widget/z:mPopupContext	Landroid/content/Context;
    //   169: aload_2
    //   170: getstatic 74	android/support/v7/a/a$j:Spinner	[I
    //   173: iload_3
    //   174: iconst_0
    //   175: invokestatic 79	android/support/v7/widget/bo:a	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;
    //   178: astore 8
    //   180: aload_0
    //   181: aload 8
    //   183: getstatic 124	android/support/v7/a/a$j:Spinner_android_dropDownWidth	I
    //   186: bipush -2
    //   188: invokevirtual 127	android/support/v7/widget/bo:getLayoutDimension	(II)I
    //   191: putfield 129	android/support/v7/widget/z:WD	I
    //   194: aload 7
    //   196: aload 8
    //   198: getstatic 132	android/support/v7/a/a$j:Spinner_android_popupBackground	I
    //   201: invokevirtual 136	android/support/v7/widget/bo:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   204: invokevirtual 140	android/support/v7/widget/z$b:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   207: aload 7
    //   209: aload 10
    //   211: getstatic 143	android/support/v7/a/a$j:Spinner_android_prompt	I
    //   214: invokevirtual 147	android/support/v7/widget/bo:getString	(I)Ljava/lang/String;
    //   217: putfield 151	android/support/v7/widget/z$b:WI	Ljava/lang/CharSequence;
    //   220: aload 8
    //   222: getfield 155	android/support/v7/widget/bo:ajT	Landroid/content/res/TypedArray;
    //   225: invokevirtual 118	android/content/res/TypedArray:recycle	()V
    //   228: aload_0
    //   229: aload 7
    //   231: putfield 157	android/support/v7/widget/z:WC	Landroid/support/v7/widget/z$b;
    //   234: aload_0
    //   235: new 8	android/support/v7/widget/z$1
    //   238: dup
    //   239: aload_0
    //   240: aload_0
    //   241: aload 7
    //   243: invokespecial 160	android/support/v7/widget/z$1:<init>	(Landroid/support/v7/widget/z;Landroid/view/View;Landroid/support/v7/widget/z$b;)V
    //   246: putfield 162	android/support/v7/widget/z:QL	Landroid/support/v7/widget/aq;
    //   249: getstatic 165	android/support/v7/a/a$j:Spinner_android_entries	I
    //   252: istore 4
    //   254: aload 10
    //   256: getfield 155	android/support/v7/widget/bo:ajT	Landroid/content/res/TypedArray;
    //   259: iload 4
    //   261: invokevirtual 169	android/content/res/TypedArray:getTextArray	(I)[Ljava/lang/CharSequence;
    //   264: astore 7
    //   266: aload 7
    //   268: ifnull +28 -> 296
    //   271: new 171	android/widget/ArrayAdapter
    //   274: dup
    //   275: aload_1
    //   276: ldc -84
    //   278: aload 7
    //   280: invokespecial 175	android/widget/ArrayAdapter:<init>	(Landroid/content/Context;I[Ljava/lang/Object;)V
    //   283: astore_1
    //   284: aload_1
    //   285: getstatic 180	android/support/v7/a/a$g:support_simple_spinner_dropdown_item	I
    //   288: invokevirtual 184	android/widget/ArrayAdapter:setDropDownViewResource	(I)V
    //   291: aload_0
    //   292: aload_1
    //   293: invokevirtual 188	android/support/v7/widget/z:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   296: aload 10
    //   298: getfield 155	android/support/v7/widget/bo:ajT	Landroid/content/res/TypedArray;
    //   301: invokevirtual 118	android/content/res/TypedArray:recycle	()V
    //   304: aload_0
    //   305: iconst_1
    //   306: putfield 190	android/support/v7/widget/z:WB	Z
    //   309: aload_0
    //   310: getfield 192	android/support/v7/widget/z:WA	Landroid/widget/SpinnerAdapter;
    //   313: ifnull +16 -> 329
    //   316: aload_0
    //   317: aload_0
    //   318: getfield 192	android/support/v7/widget/z:WA	Landroid/widget/SpinnerAdapter;
    //   321: invokevirtual 188	android/support/v7/widget/z:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   324: aload_0
    //   325: aconst_null
    //   326: putfield 192	android/support/v7/widget/z:WA	Landroid/widget/SpinnerAdapter;
    //   329: aload_0
    //   330: getfield 86	android/support/v7/widget/z:mBackgroundTintHelper	Landroid/support/v7/widget/h;
    //   333: aload_2
    //   334: iload_3
    //   335: invokevirtual 195	android/support/v7/widget/h:a	(Landroid/util/AttributeSet;I)V
    //   338: return
    //   339: getstatic 200	android/os/Build$VERSION:SDK_INT	I
    //   342: bipush 23
    //   344: if_icmpge +9 -> 353
    //   347: aload_1
    //   348: astore 7
    //   350: goto -280 -> 70
    //   353: aconst_null
    //   354: astore 7
    //   356: goto -286 -> 70
    //   359: astore 9
    //   361: aconst_null
    //   362: astore 8
    //   364: aload 8
    //   366: astore 7
    //   368: ldc -54
    //   370: ldc -52
    //   372: aload 9
    //   374: invokestatic 210	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   377: pop
    //   378: iload 4
    //   380: istore 6
    //   382: aload 8
    //   384: ifnull -241 -> 143
    //   387: aload 8
    //   389: invokevirtual 118	android/content/res/TypedArray:recycle	()V
    //   392: iload 4
    //   394: istore 6
    //   396: goto -253 -> 143
    //   399: astore_1
    //   400: aconst_null
    //   401: astore 7
    //   403: aload 7
    //   405: ifnull +8 -> 413
    //   408: aload 7
    //   410: invokevirtual 118	android/content/res/TypedArray:recycle	()V
    //   413: aload_1
    //   414: athrow
    //   415: astore_1
    //   416: goto -13 -> 403
    //   419: astore 9
    //   421: goto -57 -> 364
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	424	0	this	z
    //   0	424	1	paramContext	Context
    //   0	424	2	paramAttributeSet	AttributeSet
    //   0	424	3	paramInt1	int
    //   0	424	4	paramInt2	int
    //   51	89	5	i	int
    //   127	268	6	j	int
    //   68	341	7	localObject1	Object
    //   93	295	8	localObject2	Object
    //   359	14	9	localException1	Exception
    //   419	1	9	localException2	Exception
    //   28	269	10	localbo	bo
    // Exception table:
    //   from	to	target	type
    //   83	95	359	java/lang/Exception
    //   83	95	399	finally
    //   103	112	415	finally
    //   116	125	415	finally
    //   368	378	415	finally
    //   103	112	419	java/lang/Exception
    //   116	125	419	java/lang/Exception
  }
  
  final int a(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int n = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int i1 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int i = Math.max(0, getSelectedItemPosition());
    int i2 = Math.min(paramSpinnerAdapter.getCount(), i + 15);
    int j = Math.max(0, i - (15 - (i2 - i)));
    i = 0;
    View localView = null;
    int k = 0;
    if (j < i2)
    {
      int m = paramSpinnerAdapter.getItemViewType(j);
      if (m == i) {
        break label204;
      }
      localView = null;
      i = m;
    }
    label204:
    for (;;)
    {
      localView = paramSpinnerAdapter.getView(j, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(n, i1);
      k = Math.max(k, localView.getMeasuredWidth());
      j += 1;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(this.Gl);
        return this.Gl.left + this.Gl.right + k;
      }
      return k;
    }
  }
  
  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.ge();
    }
  }
  
  public final int getDropDownHorizontalOffset()
  {
    if (this.WC != null) {
      return this.WC.acM;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return super.getDropDownHorizontalOffset();
    }
    return 0;
  }
  
  public final int getDropDownVerticalOffset()
  {
    if (this.WC != null) {
      return this.WC.getVerticalOffset();
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return super.getDropDownVerticalOffset();
    }
    return 0;
  }
  
  public final int getDropDownWidth()
  {
    if (this.WC != null) {
      return this.WD;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return super.getDropDownWidth();
    }
    return 0;
  }
  
  public final Drawable getPopupBackground()
  {
    if (this.WC != null) {
      return this.WC.adj.getBackground();
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return super.getPopupBackground();
    }
    return null;
  }
  
  public final Context getPopupContext()
  {
    if (this.WC != null) {
      return this.mPopupContext;
    }
    if (Build.VERSION.SDK_INT >= 23) {
      return super.getPopupContext();
    }
    return null;
  }
  
  public final CharSequence getPrompt()
  {
    if (this.WC != null) {
      return this.WC.WI;
    }
    return super.getPrompt();
  }
  
  public final ColorStateList getSupportBackgroundTintList()
  {
    if (this.mBackgroundTintHelper != null) {
      return this.mBackgroundTintHelper.getSupportBackgroundTintList();
    }
    return null;
  }
  
  public final PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.mBackgroundTintHelper != null) {
      return this.mBackgroundTintHelper.getSupportBackgroundTintMode();
    }
    return null;
  }
  
  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((this.WC != null) && (this.WC.adj.isShowing())) {
      this.WC.dismiss();
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.WC != null) && (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.QL != null) && (this.QL.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public final boolean performClick()
  {
    if (this.WC != null)
    {
      if (!this.WC.adj.isShowing()) {
        this.WC.show();
      }
      return true;
    }
    return super.performClick();
  }
  
  public final void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (!this.WB) {
      this.WA = paramSpinnerAdapter;
    }
    do
    {
      return;
      super.setAdapter(paramSpinnerAdapter);
    } while (this.WC == null);
    if (this.mPopupContext == null) {}
    for (Context localContext = getContext();; localContext = this.mPopupContext)
    {
      this.WC.setAdapter(new a(paramSpinnerAdapter, localContext.getTheme()));
      return;
    }
  }
  
  public final void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.gd();
    }
  }
  
  public final void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.bh(paramInt);
    }
  }
  
  public final void setDropDownHorizontalOffset(int paramInt)
  {
    if (this.WC != null) {
      this.WC.acM = paramInt;
    }
    while (Build.VERSION.SDK_INT < 16) {
      return;
    }
    super.setDropDownHorizontalOffset(paramInt);
  }
  
  public final void setDropDownVerticalOffset(int paramInt)
  {
    if (this.WC != null) {
      this.WC.setVerticalOffset(paramInt);
    }
    while (Build.VERSION.SDK_INT < 16) {
      return;
    }
    super.setDropDownVerticalOffset(paramInt);
  }
  
  public final void setDropDownWidth(int paramInt)
  {
    if (this.WC != null) {
      this.WD = paramInt;
    }
    while (Build.VERSION.SDK_INT < 16) {
      return;
    }
    super.setDropDownWidth(paramInt);
  }
  
  public final void setPopupBackgroundDrawable(Drawable paramDrawable)
  {
    if (this.WC != null) {
      this.WC.setBackgroundDrawable(paramDrawable);
    }
    while (Build.VERSION.SDK_INT < 16) {
      return;
    }
    super.setPopupBackgroundDrawable(paramDrawable);
  }
  
  public final void setPopupBackgroundResource(int paramInt)
  {
    setPopupBackgroundDrawable(b.a(getPopupContext(), paramInt));
  }
  
  public final void setPrompt(CharSequence paramCharSequence)
  {
    if (this.WC != null)
    {
      this.WC.WI = paramCharSequence;
      return;
    }
    super.setPrompt(paramCharSequence);
  }
  
  public final void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.setSupportBackgroundTintList(paramColorStateList);
    }
  }
  
  public final void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.mBackgroundTintHelper != null) {
      this.mBackgroundTintHelper.setSupportBackgroundTintMode(paramMode);
    }
  }
  
  private static final class a
    implements ListAdapter, SpinnerAdapter
  {
    private SpinnerAdapter WG;
    private ListAdapter WH;
    
    public a(SpinnerAdapter paramSpinnerAdapter, Resources.Theme paramTheme)
    {
      this.WG = paramSpinnerAdapter;
      if ((paramSpinnerAdapter instanceof ListAdapter)) {
        this.WH = ((ListAdapter)paramSpinnerAdapter);
      }
      if ((paramTheme != null) && (Build.VERSION.SDK_INT >= 23) && ((paramSpinnerAdapter instanceof ThemedSpinnerAdapter)))
      {
        paramSpinnerAdapter = (ThemedSpinnerAdapter)paramSpinnerAdapter;
        if (paramSpinnerAdapter.getDropDownViewTheme() != paramTheme) {
          paramSpinnerAdapter.setDropDownViewTheme(paramTheme);
        }
      }
    }
    
    public final boolean areAllItemsEnabled()
    {
      ListAdapter localListAdapter = this.WH;
      if (localListAdapter != null) {
        return localListAdapter.areAllItemsEnabled();
      }
      return true;
    }
    
    public final int getCount()
    {
      if (this.WG == null) {
        return 0;
      }
      return this.WG.getCount();
    }
    
    public final View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (this.WG == null) {
        return null;
      }
      return this.WG.getDropDownView(paramInt, paramView, paramViewGroup);
    }
    
    public final Object getItem(int paramInt)
    {
      if (this.WG == null) {
        return null;
      }
      return this.WG.getItem(paramInt);
    }
    
    public final long getItemId(int paramInt)
    {
      if (this.WG == null) {
        return -1L;
      }
      return this.WG.getItemId(paramInt);
    }
    
    public final int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      return getDropDownView(paramInt, paramView, paramViewGroup);
    }
    
    public final int getViewTypeCount()
    {
      return 1;
    }
    
    public final boolean hasStableIds()
    {
      return (this.WG != null) && (this.WG.hasStableIds());
    }
    
    public final boolean isEmpty()
    {
      return getCount() == 0;
    }
    
    public final boolean isEnabled(int paramInt)
    {
      ListAdapter localListAdapter = this.WH;
      if (localListAdapter != null) {
        return localListAdapter.isEnabled(paramInt);
      }
      return true;
    }
    
    public final void registerDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      if (this.WG != null) {
        this.WG.registerDataSetObserver(paramDataSetObserver);
      }
    }
    
    public final void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      if (this.WG != null) {
        this.WG.unregisterDataSetObserver(paramDataSetObserver);
      }
    }
  }
  
  private final class b
    extends av
  {
    ListAdapter LE;
    CharSequence WI;
    final Rect WJ = new Rect();
    
    public b(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
      this.acY = z.this;
      hv();
      this.acW = 0;
      this.ada = new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          z.this.setSelection(paramAnonymousInt);
          if (z.this.getOnItemClickListener() != null) {
            z.this.performItemClick(paramAnonymousView, paramAnonymousInt, z.b.this.LE.getItemId(paramAnonymousInt));
          }
          z.b.this.dismiss();
        }
      };
    }
    
    final void gk()
    {
      Object localObject = this.adj.getBackground();
      int i;
      int m;
      int n;
      int i1;
      int j;
      if (localObject != null)
      {
        ((Drawable)localObject).getPadding(z.b(z.this));
        if (bw.bj(z.this))
        {
          i = z.b(z.this).right;
          m = z.this.getPaddingLeft();
          n = z.this.getPaddingRight();
          i1 = z.this.getWidth();
          if (z.c(z.this) != -2) {
            break label246;
          }
          j = z.this.a((SpinnerAdapter)this.LE, this.adj.getBackground());
          int k = z.this.getContext().getResources().getDisplayMetrics().widthPixels - z.b(z.this).left - z.b(z.this).right;
          if (j <= k) {
            break label294;
          }
          j = k;
        }
      }
      label171:
      label246:
      label294:
      for (;;)
      {
        setContentWidth(Math.max(j, i1 - m - n));
        if (bw.bj(z.this)) {
          i = i1 - n - this.WD + i;
        }
        for (;;)
        {
          this.acM = i;
          return;
          i = -z.b(z.this).left;
          break;
          localObject = z.b(z.this);
          z.b(z.this).right = 0;
          ((Rect)localObject).left = 0;
          i = 0;
          break;
          if (z.c(z.this) == -1)
          {
            setContentWidth(i1 - m - n);
            break label171;
          }
          setContentWidth(z.c(z.this));
          break label171;
          i += m;
        }
      }
    }
    
    public final void setAdapter(ListAdapter paramListAdapter)
    {
      super.setAdapter(paramListAdapter);
      this.LE = paramListAdapter;
    }
    
    public final void show()
    {
      boolean bool = this.adj.isShowing();
      gk();
      hw();
      super.show();
      this.acK.setChoiceMode(1);
      int i = z.this.getSelectedItemPosition();
      Object localObject = this.acK;
      if ((this.adj.isShowing()) && (localObject != null))
      {
        ((an)localObject).setListSelectionHidden(false);
        ((an)localObject).setSelection(i);
        if (((an)localObject).getChoiceMode() != 0) {
          ((an)localObject).setItemChecked(i, true);
        }
      }
      if (bool) {}
      do
      {
        return;
        localObject = z.this.getViewTreeObserver();
      } while (localObject == null);
      final ViewTreeObserver.OnGlobalLayoutListener local2 = new ViewTreeObserver.OnGlobalLayoutListener()
      {
        public final void onGlobalLayout()
        {
          z.b localb = z.b.this;
          z localz = z.this;
          if ((r.ah(localz)) && (localz.getGlobalVisibleRect(localb.WJ))) {}
          for (int i = 1; i == 0; i = 0)
          {
            z.b.this.dismiss();
            return;
          }
          z.b.this.gk();
          z.b.a(z.b.this);
        }
      };
      ((ViewTreeObserver)localObject).addOnGlobalLayoutListener(local2);
      setOnDismissListener(new PopupWindow.OnDismissListener()
      {
        public final void onDismiss()
        {
          ViewTreeObserver localViewTreeObserver = z.this.getViewTreeObserver();
          if (localViewTreeObserver != null) {
            localViewTreeObserver.removeGlobalOnLayoutListener(local2);
          }
        }
      });
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */