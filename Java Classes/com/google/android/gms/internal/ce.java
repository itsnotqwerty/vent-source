package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import java.util.HashSet;
import java.util.Set;

public final class ce
{
  private final bd aBd;
  private volatile Boolean aNB;
  private String aNC;
  private Set<Integer> aND;
  
  protected ce(bd parambd)
  {
    ae.E(parambd);
    this.aBd = parambd;
  }
  
  public static boolean pL()
  {
    return ((Boolean)cm.aNO.aOE).booleanValue();
  }
  
  public static int pM()
  {
    return ((Integer)cm.aOl.aOE).intValue();
  }
  
  public static long pN()
  {
    return ((Long)cm.aNW.aOE).longValue();
  }
  
  public static long pO()
  {
    return ((Long)cm.aNZ.aOE).longValue();
  }
  
  public static int pP()
  {
    return ((Integer)cm.aOb.aOE).intValue();
  }
  
  public static int pQ()
  {
    return ((Integer)cm.aOc.aOE).intValue();
  }
  
  public static String pR()
  {
    return (String)cm.aOe.aOE;
  }
  
  public static String pS()
  {
    return (String)cm.aOd.aOE;
  }
  
  public static String pT()
  {
    return (String)cm.aOf.aOE;
  }
  
  public static long pV()
  {
    return ((Long)cm.aOt.aOE).longValue();
  }
  
  /* Error */
  public final boolean pK()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 100	com/google/android/gms/internal/ce:aNB	Ljava/lang/Boolean;
    //   4: ifnonnull +119 -> 123
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 100	com/google/android/gms/internal/ce:aNB	Ljava/lang/Boolean;
    //   13: ifnonnull +108 -> 121
    //   16: aload_0
    //   17: getfield 26	com/google/android/gms/internal/ce:aBd	Lcom/google/android/gms/internal/bd;
    //   20: getfield 106	com/google/android/gms/internal/bd:mContext	Landroid/content/Context;
    //   23: invokevirtual 112	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   26: astore_3
    //   27: invokestatic 117	com/google/android/gms/common/util/m:oL	()Ljava/lang/String;
    //   30: astore_2
    //   31: aload_3
    //   32: ifnull +30 -> 62
    //   35: aload_3
    //   36: getfield 122	android/content/pm/ApplicationInfo:processName	Ljava/lang/String;
    //   39: astore_3
    //   40: aload_3
    //   41: ifnull +90 -> 131
    //   44: aload_3
    //   45: aload_2
    //   46: invokevirtual 126	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   49: ifeq +82 -> 131
    //   52: iconst_1
    //   53: istore_1
    //   54: aload_0
    //   55: iload_1
    //   56: invokestatic 130	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   59: putfield 100	com/google/android/gms/internal/ce:aNB	Ljava/lang/Boolean;
    //   62: aload_0
    //   63: getfield 100	com/google/android/gms/internal/ce:aNB	Ljava/lang/Boolean;
    //   66: ifnull +13 -> 79
    //   69: aload_0
    //   70: getfield 100	com/google/android/gms/internal/ce:aNB	Ljava/lang/Boolean;
    //   73: invokevirtual 46	java/lang/Boolean:booleanValue	()Z
    //   76: ifne +19 -> 95
    //   79: ldc -124
    //   81: aload_2
    //   82: invokevirtual 126	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   85: ifeq +10 -> 95
    //   88: aload_0
    //   89: getstatic 135	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   92: putfield 100	com/google/android/gms/internal/ce:aNB	Ljava/lang/Boolean;
    //   95: aload_0
    //   96: getfield 100	com/google/android/gms/internal/ce:aNB	Ljava/lang/Boolean;
    //   99: ifnonnull +22 -> 121
    //   102: aload_0
    //   103: getstatic 135	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   106: putfield 100	com/google/android/gms/internal/ce:aNB	Ljava/lang/Boolean;
    //   109: aload_0
    //   110: getfield 26	com/google/android/gms/internal/ce:aBd	Lcom/google/android/gms/internal/bd;
    //   113: invokevirtual 139	com/google/android/gms/internal/bd:pg	()Lcom/google/android/gms/internal/cw;
    //   116: ldc -115
    //   118: invokevirtual 147	com/google/android/gms/internal/ba:bA	(Ljava/lang/String;)V
    //   121: aload_0
    //   122: monitorexit
    //   123: aload_0
    //   124: getfield 100	com/google/android/gms/internal/ce:aNB	Ljava/lang/Boolean;
    //   127: invokevirtual 46	java/lang/Boolean:booleanValue	()Z
    //   130: ireturn
    //   131: iconst_0
    //   132: istore_1
    //   133: goto -79 -> 54
    //   136: astore_2
    //   137: aload_0
    //   138: monitorexit
    //   139: aload_2
    //   140: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	141	0	this	ce
    //   53	80	1	bool	boolean
    //   30	52	2	str	String
    //   136	4	2	localObject1	Object
    //   26	19	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	31	136	finally
    //   35	40	136	finally
    //   44	52	136	finally
    //   54	62	136	finally
    //   62	79	136	finally
    //   79	95	136	finally
    //   95	121	136	finally
    //   121	123	136	finally
    //   137	139	136	finally
  }
  
  public final Set<Integer> pU()
  {
    String str1 = (String)cm.aOo.aOE;
    String[] arrayOfString;
    HashSet localHashSet;
    int j;
    int i;
    if ((this.aND == null) || (this.aNC == null) || (!this.aNC.equals(str1)))
    {
      arrayOfString = TextUtils.split(str1, ",");
      localHashSet = new HashSet();
      j = arrayOfString.length;
      i = 0;
    }
    for (;;)
    {
      String str2;
      if (i < j) {
        str2 = arrayOfString[i];
      }
      try
      {
        localHashSet.add(Integer.valueOf(Integer.parseInt(str2)));
        i += 1;
        continue;
        this.aNC = str1;
        this.aND = localHashSet;
        return this.aND;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;) {}
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */