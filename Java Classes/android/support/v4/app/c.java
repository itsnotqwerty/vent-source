package android.support.v4.app;

import android.support.v4.g.e;
import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

final class c
  extends t
  implements o.g
{
  int mIndex = -1;
  String mName;
  boolean wA = false;
  ArrayList<Runnable> wB;
  final o wj;
  ArrayList<a> wk = new ArrayList();
  int wl;
  int wm;
  int wn;
  int wo;
  int wp;
  int wq;
  boolean wr;
  boolean ws = true;
  boolean wt;
  int wu;
  CharSequence wv;
  int ww;
  CharSequence wx;
  ArrayList<String> wy;
  ArrayList<String> wz;
  
  public c(o paramo)
  {
    this.wj = paramo;
  }
  
  private void a(int paramInt1, i parami, String paramString, int paramInt2)
  {
    Class localClass = parami.getClass();
    int i = localClass.getModifiers();
    if ((localClass.isAnonymousClass()) || (!Modifier.isPublic(i)) || ((localClass.isMemberClass()) && (!Modifier.isStatic(i)))) {
      throw new IllegalStateException("Fragment " + localClass.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
    }
    parami.mFragmentManager = this.wj;
    if (paramString != null)
    {
      if ((parami.mTag != null) && (!paramString.equals(parami.mTag))) {
        throw new IllegalStateException("Can't change tag of fragment " + parami + ": was " + parami.mTag + " now " + paramString);
      }
      parami.mTag = paramString;
    }
    if (paramInt1 != 0)
    {
      if (paramInt1 == -1) {
        throw new IllegalArgumentException("Can't add fragment " + parami + " with tag " + paramString + " to container view with no id");
      }
      if ((parami.mFragmentId != 0) && (parami.mFragmentId != paramInt1)) {
        throw new IllegalStateException("Can't change container ID of fragment " + parami + ": was " + parami.mFragmentId + " now " + paramInt1);
      }
      parami.mFragmentId = paramInt1;
      parami.mContainerId = paramInt1;
    }
    a(new a(paramInt2, parami));
  }
  
  static boolean b(a parama)
  {
    parama = parama.wD;
    return (parama != null) && (parama.mAdded) && (parama.mView != null) && (!parama.mDetached) && (!parama.mHidden) && (parama.isPostponed());
  }
  
  private int m(boolean paramBoolean)
  {
    if (this.wt) {
      throw new IllegalStateException("commit already called");
    }
    if (o.DEBUG)
    {
      Log.v("FragmentManager", "Commit: " + this);
      PrintWriter localPrintWriter = new PrintWriter(new e("FragmentManager"));
      a("  ", localPrintWriter);
      localPrintWriter.close();
    }
    this.wt = true;
    if (this.wr) {}
    for (this.mIndex = this.wj.a(this);; this.mIndex = -1)
    {
      this.wj.a(this, paramBoolean);
      return this.mIndex;
    }
  }
  
  final void V(int paramInt)
  {
    if (!this.wr) {}
    for (;;)
    {
      return;
      if (o.DEBUG) {
        Log.v("FragmentManager", "Bump nesting in " + this + " by " + paramInt);
      }
      int j = this.wk.size();
      int i = 0;
      while (i < j)
      {
        a locala = (a)this.wk.get(i);
        if (locala.wD != null)
        {
          i locali = locala.wD;
          locali.mBackStackNesting += paramInt;
          if (o.DEBUG) {
            Log.v("FragmentManager", "Bump nesting of " + locala.wD + " to " + locala.wD.mBackStackNesting);
          }
        }
        i += 1;
      }
    }
  }
  
  final boolean W(int paramInt)
  {
    int k = this.wk.size();
    int i = 0;
    while (i < k)
    {
      a locala = (a)this.wk.get(i);
      if (locala.wD != null) {}
      for (int j = locala.wD.mContainerId; (j != 0) && (j == paramInt); j = 0) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  final i a(ArrayList<i> paramArrayList, i parami)
  {
    int j = 0;
    i locali1 = parami;
    a locala;
    int i;
    i locali2;
    int m;
    int k;
    label218:
    i locali3;
    if (j < this.wk.size())
    {
      locala = (a)this.wk.get(j);
      i = j;
      parami = locali1;
      switch (locala.wC)
      {
      default: 
        parami = locali1;
        i = j;
      case 4: 
      case 5: 
      case 1: 
      case 7: 
      case 3: 
      case 6: 
        for (;;)
        {
          j = i + 1;
          locali1 = parami;
          break;
          paramArrayList.add(locala.wD);
          i = j;
          parami = locali1;
          continue;
          paramArrayList.remove(locala.wD);
          i = j;
          parami = locali1;
          if (locala.wD == locali1)
          {
            this.wk.add(j, new a(9, locala.wD));
            i = j + 1;
            parami = null;
          }
        }
      case 2: 
        locali2 = locala.wD;
        int n = locali2.mContainerId;
        m = 0;
        k = paramArrayList.size() - 1;
        i = j;
        parami = locali1;
        j = m;
        if (k >= 0)
        {
          locali3 = (i)paramArrayList.get(k);
          if (locali3.mContainerId != n) {
            break label451;
          }
          if (locali3 == locali2) {
            j = 1;
          }
        }
        break;
      }
    }
    label451:
    for (;;)
    {
      k -= 1;
      break label218;
      m = i;
      locali1 = parami;
      if (locali3 == parami)
      {
        this.wk.add(i, new a(9, locali3));
        m = i + 1;
        locali1 = null;
      }
      parami = new a(3, locali3);
      parami.wE = locala.wE;
      parami.wG = locala.wG;
      parami.wF = locala.wF;
      parami.wH = locala.wH;
      this.wk.add(m, parami);
      paramArrayList.remove(locali3);
      i = m + 1;
      parami = locali1;
      continue;
      if (j != 0)
      {
        this.wk.remove(i);
        i -= 1;
        break;
      }
      locala.wC = 1;
      paramArrayList.add(locali2);
      break;
      this.wk.add(j, new a(9, locali1));
      i = j + 1;
      parami = locala.wD;
      break;
      return locali1;
    }
  }
  
  public final t a(int paramInt, i parami)
  {
    return b(paramInt, parami, null);
  }
  
  public final t a(int paramInt, i parami, String paramString)
  {
    a(paramInt, parami, paramString, 1);
    return this;
  }
  
  public final t a(i parami)
  {
    a(new a(3, parami));
    return this;
  }
  
  public final t a(i parami, String paramString)
  {
    a(0, parami, paramString, 1);
    return this;
  }
  
  final void a(a parama)
  {
    this.wk.add(parama);
    parama.wE = this.wl;
    parama.wF = this.wm;
    parama.wG = this.wn;
    parama.wH = this.wo;
  }
  
  final void a(i.c paramc)
  {
    int i = 0;
    while (i < this.wk.size())
    {
      a locala = (a)this.wk.get(i);
      if (b(locala)) {
        locala.wD.setOnStartEnterTransitionListener(paramc);
      }
      i += 1;
    }
  }
  
  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    a(paramString, paramPrintWriter, true);
  }
  
  public final void a(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(this.mName);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(this.mIndex);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(this.wt);
      if (this.wp != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(this.wp));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(this.wq));
      }
      if ((this.wl != 0) || (this.wm != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.wl));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.wm));
      }
      if ((this.wn != 0) || (this.wo != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.wn));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.wo));
      }
      if ((this.wu != 0) || (this.wv != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.wu));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(this.wv);
      }
      if ((this.ww != 0) || (this.wx != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.ww));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(this.wx);
      }
    }
    if (!this.wk.isEmpty())
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      new StringBuilder().append(paramString).append("    ");
      int j = this.wk.size();
      int i = 0;
      if (i < j)
      {
        a locala = (a)this.wk.get(i);
        String str;
        switch (locala.wC)
        {
        default: 
          str = "cmd=" + locala.wC;
        }
        for (;;)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  Op #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.print(str);
          paramPrintWriter.print(" ");
          paramPrintWriter.println(locala.wD);
          if (paramBoolean)
          {
            if ((locala.wE != 0) || (locala.wF != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("enterAnim=#");
              paramPrintWriter.print(Integer.toHexString(locala.wE));
              paramPrintWriter.print(" exitAnim=#");
              paramPrintWriter.println(Integer.toHexString(locala.wF));
            }
            if ((locala.wG != 0) || (locala.wH != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("popEnterAnim=#");
              paramPrintWriter.print(Integer.toHexString(locala.wG));
              paramPrintWriter.print(" popExitAnim=#");
              paramPrintWriter.println(Integer.toHexString(locala.wH));
            }
          }
          i += 1;
          break;
          str = "NULL";
          continue;
          str = "ADD";
          continue;
          str = "REPLACE";
          continue;
          str = "REMOVE";
          continue;
          str = "HIDE";
          continue;
          str = "SHOW";
          continue;
          str = "DETACH";
          continue;
          str = "ATTACH";
          continue;
          str = "SET_PRIMARY_NAV";
          continue;
          str = "UNSET_PRIMARY_NAV";
        }
      }
    }
  }
  
  final boolean a(ArrayList<c> paramArrayList, int paramInt1, int paramInt2)
  {
    if (paramInt2 == paramInt1) {
      return false;
    }
    int i1 = this.wk.size();
    int j = -1;
    int k = 0;
    int i;
    if (k < i1)
    {
      Object localObject = (a)this.wk.get(k);
      if (((a)localObject).wD != null)
      {
        i = ((a)localObject).wD.mContainerId;
        if ((i == 0) || (i == j)) {
          break label200;
        }
        j = paramInt1;
      }
      for (;;)
      {
        if (j >= paramInt2) {
          break label185;
        }
        localObject = (c)paramArrayList.get(j);
        int i2 = ((c)localObject).wk.size();
        int m = 0;
        for (;;)
        {
          if (m >= i2) {
            break label176;
          }
          a locala = (a)((c)localObject).wk.get(m);
          if (locala.wD != null) {}
          for (int n = locala.wD.mContainerId;; n = 0)
          {
            if (n != i) {
              break label167;
            }
            return true;
            i = 0;
            break;
          }
          label167:
          m += 1;
        }
        label176:
        j += 1;
      }
    }
    for (;;)
    {
      label185:
      k += 1;
      j = i;
      break;
      return false;
      label200:
      i = j;
    }
  }
  
  public final boolean a(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    if (o.DEBUG) {
      Log.v("FragmentManager", "Run: " + this);
    }
    paramArrayList.add(this);
    paramArrayList1.add(Boolean.valueOf(false));
    if (this.wr)
    {
      paramArrayList = this.wj;
      if (paramArrayList.xz == null) {
        paramArrayList.xz = new ArrayList();
      }
      paramArrayList.xz.add(this);
    }
    return true;
  }
  
  final i b(ArrayList<i> paramArrayList, i parami)
  {
    int i = 0;
    i locali = parami;
    if (i < this.wk.size())
    {
      a locala = (a)this.wk.get(i);
      parami = locali;
      switch (locala.wC)
      {
      default: 
        parami = locali;
      }
      for (;;)
      {
        i += 1;
        locali = parami;
        break;
        paramArrayList.remove(locala.wD);
        parami = locali;
        continue;
        paramArrayList.add(locala.wD);
        parami = locali;
        continue;
        parami = locala.wD;
        continue;
        parami = null;
      }
    }
    return locali;
  }
  
  public final t b(int paramInt, i parami, String paramString)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("Must use non-zero containerViewId");
    }
    a(paramInt, parami, paramString, 2);
    return this;
  }
  
  public final t b(i parami)
  {
    a(new a(6, parami));
    return this;
  }
  
  public final t c(i parami)
  {
    a(new a(7, parami));
    return this;
  }
  
  public final void cA()
  {
    if (this.wB != null)
    {
      int j = this.wB.size();
      int i = 0;
      while (i < j)
      {
        ((Runnable)this.wB.get(i)).run();
        i += 1;
      }
      this.wB = null;
    }
  }
  
  final void cB()
  {
    int j = this.wk.size();
    int i = 0;
    if (i < j)
    {
      a locala = (a)this.wk.get(i);
      i locali = locala.wD;
      if (locali != null) {
        locali.setNextTransition(this.wp, this.wq);
      }
      switch (locala.wC)
      {
      case 2: 
      default: 
        throw new IllegalArgumentException("Unknown cmd: " + locala.wC);
      case 1: 
        locali.setNextAnim(locala.wE);
        this.wj.a(locali, false);
      }
      for (;;)
      {
        if ((!this.wA) && (locala.wC != 1) && (locali != null)) {
          this.wj.f(locali);
        }
        i += 1;
        break;
        locali.setNextAnim(locala.wF);
        this.wj.h(locali);
        continue;
        locali.setNextAnim(locala.wF);
        o.i(locali);
        continue;
        locali.setNextAnim(locala.wE);
        o.j(locali);
        continue;
        locali.setNextAnim(locala.wF);
        this.wj.k(locali);
        continue;
        locali.setNextAnim(locala.wE);
        this.wj.l(locali);
        continue;
        this.wj.n(locali);
        continue;
        this.wj.n(null);
      }
    }
    if (!this.wA) {
      this.wj.c(this.wj.xF, true);
    }
  }
  
  public final int commit()
  {
    return m(false);
  }
  
  public final int commitAllowingStateLoss()
  {
    return m(true);
  }
  
  public final void commitNowAllowingStateLoss()
  {
    if (this.wr) {
      throw new IllegalStateException("This transaction is already being added to the back stack");
    }
    this.ws = false;
    o localo = this.wj;
    if ((localo.mHost == null) || (localo.xM)) {
      return;
    }
    localo.cL();
    if (a(localo.xP, localo.xQ)) {
      localo.xv = true;
    }
    try
    {
      localo.c(localo.xP, localo.xQ);
      localo.cM();
      localo.cO();
      return;
    }
    finally
    {
      localo.cM();
    }
  }
  
  final void n(boolean paramBoolean)
  {
    int i = this.wk.size() - 1;
    if (i >= 0)
    {
      a locala = (a)this.wk.get(i);
      i locali = locala.wD;
      if (locali != null) {
        locali.setNextTransition(o.ab(this.wp), this.wq);
      }
      switch (locala.wC)
      {
      case 2: 
      default: 
        throw new IllegalArgumentException("Unknown cmd: " + locala.wC);
      case 1: 
        locali.setNextAnim(locala.wH);
        this.wj.h(locali);
      }
      for (;;)
      {
        if ((!this.wA) && (locala.wC != 3) && (locali != null)) {
          this.wj.f(locali);
        }
        i -= 1;
        break;
        locali.setNextAnim(locala.wG);
        this.wj.a(locali, false);
        continue;
        locali.setNextAnim(locala.wG);
        o.j(locali);
        continue;
        locali.setNextAnim(locala.wH);
        o.i(locali);
        continue;
        locali.setNextAnim(locala.wG);
        this.wj.l(locali);
        continue;
        locali.setNextAnim(locala.wH);
        this.wj.k(locali);
        continue;
        this.wj.n(null);
        continue;
        this.wj.n(locali);
      }
    }
    if ((!this.wA) && (paramBoolean)) {
      this.wj.c(this.wj.xF, true);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (this.mIndex >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.mIndex);
    }
    if (this.mName != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.mName);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public final t u(String paramString)
  {
    if (!this.ws) {
      throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }
    this.wr = true;
    this.mName = paramString;
    return this;
  }
  
  static final class a
  {
    int wC;
    i wD;
    int wE;
    int wF;
    int wG;
    int wH;
    
    a() {}
    
    a(int paramInt, i parami)
    {
      this.wC = paramInt;
      this.wD = parami;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */