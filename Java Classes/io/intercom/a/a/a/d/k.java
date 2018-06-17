package io.intercom.a.a.a.d;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build.VERSION;
import android.util.Log;
import io.intercom.a.a.a.c;
import io.intercom.a.a.a.j;
import java.util.HashSet;

public final class k
  extends Fragment
{
  final a cPg;
  final m cPh = new a();
  private final HashSet<k> cPi = new HashSet();
  private k cPj;
  Fragment cPk;
  j requestManager;
  
  public k()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  private k(a parama)
  {
    this.cPg = parama;
  }
  
  private void Js()
  {
    if (this.cPj != null)
    {
      this.cPj.cPi.remove(this);
      this.cPj = null;
    }
  }
  
  public final void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      Js();
      this.cPj = c.bY(paramActivity).cFx.a(paramActivity.getFragmentManager());
      if (this.cPj != this) {
        this.cPj.cPi.add(this);
      }
      return;
    }
    catch (IllegalStateException paramActivity)
    {
      while (!Log.isLoggable("RMFragment", 5)) {}
      Log.w("RMFragment", "Unable to register fragment with root", paramActivity);
    }
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
    this.cPg.onDestroy();
    Js();
  }
  
  public final void onDetach()
  {
    super.onDetach();
    Js();
  }
  
  public final void onStart()
  {
    super.onStart();
    this.cPg.onStart();
  }
  
  public final void onStop()
  {
    super.onStop();
    this.cPg.onStop();
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(super.toString()).append("{parent=");
    Fragment localFragment;
    if (Build.VERSION.SDK_INT >= 17)
    {
      localFragment = getParentFragment();
      if (localFragment == null) {
        break label56;
      }
    }
    for (;;)
    {
      return localFragment + "}";
      localFragment = null;
      break;
      label56:
      localFragment = this.cPk;
    }
  }
  
  private final class a
    implements m
  {
    a() {}
    
    public final String toString()
    {
      return super.toString() + "{fragment=" + k.this + "}";
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/d/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */