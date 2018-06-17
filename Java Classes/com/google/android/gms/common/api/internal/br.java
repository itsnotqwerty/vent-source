package com.google.android.gms.common.api.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.i;
import android.support.v4.app.j;
import android.support.v4.app.n;
import android.support.v4.app.t;
import android.support.v4.g.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public final class br
  extends i
  implements az
{
  private static WeakHashMap<j, WeakReference<br>> aFI = new WeakHashMap();
  private Map<String, LifecycleCallback> aFJ = new a();
  private int aFK = 0;
  private Bundle aFL;
  
  public static br a(j paramj)
  {
    Object localObject = (WeakReference)aFI.get(paramj);
    if (localObject != null)
    {
      localObject = (br)((WeakReference)localObject).get();
      if (localObject != null) {
        return (br)localObject;
      }
    }
    try
    {
      br localbr = (br)paramj.getSupportFragmentManager().w("SupportLifecycleFragmentImpl");
      if (localbr != null)
      {
        localObject = localbr;
        if (!localbr.isRemoving()) {}
      }
      else
      {
        localObject = new br();
        paramj.getSupportFragmentManager().cG().a((i)localObject, "SupportLifecycleFragmentImpl").commitAllowingStateLoss();
      }
      aFI.put(paramj, new WeakReference(localObject));
      return (br)localObject;
    }
    catch (ClassCastException paramj)
    {
      throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", paramj);
    }
  }
  
  public final void a(String paramString, LifecycleCallback paramLifecycleCallback)
  {
    if (!this.aFJ.containsKey(paramString))
    {
      this.aFJ.put(paramString, paramLifecycleCallback);
      if (this.aFK > 0) {
        new Handler(Looper.getMainLooper()).post(new bs(this, paramLifecycleCallback, paramString));
      }
      return;
    }
    throw new IllegalArgumentException(String.valueOf(paramString).length() + 59 + "LifecycleCallback with tag " + paramString + " already added to this fragment.");
  }
  
  public final <T extends LifecycleCallback> T c(String paramString, Class<T> paramClass)
  {
    return (LifecycleCallback)paramClass.cast(this.aFJ.get(paramString));
  }
  
  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    Iterator localIterator = this.aFJ.values().iterator();
    while (localIterator.hasNext()) {
      ((LifecycleCallback)localIterator.next()).dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Iterator localIterator = this.aFJ.values().iterator();
    while (localIterator.hasNext()) {
      ((LifecycleCallback)localIterator.next()).onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.aFK = 1;
    this.aFL = paramBundle;
    Iterator localIterator = this.aFJ.entrySet().iterator();
    if (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      LifecycleCallback localLifecycleCallback = (LifecycleCallback)((Map.Entry)localObject).getValue();
      if (paramBundle != null) {}
      for (localObject = paramBundle.getBundle((String)((Map.Entry)localObject).getKey());; localObject = null)
      {
        localLifecycleCallback.onCreate((Bundle)localObject);
        break;
      }
    }
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
    this.aFK = 5;
    Iterator localIterator = this.aFJ.values().iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
  }
  
  public final void onResume()
  {
    super.onResume();
    this.aFK = 3;
    Iterator localIterator = this.aFJ.values().iterator();
    while (localIterator.hasNext()) {
      ((LifecycleCallback)localIterator.next()).onResume();
    }
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (paramBundle == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = this.aFJ.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Bundle localBundle = new Bundle();
        ((LifecycleCallback)localEntry.getValue()).onSaveInstanceState(localBundle);
        paramBundle.putBundle((String)localEntry.getKey(), localBundle);
      }
    }
  }
  
  public final void onStart()
  {
    super.onStart();
    this.aFK = 2;
    Iterator localIterator = this.aFJ.values().iterator();
    while (localIterator.hasNext()) {
      ((LifecycleCallback)localIterator.next()).onStart();
    }
  }
  
  public final void onStop()
  {
    super.onStop();
    this.aFK = 4;
    Iterator localIterator = this.aFJ.values().iterator();
    while (localIterator.hasNext()) {
      ((LifecycleCallback)localIterator.next()).onStop();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/br.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */