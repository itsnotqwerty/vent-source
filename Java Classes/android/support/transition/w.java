package android.support.transition;

import android.support.v4.g.a;
import android.support.v4.view.r;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public final class w
{
  private static u uQ = new e();
  private static ThreadLocal<WeakReference<a<ViewGroup, ArrayList<u>>>> uR = new ThreadLocal();
  private static ArrayList<ViewGroup> uS = new ArrayList();
  
  public static void a(ViewGroup paramViewGroup, u paramu)
  {
    if ((!uS.contains(paramViewGroup)) && (r.ae(paramViewGroup)))
    {
      uS.add(paramViewGroup);
      Object localObject = paramu;
      if (paramu == null) {
        localObject = uQ;
      }
      paramu = ((u)localObject).cr();
      localObject = (ArrayList)cs().get(paramViewGroup);
      if ((localObject != null) && (((ArrayList)localObject).size() > 0))
      {
        localObject = ((ArrayList)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((u)((Iterator)localObject).next()).x(paramViewGroup);
        }
      }
      if (paramu != null) {
        paramu.b(paramViewGroup, true);
      }
      localObject = t.t(paramViewGroup);
      if ((localObject != null) && (t.t(((t)localObject).ub) == localObject) && (((t)localObject).uc != null)) {
        ((t)localObject).uc.run();
      }
      paramViewGroup.setTag(r.a.transition_current_scene, null);
      if ((paramu != null) && (paramViewGroup != null))
      {
        paramu = new a(paramu, paramViewGroup);
        paramViewGroup.addOnAttachStateChangeListener(paramu);
        paramViewGroup.getViewTreeObserver().addOnPreDrawListener(paramu);
      }
    }
  }
  
  static a<ViewGroup, ArrayList<u>> cs()
  {
    WeakReference localWeakReference2 = (WeakReference)uR.get();
    WeakReference localWeakReference1;
    if (localWeakReference2 != null)
    {
      localWeakReference1 = localWeakReference2;
      if (localWeakReference2.get() != null) {}
    }
    else
    {
      localWeakReference1 = new WeakReference(new a());
      uR.set(localWeakReference1);
    }
    return (a)localWeakReference1.get();
  }
  
  private static final class a
    implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener
  {
    u uP;
    ViewGroup ub;
    
    a(u paramu, ViewGroup paramViewGroup)
    {
      this.uP = paramu;
      this.ub = paramViewGroup;
    }
    
    private void cu()
    {
      this.ub.getViewTreeObserver().removeOnPreDrawListener(this);
      this.ub.removeOnAttachStateChangeListener(this);
    }
    
    public final boolean onPreDraw()
    {
      cu();
      if (!w.ct().remove(this.ub)) {
        return true;
      }
      final a locala = w.cs();
      ArrayList localArrayList2 = (ArrayList)locala.get(this.ub);
      ArrayList localArrayList1 = null;
      Object localObject;
      if (localArrayList2 == null)
      {
        localObject = new ArrayList();
        locala.put(this.ub, localObject);
      }
      for (;;)
      {
        ((ArrayList)localObject).add(this.uP);
        this.uP.a(new v()
        {
          public final void a(u paramAnonymousu)
          {
            ((ArrayList)locala.get(w.a.this.ub)).remove(paramAnonymousu);
          }
        });
        this.uP.b(this.ub, false);
        if (localArrayList1 == null) {
          break;
        }
        localObject = localArrayList1.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((u)((Iterator)localObject).next()).y(this.ub);
        }
        localObject = localArrayList2;
        if (localArrayList2.size() > 0)
        {
          localArrayList1 = new ArrayList(localArrayList2);
          localObject = localArrayList2;
        }
      }
      this.uP.a(this.ub);
      return true;
    }
    
    public final void onViewAttachedToWindow(View paramView) {}
    
    public final void onViewDetachedFromWindow(View paramView)
    {
      cu();
      w.ct().remove(this.ub);
      paramView = (ArrayList)w.cs().get(this.ub);
      if ((paramView != null) && (paramView.size() > 0))
      {
        paramView = paramView.iterator();
        while (paramView.hasNext()) {
          ((u)paramView.next()).y(this.ub);
        }
      }
      this.uP.k(true);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */