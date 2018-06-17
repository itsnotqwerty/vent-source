package com.google.android.gms.analytics;

import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class m<T extends m>
{
  public final n aBw;
  protected final k aBx;
  private final List<Object> aBy;
  
  protected m(n paramn, e parame)
  {
    ae.E(paramn);
    this.aBw = paramn;
    this.aBy = new ArrayList();
    paramn = new k(this, parame);
    paramn.aBt = true;
    this.aBx = paramn;
  }
  
  protected void a(k paramk) {}
  
  public k mI()
  {
    k localk = this.aBx.mK();
    mL();
    return localk;
  }
  
  protected final void mL()
  {
    Iterator localIterator = this.aBy.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */