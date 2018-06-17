package com.google.android.gms.internal;

import com.google.ads.a.a;
import com.google.ads.a.b;
import com.google.ads.b;
import com.google.ads.mediation.a;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.k;
import java.util.Date;
import java.util.HashSet;

public final class ul
{
  public static a a(nr paramnr, boolean paramBoolean)
  {
    HashSet localHashSet;
    Date localDate;
    int i;
    if (paramnr.baD != null)
    {
      localHashSet = new HashSet(paramnr.baD);
      localDate = new Date(paramnr.baB);
      switch (paramnr.baC)
      {
      default: 
        i = a.b.ayp;
      }
    }
    for (;;)
    {
      return new a(localDate, i, localHashSet, paramBoolean, paramnr.baJ);
      localHashSet = null;
      break;
      i = a.b.ayr;
      continue;
      i = a.b.ayq;
    }
  }
  
  public static b b(nu paramnu)
  {
    int i = 0;
    b[] arrayOfb = new b[6];
    arrayOfb[0] = b.ayu;
    arrayOfb[1] = b.ayv;
    arrayOfb[2] = b.ayw;
    arrayOfb[3] = b.ayx;
    arrayOfb[4] = b.ayy;
    arrayOfb[5] = b.ayz;
    while (i < 6)
    {
      if ((arrayOfb[i].ayt.azl == paramnu.width) && (arrayOfb[i].ayt.azm == paramnu.height)) {
        return arrayOfb[i];
      }
      i += 1;
    }
    return new b(k.c(paramnu.width, paramnu.height, paramnu.baS));
  }
  
  public static int c(a.a parama)
  {
    switch (um.bdk[parama.ordinal()])
    {
    default: 
      return 0;
    case 2: 
      return 1;
    case 3: 
      return 2;
    }
    return 3;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ul.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */