package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.support.v4.g.c;
import android.support.v4.g.f;
import android.support.v4.view.r;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class u
  implements Cloneable
{
  private static ThreadLocal<android.support.v4.g.a<Animator, a>> uA = new ThreadLocal();
  private static final int[] ud = { 2, 1, 3, 4 };
  private static final l ue = new l()
  {
    public final Path getPath(float paramAnonymousFloat1, float paramAnonymousFloat2, float paramAnonymousFloat3, float paramAnonymousFloat4)
    {
      Path localPath = new Path();
      localPath.moveTo(paramAnonymousFloat1, paramAnonymousFloat2);
      localPath.lineTo(paramAnonymousFloat3, paramAnonymousFloat4);
      return localPath;
    }
  };
  private String mName = getClass().getName();
  private ArrayList<Animator> qG = new ArrayList();
  boolean uB = false;
  private ArrayList<Animator> uC = new ArrayList();
  private int uD = 0;
  private boolean uE = false;
  private boolean uF = false;
  private ArrayList<c> uG = null;
  x uH;
  private b uI;
  private android.support.v4.g.a<String, String> uJ;
  l uK = ue;
  private ViewGroup ub = null;
  long uf = -1L;
  long ug = -1L;
  private TimeInterpolator uh = null;
  ArrayList<Integer> ui = new ArrayList();
  ArrayList<View> uj = new ArrayList();
  ArrayList<String> uk = null;
  ArrayList<Class> ul = null;
  private ArrayList<Integer> um = null;
  private ArrayList<View> un = null;
  private ArrayList<Class> uo = null;
  private ArrayList<String> uq = null;
  private ArrayList<Integer> ur = null;
  private ArrayList<View> us = null;
  private ArrayList<Class> ut = null;
  private aa uu = new aa();
  private aa uv = new aa();
  y uw = null;
  private int[] ux = ud;
  private ArrayList<z> uy;
  private ArrayList<z> uz;
  
  private void a(aa paramaa1, aa paramaa2)
  {
    android.support.v4.g.a locala2 = new android.support.v4.g.a(paramaa1.vd);
    android.support.v4.g.a locala1 = new android.support.v4.g.a(paramaa2.vd);
    int i = 0;
    if (i < this.ux.length)
    {
      switch (this.ux[i])
      {
      }
      for (;;)
      {
        i += 1;
        break;
        int j = locala2.size() - 1;
        while (j >= 0)
        {
          localObject1 = (View)locala2.keyAt(j);
          if ((localObject1 != null) && (u((View)localObject1)))
          {
            localObject1 = (z)locala1.remove(localObject1);
            if ((localObject1 != null) && (((z)localObject1).view != null) && (u(((z)localObject1).view)))
            {
              localObject2 = (z)locala2.removeAt(j);
              this.uy.add(localObject2);
              this.uz.add(localObject1);
            }
          }
          j -= 1;
        }
        Object localObject1 = paramaa1.vg;
        Object localObject2 = paramaa2.vg;
        int k = ((android.support.v4.g.a)localObject1).size();
        j = 0;
        View localView1;
        View localView2;
        z localz1;
        z localz2;
        while (j < k)
        {
          localView1 = (View)((android.support.v4.g.a)localObject1).valueAt(j);
          if ((localView1 != null) && (u(localView1)))
          {
            localView2 = (View)((android.support.v4.g.a)localObject2).get(((android.support.v4.g.a)localObject1).keyAt(j));
            if ((localView2 != null) && (u(localView2)))
            {
              localz1 = (z)locala2.get(localView1);
              localz2 = (z)locala1.get(localView2);
              if ((localz1 != null) && (localz2 != null))
              {
                this.uy.add(localz1);
                this.uz.add(localz2);
                locala2.remove(localView1);
                locala1.remove(localView2);
              }
            }
          }
          j += 1;
        }
        localObject1 = paramaa1.ve;
        localObject2 = paramaa2.ve;
        k = ((SparseArray)localObject1).size();
        j = 0;
        while (j < k)
        {
          localView1 = (View)((SparseArray)localObject1).valueAt(j);
          if ((localView1 != null) && (u(localView1)))
          {
            localView2 = (View)((SparseArray)localObject2).get(((SparseArray)localObject1).keyAt(j));
            if ((localView2 != null) && (u(localView2)))
            {
              localz1 = (z)locala2.get(localView1);
              localz2 = (z)locala1.get(localView2);
              if ((localz1 != null) && (localz2 != null))
              {
                this.uy.add(localz1);
                this.uz.add(localz2);
                locala2.remove(localView1);
                locala1.remove(localView2);
              }
            }
          }
          j += 1;
        }
        localObject1 = paramaa1.vf;
        localObject2 = paramaa2.vf;
        k = ((f)localObject1).size();
        j = 0;
        while (j < k)
        {
          localView1 = (View)((f)localObject1).valueAt(j);
          if ((localView1 != null) && (u(localView1)))
          {
            localView2 = (View)((f)localObject2).get(((f)localObject1).keyAt(j));
            if ((localView2 != null) && (u(localView2)))
            {
              localz1 = (z)locala2.get(localView1);
              localz2 = (z)locala1.get(localView2);
              if ((localz1 != null) && (localz2 != null))
              {
                this.uy.add(localz1);
                this.uz.add(localz2);
                locala2.remove(localView1);
                locala1.remove(localView2);
              }
            }
          }
          j += 1;
        }
      }
    }
    i = 0;
    while (i < locala2.size())
    {
      paramaa1 = (z)locala2.valueAt(i);
      if (u(paramaa1.view))
      {
        this.uy.add(paramaa1);
        this.uz.add(null);
      }
      i += 1;
    }
    i = 0;
    while (i < locala1.size())
    {
      paramaa1 = (z)locala1.valueAt(i);
      if (u(paramaa1.view))
      {
        this.uz.add(paramaa1);
        this.uy.add(null);
      }
      i += 1;
    }
  }
  
  private static void a(aa paramaa, View paramView, z paramz)
  {
    paramaa.vd.put(paramView, paramz);
    int i = paramView.getId();
    if (i >= 0)
    {
      if (paramaa.ve.indexOfKey(i) >= 0) {
        paramaa.ve.put(i, null);
      }
    }
    else
    {
      paramz = r.U(paramView);
      if (paramz != null)
      {
        if (!paramaa.vg.containsKey(paramz)) {
          break label187;
        }
        paramaa.vg.put(paramz, null);
      }
    }
    long l;
    for (;;)
    {
      if ((paramView.getParent() instanceof ListView))
      {
        paramz = (ListView)paramView.getParent();
        if (paramz.getAdapter().hasStableIds())
        {
          l = paramz.getItemIdAtPosition(paramz.getPositionForView(paramView));
          paramz = paramaa.vf;
          if (paramz.EA) {
            paramz.gc();
          }
          if (c.a(paramz.EB, paramz.ai, l) < 0) {
            break label200;
          }
          paramView = (View)paramaa.vf.get(l);
          if (paramView != null)
          {
            r.d(paramView, false);
            paramaa.vf.put(l, null);
          }
        }
      }
      return;
      paramaa.ve.put(i, paramView);
      break;
      label187:
      paramaa.vg.put(paramz, paramView);
    }
    label200:
    r.d(paramView, true);
    paramaa.vf.put(l, paramView);
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    if (paramView == null) {}
    for (;;)
    {
      return;
      int j = paramView.getId();
      if (((this.um == null) || (!this.um.contains(Integer.valueOf(j)))) && ((this.un == null) || (!this.un.contains(paramView))))
      {
        if (this.uo != null)
        {
          int k = this.uo.size();
          i = 0;
          for (;;)
          {
            if (i >= k) {
              break label100;
            }
            if (((Class)this.uo.get(i)).isInstance(paramView)) {
              break;
            }
            i += 1;
          }
        }
        label100:
        z localz;
        if ((paramView.getParent() instanceof ViewGroup))
        {
          localz = new z();
          localz.view = paramView;
          if (!paramBoolean) {
            break label261;
          }
          b(localz);
          label135:
          localz.vc.add(this);
          d(localz);
          if (!paramBoolean) {
            break label270;
          }
          a(this.uu, paramView, localz);
        }
        for (;;)
        {
          if ((!(paramView instanceof ViewGroup)) || ((this.ur != null) && (this.ur.contains(Integer.valueOf(j)))) || ((this.us != null) && (this.us.contains(paramView)))) {
            break label281;
          }
          if (this.ut == null) {
            break label283;
          }
          j = this.ut.size();
          i = 0;
          for (;;)
          {
            if (i >= j) {
              break label283;
            }
            if (((Class)this.ut.get(i)).isInstance(paramView)) {
              break;
            }
            i += 1;
          }
          label261:
          c(localz);
          break label135;
          label270:
          a(this.uv, paramView, localz);
        }
        label281:
        continue;
        label283:
        paramView = (ViewGroup)paramView;
        int i = 0;
        while (i < paramView.getChildCount())
        {
          a(paramView.getChildAt(i), paramBoolean);
          i += 1;
        }
      }
    }
  }
  
  private static boolean a(z paramz1, z paramz2, String paramString)
  {
    paramz1 = paramz1.values.get(paramString);
    paramz2 = paramz2.values.get(paramString);
    if ((paramz1 != null) || (paramz2 != null))
    {
      if ((paramz1 == null) || (paramz2 == null)) {}
      while (!paramz1.equals(paramz2)) {
        return true;
      }
    }
    return false;
  }
  
  private static android.support.v4.g.a<Animator, a> cp()
  {
    android.support.v4.g.a locala2 = (android.support.v4.g.a)uA.get();
    android.support.v4.g.a locala1 = locala2;
    if (locala2 == null)
    {
      locala1 = new android.support.v4.g.a();
      uA.set(locala1);
    }
    return locala1;
  }
  
  public Animator a(ViewGroup paramViewGroup, z paramz1, z paramz2)
  {
    return null;
  }
  
  public u a(c paramc)
  {
    if (this.uG == null) {
      this.uG = new ArrayList();
    }
    this.uG.add(paramc);
    return this;
  }
  
  public void a(b paramb)
  {
    this.uI = paramb;
  }
  
  final void a(ViewGroup paramViewGroup)
  {
    this.uy = new ArrayList();
    this.uz = new ArrayList();
    a(this.uu, this.uv);
    android.support.v4.g.a locala = cp();
    int i = locala.size();
    av localav = al.B(paramViewGroup);
    i -= 1;
    if (i >= 0)
    {
      Animator localAnimator = (Animator)locala.keyAt(i);
      int j;
      if (localAnimator != null)
      {
        a locala1 = (a)locala.get(localAnimator);
        if ((locala1 != null) && (locala1.mView != null) && (localav.equals(locala1.uO)))
        {
          z localz1 = locala1.uN;
          Object localObject = locala1.mView;
          z localz2 = b((View)localObject, true);
          localObject = c((View)localObject, true);
          if (((localz2 == null) && (localObject == null)) || (!locala1.uP.a(localz1, (z)localObject))) {
            break label204;
          }
          j = 1;
          label172:
          if (j != 0)
          {
            if ((!localAnimator.isRunning()) && (!localAnimator.isStarted())) {
              break label209;
            }
            localAnimator.cancel();
          }
        }
      }
      for (;;)
      {
        i -= 1;
        break;
        label204:
        j = 0;
        break label172;
        label209:
        locala.remove(localAnimator);
      }
    }
    a(paramViewGroup, this.uu, this.uv, this.uy, this.uz);
    cq();
  }
  
  protected void a(ViewGroup paramViewGroup, aa paramaa1, aa paramaa2, ArrayList<z> paramArrayList1, ArrayList<z> paramArrayList2)
  {
    android.support.v4.g.a locala = cp();
    long l1 = Long.MAX_VALUE;
    SparseIntArray localSparseIntArray = new SparseIntArray();
    int k = paramArrayList1.size();
    int i = 0;
    Object localObject2;
    if (i < k)
    {
      paramaa1 = (z)paramArrayList1.get(i);
      localObject2 = (z)paramArrayList2.get(i);
      if ((paramaa1 == null) || (paramaa1.vc.contains(this))) {
        break label605;
      }
      paramaa1 = null;
    }
    label312:
    label487:
    label500:
    label509:
    label522:
    label605:
    for (;;)
    {
      Object localObject1 = localObject2;
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if (!((z)localObject2).vc.contains(this)) {
          localObject1 = null;
        }
      }
      long l2;
      int j;
      Object localObject3;
      if (paramaa1 == null)
      {
        l2 = l1;
        if (localObject1 == null) {}
      }
      else
      {
        if ((paramaa1 == null) || (localObject1 == null) || (a(paramaa1, (z)localObject1))) {}
        for (j = 1;; j = 0)
        {
          l2 = l1;
          if (j == 0) {
            break label487;
          }
          localObject2 = a(paramViewGroup, paramaa1, (z)localObject1);
          l2 = l1;
          if (localObject2 == null) {
            break label487;
          }
          localObject3 = null;
          if (localObject1 == null) {
            break label522;
          }
          localObject1 = ((z)localObject1).view;
          String[] arrayOfString = getTransitionProperties();
          paramaa1 = (aa)localObject3;
          if (localObject1 == null) {
            break label509;
          }
          paramaa1 = (aa)localObject3;
          if (arrayOfString == null) {
            break label509;
          }
          paramaa1 = (aa)localObject3;
          if (arrayOfString.length <= 0) {
            break label509;
          }
          paramaa1 = new z();
          paramaa1.view = ((View)localObject1);
          localObject3 = (z)paramaa2.vd.get(localObject1);
          if (localObject3 == null) {
            break;
          }
          j = 0;
          while (j < arrayOfString.length)
          {
            paramaa1.values.put(arrayOfString[j], ((z)localObject3).values.get(arrayOfString[j]));
            j += 1;
          }
        }
        int m = locala.size();
        j = 0;
        if (j >= m) {
          break label509;
        }
        localObject3 = (a)locala.get((Animator)locala.keyAt(j));
        if ((((a)localObject3).uN == null) || (((a)localObject3).mView != localObject1) || (!((a)localObject3).mName.equals(this.mName)) || (!((a)localObject3).uN.equals(paramaa1))) {
          break label500;
        }
        localObject2 = null;
        localObject3 = localObject1;
        localObject1 = paramaa1;
        paramaa1 = (aa)localObject3;
      }
      for (;;)
      {
        l2 = l1;
        if (localObject2 != null)
        {
          l2 = l1;
          if (this.uH != null)
          {
            l2 = this.uH.cv();
            localSparseIntArray.put(this.qG.size(), (int)l2);
            l2 = Math.min(l2, l1);
          }
          locala.put(localObject2, new a(paramaa1, this.mName, this, al.B(paramViewGroup), (z)localObject1));
          this.qG.add(localObject2);
        }
        i += 1;
        l1 = l2;
        break;
        j += 1;
        break label312;
        localObject3 = paramaa1;
        paramaa1 = (aa)localObject1;
        localObject1 = localObject3;
        continue;
        paramaa1 = paramaa1.view;
        localObject1 = null;
      }
      if (l1 != 0L)
      {
        i = 0;
        while (i < localSparseIntArray.size())
        {
          j = localSparseIntArray.keyAt(i);
          paramViewGroup = (Animator)this.qG.get(j);
          paramViewGroup.setStartDelay(localSparseIntArray.valueAt(i) - l1 + paramViewGroup.getStartDelay());
          i += 1;
        }
      }
      return;
    }
  }
  
  public boolean a(z paramz1, z paramz2)
  {
    if ((paramz1 != null) && (paramz2 != null))
    {
      Object localObject = getTransitionProperties();
      if (localObject != null)
      {
        int j = localObject.length;
        int i = 0;
        while (i < j)
        {
          if (a(paramz1, paramz2, localObject[i])) {
            return true;
          }
          i += 1;
        }
        return false;
      }
      localObject = paramz1.values.keySet().iterator();
      while (((Iterator)localObject).hasNext()) {
        if (a(paramz1, paramz2, (String)((Iterator)localObject).next())) {
          return true;
        }
      }
    }
    return false;
  }
  
  public u b(c paramc)
  {
    if (this.uG == null) {}
    do
    {
      return this;
      this.uG.remove(paramc);
    } while (this.uG.size() != 0);
    this.uG = null;
    return this;
  }
  
  public final z b(View paramView, boolean paramBoolean)
  {
    for (Object localObject = this; ((u)localObject).uw != null; localObject = ((u)localObject).uw) {}
    if (paramBoolean) {}
    for (localObject = ((u)localObject).uu;; localObject = ((u)localObject).uv) {
      return (z)((aa)localObject).vd.get(paramView);
    }
  }
  
  public abstract void b(z paramz);
  
  final void b(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int k = 0;
    k(paramBoolean);
    int i;
    Object localObject1;
    Object localObject2;
    if (((this.ui.size() > 0) || (this.uj.size() > 0)) && ((this.uk == null) || (this.uk.isEmpty())) && ((this.ul == null) || (this.ul.isEmpty())))
    {
      i = 0;
      if (i < this.ui.size())
      {
        localObject1 = paramViewGroup.findViewById(((Integer)this.ui.get(i)).intValue());
        if (localObject1 != null)
        {
          localObject2 = new z();
          ((z)localObject2).view = ((View)localObject1);
          if (!paramBoolean) {
            break label164;
          }
          b((z)localObject2);
          label126:
          ((z)localObject2).vc.add(this);
          d((z)localObject2);
          if (!paramBoolean) {
            break label173;
          }
          a(this.uu, (View)localObject1, (z)localObject2);
        }
        for (;;)
        {
          i += 1;
          break;
          label164:
          c((z)localObject2);
          break label126;
          label173:
          a(this.uv, (View)localObject1, (z)localObject2);
        }
      }
      i = 0;
      if (i < this.uj.size())
      {
        paramViewGroup = (View)this.uj.get(i);
        localObject1 = new z();
        ((z)localObject1).view = paramViewGroup;
        if (paramBoolean)
        {
          b((z)localObject1);
          label237:
          ((z)localObject1).vc.add(this);
          d((z)localObject1);
          if (!paramBoolean) {
            break label283;
          }
          a(this.uu, paramViewGroup, (z)localObject1);
        }
        for (;;)
        {
          i += 1;
          break;
          c((z)localObject1);
          break label237;
          label283:
          a(this.uv, paramViewGroup, (z)localObject1);
        }
      }
    }
    else
    {
      a(paramViewGroup, paramBoolean);
    }
    if ((!paramBoolean) && (this.uJ != null))
    {
      int m = this.uJ.size();
      paramViewGroup = new ArrayList(m);
      i = 0;
      int j;
      for (;;)
      {
        j = k;
        if (i >= m) {
          break;
        }
        localObject1 = (String)this.uJ.keyAt(i);
        paramViewGroup.add(this.uu.vg.remove(localObject1));
        i += 1;
      }
      while (j < m)
      {
        localObject1 = (View)paramViewGroup.get(j);
        if (localObject1 != null)
        {
          localObject2 = (String)this.uJ.valueAt(j);
          this.uu.vg.put(localObject2, localObject1);
        }
        j += 1;
      }
    }
  }
  
  public u c(long paramLong)
  {
    this.ug = paramLong;
    return this;
  }
  
  final z c(View paramView, boolean paramBoolean)
  {
    for (Object localObject = this; ((u)localObject).uw != null; localObject = ((u)localObject).uw) {}
    ArrayList localArrayList;
    if (paramBoolean)
    {
      localArrayList = ((u)localObject).uy;
      if (localArrayList != null) {
        break label49;
      }
    }
    label49:
    int i;
    z localz;
    do
    {
      return null;
      localArrayList = ((u)localObject).uz;
      break;
      int j = localArrayList.size();
      i = 0;
      if (i >= j) {
        break label135;
      }
      localz = (z)localArrayList.get(i);
    } while (localz == null);
    if (localz.view == paramView) {}
    for (;;)
    {
      if (i >= 0) {
        if (paramBoolean) {
          paramView = ((u)localObject).uz;
        }
      }
      label103:
      for (paramView = (z)paramView.get(i);; paramView = null)
      {
        return paramView;
        i += 1;
        break;
        paramView = ((u)localObject).uy;
        break label103;
      }
      label135:
      i = -1;
    }
  }
  
  public abstract void c(z paramz);
  
  protected void cq()
  {
    start();
    final android.support.v4.g.a locala = cp();
    Iterator localIterator = this.qG.iterator();
    while (localIterator.hasNext())
    {
      Animator localAnimator = (Animator)localIterator.next();
      if (locala.containsKey(localAnimator))
      {
        start();
        if (localAnimator != null)
        {
          localAnimator.addListener(new AnimatorListenerAdapter()
          {
            public final void onAnimationEnd(Animator paramAnonymousAnimator)
            {
              locala.remove(paramAnonymousAnimator);
              u.c(u.this).remove(paramAnonymousAnimator);
            }
            
            public final void onAnimationStart(Animator paramAnonymousAnimator)
            {
              u.c(u.this).add(paramAnonymousAnimator);
            }
          });
          if (localAnimator == null)
          {
            end();
          }
          else
          {
            if (this.ug >= 0L) {
              localAnimator.setDuration(this.ug);
            }
            if (this.uf >= 0L) {
              localAnimator.setStartDelay(this.uf);
            }
            if (this.uh != null) {
              localAnimator.setInterpolator(this.uh);
            }
            localAnimator.addListener(new AnimatorListenerAdapter()
            {
              public final void onAnimationEnd(Animator paramAnonymousAnimator)
              {
                u.this.end();
                paramAnonymousAnimator.removeListener(this);
              }
            });
            localAnimator.start();
          }
        }
      }
    }
    this.qG.clear();
    end();
  }
  
  public u cr()
  {
    try
    {
      u localu = (u)super.clone();
      localu.qG = new ArrayList();
      localu.uu = new aa();
      localu.uv = new aa();
      localu.uy = null;
      localu.uz = null;
      return localu;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public u d(long paramLong)
  {
    this.uf = paramLong;
    return this;
  }
  
  void d(z paramz)
  {
    String[] arrayOfString;
    if ((this.uH != null) && (!paramz.values.isEmpty()))
    {
      arrayOfString = this.uH.getPropagationProperties();
      if (arrayOfString != null) {
        break label32;
      }
    }
    for (;;)
    {
      return;
      label32:
      int i = 0;
      while ((i < arrayOfString.length) && (paramz.values.containsKey(arrayOfString[i]))) {
        i += 1;
      }
    }
  }
  
  protected final void end()
  {
    this.uD -= 1;
    if (this.uD == 0)
    {
      Object localObject;
      if ((this.uG != null) && (this.uG.size() > 0))
      {
        localObject = (ArrayList)this.uG.clone();
        int j = ((ArrayList)localObject).size();
        i = 0;
        while (i < j)
        {
          ((c)((ArrayList)localObject).get(i)).a(this);
          i += 1;
        }
      }
      int i = 0;
      while (i < this.uu.vf.size())
      {
        localObject = (View)this.uu.vf.valueAt(i);
        if (localObject != null) {
          r.d((View)localObject, false);
        }
        i += 1;
      }
      i = 0;
      while (i < this.uv.vf.size())
      {
        localObject = (View)this.uv.vf.valueAt(i);
        if (localObject != null) {
          r.d((View)localObject, false);
        }
        i += 1;
      }
      this.uF = true;
    }
  }
  
  public String[] getTransitionProperties()
  {
    return null;
  }
  
  final void k(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.uu.vd.clear();
      this.uu.ve.clear();
      this.uu.vf.clear();
      return;
    }
    this.uv.vd.clear();
    this.uv.ve.clear();
    this.uv.vf.clear();
  }
  
  protected final void start()
  {
    if (this.uD == 0)
    {
      if ((this.uG != null) && (this.uG.size() > 0))
      {
        ArrayList localArrayList = (ArrayList)this.uG.clone();
        int j = localArrayList.size();
        int i = 0;
        while (i < j)
        {
          ((c)localArrayList.get(i)).co();
          i += 1;
        }
      }
      this.uF = false;
    }
    this.uD += 1;
  }
  
  public String toString()
  {
    return toString("");
  }
  
  String toString(String paramString)
  {
    int j = 0;
    String str = paramString + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
    paramString = str;
    if (this.ug != -1L) {
      paramString = str + "dur(" + this.ug + ") ";
    }
    str = paramString;
    if (this.uf != -1L) {
      str = paramString + "dly(" + this.uf + ") ";
    }
    paramString = str;
    if (this.uh != null) {
      paramString = str + "interp(" + this.uh + ") ";
    }
    if (this.ui.size() <= 0)
    {
      str = paramString;
      if (this.uj.size() <= 0) {}
    }
    else
    {
      str = paramString + "tgts(";
      paramString = str;
      int i;
      if (this.ui.size() > 0)
      {
        i = 0;
        for (;;)
        {
          paramString = str;
          if (i >= this.ui.size()) {
            break;
          }
          paramString = str;
          if (i > 0) {
            paramString = str + ", ";
          }
          str = paramString + this.ui.get(i);
          i += 1;
        }
      }
      str = paramString;
      if (this.uj.size() > 0)
      {
        i = j;
        for (;;)
        {
          str = paramString;
          if (i >= this.uj.size()) {
            break;
          }
          str = paramString;
          if (i > 0) {
            str = paramString + ", ";
          }
          paramString = str + this.uj.get(i);
          i += 1;
        }
      }
      str = str + ")";
    }
    return str;
  }
  
  final boolean u(View paramView)
  {
    int j = paramView.getId();
    if ((this.um != null) && (this.um.contains(Integer.valueOf(j)))) {}
    for (;;)
    {
      return false;
      if ((this.un == null) || (!this.un.contains(paramView)))
      {
        int i;
        if (this.uo != null)
        {
          int k = this.uo.size();
          i = 0;
          for (;;)
          {
            if (i >= k) {
              break label95;
            }
            if (((Class)this.uo.get(i)).isInstance(paramView)) {
              break;
            }
            i += 1;
          }
        }
        label95:
        if ((this.uq == null) || (r.U(paramView) == null) || (!this.uq.contains(r.U(paramView))))
        {
          if ((this.ui.size() == 0) && (this.uj.size() == 0) && ((this.ul == null) || (this.ul.isEmpty())) && ((this.uk == null) || (this.uk.isEmpty()))) {
            return true;
          }
          if ((this.ui.contains(Integer.valueOf(j))) || (this.uj.contains(paramView))) {
            return true;
          }
          if ((this.uk != null) && (this.uk.contains(r.U(paramView)))) {
            return true;
          }
          if (this.ul != null)
          {
            i = 0;
            while (i < this.ul.size())
            {
              if (((Class)this.ul.get(i)).isInstance(paramView)) {
                return true;
              }
              i += 1;
            }
          }
        }
      }
    }
  }
  
  public u v(View paramView)
  {
    this.uj.add(paramView);
    return this;
  }
  
  public u w(View paramView)
  {
    this.uj.remove(paramView);
    return this;
  }
  
  public void x(View paramView)
  {
    if (!this.uF)
    {
      android.support.v4.g.a locala = cp();
      int i = locala.size();
      paramView = al.B(paramView);
      i -= 1;
      while (i >= 0)
      {
        a locala1 = (a)locala.valueAt(i);
        if ((locala1.mView != null) && (paramView.equals(locala1.uO))) {
          a.b((Animator)locala.keyAt(i));
        }
        i -= 1;
      }
      if ((this.uG != null) && (this.uG.size() > 0))
      {
        paramView = (ArrayList)this.uG.clone();
        int j = paramView.size();
        i = 0;
        while (i < j)
        {
          ((c)paramView.get(i)).cl();
          i += 1;
        }
      }
      this.uE = true;
    }
  }
  
  public void y(View paramView)
  {
    if (this.uE)
    {
      if (!this.uF)
      {
        android.support.v4.g.a locala = cp();
        int i = locala.size();
        paramView = al.B(paramView);
        i -= 1;
        while (i >= 0)
        {
          a locala1 = (a)locala.valueAt(i);
          if ((locala1.mView != null) && (paramView.equals(locala1.uO))) {
            a.c((Animator)locala.keyAt(i));
          }
          i -= 1;
        }
        if ((this.uG != null) && (this.uG.size() > 0))
        {
          paramView = (ArrayList)this.uG.clone();
          int j = paramView.size();
          i = 0;
          while (i < j)
          {
            ((c)paramView.get(i)).cm();
            i += 1;
          }
        }
      }
      this.uE = false;
    }
  }
  
  private static final class a
  {
    String mName;
    View mView;
    z uN;
    av uO;
    u uP;
    
    a(View paramView, String paramString, u paramu, av paramav, z paramz)
    {
      this.mView = paramView;
      this.mName = paramString;
      this.uN = paramz;
      this.uO = paramav;
      this.uP = paramu;
    }
  }
  
  public static abstract class b {}
  
  public static abstract interface c
  {
    public abstract void a(u paramu);
    
    public abstract void cl();
    
    public abstract void cm();
    
    public abstract void co();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */