package io.intercom.a.a.a.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v4.app.i;
import android.util.Log;
import io.intercom.a.a.a.c;
import java.util.HashSet;

public final class o
  extends i
{
  final a cPg;
  final m cPh = new a();
  private final HashSet<o> cPi = new HashSet();
  private o cPx;
  i cPy;
  io.intercom.a.a.a.j requestManager;
  
  public o()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  private o(a parama)
  {
    this.cPg = parama;
  }
  
  private void Js()
  {
    if (this.cPx != null)
    {
      this.cPx.cPi.remove(this);
      this.cPx = null;
    }
  }
  
  final void d(android.support.v4.app.j paramj)
  {
    Js();
    this.cPx = c.bY(paramj).cFx.a(paramj.getSupportFragmentManager(), null);
    if (this.cPx != this) {
      this.cPx.cPi.add(this);
    }
  }
  
  public final void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    try
    {
      d(getActivity());
      return;
    }
    catch (IllegalStateException paramContext)
    {
      while (!Log.isLoggable("SupportRMFragment", 5)) {}
      Log.w("SupportRMFragment", "Unable to register fragment with root", paramContext);
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
    this.cPy = null;
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
    i locali = getParentFragment();
    if (locali != null) {}
    for (;;)
    {
      return locali + "}";
      locali = this.cPy;
    }
  }
  
  private final class a
    implements m
  {
    a() {}
    
    public final String toString()
    {
      return super.toString() + "{fragment=" + o.this + "}";
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/d/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */