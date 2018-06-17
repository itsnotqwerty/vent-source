package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.a;
import com.google.android.gms.common.internal.ah;
import com.google.android.gms.internal.mn;

final class t
  extends ae
{
  t(ac paramac, l paraml, mn parammn)
  {
    super(paramac);
  }
  
  public final void nn()
  {
    l locall = this.aEu;
    Object localObject1 = this.aEv;
    Object localObject2;
    if (locall.cH(0))
    {
      localObject2 = ((mn)localObject1).aGN;
      if (!((a)localObject2).mQ()) {
        break label134;
      }
      localObject2 = ((mn)localObject1).aZp;
      localObject1 = ((ah)localObject2).aGN;
      if (!((a)localObject1).mQ())
      {
        localObject2 = String.valueOf(localObject1);
        Log.wtf("GoogleApiClientConnecting", String.valueOf(localObject2).length() + 48 + "Sign-in succeeded with resolve account failure: " + (String)localObject2, new Exception());
        locall.c((a)localObject1);
      }
    }
    else
    {
      return;
    }
    locall.aEh = true;
    locall.aEi = ((ah)localObject2).oh();
    locall.aEj = ((ah)localObject2).aEj;
    locall.aEk = ((ah)localObject2).aHR;
    locall.np();
    return;
    label134:
    if (locall.b((a)localObject2))
    {
      locall.nr();
      locall.np();
      return;
    }
    locall.c((a)localObject2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */