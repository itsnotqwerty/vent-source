package com.google.android.gms.internal;

import android.os.Binder;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import com.google.android.gms.common.util.q;
import com.google.android.gms.common.y;
import com.google.android.gms.common.z;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public final class ie
  extends gu
{
  private Boolean aVE;
  private String aVF;
  private final hz zzjev;
  
  public ie(hz paramhz)
  {
    this(paramhz, (byte)0);
  }
  
  private ie(hz paramhz, byte paramByte)
  {
    ae.E(paramhz);
    this.zzjev = paramhz;
    this.aVF = null;
  }
  
  private final void f(String paramString, boolean paramBoolean)
  {
    boolean bool = false;
    if (TextUtils.isEmpty(paramString))
    {
      this.zzjev.qP().aTa.bq("Measurement Service called without app package");
      throw new SecurityException("Measurement Service called without app package");
    }
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        if (this.aVE == null)
        {
          if (("com.google.android.gms".equals(this.aVF)) || (q.s(this.zzjev.aUM, Binder.getCallingUid()))) {
            break label201;
          }
          paramBoolean = bool;
          if (z.Q(this.zzjev.aUM).cP(Binder.getCallingUid())) {
            break label201;
          }
          this.aVE = Boolean.valueOf(paramBoolean);
        }
        if (!this.aVE.booleanValue())
        {
          if ((this.aVF == null) && (y.a(this.zzjev.aUM, Binder.getCallingUid(), paramString))) {
            this.aVF = paramString;
          }
          if (!paramString.equals(this.aVF)) {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", new Object[] { paramString }));
          }
        }
      }
      catch (SecurityException localSecurityException)
      {
        this.zzjev.qP().aTa.j("Measurement Service called with invalid calling package. appId", hb.ck(paramString));
        throw localSecurityException;
      }
      return;
      label201:
      paramBoolean = true;
    }
  }
  
  private final void g(fx paramfx)
  {
    ae.E(paramfx);
    f(paramfx.packageName, false);
    this.zzjev.qL().cB(paramfx.aQz);
  }
  
  /* Error */
  public final List<lb> a(fx paramfx, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 161	com/google/android/gms/internal/ie:g	(Lcom/google/android/gms/internal/fx;)V
    //   5: aload_0
    //   6: getfield 27	com/google/android/gms/internal/ie:zzjev	Lcom/google/android/gms/internal/hz;
    //   9: invokevirtual 165	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   12: new 167	com/google/android/gms/internal/iu
    //   15: dup
    //   16: aload_0
    //   17: aload_1
    //   18: invokespecial 170	com/google/android/gms/internal/iu:<init>	(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;)V
    //   21: invokevirtual 176	com/google/android/gms/internal/hu:c	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   24: astore_3
    //   25: aload_3
    //   26: invokeinterface 182 1 0
    //   31: checkcast 184	java/util/List
    //   34: astore 4
    //   36: new 186	java/util/ArrayList
    //   39: dup
    //   40: aload 4
    //   42: invokeinterface 189 1 0
    //   47: invokespecial 192	java/util/ArrayList:<init>	(I)V
    //   50: astore_3
    //   51: aload 4
    //   53: invokeinterface 196 1 0
    //   58: astore 4
    //   60: aload 4
    //   62: invokeinterface 201 1 0
    //   67: ifeq +75 -> 142
    //   70: aload 4
    //   72: invokeinterface 204 1 0
    //   77: checkcast 206	com/google/android/gms/internal/ld
    //   80: astore 5
    //   82: iload_2
    //   83: ifne +14 -> 97
    //   86: aload 5
    //   88: getfield 209	com/google/android/gms/internal/ld:name	Ljava/lang/String;
    //   91: invokestatic 212	com/google/android/gms/internal/le:cD	(Ljava/lang/String;)Z
    //   94: ifne -34 -> 60
    //   97: aload_3
    //   98: new 214	com/google/android/gms/internal/lb
    //   101: dup
    //   102: aload 5
    //   104: invokespecial 217	com/google/android/gms/internal/lb:<init>	(Lcom/google/android/gms/internal/ld;)V
    //   107: invokeinterface 220 2 0
    //   112: pop
    //   113: goto -53 -> 60
    //   116: astore_3
    //   117: aload_0
    //   118: getfield 27	com/google/android/gms/internal/ie:zzjev	Lcom/google/android/gms/internal/hz;
    //   121: invokevirtual 47	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   124: getfield 53	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   127: ldc -34
    //   129: aload_1
    //   130: getfield 139	com/google/android/gms/internal/fx:packageName	Ljava/lang/String;
    //   133: invokestatic 128	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   136: aload_3
    //   137: invokevirtual 226	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   140: aconst_null
    //   141: areturn
    //   142: aload_3
    //   143: areturn
    //   144: astore_3
    //   145: goto -28 -> 117
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	this	ie
    //   0	148	1	paramfx	fx
    //   0	148	2	paramBoolean	boolean
    //   24	74	3	localObject1	Object
    //   116	27	3	localInterruptedException	InterruptedException
    //   144	1	3	localExecutionException	ExecutionException
    //   34	37	4	localObject2	Object
    //   80	23	5	localld	ld
    // Exception table:
    //   from	to	target	type
    //   25	60	116	java/lang/InterruptedException
    //   60	82	116	java/lang/InterruptedException
    //   86	97	116	java/lang/InterruptedException
    //   97	113	116	java/lang/InterruptedException
    //   25	60	144	java/util/concurrent/ExecutionException
    //   60	82	144	java/util/concurrent/ExecutionException
    //   86	97	144	java/util/concurrent/ExecutionException
    //   97	113	144	java/util/concurrent/ExecutionException
  }
  
  public final List<ga> a(String paramString1, String paramString2, fx paramfx)
  {
    g(paramfx);
    paramString1 = this.zzjev.qO().c(new im(this, paramfx, paramString1, paramString2));
    try
    {
      paramString1 = (List)paramString1.get();
      return paramString1;
    }
    catch (InterruptedException paramString1)
    {
      this.zzjev.qP().aTa.j("Failed to get conditional user properties", paramString1);
      return Collections.emptyList();
    }
    catch (ExecutionException paramString1)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  public final List<lb> a(String paramString1, String paramString2, boolean paramBoolean, fx paramfx)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload 4
    //   3: invokespecial 161	com/google/android/gms/internal/ie:g	(Lcom/google/android/gms/internal/fx;)V
    //   6: aload_0
    //   7: getfield 27	com/google/android/gms/internal/ie:zzjev	Lcom/google/android/gms/internal/hz;
    //   10: invokevirtual 165	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   13: new 246	com/google/android/gms/internal/ik
    //   16: dup
    //   17: aload_0
    //   18: aload 4
    //   20: aload_1
    //   21: aload_2
    //   22: invokespecial 247	com/google/android/gms/internal/ik:<init>	(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;Ljava/lang/String;Ljava/lang/String;)V
    //   25: invokevirtual 176	com/google/android/gms/internal/hu:c	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   28: astore_1
    //   29: aload_1
    //   30: invokeinterface 182 1 0
    //   35: checkcast 184	java/util/List
    //   38: astore_2
    //   39: new 186	java/util/ArrayList
    //   42: dup
    //   43: aload_2
    //   44: invokeinterface 189 1 0
    //   49: invokespecial 192	java/util/ArrayList:<init>	(I)V
    //   52: astore_1
    //   53: aload_2
    //   54: invokeinterface 196 1 0
    //   59: astore_2
    //   60: aload_2
    //   61: invokeinterface 201 1 0
    //   66: ifeq +77 -> 143
    //   69: aload_2
    //   70: invokeinterface 204 1 0
    //   75: checkcast 206	com/google/android/gms/internal/ld
    //   78: astore 5
    //   80: iload_3
    //   81: ifne +14 -> 95
    //   84: aload 5
    //   86: getfield 209	com/google/android/gms/internal/ld:name	Ljava/lang/String;
    //   89: invokestatic 212	com/google/android/gms/internal/le:cD	(Ljava/lang/String;)Z
    //   92: ifne -32 -> 60
    //   95: aload_1
    //   96: new 214	com/google/android/gms/internal/lb
    //   99: dup
    //   100: aload 5
    //   102: invokespecial 217	com/google/android/gms/internal/lb:<init>	(Lcom/google/android/gms/internal/ld;)V
    //   105: invokeinterface 220 2 0
    //   110: pop
    //   111: goto -51 -> 60
    //   114: astore_1
    //   115: aload_0
    //   116: getfield 27	com/google/android/gms/internal/ie:zzjev	Lcom/google/android/gms/internal/hz;
    //   119: invokevirtual 47	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   122: getfield 53	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   125: ldc -34
    //   127: aload 4
    //   129: getfield 139	com/google/android/gms/internal/fx:packageName	Ljava/lang/String;
    //   132: invokestatic 128	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   135: aload_1
    //   136: invokevirtual 226	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   139: invokestatic 242	java/util/Collections:emptyList	()Ljava/util/List;
    //   142: areturn
    //   143: aload_1
    //   144: areturn
    //   145: astore_1
    //   146: goto -31 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	this	ie
    //   0	149	1	paramString1	String
    //   0	149	2	paramString2	String
    //   0	149	3	paramBoolean	boolean
    //   0	149	4	paramfx	fx
    //   78	23	5	localld	ld
    // Exception table:
    //   from	to	target	type
    //   29	60	114	java/lang/InterruptedException
    //   60	80	114	java/lang/InterruptedException
    //   84	95	114	java/lang/InterruptedException
    //   95	111	114	java/lang/InterruptedException
    //   29	60	145	java/util/concurrent/ExecutionException
    //   60	80	145	java/util/concurrent/ExecutionException
    //   84	95	145	java/util/concurrent/ExecutionException
    //   95	111	145	java/util/concurrent/ExecutionException
  }
  
  public final void a(long paramLong, String paramString1, String paramString2, String paramString3)
  {
    this.zzjev.qO().i(new iw(this, paramString2, paramString3, paramString1, paramLong));
  }
  
  public final void a(fx paramfx)
  {
    g(paramfx);
    paramfx = new iv(this, paramfx);
    if (this.zzjev.qO().rR())
    {
      paramfx.run();
      return;
    }
    this.zzjev.qO().i(paramfx);
  }
  
  public final void a(ga paramga, fx paramfx)
  {
    ae.E(paramga);
    ae.E(paramga.aRc);
    g(paramfx);
    ga localga = new ga(paramga);
    localga.packageName = paramfx.packageName;
    if (paramga.aRc.getValue() == null)
    {
      this.zzjev.qO().i(new ig(this, localga, paramfx));
      return;
    }
    this.zzjev.qO().i(new ih(this, localga, paramfx));
  }
  
  public final void a(gp paramgp, fx paramfx)
  {
    ae.E(paramgp);
    g(paramfx);
    this.zzjev.qO().i(new ip(this, paramgp, paramfx));
  }
  
  public final void a(gp paramgp, String paramString1, String paramString2)
  {
    ae.E(paramgp);
    ae.bf(paramString1);
    f(paramString1, true);
    this.zzjev.qO().i(new iq(this, paramgp, paramString1));
  }
  
  public final void a(lb paramlb, fx paramfx)
  {
    ae.E(paramlb);
    g(paramfx);
    if (paramlb.getValue() == null)
    {
      this.zzjev.qO().i(new is(this, paramlb, paramfx));
      return;
    }
    this.zzjev.qO().i(new it(this, paramlb, paramfx));
  }
  
  public final byte[] a(gp paramgp, String paramString)
  {
    ae.bf(paramString);
    ae.E(paramgp);
    f(paramString, true);
    this.zzjev.qP().aTh.j("Log and bundle. event", this.zzjev.qK().ch(paramgp.name));
    long l1 = this.zzjev.aLd.nanoTime() / 1000000L;
    Object localObject = this.zzjev.qO().d(new ir(this, paramgp, paramString));
    try
    {
      byte[] arrayOfByte = (byte[])((Future)localObject).get();
      localObject = arrayOfByte;
      if (arrayOfByte == null)
      {
        this.zzjev.qP().aTa.j("Log and bundle returned null. appId", hb.ck(paramString));
        localObject = new byte[0];
      }
      long l2 = this.zzjev.aLd.nanoTime() / 1000000L;
      this.zzjev.qP().aTh.d("Log and bundle processed. event, size, time_ms", this.zzjev.qK().ch(paramgp.name), Integer.valueOf(localObject.length), Long.valueOf(l2 - l1));
      return (byte[])localObject;
    }
    catch (InterruptedException localInterruptedException)
    {
      this.zzjev.qP().aTa.d("Failed to log and bundle. appId, event, error", hb.ck(paramString), this.zzjev.qK().ch(paramgp.name), localInterruptedException);
      return null;
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  public final List<lb> b(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: iconst_1
    //   3: invokespecial 141	com/google/android/gms/internal/ie:f	(Ljava/lang/String;Z)V
    //   6: aload_0
    //   7: getfield 27	com/google/android/gms/internal/ie:zzjev	Lcom/google/android/gms/internal/hz;
    //   10: invokevirtual 165	com/google/android/gms/internal/hz:qO	()Lcom/google/android/gms/internal/hu;
    //   13: new 377	com/google/android/gms/internal/il
    //   16: dup
    //   17: aload_0
    //   18: aload_1
    //   19: aload_2
    //   20: aload_3
    //   21: invokespecial 380	com/google/android/gms/internal/il:<init>	(Lcom/google/android/gms/internal/ie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   24: invokevirtual 176	com/google/android/gms/internal/hu:c	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   27: astore_2
    //   28: aload_2
    //   29: invokeinterface 182 1 0
    //   34: checkcast 184	java/util/List
    //   37: astore_3
    //   38: new 186	java/util/ArrayList
    //   41: dup
    //   42: aload_3
    //   43: invokeinterface 189 1 0
    //   48: invokespecial 192	java/util/ArrayList:<init>	(I)V
    //   51: astore_2
    //   52: aload_3
    //   53: invokeinterface 196 1 0
    //   58: astore_3
    //   59: aload_3
    //   60: invokeinterface 201 1 0
    //   65: ifeq +74 -> 139
    //   68: aload_3
    //   69: invokeinterface 204 1 0
    //   74: checkcast 206	com/google/android/gms/internal/ld
    //   77: astore 5
    //   79: iload 4
    //   81: ifne +14 -> 95
    //   84: aload 5
    //   86: getfield 209	com/google/android/gms/internal/ld:name	Ljava/lang/String;
    //   89: invokestatic 212	com/google/android/gms/internal/le:cD	(Ljava/lang/String;)Z
    //   92: ifne -33 -> 59
    //   95: aload_2
    //   96: new 214	com/google/android/gms/internal/lb
    //   99: dup
    //   100: aload 5
    //   102: invokespecial 217	com/google/android/gms/internal/lb:<init>	(Lcom/google/android/gms/internal/ld;)V
    //   105: invokeinterface 220 2 0
    //   110: pop
    //   111: goto -52 -> 59
    //   114: astore_2
    //   115: aload_0
    //   116: getfield 27	com/google/android/gms/internal/ie:zzjev	Lcom/google/android/gms/internal/hz;
    //   119: invokevirtual 47	com/google/android/gms/internal/hz:qP	()Lcom/google/android/gms/internal/hb;
    //   122: getfield 53	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   125: ldc -34
    //   127: aload_1
    //   128: invokestatic 128	com/google/android/gms/internal/hb:ck	(Ljava/lang/String;)Ljava/lang/Object;
    //   131: aload_2
    //   132: invokevirtual 226	com/google/android/gms/internal/hd:e	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   135: invokestatic 242	java/util/Collections:emptyList	()Ljava/util/List;
    //   138: areturn
    //   139: aload_2
    //   140: areturn
    //   141: astore_2
    //   142: goto -27 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	this	ie
    //   0	145	1	paramString1	String
    //   0	145	2	paramString2	String
    //   0	145	3	paramString3	String
    //   0	145	4	paramBoolean	boolean
    //   77	24	5	localld	ld
    // Exception table:
    //   from	to	target	type
    //   28	59	114	java/lang/InterruptedException
    //   59	79	114	java/lang/InterruptedException
    //   84	95	114	java/lang/InterruptedException
    //   95	111	114	java/lang/InterruptedException
    //   28	59	141	java/util/concurrent/ExecutionException
    //   59	79	141	java/util/concurrent/ExecutionException
    //   84	95	141	java/util/concurrent/ExecutionException
    //   95	111	141	java/util/concurrent/ExecutionException
  }
  
  public final void b(fx paramfx)
  {
    g(paramfx);
    this.zzjev.qO().i(new if(this, paramfx));
  }
  
  public final void b(ga paramga)
  {
    ae.E(paramga);
    ae.E(paramga.aRc);
    f(paramga.packageName, true);
    ga localga = new ga(paramga);
    if (paramga.aRc.getValue() == null)
    {
      this.zzjev.qO().i(new ii(this, localga));
      return;
    }
    this.zzjev.qO().i(new ij(this, localga));
  }
  
  public final String c(fx paramfx)
  {
    g(paramfx);
    return this.zzjev.ct(paramfx.packageName);
  }
  
  public final void d(fx paramfx)
  {
    f(paramfx.packageName, false);
    this.zzjev.qO().i(new io(this, paramfx));
  }
  
  public final List<ga> e(String paramString1, String paramString2, String paramString3)
  {
    f(paramString1, true);
    paramString1 = this.zzjev.qO().c(new in(this, paramString1, paramString2, paramString3));
    try
    {
      paramString1 = (List)paramString1.get();
      return paramString1;
    }
    catch (InterruptedException paramString1)
    {
      this.zzjev.qP().aTa.j("Failed to get conditional user properties", paramString1);
      return Collections.emptyList();
    }
    catch (ExecutionException paramString1)
    {
      for (;;) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ie.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */