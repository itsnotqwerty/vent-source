package com.google.android.gms.dynamite;

import android.content.Context;

final class c
  implements DynamiteModule.d
{
  public final j a(Context paramContext, String paramString, i parami)
    throws DynamiteModule.c
  {
    j localj = new j();
    localj.aKC = parami.j(paramContext, paramString);
    if (localj.aKC != 0) {
      localj.aKE = -1;
    }
    do
    {
      return localj;
      localj.aKD = parami.a(paramContext, paramString, true);
    } while (localj.aKD == 0);
    localj.aKE = 1;
    return localj;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/dynamite/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */