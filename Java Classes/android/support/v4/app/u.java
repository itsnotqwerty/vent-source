package android.support.v4.app;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.g.a;
import android.support.v4.g.h;
import android.support.v4.view.r;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

final class u
{
  private static final int[] yE = { 0, 3, 0, 1, 5, 4, 7, 6, 9, 8 };
  private static final w yF;
  private static final w yG;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {}
    for (v localv = new v();; localv = null)
    {
      yF = localv;
      yG = cV();
      return;
    }
  }
  
  private static a a(a parama, SparseArray<a> paramSparseArray, int paramInt)
  {
    a locala = parama;
    if (parama == null)
    {
      locala = new a();
      paramSparseArray.put(paramInt, locala);
    }
    return locala;
  }
  
  private static w a(i parami1, i parami2)
  {
    ArrayList localArrayList = new ArrayList();
    if (parami1 != null)
    {
      Object localObject = parami1.getExitTransition();
      if (localObject != null) {
        localArrayList.add(localObject);
      }
      localObject = parami1.getReturnTransition();
      if (localObject != null) {
        localArrayList.add(localObject);
      }
      parami1 = parami1.getSharedElementReturnTransition();
      if (parami1 != null) {
        localArrayList.add(parami1);
      }
    }
    if (parami2 != null)
    {
      parami1 = parami2.getEnterTransition();
      if (parami1 != null) {
        localArrayList.add(parami1);
      }
      parami1 = parami2.getReenterTransition();
      if (parami1 != null) {
        localArrayList.add(parami1);
      }
      parami1 = parami2.getSharedElementEnterTransition();
      if (parami1 != null) {
        localArrayList.add(parami1);
      }
    }
    if (localArrayList.isEmpty()) {}
    do
    {
      return null;
      if ((yF != null) && (a(yF, localArrayList))) {
        return yF;
      }
      if ((yG != null) && (a(yG, localArrayList))) {
        return yG;
      }
    } while ((yF == null) && (yG == null));
    throw new IllegalArgumentException("Invalid Transition types");
  }
  
  private static a<String, String> a(int paramInt1, ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt2, int paramInt3)
  {
    a locala = new a();
    paramInt3 -= 1;
    while (paramInt3 >= paramInt2)
    {
      Object localObject = (c)paramArrayList.get(paramInt3);
      if (((c)localObject).W(paramInt1))
      {
        boolean bool = ((Boolean)paramArrayList1.get(paramInt3)).booleanValue();
        if (((c)localObject).wy != null)
        {
          int j = ((c)localObject).wy.size();
          ArrayList localArrayList1;
          ArrayList localArrayList2;
          int i;
          label95:
          String str1;
          if (bool)
          {
            localArrayList1 = ((c)localObject).wy;
            localArrayList2 = ((c)localObject).wz;
            i = 0;
            if (i >= j) {
              break label192;
            }
            localObject = (String)localArrayList2.get(i);
            str1 = (String)localArrayList1.get(i);
            String str2 = (String)locala.remove(str1);
            if (str2 == null) {
              break label179;
            }
            locala.put(localObject, str2);
          }
          for (;;)
          {
            i += 1;
            break label95;
            localArrayList2 = ((c)localObject).wy;
            localArrayList1 = ((c)localObject).wz;
            break;
            label179:
            locala.put(localObject, str1);
          }
        }
      }
      label192:
      paramInt3 -= 1;
    }
    return locala;
  }
  
  private static a<String, View> a(w paramw, a<String, String> parama, Object paramObject, a parama1)
  {
    if ((parama.isEmpty()) || (paramObject == null))
    {
      parama.clear();
      return null;
    }
    paramObject = parama1.yW;
    a locala = new a();
    paramw.a(locala, ((i)paramObject).getView());
    paramw = parama1.yY;
    int i;
    if (parama1.yX)
    {
      paramObject = ((i)paramObject).getEnterTransitionCallback();
      paramw = paramw.wz;
      h.a(locala, paramw);
      if (paramObject == null) {
        break label172;
      }
      i = paramw.size() - 1;
      label82:
      if (i < 0) {
        break label182;
      }
      parama1 = (String)paramw.get(i);
      paramObject = (View)locala.get(parama1);
      if (paramObject != null) {
        break label139;
      }
      parama.remove(parama1);
    }
    for (;;)
    {
      i -= 1;
      break label82;
      paramObject = ((i)paramObject).getExitTransitionCallback();
      paramw = paramw.wy;
      break;
      label139:
      if (!parama1.equals(r.U((View)paramObject)))
      {
        parama1 = (String)parama.remove(parama1);
        parama.put(r.U((View)paramObject), parama1);
      }
    }
    label172:
    h.a(parama, locala.keySet());
    label182:
    return locala;
  }
  
  private static View a(a<String, View> parama, a parama1, Object paramObject, boolean paramBoolean)
  {
    parama1 = parama1.yV;
    if ((paramObject != null) && (parama != null) && (parama1.wy != null) && (!parama1.wy.isEmpty()))
    {
      if (paramBoolean) {}
      for (parama1 = (String)parama1.wy.get(0);; parama1 = (String)parama1.wz.get(0)) {
        return (View)parama.get(parama1);
      }
    }
    return null;
  }
  
  private static Object a(w paramw, i parami1, i parami2, boolean paramBoolean)
  {
    if ((parami1 == null) || (parami2 == null)) {
      return null;
    }
    if (paramBoolean) {}
    for (parami1 = parami2.getSharedElementReturnTransition();; parami1 = parami1.getSharedElementEnterTransition()) {
      return paramw.n(paramw.m(parami1));
    }
  }
  
  private static Object a(w paramw, i parami, boolean paramBoolean)
  {
    if (parami == null) {
      return null;
    }
    if (paramBoolean) {}
    for (parami = parami.getReenterTransition();; parami = parami.getEnterTransition()) {
      return paramw.m(parami);
    }
  }
  
  private static Object a(w paramw, Object paramObject1, Object paramObject2, Object paramObject3, i parami, boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1 = bool2;
    if (paramObject1 != null)
    {
      bool1 = bool2;
      if (paramObject2 != null)
      {
        bool1 = bool2;
        if (parami != null) {
          if (!paramBoolean) {
            break label53;
          }
        }
      }
    }
    label53:
    for (bool1 = parami.getAllowReturnTransitionOverlap(); bool1; bool1 = parami.getAllowEnterTransitionOverlap()) {
      return paramw.a(paramObject2, paramObject1, paramObject3);
    }
    return paramw.b(paramObject2, paramObject1, paramObject3);
  }
  
  private static String a(a<String, String> parama, String paramString)
  {
    int j = parama.size();
    int i = 0;
    while (i < j)
    {
      if (paramString.equals(parama.valueAt(i))) {
        return (String)parama.keyAt(i);
      }
      i += 1;
    }
    return null;
  }
  
  private static ArrayList<View> a(w paramw, Object paramObject, i parami, ArrayList<View> paramArrayList, View paramView)
  {
    Object localObject = null;
    if (paramObject != null)
    {
      ArrayList localArrayList = new ArrayList();
      parami = parami.getView();
      if (parami != null) {
        paramw.a(localArrayList, parami);
      }
      if (paramArrayList != null) {
        localArrayList.removeAll(paramArrayList);
      }
      localObject = localArrayList;
      if (!localArrayList.isEmpty())
      {
        localArrayList.add(paramView);
        paramw.a(paramObject, localArrayList);
        localObject = localArrayList;
      }
    }
    return (ArrayList<View>)localObject;
  }
  
  private static void a(c paramc, c.a parama, SparseArray<a> paramSparseArray, boolean paramBoolean1, boolean paramBoolean2)
  {
    i locali = parama.wD;
    if (locali == null) {}
    int n;
    do
    {
      return;
      n = locali.mContainerId;
    } while (n == 0);
    int i;
    label38:
    int j;
    int k;
    boolean bool;
    if (paramBoolean1)
    {
      i = yE[parama.wC];
      switch (i)
      {
      case 2: 
      default: 
        i = 0;
        j = 0;
        k = 0;
        bool = false;
        parama = (a)paramSparseArray.get(n);
        if (bool)
        {
          parama = a(parama, paramSparseArray, n);
          parama.yT = locali;
          parama.yU = paramBoolean1;
          parama.yV = paramc;
        }
        break;
      }
    }
    for (;;)
    {
      if ((!paramBoolean2) && (i != 0))
      {
        if ((parama != null) && (parama.yW == locali)) {
          parama.yW = null;
        }
        o localo = paramc.wj;
        if ((locali.mState <= 0) && (localo.xF > 0) && (!paramc.wA))
        {
          localo.g(locali);
          localo.a(locali, 1, 0, 0, false);
        }
      }
      if ((j != 0) && ((parama == null) || (parama.yW == null)))
      {
        parama = a(parama, paramSparseArray, n);
        parama.yW = locali;
        parama.yX = paramBoolean1;
        parama.yY = paramc;
      }
      for (paramc = parama; (!paramBoolean2) && (k != 0) && (paramc != null) && (paramc.yT == locali); paramc = parama)
      {
        paramc.yT = null;
        return;
        i = parama.wC;
        break label38;
        if (paramBoolean2) {
          if ((locali.mHiddenChanged) && (!locali.mHidden) && (locali.mAdded)) {
            bool = true;
          }
        }
        for (;;)
        {
          i = 1;
          j = 0;
          k = 0;
          break;
          bool = false;
          continue;
          bool = locali.mHidden;
        }
        if (paramBoolean2) {
          bool = locali.mIsNewlyAdded;
        }
        for (;;)
        {
          i = 1;
          j = 0;
          k = 0;
          break;
          if ((!locali.mAdded) && (!locali.mHidden)) {
            bool = true;
          } else {
            bool = false;
          }
        }
        if (paramBoolean2) {
          if ((locali.mHiddenChanged) && (locali.mAdded) && (locali.mHidden)) {
            i = 1;
          }
        }
        int m;
        for (;;)
        {
          m = 0;
          j = i;
          k = 1;
          bool = false;
          i = m;
          break;
          i = 0;
          continue;
          if ((locali.mAdded) && (!locali.mHidden)) {
            i = 1;
          } else {
            i = 0;
          }
        }
        if (paramBoolean2) {
          if ((!locali.mAdded) && (locali.mView != null) && (locali.mView.getVisibility() == 0) && (locali.mPostponedAlpha >= 0.0F)) {
            i = 1;
          }
        }
        for (;;)
        {
          m = 0;
          j = i;
          k = 1;
          bool = false;
          i = m;
          break;
          i = 0;
          continue;
          if ((locali.mAdded) && (!locali.mHidden)) {
            i = 1;
          } else {
            i = 0;
          }
        }
      }
    }
  }
  
  private static void a(c paramc, SparseArray<a> paramSparseArray, boolean paramBoolean)
  {
    int j = paramc.wk.size();
    int i = 0;
    while (i < j)
    {
      a(paramc, (c.a)paramc.wk.get(i), paramSparseArray, false, paramBoolean);
      i += 1;
    }
  }
  
  private static void a(i parami1, i parami2, boolean paramBoolean, a<String, View> parama)
  {
    int j = 0;
    int i;
    if (paramBoolean)
    {
      parami1 = parami2.getEnterTransitionCallback();
      if (parami1 == null) {
        return;
      }
      parami1 = new ArrayList();
      parami2 = new ArrayList();
      if (parama != null) {
        break label85;
      }
      i = 0;
    }
    for (;;)
    {
      if (j >= i) {
        return;
      }
      parami2.add(parama.keyAt(j));
      parami1.add(parama.valueAt(j));
      j += 1;
      continue;
      parami1 = parami1.getEnterTransitionCallback();
      break;
      label85:
      i = parama.size();
    }
  }
  
  static void a(o paramo, ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramo.xF <= 0) {}
    SparseArray localSparseArray;
    final Object localObject1;
    do
    {
      return;
      localSparseArray = new SparseArray();
      i = paramInt1;
      if (i < paramInt2)
      {
        localObject1 = (c)paramArrayList.get(i);
        if (((Boolean)paramArrayList1.get(i)).booleanValue()) {
          b((c)localObject1, localSparseArray, paramBoolean);
        }
        for (;;)
        {
          i += 1;
          break;
          a((c)localObject1, localSparseArray, paramBoolean);
        }
      }
    } while (localSparseArray.size() == 0);
    final View localView = new View(paramo.mHost.mContext);
    int j = localSparseArray.size();
    int i = 0;
    label117:
    int k;
    final a locala1;
    final Object localObject5;
    if (i < j)
    {
      k = localSparseArray.keyAt(i);
      locala1 = a(k, paramArrayList, paramArrayList1, paramInt1, paramInt2);
      localObject5 = (a)localSparseArray.valueAt(i);
      if (!paramBoolean) {
        break label829;
      }
      if (!paramo.xG.onHasView()) {
        break label1385;
      }
    }
    label535:
    label553:
    label655:
    label682:
    label829:
    label967:
    label1172:
    label1233:
    label1247:
    label1364:
    label1372:
    label1383:
    label1385:
    for (ViewGroup localViewGroup = (ViewGroup)paramo.xG.onFindViewById(k);; localViewGroup = null)
    {
      final i locali1;
      final Object localObject11;
      final Object localObject6;
      final boolean bool1;
      final boolean bool2;
      final Object localObject7;
      final Object localObject8;
      final Object localObject9;
      Object localObject10;
      final i locali2;
      final i locali3;
      final Object localObject2;
      final Object localObject3;
      final Object localObject4;
      if (localViewGroup != null)
      {
        locali1 = ((a)localObject5).yT;
        localObject11 = ((a)localObject5).yW;
        localObject6 = a((i)localObject11, locali1);
        if (localObject6 != null)
        {
          bool1 = ((a)localObject5).yU;
          bool2 = ((a)localObject5).yX;
          localObject7 = new ArrayList();
          localObject8 = new ArrayList();
          localObject9 = a((w)localObject6, locali1, bool1);
          localObject10 = b((w)localObject6, (i)localObject11, bool2);
          locali2 = ((a)localObject5).yT;
          locali3 = ((a)localObject5).yW;
          if (locali2 != null) {
            locali2.getView().setVisibility(0);
          }
          if ((locali2 != null) && (locali3 != null)) {
            break label535;
          }
          localObject1 = null;
          if ((localObject9 != null) || (localObject1 != null) || (localObject10 != null))
          {
            localObject2 = a((w)localObject6, localObject10, (i)localObject11, (ArrayList)localObject8, localView);
            localObject3 = a((w)localObject6, localObject9, locali1, (ArrayList)localObject7, localView);
            a((ArrayList)localObject3, 4);
            localObject4 = a((w)localObject6, localObject9, localObject10, localObject1, locali1, bool1);
            if (localObject4 != null)
            {
              if ((localObject11 != null) && (localObject10 != null) && (((i)localObject11).mAdded) && (((i)localObject11).mHidden) && (((i)localObject11).mHiddenChanged))
              {
                ((i)localObject11).setHideReplaced(true);
                ((w)localObject6).b(localObject10, ((i)localObject11).getView(), (ArrayList)localObject2);
                ad.a(((i)localObject11).mContainer, new Runnable()
                {
                  public final void run()
                  {
                    u.a(this.tO);
                  }
                });
              }
              localObject5 = w.b((ArrayList)localObject7);
              ((w)localObject6).a(localObject4, localObject9, (ArrayList)localObject3, localObject10, (ArrayList)localObject2, localObject1, (ArrayList)localObject7);
              ((w)localObject6).a(localViewGroup, localObject4);
              ((w)localObject6).a(localViewGroup, (ArrayList)localObject8, (ArrayList)localObject7, (ArrayList)localObject5, locala1);
              a((ArrayList)localObject3, 0);
              ((w)localObject6).a(localObject1, (ArrayList)localObject8, (ArrayList)localObject7);
            }
          }
        }
      }
      for (;;)
      {
        i += 1;
        break label117;
        break;
        bool2 = ((a)localObject5).yU;
        final a locala2;
        if (locala1.isEmpty())
        {
          localObject1 = null;
          localObject3 = a((w)localObject6, locala1, localObject1, (a)localObject5);
          locala2 = b((w)localObject6, locala1, localObject1, (a)localObject5);
          if (!locala1.isEmpty()) {
            break label655;
          }
          localObject2 = null;
          if (localObject3 != null) {
            ((a)localObject3).clear();
          }
          localObject1 = localObject2;
          if (locala2 != null)
          {
            locala2.clear();
            localObject1 = localObject2;
          }
        }
        for (;;)
        {
          if ((localObject9 != null) || (localObject10 != null) || (localObject1 != null)) {
            break label682;
          }
          localObject1 = null;
          break;
          localObject1 = a((w)localObject6, locali2, locali3, bool2);
          break label553;
          a((ArrayList)localObject8, (a)localObject3, locala1.keySet());
          a((ArrayList)localObject7, locala2, locala1.values());
        }
        a(locali2, locali3, bool2, (a)localObject3);
        if (localObject1 != null)
        {
          ((ArrayList)localObject7).add(localView);
          ((w)localObject6).a(localObject1, localView, (ArrayList)localObject8);
          a((w)localObject6, localObject1, localObject10, (a)localObject3, ((a)localObject5).yX, ((a)localObject5).yY);
          localObject4 = new Rect();
          localObject5 = a(locala2, (a)localObject5, localObject9, bool2);
          localObject2 = localObject5;
          localObject3 = localObject4;
          if (localObject5 != null)
          {
            ((w)localObject6).a(localObject9, (Rect)localObject4);
            localObject3 = localObject4;
          }
        }
        for (localObject2 = localObject5;; localObject2 = null)
        {
          ad.a(localViewGroup, new Runnable()
          {
            public final void run()
            {
              u.b(this.yJ, locali3, bool2, locala2);
              if (localObject2 != null) {
                w.b(localObject2, localObject3);
              }
            }
          });
          break;
          localObject3 = null;
        }
        if (paramo.xG.onHasView()) {}
        for (localViewGroup = (ViewGroup)paramo.xG.onFindViewById(k);; localViewGroup = null)
        {
          if (localViewGroup == null) {
            break label1383;
          }
          localObject6 = ((a)localObject5).yT;
          localObject10 = ((a)localObject5).yW;
          localObject7 = a((i)localObject10, (i)localObject6);
          if (localObject7 == null) {
            break;
          }
          bool1 = ((a)localObject5).yU;
          bool2 = ((a)localObject5).yX;
          localObject8 = a((w)localObject7, (i)localObject6, bool1);
          localObject3 = b((w)localObject7, (i)localObject10, bool2);
          localObject11 = new ArrayList();
          localObject9 = new ArrayList();
          locali1 = ((a)localObject5).yT;
          locali2 = ((a)localObject5).yW;
          if ((locali1 == null) || (locali2 == null))
          {
            localObject1 = null;
            if ((localObject8 == null) && (localObject1 == null) && (localObject3 == null)) {
              break label1364;
            }
            localObject4 = a((w)localObject7, localObject3, (i)localObject10, (ArrayList)localObject11, localView);
            if ((localObject4 != null) && (!((ArrayList)localObject4).isEmpty())) {
              break label1372;
            }
          }
          for (localObject2 = null;; localObject2 = localObject3)
          {
            ((w)localObject7).b(localObject8, localView);
            localObject3 = a((w)localObject7, localObject8, localObject2, localObject1, (i)localObject6, ((a)localObject5).yU);
            if (localObject3 == null) {
              break;
            }
            localObject5 = new ArrayList();
            ((w)localObject7).a(localObject3, localObject8, (ArrayList)localObject5, localObject2, (ArrayList)localObject4, localObject1, (ArrayList)localObject9);
            ad.a(localViewGroup, new Runnable()
            {
              public final void run()
              {
                ArrayList localArrayList;
                if (this.tP != null)
                {
                  localObject7.c(this.tP, localView);
                  localArrayList = u.b(localObject7, this.tP, localObject6, localObject9, localView);
                  localObject5.addAll(localArrayList);
                }
                if (localObject4 != null)
                {
                  if (localObject2 != null)
                  {
                    localArrayList = new ArrayList();
                    localArrayList.add(localView);
                    localObject7.b(localObject2, localObject4, localArrayList);
                  }
                  localObject4.clear();
                  localObject4.add(localView);
                }
              }
            });
            ad.a(localViewGroup, new w.2((w)localObject7, (ArrayList)localObject9, locala1));
            ((w)localObject7).a(localViewGroup, localObject3);
            ad.a(localViewGroup, new w.3((w)localObject7, (ArrayList)localObject9, locala1));
            break;
            bool1 = ((a)localObject5).yU;
            if (locala1.isEmpty())
            {
              localObject1 = null;
              localObject2 = a((w)localObject7, locala1, localObject1, (a)localObject5);
              if (!locala1.isEmpty()) {
                break label1233;
              }
              localObject1 = null;
            }
            for (;;)
            {
              if ((localObject8 != null) || (localObject3 != null) || (localObject1 != null)) {
                break label1247;
              }
              localObject1 = null;
              break;
              localObject1 = a((w)localObject7, locali1, locali2, bool1);
              break label1172;
              ((ArrayList)localObject11).addAll(((a)localObject2).values());
            }
            a(locali1, locali2, bool1, (a)localObject2);
            if (localObject1 != null)
            {
              localObject4 = new Rect();
              ((w)localObject7).a(localObject1, localView, (ArrayList)localObject11);
              a((w)localObject7, localObject1, localObject3, (a)localObject2, ((a)localObject5).yX, ((a)localObject5).yY);
              localObject2 = localObject4;
              if (localObject8 != null) {
                ((w)localObject7).a(localObject8, (Rect)localObject4);
              }
            }
            for (localObject2 = localObject4;; localObject2 = null)
            {
              ad.a(localViewGroup, new Runnable()
              {
                public final void run()
                {
                  Object localObject = u.c(this.yH, locala1, localObject1, localObject5);
                  if (localObject != null)
                  {
                    localObject9.addAll(((a)localObject).values());
                    localObject9.add(localView);
                  }
                  u.b(locali1, locali2, bool1, (a)localObject);
                  if (localObject1 != null)
                  {
                    this.yH.a(localObject1, localObject11, localObject9);
                    localObject = u.b((a)localObject, localObject5, localObject8, bool1);
                    if (localObject != null) {
                      w.b((View)localObject, localObject2);
                    }
                  }
                }
              });
              break label967;
              break;
            }
          }
        }
      }
    }
  }
  
  private static void a(w paramw, Object paramObject1, Object paramObject2, a<String, View> parama, boolean paramBoolean, c paramc)
  {
    if ((paramc.wy != null) && (!paramc.wy.isEmpty())) {
      if (!paramBoolean) {
        break label65;
      }
    }
    label65:
    for (paramc = (String)paramc.wz.get(0);; paramc = (String)paramc.wy.get(0))
    {
      parama = (View)parama.get(paramc);
      paramw.a(paramObject1, parama);
      if (paramObject2 != null) {
        paramw.a(paramObject2, parama);
      }
      return;
    }
  }
  
  private static void a(ArrayList<View> paramArrayList, int paramInt)
  {
    if (paramArrayList == null) {}
    for (;;)
    {
      return;
      int i = paramArrayList.size() - 1;
      while (i >= 0)
      {
        ((View)paramArrayList.get(i)).setVisibility(paramInt);
        i -= 1;
      }
    }
  }
  
  private static void a(ArrayList<View> paramArrayList, a<String, View> parama, Collection<String> paramCollection)
  {
    int i = parama.size() - 1;
    while (i >= 0)
    {
      View localView = (View)parama.valueAt(i);
      if (paramCollection.contains(r.U(localView))) {
        paramArrayList.add(localView);
      }
      i -= 1;
    }
  }
  
  private static boolean a(w paramw, List<Object> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      if (!paramw.l(paramList.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static a<String, View> b(w paramw, a<String, String> parama, Object paramObject, a parama1)
  {
    i locali = parama1.yT;
    View localView = locali.getView();
    if ((parama.isEmpty()) || (paramObject == null) || (localView == null))
    {
      parama.clear();
      return null;
    }
    a locala = new a();
    paramw.a(locala, localView);
    paramw = parama1.yV;
    if (parama1.yU)
    {
      paramObject = locali.getExitTransitionCallback();
      paramw = paramw.wy;
      if (paramw != null)
      {
        h.a(locala, paramw);
        h.a(locala, parama.values());
      }
      if (paramObject == null) {
        break label210;
      }
      i = paramw.size() - 1;
      label108:
      if (i < 0) {
        break label256;
      }
      parama1 = (String)paramw.get(i);
      paramObject = (View)locala.get(parama1);
      if (paramObject != null) {
        break label176;
      }
      paramObject = a(parama, parama1);
      if (paramObject != null) {
        parama.remove(paramObject);
      }
    }
    for (;;)
    {
      i -= 1;
      break label108;
      paramObject = locali.getEnterTransitionCallback();
      paramw = paramw.wz;
      break;
      label176:
      if (!parama1.equals(r.U((View)paramObject)))
      {
        parama1 = a(parama, parama1);
        if (parama1 != null) {
          parama.put(parama1, r.U((View)paramObject));
        }
      }
    }
    label210:
    int i = parama.size() - 1;
    while (i >= 0)
    {
      if (!locala.containsKey((String)parama.valueAt(i))) {
        parama.removeAt(i);
      }
      i -= 1;
    }
    label256:
    return locala;
  }
  
  private static Object b(w paramw, i parami, boolean paramBoolean)
  {
    if (parami == null) {
      return null;
    }
    if (paramBoolean) {}
    for (parami = parami.getReturnTransition();; parami = parami.getExitTransition()) {
      return paramw.m(parami);
    }
  }
  
  private static void b(c paramc, SparseArray<a> paramSparseArray, boolean paramBoolean)
  {
    if (!paramc.wj.xG.onHasView()) {}
    for (;;)
    {
      return;
      int i = paramc.wk.size() - 1;
      while (i >= 0)
      {
        a(paramc, (c.a)paramc.wk.get(i), paramSparseArray, true, paramBoolean);
        i -= 1;
      }
    }
  }
  
  private static w cV()
  {
    try
    {
      w localw = (w)Class.forName("android.support.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
      return localw;
    }
    catch (Exception localException) {}
    return null;
  }
  
  static final class a
  {
    public i yT;
    public boolean yU;
    public c yV;
    public i yW;
    public boolean yX;
    public c yY;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */