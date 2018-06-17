package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.l;
import java.lang.ref.WeakReference;

final class bu
  implements Runnable
{
  bu(bt parambt, i parami) {}
  
  public final void run()
  {
    try
    {
      BasePendingResult.aDh.set(Boolean.valueOf(true));
      Object localObject1 = this.aGm.aGe.ng();
      this.aGm.aGj.sendMessage(this.aGm.aGj.obtainMessage(0, localObject1));
      BasePendingResult.aDh.set(Boolean.valueOf(false));
      localObject1 = (f)this.aGm.aDk.get();
      if (localObject1 != null) {
        ((f)localObject1).b(this.aGm);
      }
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      this.aGm.aGj.sendMessage(this.aGm.aGj.obtainMessage(1, localRuntimeException));
      f localf1;
      return;
    }
    finally
    {
      BasePendingResult.aDh.set(Boolean.valueOf(false));
      f localf2 = (f)this.aGm.aDk.get();
      if (localf2 != null) {
        localf2.b(this.aGm);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */