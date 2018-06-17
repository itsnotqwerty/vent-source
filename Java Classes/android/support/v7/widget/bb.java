package android.support.v7.widget;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.a.a;
import android.support.v4.view.a.a.a;
import android.support.v4.view.b;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;

public final class bb
  extends b
{
  final RecyclerView YZ;
  final b agn;
  
  public bb(RecyclerView paramRecyclerView)
  {
    this.YZ = paramRecyclerView;
    this.agn = new a(this);
  }
  
  public final void a(View paramView, a parama)
  {
    super.a(paramView, parama);
    parama.setClassName(RecyclerView.class.getName());
    int i;
    int j;
    if ((!this.YZ.ie()) && (this.YZ.getLayoutManager() != null))
    {
      paramView = this.YZ.getLayoutManager();
      RecyclerView.p localp = paramView.YZ.adH;
      RecyclerView.u localu = paramView.YZ.aeE;
      if ((paramView.YZ.canScrollVertically(-1)) || (paramView.YZ.canScrollHorizontally(-1)))
      {
        parama.addAction(8192);
        parama.setScrollable(true);
      }
      if ((paramView.YZ.canScrollVertically(1)) || (paramView.YZ.canScrollHorizontally(1)))
      {
        parama.addAction(4096);
        parama.setScrollable(true);
      }
      i = paramView.a(localp, localu);
      j = paramView.b(localp, localu);
      if (Build.VERSION.SDK_INT < 21) {
        break label198;
      }
      paramView = new a.a(AccessibilityNodeInfo.CollectionInfo.obtain(i, j, false, 0));
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT >= 19) {
        parama.HB.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo)((a.a)paramView).HD);
      }
      return;
      label198:
      if (Build.VERSION.SDK_INT >= 19) {
        paramView = new a.a(AccessibilityNodeInfo.CollectionInfo.obtain(i, j, false));
      } else {
        paramView = new a.a(null);
      }
    }
  }
  
  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if (((paramView instanceof RecyclerView)) && (!this.YZ.ie()))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.getLayoutManager() != null) {
        paramView.getLayoutManager().onInitializeAccessibilityEvent(paramAccessibilityEvent);
      }
    }
  }
  
  public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    boolean bool2 = false;
    boolean bool1;
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      bool1 = true;
    }
    int i;
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (this.YZ.ie());
          bool1 = bool2;
        } while (this.YZ.getLayoutManager() == null);
        paramView = this.YZ.getLayoutManager();
        paramBundle = paramView.YZ.adH;
        paramBundle = paramView.YZ.aeE;
        bool1 = bool2;
      } while (paramView.YZ == null);
      switch (paramInt)
      {
      default: 
        i = 0;
        paramInt = 0;
        if (paramInt != 0) {
          break label126;
        }
        bool1 = bool2;
      }
    } while (i == 0);
    label126:
    paramView.YZ.scrollBy(i, paramInt);
    return true;
    if (paramView.YZ.canScrollVertically(-1)) {}
    for (paramInt = -(paramView.dc - paramView.getPaddingTop() - paramView.getPaddingBottom());; paramInt = 0)
    {
      i = paramInt;
      if (paramView.YZ.canScrollHorizontally(-1))
      {
        i = -(paramView.db - paramView.getPaddingLeft() - paramView.getPaddingRight());
        break;
        if (!paramView.YZ.canScrollVertically(1)) {
          break label271;
        }
      }
      label271:
      for (paramInt = paramView.dc - paramView.getPaddingTop() - paramView.getPaddingBottom();; paramInt = 0)
      {
        i = paramInt;
        if (paramView.YZ.canScrollHorizontally(1))
        {
          i = paramView.db - paramView.getPaddingLeft() - paramView.getPaddingRight();
          break;
        }
        int j = 0;
        paramInt = i;
        i = j;
        break;
      }
    }
  }
  
  public static final class a
    extends b
  {
    final bb ago;
    
    public a(bb parambb)
    {
      this.ago = parambb;
    }
    
    public final void a(View paramView, a parama)
    {
      super.a(paramView, parama);
      if ((!this.ago.YZ.ie()) && (this.ago.YZ.getLayoutManager() != null)) {
        this.ago.YZ.getLayoutManager().b(paramView, parama);
      }
    }
    
    public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      boolean bool2 = false;
      boolean bool1;
      if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
        bool1 = true;
      }
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (this.ago.YZ.ie());
        bool1 = bool2;
      } while (this.ago.YZ.getLayoutManager() == null);
      paramView = this.ago.YZ.getLayoutManager();
      paramBundle = paramView.YZ.adH;
      paramView = paramView.YZ.aeE;
      return false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */