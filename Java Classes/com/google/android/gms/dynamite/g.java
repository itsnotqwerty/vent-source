package com.google.android.gms.dynamite;

import android.content.Context;

final class g
  implements DynamiteModule.d
{
  public final j a(Context paramContext, String paramString, i parami)
    throws DynamiteModule.c
  {
    j localj = new j();
    localj.aKC = parami.j(paramContext, paramString);
    if (localj.aKC != 0) {}
    for (localj.aKD = parami.a(paramContext, paramString, false); (localj.aKC == 0) && (localj.aKD == 0); localj.aKD = parami.a(paramContext, paramString, true))
    {
      localj.aKE = 0;
      return localj;
    }
    if (localj.aKD >= localj.aKC)
    {
      localj.aKE = 1;
      return localj;
    }
    localj.aKE = -1;
    return localj;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/dynamite/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */