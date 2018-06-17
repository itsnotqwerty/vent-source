package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.view.r;
import android.support.v4.widget.l;
import android.support.v7.a.a.a;
import android.support.v7.a.a.j;
import android.support.v7.view.menu.s;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import java.lang.reflect.Method;

public class av
  implements s
{
  private static Method acH;
  private static Method acI;
  private static Method acJ;
  private final Rect Gl = new Rect();
  private ListAdapter LE;
  public int Rm = 0;
  public Rect SR;
  int WD = -2;
  public boolean Wo;
  public an acK;
  private int acL = -2;
  public int acM;
  private int acN;
  private int acO = 1002;
  private boolean acP;
  private boolean acQ = true;
  public boolean acR;
  private boolean acS = false;
  private boolean acT = false;
  int acU = Integer.MAX_VALUE;
  private View acV;
  int acW = 0;
  private DataSetObserver acX;
  public View acY;
  private Drawable acZ;
  public AdapterView.OnItemClickListener ada;
  private AdapterView.OnItemSelectedListener adb;
  final e adc = new e();
  private final d ade = new d();
  private final c adf = new c();
  private final a adg = new a();
  private Runnable adh;
  public boolean adi;
  public PopupWindow adj;
  private Context mContext;
  final Handler mHandler;
  
  static
  {
    try
    {
      acH = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", new Class[] { Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException1)
    {
      try
      {
        for (;;)
        {
          acI = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", new Class[] { View.class, Integer.TYPE, Boolean.TYPE });
          try
          {
            acJ = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", new Class[] { Rect.class });
            return;
          }
          catch (NoSuchMethodException localNoSuchMethodException3)
          {
            Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
          }
          localNoSuchMethodException1 = localNoSuchMethodException1;
          Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
        for (;;)
        {
          Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
        }
      }
    }
  }
  
  public av(Context paramContext)
  {
    this(paramContext, null, a.a.listPopupWindowStyle);
  }
  
  public av(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public av(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this.mContext = paramContext;
    this.mHandler = new Handler(paramContext.getMainLooper());
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.j.ListPopupWindow, paramInt1, paramInt2);
    this.acM = localTypedArray.getDimensionPixelOffset(a.j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
    this.acN = localTypedArray.getDimensionPixelOffset(a.j.ListPopupWindow_android_dropDownVerticalOffset, 0);
    if (this.acN != 0) {
      this.acP = true;
    }
    localTypedArray.recycle();
    this.adj = new t(paramContext, paramAttributeSet, paramInt1, paramInt2);
    this.adj.setInputMethodMode(1);
  }
  
  private int getMaxAvailableHeight(View paramView, int paramInt, boolean paramBoolean)
  {
    if (acI != null) {
      try
      {
        int i = ((Integer)acI.invoke(this.adj, new Object[] { paramView, Integer.valueOf(paramInt), Boolean.valueOf(paramBoolean) })).intValue();
        return i;
      }
      catch (Exception localException)
      {
        Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
      }
    }
    return this.adj.getMaxAvailableHeight(paramView, paramInt);
  }
  
  an b(Context paramContext, boolean paramBoolean)
  {
    return new an(paramContext, paramBoolean);
  }
  
  public final void clearListSelection()
  {
    an localan = this.acK;
    if (localan != null)
    {
      localan.setListSelectionHidden(true);
      localan.requestLayout();
    }
  }
  
  public final void dismiss()
  {
    this.adj.dismiss();
    if (this.acV != null)
    {
      ViewParent localViewParent = this.acV.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(this.acV);
      }
    }
    this.adj.setContentView(null);
    this.acK = null;
    this.mHandler.removeCallbacks(this.adc);
  }
  
  public final ListView getListView()
  {
    return this.acK;
  }
  
  public final int getVerticalOffset()
  {
    if (!this.acP) {
      return 0;
    }
    return this.acN;
  }
  
  public final void hv()
  {
    this.adi = true;
    this.adj.setFocusable(true);
  }
  
  public final void hw()
  {
    this.adj.setInputMethodMode(2);
  }
  
  public final boolean isInputMethodNotNeeded()
  {
    return this.adj.getInputMethodMode() == 2;
  }
  
  public final boolean isShowing()
  {
    return this.adj.isShowing();
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (this.acX == null) {
      this.acX = new b();
    }
    for (;;)
    {
      this.LE = paramListAdapter;
      if (paramListAdapter != null) {
        paramListAdapter.registerDataSetObserver(this.acX);
      }
      if (this.acK != null) {
        this.acK.setAdapter(this.LE);
      }
      return;
      if (this.LE != null) {
        this.LE.unregisterDataSetObserver(this.acX);
      }
    }
  }
  
  public final void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.adj.setBackgroundDrawable(paramDrawable);
  }
  
  public final void setContentWidth(int paramInt)
  {
    Drawable localDrawable = this.adj.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(this.Gl);
      this.WD = (this.Gl.left + this.Gl.right + paramInt);
      return;
    }
    this.WD = paramInt;
  }
  
  public final void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.adj.setOnDismissListener(paramOnDismissListener);
  }
  
  public final void setVerticalOffset(int paramInt)
  {
    this.acN = paramInt;
    this.acP = true;
  }
  
  public void show()
  {
    boolean bool3 = true;
    boolean bool2 = true;
    Object localObject2;
    boolean bool1;
    Object localObject1;
    View localView;
    LinearLayout.LayoutParams localLayoutParams;
    label250:
    int j;
    int i;
    if (this.acK == null)
    {
      localObject2 = this.mContext;
      this.adh = new Runnable()
      {
        public final void run()
        {
          View localView = av.this.acY;
          if ((localView != null) && (localView.getWindowToken() != null)) {
            av.this.show();
          }
        }
      };
      if (!this.adi)
      {
        bool1 = true;
        this.acK = b((Context)localObject2, bool1);
        if (this.acZ != null) {
          this.acK.setSelector(this.acZ);
        }
        this.acK.setAdapter(this.LE);
        this.acK.setOnItemClickListener(this.ada);
        this.acK.setFocusable(true);
        this.acK.setFocusableInTouchMode(true);
        this.acK.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
        {
          public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            if (paramAnonymousInt != -1)
            {
              paramAnonymousAdapterView = av.this.acK;
              if (paramAnonymousAdapterView != null) {
                paramAnonymousAdapterView.setListSelectionHidden(false);
              }
            }
          }
          
          public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
        });
        this.acK.setOnScrollListener(this.adf);
        if (this.adb != null) {
          this.acK.setOnItemSelectedListener(this.adb);
        }
        localObject1 = this.acK;
        localView = this.acV;
        if (localView == null) {
          break label1319;
        }
        localObject2 = new LinearLayout((Context)localObject2);
        ((LinearLayout)localObject2).setOrientation(1);
        localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        switch (this.acW)
        {
        default: 
          Log.e("ListPopupWindow", "Invalid hint position " + this.acW);
          if (this.WD >= 0)
          {
            j = this.WD;
            i = Integer.MIN_VALUE;
            label266:
            localView.measure(View.MeasureSpec.makeMeasureSpec(j, i), 0);
            localObject1 = (LinearLayout.LayoutParams)localView.getLayoutParams();
            i = localView.getMeasuredHeight();
            j = ((LinearLayout.LayoutParams)localObject1).topMargin;
            i = ((LinearLayout.LayoutParams)localObject1).bottomMargin + (i + j);
            localObject1 = localObject2;
          }
          break;
        }
      }
    }
    for (;;)
    {
      this.adj.setContentView((View)localObject1);
      for (;;)
      {
        label322:
        localObject1 = this.adj.getBackground();
        if (localObject1 != null)
        {
          ((Drawable)localObject1).getPadding(this.Gl);
          j = this.Gl.top + this.Gl.bottom;
          if (this.acP) {
            break label1311;
          }
          this.acN = (-this.Gl.top);
        }
        label381:
        label592:
        label761:
        label784:
        label805:
        label819:
        label932:
        label937:
        label942:
        label980:
        label1003:
        label1013:
        label1023:
        label1255:
        label1308:
        label1311:
        for (;;)
        {
          if (this.adj.getInputMethodMode() == 2) {}
          int m;
          for (bool1 = true;; bool1 = false)
          {
            m = getMaxAvailableHeight(this.acY, this.acN, bool1);
            if ((!this.acS) && (this.acL != -1)) {
              break label592;
            }
            i = m + j;
            bool1 = isInputMethodNotNeeded();
            l.a(this.adj, this.acO);
            if (!this.adj.isShowing()) {
              break label1003;
            }
            if (r.ah(this.acY)) {
              break label761;
            }
            return;
            bool1 = false;
            break;
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            ((LinearLayout)localObject2).addView(localView);
            break label250;
            ((LinearLayout)localObject2).addView(localView);
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            break label250;
            i = 0;
            j = 0;
            break label266;
            this.adj.getContentView();
            localObject1 = this.acV;
            if (localObject1 == null) {
              break label1314;
            }
            localObject2 = (LinearLayout.LayoutParams)((View)localObject1).getLayoutParams();
            i = ((View)localObject1).getMeasuredHeight();
            j = ((LinearLayout.LayoutParams)localObject2).topMargin;
            i = ((LinearLayout.LayoutParams)localObject2).bottomMargin + (i + j);
            break label322;
            this.Gl.setEmpty();
            j = 0;
            break label381;
          }
          int k;
          switch (this.WD)
          {
          default: 
            k = View.MeasureSpec.makeMeasureSpec(this.WD, 1073741824);
          }
          for (;;)
          {
            m = this.acK.c(k, 0, -1, m - i, -1);
            k = i;
            if (m > 0) {
              k = i + (this.acK.getPaddingTop() + this.acK.getPaddingBottom() + j);
            }
            i = m + k;
            break;
            k = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.Gl.left + this.Gl.right), Integer.MIN_VALUE);
            continue;
            k = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.Gl.left + this.Gl.right), 1073741824);
          }
          if (this.WD == -1)
          {
            j = -1;
            if (this.acL != -1) {
              break label980;
            }
            if (!bool1) {
              break label932;
            }
            if (!bool1) {
              break label942;
            }
            localObject1 = this.adj;
            if (this.WD != -1) {
              break label937;
            }
            k = -1;
            ((PopupWindow)localObject1).setWidth(k);
            this.adj.setHeight(0);
          }
          for (;;)
          {
            localObject1 = this.adj;
            if ((!this.acT) && (!this.acS)) {}
            for (bool1 = bool2;; bool1 = false)
            {
              ((PopupWindow)localObject1).setOutsideTouchable(bool1);
              localObject1 = this.adj;
              localObject2 = this.acY;
              m = this.acM;
              int n = this.acN;
              k = j;
              if (j < 0) {
                k = -1;
              }
              j = i;
              if (i < 0) {
                j = -1;
              }
              ((PopupWindow)localObject1).update((View)localObject2, m, n, k, j);
              return;
              if (this.WD == -2)
              {
                j = this.acY.getWidth();
                break;
              }
              j = this.WD;
              break;
              i = -1;
              break label784;
              k = 0;
              break label805;
              localObject1 = this.adj;
              if (this.WD == -1) {}
              for (k = -1;; k = 0)
              {
                ((PopupWindow)localObject1).setWidth(k);
                this.adj.setHeight(-1);
                break;
              }
              if (this.acL == -2) {
                break label1308;
              }
              i = this.acL;
              break label819;
            }
            if (this.WD == -1)
            {
              j = -1;
              if (this.acL != -1) {
                break label1255;
              }
              i = -1;
              this.adj.setWidth(j);
              this.adj.setHeight(i);
              if (acH == null) {}
            }
            try
            {
              acH.invoke(this.adj, new Object[] { Boolean.valueOf(true) });
              localObject1 = this.adj;
              if ((!this.acT) && (!this.acS))
              {
                bool1 = bool3;
                ((PopupWindow)localObject1).setOutsideTouchable(bool1);
                this.adj.setTouchInterceptor(this.ade);
                if (this.acR) {
                  l.a(this.adj, this.Wo);
                }
                if (acJ == null) {}
              }
            }
            catch (Exception localException1)
            {
              try
              {
                for (;;)
                {
                  acJ.invoke(this.adj, new Object[] { this.SR });
                  l.a(this.adj, this.acY, this.acM, this.acN, this.Rm);
                  this.acK.setSelection(-1);
                  if ((!this.adi) || (this.acK.isInTouchMode())) {
                    clearListSelection();
                  }
                  if (this.adi) {
                    break;
                  }
                  this.mHandler.post(this.adg);
                  return;
                  if (this.WD == -2)
                  {
                    j = this.acY.getWidth();
                    break label1013;
                  }
                  j = this.WD;
                  break label1013;
                  if (this.acL == -2) {
                    break label1023;
                  }
                  i = this.acL;
                  break label1023;
                  localException1 = localException1;
                  Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
                bool1 = false;
              }
              catch (Exception localException2)
              {
                for (;;)
                {
                  Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", localException2);
                }
              }
            }
          }
        }
        label1314:
        i = 0;
      }
      label1319:
      i = 0;
    }
  }
  
  private final class a
    implements Runnable
  {
    a() {}
    
    public final void run()
    {
      av.this.clearListSelection();
    }
  }
  
  private final class b
    extends DataSetObserver
  {
    b() {}
    
    public final void onChanged()
    {
      if (av.this.adj.isShowing()) {
        av.this.show();
      }
    }
    
    public final void onInvalidated()
    {
      av.this.dismiss();
    }
  }
  
  private final class c
    implements AbsListView.OnScrollListener
  {
    c() {}
    
    public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      if ((paramInt == 1) && (!av.this.isInputMethodNotNeeded()) && (av.this.adj.getContentView() != null))
      {
        av.this.mHandler.removeCallbacks(av.this.adc);
        av.this.adc.run();
      }
    }
  }
  
  private final class d
    implements View.OnTouchListener
  {
    d() {}
    
    public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      int i = paramMotionEvent.getAction();
      int j = (int)paramMotionEvent.getX();
      int k = (int)paramMotionEvent.getY();
      if ((i == 0) && (av.this.adj != null) && (av.this.adj.isShowing()) && (j >= 0) && (j < av.this.adj.getWidth()) && (k >= 0) && (k < av.this.adj.getHeight())) {
        av.this.mHandler.postDelayed(av.this.adc, 250L);
      }
      for (;;)
      {
        return false;
        if (i == 1) {
          av.this.mHandler.removeCallbacks(av.this.adc);
        }
      }
    }
  }
  
  private final class e
    implements Runnable
  {
    e() {}
    
    public final void run()
    {
      if ((av.this.acK != null) && (r.ah(av.this.acK)) && (av.this.acK.getCount() > av.this.acK.getChildCount()) && (av.this.acK.getChildCount() <= av.this.acU))
      {
        av.this.adj.setInputMethodMode(2);
        av.this.show();
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */