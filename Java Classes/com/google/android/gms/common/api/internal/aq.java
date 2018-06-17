package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.a;
import com.google.android.gms.common.api.a.f;
import java.util.Collections;
import java.util.Map;

final class aq
  implements Runnable
{
  aq(ap paramap, a parama) {}
  
  public final void run()
  {
    if (this.aFv.mQ())
    {
      this.aFz.aFy = true;
      if (this.aFz.aFl.mX())
      {
        this.aFz.nM();
        return;
      }
      this.aFz.aFl.a(null, Collections.emptySet());
      return;
    }
    ((aj)ah.j(this.aFz.aFj).get(this.aFz.aCB)).a(this.aFv);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */