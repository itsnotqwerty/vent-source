package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.g.a;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.measurement.AppMeasurement.f;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public final class jq
  extends iy
{
  protected jt aWk;
  public volatile jp aWl;
  jp aWm;
  long aWn;
  public final Map<Activity, jt> aWo = new a();
  public final CopyOnWriteArrayList<AppMeasurement.f> aWp = new CopyOnWriteArrayList();
  public boolean aWq;
  private jp aWr;
  private String aWs;
  
  public jq(hz paramhz)
  {
    super(paramhz);
  }
  
  public static void a(jp paramjp, Bundle paramBundle, boolean paramBoolean)
  {
    if ((paramBundle != null) && (paramjp != null) && ((!paramBundle.containsKey("_sc")) || (paramBoolean))) {
      if (paramjp.aWh != null)
      {
        paramBundle.putString("_sn", paramjp.aWh);
        paramBundle.putString("_sc", paramjp.aWi);
        paramBundle.putLong("_si", paramjp.aWj);
      }
    }
    while ((paramBundle == null) || (paramjp != null) || (!paramBoolean)) {
      for (;;)
      {
        return;
        paramBundle.remove("_sn");
      }
    }
    paramBundle.remove("_sn");
    paramBundle.remove("_sc");
    paramBundle.remove("_si");
  }
  
  public static String cv(String paramString)
  {
    paramString = paramString.split("\\.");
    if (paramString.length > 0) {}
    for (paramString = paramString[(paramString.length - 1)];; paramString = "")
    {
      String str = paramString;
      if (paramString.length() > 100) {
        str = paramString.substring(0, 100);
      }
      return str;
    }
  }
  
  /* Error */
  public final void a(Activity paramActivity, jt paramjt, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aconst_null
    //   4: astore 7
    //   6: aload_0
    //   7: getfield 139	com/google/android/gms/internal/jq:aWl	Lcom/google/android/gms/internal/jp;
    //   10: ifnull +82 -> 92
    //   13: aload_0
    //   14: getfield 139	com/google/android/gms/internal/jq:aWl	Lcom/google/android/gms/internal/jp;
    //   17: astore 6
    //   19: aload 6
    //   21: ifnull +13 -> 34
    //   24: new 51	com/google/android/gms/internal/jp
    //   27: dup
    //   28: aload 6
    //   30: invokespecial 142	com/google/android/gms/internal/jp:<init>	(Lcom/google/android/gms/internal/jp;)V
    //   33: pop
    //   34: aload_0
    //   35: iconst_1
    //   36: putfield 144	com/google/android/gms/internal/jq:aWq	Z
    //   39: aload_0
    //   40: getfield 38	com/google/android/gms/internal/jq:aWp	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   43: invokevirtual 148	java/util/concurrent/CopyOnWriteArrayList:iterator	()Ljava/util/Iterator;
    //   46: astore 6
    //   48: iconst_1
    //   49: istore 4
    //   51: aload 6
    //   53: invokeinterface 154 1 0
    //   58: ifeq +216 -> 274
    //   61: aload 6
    //   63: invokeinterface 158 1 0
    //   68: checkcast 160	com/google/android/gms/measurement/AppMeasurement$f
    //   71: astore 7
    //   73: aload 7
    //   75: invokeinterface 163 1 0
    //   80: istore 5
    //   82: iload 4
    //   84: iload 5
    //   86: iand
    //   87: istore 4
    //   89: goto -38 -> 51
    //   92: aload 7
    //   94: astore 6
    //   96: aload_0
    //   97: getfield 165	com/google/android/gms/internal/jq:aWm	Lcom/google/android/gms/internal/jp;
    //   100: ifnull -81 -> 19
    //   103: aload 7
    //   105: astore 6
    //   107: aload_0
    //   108: invokevirtual 87	com/google/android/gms/internal/ix:qH	()Lcom/google/android/gms/common/util/e;
    //   111: invokeinterface 93 1 0
    //   116: aload_0
    //   117: getfield 167	com/google/android/gms/internal/jq:aWn	J
    //   120: lsub
    //   121: invokestatic 173	java/lang/Math:abs	(J)J
    //   124: ldc2_w 174
    //   127: lcmp
    //   128: ifge -109 -> 19
    //   131: aload_0
    //   132: getfield 165	com/google/android/gms/internal/jq:aWm	Lcom/google/android/gms/internal/jp;
    //   135: astore 6
    //   137: goto -118 -> 19
    //   140: astore 7
    //   142: aload_0
    //   143: invokevirtual 179	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   146: getfield 185	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   149: ldc -69
    //   151: aload 7
    //   153: invokevirtual 193	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   156: goto -105 -> 51
    //   159: astore 6
    //   161: aload_0
    //   162: invokevirtual 179	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   165: getfield 185	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   168: ldc -61
    //   170: aload 6
    //   172: invokevirtual 193	com/google/android/gms/internal/hd:j	(Ljava/lang/String;Ljava/lang/Object;)V
    //   175: aload_0
    //   176: iconst_0
    //   177: putfield 144	com/google/android/gms/internal/jq:aWq	Z
    //   180: aload_0
    //   181: getfield 139	com/google/android/gms/internal/jq:aWl	Lcom/google/android/gms/internal/jp;
    //   184: ifnonnull +106 -> 290
    //   187: aload_0
    //   188: getfield 165	com/google/android/gms/internal/jq:aWm	Lcom/google/android/gms/internal/jp;
    //   191: astore 6
    //   193: iload 4
    //   195: ifeq +78 -> 273
    //   198: aload_2
    //   199: getfield 196	com/google/android/gms/internal/jt:aWi	Ljava/lang/String;
    //   202: ifnonnull +17 -> 219
    //   205: aload_2
    //   206: aload_1
    //   207: invokevirtual 202	java/lang/Object:getClass	()Ljava/lang/Class;
    //   210: invokevirtual 208	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   213: invokestatic 210	com/google/android/gms/internal/jq:cv	(Ljava/lang/String;)Ljava/lang/String;
    //   216: putfield 196	com/google/android/gms/internal/jt:aWi	Ljava/lang/String;
    //   219: new 105	com/google/android/gms/internal/jt
    //   222: dup
    //   223: aload_2
    //   224: invokespecial 213	com/google/android/gms/internal/jt:<init>	(Lcom/google/android/gms/internal/jt;)V
    //   227: astore_1
    //   228: aload_0
    //   229: aload_0
    //   230: getfield 139	com/google/android/gms/internal/jq:aWl	Lcom/google/android/gms/internal/jp;
    //   233: putfield 165	com/google/android/gms/internal/jq:aWm	Lcom/google/android/gms/internal/jp;
    //   236: aload_0
    //   237: aload_0
    //   238: invokevirtual 87	com/google/android/gms/internal/ix:qH	()Lcom/google/android/gms/common/util/e;
    //   241: invokeinterface 93 1 0
    //   246: putfield 167	com/google/android/gms/internal/jq:aWn	J
    //   249: aload_0
    //   250: aload_1
    //   251: putfield 139	com/google/android/gms/internal/jq:aWl	Lcom/google/android/gms/internal/jp;
    //   254: aload_0
    //   255: invokevirtual 217	com/google/android/gms/internal/ix:qO	()Lcom/google/android/gms/internal/hu;
    //   258: new 219	com/google/android/gms/internal/jr
    //   261: dup
    //   262: aload_0
    //   263: iload_3
    //   264: aload 6
    //   266: aload_1
    //   267: invokespecial 222	com/google/android/gms/internal/jr:<init>	(Lcom/google/android/gms/internal/jq;ZLcom/google/android/gms/internal/jp;Lcom/google/android/gms/internal/jt;)V
    //   270: invokevirtual 228	com/google/android/gms/internal/hu:i	(Ljava/lang/Runnable;)V
    //   273: return
    //   274: aload_0
    //   275: iconst_0
    //   276: putfield 144	com/google/android/gms/internal/jq:aWq	Z
    //   279: goto -99 -> 180
    //   282: astore_1
    //   283: aload_0
    //   284: iconst_0
    //   285: putfield 144	com/google/android/gms/internal/jq:aWq	Z
    //   288: aload_1
    //   289: athrow
    //   290: aload_0
    //   291: getfield 139	com/google/android/gms/internal/jq:aWl	Lcom/google/android/gms/internal/jp;
    //   294: astore 6
    //   296: goto -103 -> 193
    //   299: astore 6
    //   301: goto -140 -> 161
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	304	0	this	jq
    //   0	304	1	paramActivity	Activity
    //   0	304	2	paramjt	jt
    //   0	304	3	paramBoolean	boolean
    //   1	193	4	bool1	boolean
    //   80	7	5	bool2	boolean
    //   17	119	6	localObject	Object
    //   159	12	6	localException1	Exception
    //   191	104	6	localjp	jp
    //   299	1	6	localException2	Exception
    //   4	100	7	localf	AppMeasurement.f
    //   140	12	7	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   73	82	140	java/lang/Exception
    //   51	73	159	java/lang/Exception
    //   142	156	159	java/lang/Exception
    //   39	48	282	finally
    //   51	73	282	finally
    //   73	82	282	finally
    //   142	156	282	finally
    //   161	175	282	finally
    //   39	48	299	java/lang/Exception
  }
  
  public final void a(String paramString, jp paramjp)
  {
    mN();
    try
    {
      if ((this.aWs == null) || (this.aWs.equals(paramString)) || (paramjp != null))
      {
        this.aWs = paramString;
        this.aWr = paramjp;
      }
      return;
    }
    finally {}
  }
  
  final jt i(Activity paramActivity)
  {
    ae.E(paramActivity);
    jt localjt2 = (jt)this.aWo.get(paramActivity);
    jt localjt1 = localjt2;
    if (localjt2 == null)
    {
      localjt1 = new jt(null, cv(paramActivity.getClass().getCanonicalName()), qL().sq());
      this.aWo.put(paramActivity, localjt1);
    }
    return localjt1;
  }
  
  protected final boolean ri()
  {
    return false;
  }
  
  public final jt sj()
  {
    pf();
    mN();
    return this.aWk;
  }
  
  public final jp sk()
  {
    jp localjp = this.aWl;
    if (localjp == null) {
      return null;
    }
    return new jp(localjp);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/jq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */