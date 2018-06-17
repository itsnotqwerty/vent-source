package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.bd;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class a
  extends e
{
  private static List<Runnable> aAK = new ArrayList();
  public boolean aAL;
  private Set<Object> aAM = new HashSet();
  public boolean aAN;
  volatile boolean aAO;
  
  public a(bd parambd)
  {
    super(parambd);
  }
  
  public static void mE()
  {
    try
    {
      if (aAK != null)
      {
        Iterator localIterator = aAK.iterator();
        while (localIterator.hasNext()) {
          ((Runnable)localIterator.next()).run();
        }
        aAK = null;
      }
    }
    finally {}
  }
  
  public static a t(Context paramContext)
  {
    return bd.ab(paramContext).pj();
  }
  
  public final d aW(String paramString)
  {
    try
    {
      paramString = new d(this.aBd, paramString);
      paramString.initialize();
      return paramString;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */