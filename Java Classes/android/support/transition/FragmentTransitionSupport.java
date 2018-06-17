package android.support.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class FragmentTransitionSupport
  extends android.support.v4.app.w
{
  private static boolean b(u paramu)
  {
    return (!g(paramu.ui)) || (!g(paramu.uk)) || (!g(paramu.ul));
  }
  
  public final Object a(Object paramObject1, Object paramObject2, Object paramObject3)
  {
    y localy = new y();
    if (paramObject1 != null) {
      localy.d((u)paramObject1);
    }
    if (paramObject2 != null) {
      localy.d((u)paramObject2);
    }
    if (paramObject3 != null) {
      localy.d((u)paramObject3);
    }
    return localy;
  }
  
  public final void a(ViewGroup paramViewGroup, Object paramObject)
  {
    w.a(paramViewGroup, (u)paramObject);
  }
  
  public final void a(Object paramObject, final Rect paramRect)
  {
    if (paramObject != null) {
      ((u)paramObject).a(new u.b() {});
    }
  }
  
  public final void a(Object paramObject, View paramView)
  {
    if (paramView != null)
    {
      paramObject = (u)paramObject;
      final Rect localRect = new Rect();
      b(paramView, localRect);
      ((u)paramObject).a(new u.b() {});
    }
  }
  
  public final void a(Object paramObject, View paramView, ArrayList<View> paramArrayList)
  {
    paramObject = (y)paramObject;
    ArrayList localArrayList = ((u)paramObject).uj;
    localArrayList.clear();
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      a(localArrayList, (View)paramArrayList.get(i));
      i += 1;
    }
    localArrayList.add(paramView);
    paramArrayList.add(paramView);
    a(paramObject, paramArrayList);
  }
  
  public final void a(Object paramObject1, final Object paramObject2, final ArrayList<View> paramArrayList1, final Object paramObject3, final ArrayList<View> paramArrayList2, final Object paramObject4, final ArrayList<View> paramArrayList3)
  {
    ((u)paramObject1).a(new u.c()
    {
      public final void a(u paramAnonymousu) {}
      
      public final void cl() {}
      
      public final void cm() {}
      
      public final void co()
      {
        if (paramObject2 != null) {
          FragmentTransitionSupport.this.b(paramObject2, paramArrayList1, null);
        }
        if (paramObject3 != null) {
          FragmentTransitionSupport.this.b(paramObject3, paramArrayList2, null);
        }
        if (paramObject4 != null) {
          FragmentTransitionSupport.this.b(paramObject4, paramArrayList3, null);
        }
      }
    });
  }
  
  public final void a(Object paramObject, ArrayList<View> paramArrayList)
  {
    int i = 0;
    paramObject = (u)paramObject;
    if (paramObject == null) {}
    for (;;)
    {
      return;
      int j;
      if ((paramObject instanceof y))
      {
        paramObject = (y)paramObject;
        j = ((y)paramObject).uV.size();
        while (i < j)
        {
          a(((y)paramObject).U(i), paramArrayList);
          i += 1;
        }
      }
      else if ((!b((u)paramObject)) && (g(((u)paramObject).uj)))
      {
        j = paramArrayList.size();
        i = 0;
        while (i < j)
        {
          ((u)paramObject).v((View)paramArrayList.get(i));
          i += 1;
        }
      }
    }
  }
  
  public final void a(Object paramObject, ArrayList<View> paramArrayList1, ArrayList<View> paramArrayList2)
  {
    paramObject = (y)paramObject;
    if (paramObject != null)
    {
      ((u)paramObject).uj.clear();
      ((u)paramObject).uj.addAll(paramArrayList2);
      b(paramObject, paramArrayList1, paramArrayList2);
    }
  }
  
  public final Object b(Object paramObject1, Object paramObject2, Object paramObject3)
  {
    Object localObject = null;
    paramObject1 = (u)paramObject1;
    paramObject2 = (u)paramObject2;
    paramObject3 = (u)paramObject3;
    if ((paramObject1 != null) && (paramObject2 != null))
    {
      paramObject1 = new y().d((u)paramObject1).d((u)paramObject2);
      ((y)paramObject1).uW = false;
    }
    while (paramObject3 != null)
    {
      paramObject2 = new y();
      if (paramObject1 != null) {
        ((y)paramObject2).d((u)paramObject1);
      }
      ((y)paramObject2).d((u)paramObject3);
      return paramObject2;
      if (paramObject1 == null)
      {
        paramObject1 = localObject;
        if (paramObject2 != null) {
          paramObject1 = paramObject2;
        }
      }
    }
    return paramObject1;
  }
  
  public final void b(Object paramObject, View paramView)
  {
    if (paramObject != null) {
      ((u)paramObject).v(paramView);
    }
  }
  
  public final void b(Object paramObject, final View paramView, final ArrayList<View> paramArrayList)
  {
    ((u)paramObject).a(new u.c()
    {
      public final void a(u paramAnonymousu)
      {
        paramAnonymousu.b(this);
        paramView.setVisibility(8);
        int j = paramArrayList.size();
        int i = 0;
        while (i < j)
        {
          ((View)paramArrayList.get(i)).setVisibility(0);
          i += 1;
        }
      }
      
      public final void cl() {}
      
      public final void cm() {}
      
      public final void co() {}
    });
  }
  
  public final void b(Object paramObject, ArrayList<View> paramArrayList1, ArrayList<View> paramArrayList2)
  {
    int i = 0;
    paramObject = (u)paramObject;
    int j;
    if ((paramObject instanceof y))
    {
      paramObject = (y)paramObject;
      j = ((y)paramObject).uV.size();
      while (i < j)
      {
        b(((y)paramObject).U(i), paramArrayList1, paramArrayList2);
        i += 1;
      }
    }
    if (!b((u)paramObject))
    {
      ArrayList localArrayList = ((u)paramObject).uj;
      if ((localArrayList.size() == paramArrayList1.size()) && (localArrayList.containsAll(paramArrayList1)))
      {
        if (paramArrayList2 == null) {}
        for (i = 0;; i = paramArrayList2.size())
        {
          j = 0;
          while (j < i)
          {
            ((u)paramObject).v((View)paramArrayList2.get(j));
            j += 1;
          }
        }
        i = paramArrayList1.size() - 1;
        while (i >= 0)
        {
          ((u)paramObject).w((View)paramArrayList1.get(i));
          i -= 1;
        }
      }
    }
  }
  
  public final void c(Object paramObject, View paramView)
  {
    if (paramObject != null) {
      ((u)paramObject).w(paramView);
    }
  }
  
  public final boolean l(Object paramObject)
  {
    return paramObject instanceof u;
  }
  
  public final Object m(Object paramObject)
  {
    u localu = null;
    if (paramObject != null) {
      localu = ((u)paramObject).cr();
    }
    return localu;
  }
  
  public final Object n(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    y localy = new y();
    localy.d((u)paramObject);
    return localy;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/FragmentTransitionSupport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */