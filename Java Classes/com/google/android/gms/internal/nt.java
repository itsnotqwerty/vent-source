package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.d.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

public final class nt
{
  public static final nt baR = new nt();
  
  public static nr a(Context paramContext, px parampx)
  {
    Object localObject1 = parampx.ayH;
    long l;
    String str1;
    int i;
    label59:
    boolean bool1;
    int j;
    Location localLocation;
    Bundle localBundle;
    boolean bool2;
    String str2;
    if (localObject1 != null)
    {
      l = ((Date)localObject1).getTime();
      str1 = parampx.bbu;
      i = parampx.bbv;
      localObject1 = parampx.ayJ;
      if (((Set)localObject1).isEmpty()) {
        break label252;
      }
      localObject1 = Collections.unmodifiableList(new ArrayList((Collection)localObject1));
      localObject2 = parampx.bbC;
      of.tj();
      bool1 = ((Set)localObject2).contains(w.U(paramContext));
      j = parampx.bbB;
      localLocation = parampx.ayL;
      localBundle = parampx.bbw.getBundle(AdMobAdapter.class.getName());
      bool2 = parampx.azG;
      str2 = parampx.bby;
      localObject2 = parampx.bbA;
      if (localObject2 == null) {
        break label258;
      }
    }
    label252:
    label258:
    for (Object localObject2 = new qn((a)localObject2);; localObject2 = null)
    {
      Object localObject3 = null;
      Context localContext = paramContext.getApplicationContext();
      paramContext = (Context)localObject3;
      if (localContext != null)
      {
        paramContext = localContext.getPackageName();
        of.tj();
        paramContext = w.a(Thread.currentThread().getStackTrace(), paramContext);
      }
      boolean bool3 = parampx.bbF;
      return new nr(7, l, localBundle, i, (List)localObject1, bool1, j, bool2, str2, (qn)localObject2, localLocation, str1, parampx.bbw, parampx.bbD, Collections.unmodifiableList(new ArrayList(parampx.bbE)), parampx.bbz, paramContext, bool3);
      l = -1L;
      break;
      localObject1 = null;
      break label59;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */