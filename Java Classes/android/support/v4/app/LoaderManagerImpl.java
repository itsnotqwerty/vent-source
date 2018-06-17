package android.support.v4.app;

import android.arch.lifecycle.LiveData;
import android.arch.lifecycle.LiveData.LifecycleBoundObserver;
import android.arch.lifecycle.LiveData.a;
import android.arch.lifecycle.c;
import android.arch.lifecycle.c.b;
import android.arch.lifecycle.e;
import android.arch.lifecycle.j;
import android.arch.lifecycle.k;
import android.arch.lifecycle.o;
import android.arch.lifecycle.o.a;
import android.arch.lifecycle.p;
import android.os.Bundle;
import android.support.v4.content.b.a;
import android.support.v4.g.d;
import android.util.Log;
import java.io.PrintWriter;
import java.util.HashMap;

final class LoaderManagerImpl
  extends x
{
  static boolean DEBUG = false;
  private final e zf;
  final LoaderViewModel zg;
  
  LoaderManagerImpl(e parame, p paramp)
  {
    this.zf = parame;
    this.zg = LoaderViewModel.a(paramp);
  }
  
  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    LoaderViewModel localLoaderViewModel = this.zg;
    if (localLoaderViewModel.zo.size() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Loaders:");
      String str1 = paramString + "    ";
      int i = 0;
      if (i < localLoaderViewModel.zo.size())
      {
        a locala = (a)localLoaderViewModel.zo.valueAt(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(localLoaderViewModel.zo.keyAt(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(locala.toString());
        paramPrintWriter.print(str1);
        paramPrintWriter.print("mId=");
        paramPrintWriter.print(locala.yo);
        paramPrintWriter.print(" mArgs=");
        paramPrintWriter.println(locala.zh);
        paramPrintWriter.print(str1);
        paramPrintWriter.print("mLoader=");
        paramPrintWriter.println(locala.zi);
        Object localObject = locala.zi;
        String str2 = str1 + "  ";
        paramPrintWriter.print(str2);
        paramPrintWriter.print("mId=");
        paramPrintWriter.print(((android.support.v4.content.b)localObject).yo);
        paramPrintWriter.print(" mListener=");
        paramPrintWriter.println(((android.support.v4.content.b)localObject).Bb);
        if ((((android.support.v4.content.b)localObject).uY) || (((android.support.v4.content.b)localObject).Be) || (((android.support.v4.content.b)localObject).Bf))
        {
          paramPrintWriter.print(str2);
          paramPrintWriter.print("mStarted=");
          paramPrintWriter.print(((android.support.v4.content.b)localObject).uY);
          paramPrintWriter.print(" mContentChanged=");
          paramPrintWriter.print(((android.support.v4.content.b)localObject).Be);
          paramPrintWriter.print(" mProcessingChange=");
          paramPrintWriter.println(((android.support.v4.content.b)localObject).Bf);
        }
        if ((((android.support.v4.content.b)localObject).Bc) || (((android.support.v4.content.b)localObject).Bd))
        {
          paramPrintWriter.print(str2);
          paramPrintWriter.print("mAbandoned=");
          paramPrintWriter.print(((android.support.v4.content.b)localObject).Bc);
          paramPrintWriter.print(" mReset=");
          paramPrintWriter.println(((android.support.v4.content.b)localObject).Bd);
        }
        if (locala.zj != null)
        {
          paramPrintWriter.print(str1);
          paramPrintWriter.print("mCallbacks=");
          paramPrintWriter.println(locala.zj);
          localObject = locala.zj;
          paramPrintWriter.print(str1 + "  ");
          paramPrintWriter.print("mDeliveredData=");
          paramPrintWriter.println(((b)localObject).zm);
        }
        paramPrintWriter.print(str1);
        paramPrintWriter.print("mData=");
        localObject = locala.aU;
        if (localObject != LiveData.aR)
        {
          label467:
          paramPrintWriter.println(android.support.v4.content.b.dataToString(localObject));
          paramPrintWriter.print(str1);
          paramPrintWriter.print("mStarted=");
          if (locala.aT <= 0) {
            break label518;
          }
        }
        label518:
        for (boolean bool = true;; bool = false)
        {
          paramPrintWriter.println(bool);
          i += 1;
          break;
          localObject = null;
          break label467;
        }
      }
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    d.a(this.zf, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  static class LoaderViewModel
    extends android.arch.lifecycle.n
  {
    private static final o.a zn = new o.a()
    {
      public final <T extends android.arch.lifecycle.n> T ag()
      {
        return new LoaderManagerImpl.LoaderViewModel();
      }
    };
    android.support.v4.g.n<LoaderManagerImpl.a> zo = new android.support.v4.g.n();
    
    static LoaderViewModel a(p paramp)
    {
      Object localObject = new o(paramp, zn);
      paramp = LoaderViewModel.class.getCanonicalName();
      if (paramp == null) {
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
      }
      String str = "android.arch.lifecycle.ViewModelProvider.DefaultKey:" + paramp;
      paramp = (android.arch.lifecycle.n)((o)localObject).mViewModelStore.bi.get(str);
      if (LoaderViewModel.class.isInstance(paramp)) {}
      for (;;)
      {
        return (LoaderViewModel)paramp;
        paramp = ((o)localObject).bh.ag();
        localObject = ((o)localObject).mViewModelStore;
        android.arch.lifecycle.n localn = (android.arch.lifecycle.n)((p)localObject).bi.get(str);
        if (localn != null) {
          localn.af();
        }
        ((p)localObject).bi.put(str, paramp);
      }
    }
    
    protected final void af()
    {
      super.af();
      int j = this.zo.size();
      int i = 0;
      while (i < j)
      {
        ((LoaderManagerImpl.a)this.zo.valueAt(i)).cX();
        i += 1;
      }
      android.support.v4.g.n localn = this.zo;
      j = localn.ai;
      Object[] arrayOfObject = localn.EC;
      i = 0;
      while (i < j)
      {
        arrayOfObject[i] = null;
        i += 1;
      }
      localn.ai = 0;
      localn.EA = false;
    }
    
    final void cW()
    {
      int j = this.zo.size();
      int i = 0;
      while (i < j)
      {
        ((LoaderManagerImpl.a)this.zo.valueAt(i)).cW();
        i += 1;
      }
    }
  }
  
  public static final class a<D>
    extends j<D>
    implements b.a<D>
  {
    final int yo;
    private e zf;
    final Bundle zh;
    final android.support.v4.content.b<D> zi;
    LoaderManagerImpl.b<D> zj;
    private android.support.v4.content.b<D> zk;
    
    public final void a(k<D> paramk)
    {
      super.a(paramk);
      this.zf = null;
      this.zj = null;
    }
    
    protected final void ab()
    {
      if (LoaderManagerImpl.DEBUG) {
        Log.v("LoaderManager", "  Stopping: " + this);
      }
      this.zi.uY = false;
    }
    
    final void cW()
    {
      e locale = this.zf;
      Object localObject = this.zj;
      if ((locale != null) && (localObject != null))
      {
        super.a((k)localObject);
        if (locale.getLifecycle().Y() != c.b.aA)
        {
          LiveData.LifecycleBoundObserver localLifecycleBoundObserver = new LiveData.LifecycleBoundObserver(this, locale, (k)localObject);
          localObject = (LiveData.a)this.aS.putIfAbsent(localObject, localLifecycleBoundObserver);
          if ((localObject != null) && (!((LiveData.a)localObject).b(locale))) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
          }
          if (localObject == null) {
            locale.getLifecycle().a(localLifecycleBoundObserver);
          }
        }
      }
    }
    
    final android.support.v4.content.b<D> cX()
    {
      if (LoaderManagerImpl.DEBUG) {
        Log.v("LoaderManager", "  Destroying: " + this);
      }
      this.zi.Bc = true;
      Object localObject = this.zj;
      if (localObject != null)
      {
        a((k)localObject);
        if ((((LoaderManagerImpl.b)localObject).zm) && (LoaderManagerImpl.DEBUG)) {
          Log.v("LoaderManager", "  Resetting: " + ((LoaderManagerImpl.b)localObject).zi);
        }
      }
      localObject = this.zi;
      if (((android.support.v4.content.b)localObject).Bb == null) {
        throw new IllegalStateException("No listener register");
      }
      if (((android.support.v4.content.b)localObject).Bb != this) {
        throw new IllegalArgumentException("Attempting to unregister the wrong listener");
      }
      ((android.support.v4.content.b)localObject).Bb = null;
      localObject = this.zi;
      ((android.support.v4.content.b)localObject).Bd = true;
      ((android.support.v4.content.b)localObject).uY = false;
      ((android.support.v4.content.b)localObject).Bc = false;
      ((android.support.v4.content.b)localObject).Be = false;
      ((android.support.v4.content.b)localObject).Bf = false;
      return this.zk;
    }
    
    protected final void onActive()
    {
      if (LoaderManagerImpl.DEBUG) {
        Log.v("LoaderManager", "  Starting: " + this);
      }
      android.support.v4.content.b localb = this.zi;
      localb.uY = true;
      localb.Bd = false;
      localb.Bc = false;
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(64);
      localStringBuilder.append("LoaderInfo{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" #");
      localStringBuilder.append(this.yo);
      localStringBuilder.append(" : ");
      d.a(this.zi, localStringBuilder);
      localStringBuilder.append("}}");
      return localStringBuilder.toString();
    }
  }
  
  static final class b<D>
    implements k<D>
  {
    final android.support.v4.content.b<D> zi;
    private final x.a<D> zl;
    boolean zm;
    
    public final void g(D paramD)
    {
      if (LoaderManagerImpl.DEBUG) {
        Log.v("LoaderManager", "  onLoadFinished in " + this.zi + ": " + android.support.v4.content.b.dataToString(paramD));
      }
      this.zm = true;
    }
    
    public final String toString()
    {
      return this.zl.toString();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/LoaderManagerImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */