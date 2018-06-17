package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.design.a.d;
import android.support.design.a.k;
import android.support.v4.widget.r.a;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public class BottomSheetBehavior<V extends View>
  extends CoordinatorLayout.b<V>
{
  boolean jA;
  private boolean jB;
  android.support.v4.widget.r jC;
  private boolean jD;
  private int jE;
  private boolean jF;
  int jG;
  WeakReference<V> jH;
  WeakReference<View> jI;
  private VelocityTracker jJ;
  int jK;
  private int jL;
  boolean jM;
  private final r.a jN = new r.a()
  {
    public final void a(View paramAnonymousView, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      int j = 3;
      int i;
      if (paramAnonymousFloat2 < 0.0F) {
        i = BottomSheetBehavior.this.jy;
      }
      while (BottomSheetBehavior.this.jC.t(paramAnonymousView.getLeft(), i))
      {
        BottomSheetBehavior.this.x(2);
        android.support.v4.view.r.b(paramAnonymousView, new BottomSheetBehavior.b(BottomSheetBehavior.this, paramAnonymousView, j));
        return;
        if ((BottomSheetBehavior.this.jA) && (BottomSheetBehavior.this.a(paramAnonymousView, paramAnonymousFloat2)))
        {
          i = BottomSheetBehavior.this.jG;
          j = 5;
        }
        else if (paramAnonymousFloat2 == 0.0F)
        {
          i = paramAnonymousView.getTop();
          if (Math.abs(i - BottomSheetBehavior.this.jy) < Math.abs(i - BottomSheetBehavior.this.jz))
          {
            i = BottomSheetBehavior.this.jy;
          }
          else
          {
            i = BottomSheetBehavior.this.jz;
            j = 4;
          }
        }
        else
        {
          i = BottomSheetBehavior.this.jz;
          j = 4;
        }
      }
      BottomSheetBehavior.this.x(j);
    }
    
    public final boolean a(View paramAnonymousView, int paramAnonymousInt)
    {
      if (BottomSheetBehavior.this.mState == 1) {
        return false;
      }
      if (BottomSheetBehavior.this.jM) {
        return false;
      }
      if ((BottomSheetBehavior.this.mState == 3) && (BottomSheetBehavior.this.jK == paramAnonymousInt))
      {
        View localView = (View)BottomSheetBehavior.this.jI.get();
        if ((localView != null) && (localView.canScrollVertically(-1))) {
          return false;
        }
      }
      return (BottomSheetBehavior.this.jH != null) && (BottomSheetBehavior.this.jH.get() == paramAnonymousView);
    }
    
    public final void b(View paramAnonymousView, int paramAnonymousInt)
    {
      BottomSheetBehavior.this.bn();
    }
    
    public final int bo()
    {
      if (BottomSheetBehavior.this.jA) {
        return BottomSheetBehavior.this.jG - BottomSheetBehavior.this.jy;
      }
      return BottomSheetBehavior.this.jz - BottomSheetBehavior.this.jy;
    }
    
    public final int c(View paramAnonymousView, int paramAnonymousInt)
    {
      int j = BottomSheetBehavior.this.jy;
      if (BottomSheetBehavior.this.jA) {}
      for (int i = BottomSheetBehavior.this.jG;; i = BottomSheetBehavior.this.jz) {
        return android.support.v4.c.a.b(paramAnonymousInt, j, i);
      }
    }
    
    public final int d(View paramAnonymousView, int paramAnonymousInt)
    {
      return paramAnonymousView.getLeft();
    }
    
    public final void y(int paramAnonymousInt)
    {
      if (paramAnonymousInt == 1) {
        BottomSheetBehavior.this.x(1);
      }
    }
  };
  private float ju;
  private int jv;
  private boolean jw;
  private int jx;
  int jy;
  int jz;
  int mState = 4;
  
  public BottomSheetBehavior() {}
  
  public BottomSheetBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.BottomSheetBehavior_Layout);
    TypedValue localTypedValue = paramAttributeSet.peekValue(a.k.BottomSheetBehavior_Layout_behavior_peekHeight);
    if ((localTypedValue != null) && (localTypedValue.data == -1)) {
      w(localTypedValue.data);
    }
    for (;;)
    {
      this.jA = paramAttributeSet.getBoolean(a.k.BottomSheetBehavior_Layout_behavior_hideable, false);
      this.jB = paramAttributeSet.getBoolean(a.k.BottomSheetBehavior_Layout_behavior_skipCollapsed, false);
      paramAttributeSet.recycle();
      this.ju = ViewConfiguration.get(paramContext).getScaledMaximumFlingVelocity();
      return;
      w(paramAttributeSet.getDimensionPixelSize(a.k.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
    }
  }
  
  private View i(View paramView)
  {
    if (android.support.v4.view.r.ac(paramView)) {
      return paramView;
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int j = paramView.getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = i(paramView.getChildAt(i));
        if (localView != null) {
          return localView;
        }
        i += 1;
      }
    }
    return null;
  }
  
  private void reset()
  {
    this.jK = -1;
    if (this.jJ != null)
    {
      this.jJ.recycle();
      this.jJ = null;
    }
  }
  
  private void w(int paramInt)
  {
    int i = 1;
    if (paramInt == -1)
    {
      if (this.jw) {
        break label104;
      }
      this.jw = true;
      paramInt = i;
    }
    for (;;)
    {
      if ((paramInt != 0) && (this.mState == 4) && (this.jH != null))
      {
        View localView = (View)this.jH.get();
        if (localView != null) {
          localView.requestLayout();
        }
      }
      return;
      if ((this.jw) || (this.jv != paramInt))
      {
        this.jw = false;
        this.jv = Math.max(0, paramInt);
        this.jz = (this.jG - paramInt);
        paramInt = i;
      }
      else
      {
        label104:
        paramInt = 0;
      }
    }
  }
  
  public final void a(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable)
  {
    paramParcelable = (a)paramParcelable;
    super.a(paramCoordinatorLayout, paramV, paramParcelable.EV);
    if ((paramParcelable.state == 1) || (paramParcelable.state == 2))
    {
      this.mState = 4;
      return;
    }
    this.mState = paramParcelable.state;
  }
  
  public final void a(V paramV, View paramView)
  {
    int j = 3;
    if (paramV.getTop() == this.jy) {
      x(3);
    }
    while ((this.jI == null) || (paramView != this.jI.get()) || (!this.jF)) {
      return;
    }
    int i;
    if (this.jE > 0)
    {
      i = this.jy;
      paramView = this.jC;
      int k = paramV.getLeft();
      paramView.KW = paramV;
      paramView.jK = -1;
      boolean bool = paramView.g(k, i, 0, 0);
      if ((!bool) && (paramView.KI == 0) && (paramView.KW != null)) {
        paramView.KW = null;
      }
      if (!bool) {
        break label258;
      }
      x(2);
      android.support.v4.view.r.b(paramV, new b(paramV, j));
    }
    for (;;)
    {
      this.jF = false;
      return;
      if (this.jA)
      {
        this.jJ.computeCurrentVelocity(1000, this.ju);
        if (a(paramV, this.jJ.getYVelocity(this.jK)))
        {
          i = this.jG;
          j = 5;
          break;
        }
      }
      if (this.jE == 0)
      {
        i = paramV.getTop();
        if (Math.abs(i - this.jy) < Math.abs(i - this.jz))
        {
          i = this.jy;
          break;
        }
        i = this.jz;
        j = 4;
        break;
      }
      i = this.jz;
      j = 4;
      break;
      label258:
      x(j);
    }
  }
  
  public final void a(V paramV, View paramView, int paramInt, int[] paramArrayOfInt)
  {
    if (paramView != (View)this.jI.get()) {
      return;
    }
    int i = paramV.getTop();
    int j = i - paramInt;
    if (paramInt > 0) {
      if (j < this.jy)
      {
        paramArrayOfInt[1] = (i - this.jy);
        android.support.v4.view.r.m(paramV, -paramArrayOfInt[1]);
        x(3);
      }
    }
    for (;;)
    {
      paramV.getTop();
      bn();
      this.jE = paramInt;
      this.jF = true;
      return;
      paramArrayOfInt[1] = paramInt;
      android.support.v4.view.r.m(paramV, -paramInt);
      x(1);
      continue;
      if ((paramInt < 0) && (!paramView.canScrollVertically(-1))) {
        if ((j <= this.jz) || (this.jA))
        {
          paramArrayOfInt[1] = paramInt;
          android.support.v4.view.r.m(paramV, -paramInt);
          x(1);
        }
        else
        {
          paramArrayOfInt[1] = (i - this.jz);
          android.support.v4.view.r.m(paramV, -paramArrayOfInt[1]);
          x(4);
        }
      }
    }
  }
  
  public final boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    if ((android.support.v4.view.r.X(paramCoordinatorLayout)) && (!android.support.v4.view.r.X(paramV))) {
      android.support.v4.view.r.e(paramV, true);
    }
    int i = paramV.getTop();
    paramCoordinatorLayout.e(paramV, paramInt);
    this.jG = paramCoordinatorLayout.getHeight();
    if (this.jw)
    {
      if (this.jx == 0) {
        this.jx = paramCoordinatorLayout.getResources().getDimensionPixelSize(a.d.design_bottom_sheet_peek_height_min);
      }
      paramInt = Math.max(this.jx, this.jG - paramCoordinatorLayout.getWidth() * 9 / 16);
      this.jy = Math.max(0, this.jG - paramV.getHeight());
      this.jz = Math.max(this.jG - paramInt, this.jy);
      if (this.mState != 3) {
        break label197;
      }
      android.support.v4.view.r.m(paramV, this.jy);
    }
    for (;;)
    {
      if (this.jC == null) {
        this.jC = android.support.v4.widget.r.a(paramCoordinatorLayout, this.jN);
      }
      this.jH = new WeakReference(paramV);
      this.jI = new WeakReference(i(paramV));
      return true;
      paramInt = this.jv;
      break;
      label197:
      if ((this.jA) && (this.mState == 5)) {
        android.support.v4.view.r.m(paramV, this.jG);
      } else if (this.mState == 4) {
        android.support.v4.view.r.m(paramV, this.jz);
      } else if ((this.mState == 1) || (this.mState == 2)) {
        android.support.v4.view.r.m(paramV, i - paramV.getTop());
      }
    }
  }
  
  public final boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (!paramV.isShown()) {
      this.jD = true;
    }
    int i;
    label163:
    label240:
    do
    {
      return false;
      i = paramMotionEvent.getActionMasked();
      if (i == 0) {
        reset();
      }
      if (this.jJ == null) {
        this.jJ = VelocityTracker.obtain();
      }
      this.jJ.addMovement(paramMotionEvent);
      switch (i)
      {
      }
      while ((!this.jD) && (this.jC.c(paramMotionEvent)))
      {
        return true;
        this.jM = false;
        this.jK = -1;
        if (this.jD)
        {
          this.jD = false;
          return false;
          int j = (int)paramMotionEvent.getX();
          this.jL = ((int)paramMotionEvent.getY());
          View localView;
          if (this.jI != null)
          {
            localView = (View)this.jI.get();
            if ((localView != null) && (paramCoordinatorLayout.a(localView, j, this.jL)))
            {
              this.jK = paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex());
              this.jM = true;
            }
            if ((this.jK != -1) || (paramCoordinatorLayout.a(paramV, j, this.jL))) {
              break label240;
            }
          }
          for (boolean bool = true;; bool = false)
          {
            this.jD = bool;
            break;
            localView = null;
            break label163;
          }
        }
      }
      paramV = (View)this.jI.get();
    } while ((i != 2) || (paramV == null) || (this.jD) || (this.mState == 1) || (paramCoordinatorLayout.a(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) || (Math.abs(this.jL - paramMotionEvent.getY()) <= this.jC.nc));
    return true;
  }
  
  public final boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2)
  {
    return (paramView == this.jI.get()) && ((this.mState != 3) || (super.a(paramCoordinatorLayout, paramV, paramView, paramFloat1, paramFloat2)));
  }
  
  final boolean a(View paramView, float paramFloat)
  {
    if (this.jB) {}
    do
    {
      return true;
      if (paramView.getTop() < this.jz) {
        return false;
      }
    } while (Math.abs(paramView.getTop() + 0.1F * paramFloat - this.jz) / this.jv > 0.5F);
    return false;
  }
  
  public final Parcelable b(CoordinatorLayout paramCoordinatorLayout, V paramV)
  {
    return new a(super.b(paramCoordinatorLayout, paramV), this.mState);
  }
  
  public final boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (!paramV.isShown()) {}
    do
    {
      return false;
      int i = paramMotionEvent.getActionMasked();
      if ((this.mState == 1) && (i == 0)) {
        return true;
      }
      if (this.jC != null) {
        this.jC.d(paramMotionEvent);
      }
      if (i == 0) {
        reset();
      }
      if (this.jJ == null) {
        this.jJ = VelocityTracker.obtain();
      }
      this.jJ.addMovement(paramMotionEvent);
      if ((i == 2) && (!this.jD) && (Math.abs(this.jL - paramMotionEvent.getY()) > this.jC.nc)) {
        this.jC.p(paramV, paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex()));
      }
    } while (this.jD);
    return true;
  }
  
  final void bn()
  {
    this.jH.get();
  }
  
  public final boolean v(int paramInt)
  {
    boolean bool = false;
    this.jE = 0;
    this.jF = false;
    if ((paramInt & 0x2) != 0) {
      bool = true;
    }
    return bool;
  }
  
  final void x(int paramInt)
  {
    if (this.mState == paramInt) {
      return;
    }
    this.mState = paramInt;
    this.jH.get();
  }
  
  protected static final class a
    extends android.support.v4.view.a
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.ClassLoaderCreator() {};
    final int state;
    
    public a(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.state = paramParcel.readInt();
    }
    
    public a(Parcelable paramParcelable, int paramInt)
    {
      super();
      this.state = paramInt;
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.state);
    }
  }
  
  private final class b
    implements Runnable
  {
    private final int jP;
    private final View mView;
    
    b(View paramView, int paramInt)
    {
      this.mView = paramView;
      this.jP = paramInt;
    }
    
    public final void run()
    {
      if ((BottomSheetBehavior.this.jC != null) && (BottomSheetBehavior.this.jC.en()))
      {
        android.support.v4.view.r.b(this.mView, this);
        return;
      }
      BottomSheetBehavior.this.x(this.jP);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/BottomSheetBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */