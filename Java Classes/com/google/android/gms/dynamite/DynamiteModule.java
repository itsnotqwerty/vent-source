package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.DynamiteApi;
import java.lang.reflect.Field;

public final class DynamiteModule
{
  private static Boolean aKm;
  private static k aKn;
  private static m aKo;
  private static String aKp;
  private static final ThreadLocal<a> aKq = new ThreadLocal();
  private static final i aKr = new a();
  public static final d aKs = new b();
  private static d aKt = new c();
  public static final d aKu = new d();
  public static final d aKv = new e();
  public static final d aKw = new f();
  public static final d aKx = new g();
  private final Context aKy;
  
  private DynamiteModule(Context paramContext)
  {
    this.aKy = ((Context)ae.E(paramContext));
  }
  
  /* Error */
  private static k S(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 104	com/google/android/gms/dynamite/DynamiteModule:aKn	Lcom/google/android/gms/dynamite/k;
    //   6: ifnull +12 -> 18
    //   9: getstatic 104	com/google/android/gms/dynamite/DynamiteModule:aKn	Lcom/google/android/gms/dynamite/k;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: invokestatic 110	com/google/android/gms/common/m:oN	()Lcom/google/android/gms/common/m;
    //   21: aload_0
    //   22: invokevirtual 114	com/google/android/gms/common/m:w	(Landroid/content/Context;)I
    //   25: ifeq +8 -> 33
    //   28: ldc 2
    //   30: monitorexit
    //   31: aconst_null
    //   32: areturn
    //   33: aload_0
    //   34: ldc 116
    //   36: iconst_3
    //   37: invokevirtual 120	android/content/Context:createPackageContext	(Ljava/lang/String;I)Landroid/content/Context;
    //   40: invokevirtual 124	android/content/Context:getClassLoader	()Ljava/lang/ClassLoader;
    //   43: ldc 126
    //   45: invokevirtual 132	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   48: invokevirtual 138	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   51: checkcast 140	android/os/IBinder
    //   54: astore_0
    //   55: aload_0
    //   56: ifnonnull +24 -> 80
    //   59: aconst_null
    //   60: astore_0
    //   61: aload_0
    //   62: ifnull +84 -> 146
    //   65: aload_0
    //   66: putstatic 104	com/google/android/gms/dynamite/DynamiteModule:aKn	Lcom/google/android/gms/dynamite/k;
    //   69: ldc 2
    //   71: monitorexit
    //   72: aload_0
    //   73: areturn
    //   74: astore_0
    //   75: ldc 2
    //   77: monitorexit
    //   78: aload_0
    //   79: athrow
    //   80: aload_0
    //   81: ldc -114
    //   83: invokeinterface 146 2 0
    //   88: astore_1
    //   89: aload_1
    //   90: instanceof 148
    //   93: ifeq +11 -> 104
    //   96: aload_1
    //   97: checkcast 148	com/google/android/gms/dynamite/k
    //   100: astore_0
    //   101: goto -40 -> 61
    //   104: new 150	com/google/android/gms/dynamite/l
    //   107: dup
    //   108: aload_0
    //   109: invokespecial 153	com/google/android/gms/dynamite/l:<init>	(Landroid/os/IBinder;)V
    //   112: astore_0
    //   113: goto -52 -> 61
    //   116: astore_0
    //   117: aload_0
    //   118: invokevirtual 157	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   121: invokestatic 163	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   124: astore_0
    //   125: aload_0
    //   126: invokevirtual 167	java/lang/String:length	()I
    //   129: ifeq +22 -> 151
    //   132: ldc -87
    //   134: aload_0
    //   135: invokevirtual 173	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   138: astore_0
    //   139: ldc -81
    //   141: aload_0
    //   142: invokestatic 181	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   145: pop
    //   146: ldc 2
    //   148: monitorexit
    //   149: aconst_null
    //   150: areturn
    //   151: new 159	java/lang/String
    //   154: dup
    //   155: ldc -87
    //   157: invokespecial 184	java/lang/String:<init>	(Ljava/lang/String;)V
    //   160: astore_0
    //   161: goto -22 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	paramContext	Context
    //   88	9	1	localIInterface	android.os.IInterface
    // Exception table:
    //   from	to	target	type
    //   3	16	74	finally
    //   18	31	74	finally
    //   33	55	74	finally
    //   65	69	74	finally
    //   69	72	74	finally
    //   75	78	74	finally
    //   80	101	74	finally
    //   104	113	74	finally
    //   117	139	74	finally
    //   139	146	74	finally
    //   146	149	74	finally
    //   151	161	74	finally
    //   33	55	116	java/lang/Exception
    //   65	69	116	java/lang/Exception
    //   80	101	116	java/lang/Exception
    //   104	113	116	java/lang/Exception
  }
  
  /* Error */
  public static int a(Context paramContext, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 193	com/google/android/gms/dynamite/DynamiteModule:aKm	Ljava/lang/Boolean;
    //   6: astore 6
    //   8: aload 6
    //   10: astore 5
    //   12: aload 6
    //   14: ifnonnull +69 -> 83
    //   17: aload_0
    //   18: invokevirtual 197	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   21: invokevirtual 124	android/content/Context:getClassLoader	()Ljava/lang/ClassLoader;
    //   24: ldc 6
    //   26: invokevirtual 200	java/lang/Class:getName	()Ljava/lang/String;
    //   29: invokevirtual 132	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   32: astore 6
    //   34: aload 6
    //   36: ldc -54
    //   38: invokevirtual 206	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   41: astore 5
    //   43: aload 6
    //   45: monitorenter
    //   46: aload 5
    //   48: aconst_null
    //   49: invokevirtual 211	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   52: checkcast 128	java/lang/ClassLoader
    //   55: astore 7
    //   57: aload 7
    //   59: ifnull +57 -> 116
    //   62: aload 7
    //   64: invokestatic 214	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
    //   67: if_acmpne +36 -> 103
    //   70: getstatic 219	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
    //   73: astore 5
    //   75: aload 6
    //   77: monitorexit
    //   78: aload 5
    //   80: putstatic 193	com/google/android/gms/dynamite/DynamiteModule:aKm	Ljava/lang/Boolean;
    //   83: ldc 2
    //   85: monitorexit
    //   86: aload 5
    //   88: invokevirtual 223	java/lang/Boolean:booleanValue	()Z
    //   91: ifeq +268 -> 359
    //   94: aload_0
    //   95: aload_1
    //   96: iload_2
    //   97: invokestatic 225	com/google/android/gms/dynamite/DynamiteModule:c	(Landroid/content/Context;Ljava/lang/String;Z)I
    //   100: istore_3
    //   101: iload_3
    //   102: ireturn
    //   103: aload 7
    //   105: invokestatic 228	com/google/android/gms/dynamite/DynamiteModule:a	(Ljava/lang/ClassLoader;)V
    //   108: getstatic 231	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   111: astore 5
    //   113: goto -38 -> 75
    //   116: ldc 116
    //   118: aload_0
    //   119: invokevirtual 197	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   122: invokevirtual 234	android/content/Context:getPackageName	()Ljava/lang/String;
    //   125: invokevirtual 238	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   128: ifeq +20 -> 148
    //   131: aload 5
    //   133: aconst_null
    //   134: invokestatic 214	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
    //   137: invokevirtual 242	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   140: getstatic 219	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
    //   143: astore 5
    //   145: goto -70 -> 75
    //   148: aload_0
    //   149: aload_1
    //   150: iload_2
    //   151: invokestatic 225	com/google/android/gms/dynamite/DynamiteModule:c	(Landroid/content/Context;Ljava/lang/String;Z)I
    //   154: istore_3
    //   155: getstatic 244	com/google/android/gms/dynamite/DynamiteModule:aKp	Ljava/lang/String;
    //   158: ifnull +16 -> 174
    //   161: getstatic 244	com/google/android/gms/dynamite/DynamiteModule:aKp	Ljava/lang/String;
    //   164: invokevirtual 247	java/lang/String:isEmpty	()Z
    //   167: istore 4
    //   169: iload 4
    //   171: ifeq +17 -> 188
    //   174: aload 6
    //   176: monitorexit
    //   177: ldc 2
    //   179: monitorexit
    //   180: iload_3
    //   181: ireturn
    //   182: astore_0
    //   183: ldc 2
    //   185: monitorexit
    //   186: aload_0
    //   187: athrow
    //   188: new 249	com/google/android/gms/dynamite/h
    //   191: dup
    //   192: getstatic 244	com/google/android/gms/dynamite/DynamiteModule:aKp	Ljava/lang/String;
    //   195: invokestatic 214	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
    //   198: invokespecial 252	com/google/android/gms/dynamite/h:<init>	(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    //   201: astore 7
    //   203: aload 7
    //   205: invokestatic 228	com/google/android/gms/dynamite/DynamiteModule:a	(Ljava/lang/ClassLoader;)V
    //   208: aload 5
    //   210: aconst_null
    //   211: aload 7
    //   213: invokevirtual 242	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   216: getstatic 231	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   219: putstatic 193	com/google/android/gms/dynamite/DynamiteModule:aKm	Ljava/lang/Boolean;
    //   222: aload 6
    //   224: monitorexit
    //   225: ldc 2
    //   227: monitorexit
    //   228: iload_3
    //   229: ireturn
    //   230: astore 7
    //   232: aload 5
    //   234: aconst_null
    //   235: invokestatic 214	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
    //   238: invokevirtual 242	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   241: getstatic 219	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
    //   244: astore 5
    //   246: goto -171 -> 75
    //   249: astore 5
    //   251: aload 6
    //   253: monitorexit
    //   254: aload 5
    //   256: athrow
    //   257: astore 5
    //   259: aload 5
    //   261: invokestatic 163	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   264: astore 5
    //   266: ldc -81
    //   268: new 254	java/lang/StringBuilder
    //   271: dup
    //   272: aload 5
    //   274: invokestatic 163	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   277: invokevirtual 167	java/lang/String:length	()I
    //   280: bipush 30
    //   282: iadd
    //   283: invokespecial 257	java/lang/StringBuilder:<init>	(I)V
    //   286: ldc_w 259
    //   289: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: aload 5
    //   294: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: invokevirtual 266	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: invokestatic 268	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   303: pop
    //   304: getstatic 219	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
    //   307: astore 5
    //   309: goto -231 -> 78
    //   312: astore_0
    //   313: aload_0
    //   314: invokevirtual 269	com/google/android/gms/dynamite/DynamiteModule$c:getMessage	()Ljava/lang/String;
    //   317: invokestatic 163	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   320: astore_0
    //   321: aload_0
    //   322: invokevirtual 167	java/lang/String:length	()I
    //   325: ifeq +20 -> 345
    //   328: ldc_w 271
    //   331: aload_0
    //   332: invokevirtual 173	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   335: astore_0
    //   336: ldc -81
    //   338: aload_0
    //   339: invokestatic 268	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   342: pop
    //   343: iconst_0
    //   344: ireturn
    //   345: new 159	java/lang/String
    //   348: dup
    //   349: ldc_w 271
    //   352: invokespecial 184	java/lang/String:<init>	(Ljava/lang/String;)V
    //   355: astore_0
    //   356: goto -20 -> 336
    //   359: aload_0
    //   360: aload_1
    //   361: iload_2
    //   362: invokestatic 273	com/google/android/gms/dynamite/DynamiteModule:b	(Landroid/content/Context;Ljava/lang/String;Z)I
    //   365: ireturn
    //   366: astore 5
    //   368: goto -260 -> 108
    //   371: astore 5
    //   373: goto -114 -> 259
    //   376: astore 5
    //   378: goto -119 -> 259
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	381	0	paramContext	Context
    //   0	381	1	paramString	String
    //   0	381	2	paramBoolean	boolean
    //   100	129	3	i	int
    //   167	3	4	bool	boolean
    //   10	235	5	localObject1	Object
    //   249	6	5	localObject2	Object
    //   257	3	5	localClassNotFoundException	ClassNotFoundException
    //   264	44	5	localObject3	Object
    //   366	1	5	localc1	c
    //   371	1	5	localNoSuchFieldException	NoSuchFieldException
    //   376	1	5	localIllegalAccessException	IllegalAccessException
    //   6	246	6	localObject4	Object
    //   55	157	7	localObject5	Object
    //   230	1	7	localc2	c
    // Exception table:
    //   from	to	target	type
    //   3	8	182	finally
    //   17	46	182	finally
    //   78	83	182	finally
    //   83	86	182	finally
    //   177	180	182	finally
    //   183	186	182	finally
    //   225	228	182	finally
    //   254	257	182	finally
    //   259	309	182	finally
    //   148	169	230	com/google/android/gms/dynamite/DynamiteModule$c
    //   188	222	230	com/google/android/gms/dynamite/DynamiteModule$c
    //   46	57	249	finally
    //   62	75	249	finally
    //   75	78	249	finally
    //   103	108	249	finally
    //   108	113	249	finally
    //   116	145	249	finally
    //   148	169	249	finally
    //   174	177	249	finally
    //   188	222	249	finally
    //   222	225	249	finally
    //   232	246	249	finally
    //   251	254	249	finally
    //   17	46	257	java/lang/ClassNotFoundException
    //   254	257	257	java/lang/ClassNotFoundException
    //   94	101	312	com/google/android/gms/dynamite/DynamiteModule$c
    //   103	108	366	com/google/android/gms/dynamite/DynamiteModule$c
    //   17	46	371	java/lang/NoSuchFieldException
    //   254	257	371	java/lang/NoSuchFieldException
    //   17	46	376	java/lang/IllegalAccessException
    //   254	257	376	java/lang/IllegalAccessException
  }
  
  private static Context a(Context paramContext, String paramString, int paramInt, Cursor paramCursor, m paramm)
  {
    try
    {
      paramContext = (Context)com.google.android.gms.a.c.a(paramm.a(com.google.android.gms.a.c.Q(paramContext), paramString, paramInt, com.google.android.gms.a.c.Q(paramCursor)));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext = String.valueOf(paramContext.toString());
      if (paramContext.length() == 0) {}
    }
    for (paramContext = "Failed to load DynamiteLoader: ".concat(paramContext);; paramContext = new String("Failed to load DynamiteLoader: "))
    {
      Log.e("DynamiteModule", paramContext);
      return null;
    }
  }
  
  public static DynamiteModule a(Context paramContext, d paramd, String paramString)
    throws DynamiteModule.c
  {
    a locala1 = (a)aKq.get();
    a locala2 = new a((byte)0);
    aKq.set(locala2);
    j localj;
    try
    {
      localj = paramd.a(paramContext, paramString, aKr);
      i = localj.aKC;
      int j = localj.aKD;
      Log.i("DynamiteModule", String.valueOf(paramString).length() + 68 + String.valueOf(paramString).length() + "Considering local module " + paramString + ":" + i + " and remote module " + paramString + ":" + j);
      if ((localj.aKE == 0) || ((localj.aKE == -1) && (localj.aKC == 0)) || ((localj.aKE == 1) && (localj.aKD == 0)))
      {
        i = localj.aKC;
        j = localj.aKD;
        throw new c(91 + "No acceptable module found. Local version is " + i + " and remote version is " + j + ".", (byte)0);
      }
    }
    finally
    {
      if (locala2.aKz != null) {
        locala2.aKz.close();
      }
      aKq.set(locala1);
    }
    if (localj.aKE == -1)
    {
      paramContext = l(paramContext, paramString);
      if (locala2.aKz != null) {
        locala2.aKz.close();
      }
      aKq.set(locala1);
      return paramContext;
    }
    int i = localj.aKE;
    if (i == 1) {
      try
      {
        localObject = a(paramContext, paramString, localj.aKD);
        if (locala2.aKz != null) {
          locala2.aKz.close();
        }
        aKq.set(locala1);
        return (DynamiteModule)localObject;
      }
      catch (c localc)
      {
        Object localObject = String.valueOf(localc.getMessage());
        if (((String)localObject).length() != 0) {}
        for (localObject = "Failed to load remote module: ".concat((String)localObject);; localObject = new String("Failed to load remote module: "))
        {
          Log.w("DynamiteModule", (String)localObject);
          if ((localj.aKC == 0) || (paramd.a(paramContext, paramString, new b(localj.aKC)).aKE != -1)) {
            break;
          }
          paramContext = l(paramContext, paramString);
          if (locala2.aKz != null) {
            locala2.aKz.close();
          }
          aKq.set(locala1);
          return paramContext;
        }
        throw new c("Remote load failed. No local fallback found.", localc, (byte)0);
      }
    }
    i = localj.aKE;
    throw new c(47 + "VersionPolicy returned invalid code:" + i, (byte)0);
  }
  
  private static DynamiteModule a(Context paramContext, String paramString, int paramInt)
    throws DynamiteModule.c
  {
    Boolean localBoolean;
    try
    {
      localBoolean = aKm;
      if (localBoolean == null) {
        throw new c("Failed to determine which loading route to use.", (byte)0);
      }
    }
    finally {}
    if (localBoolean.booleanValue()) {
      return c(paramContext, paramString, paramInt);
    }
    return b(paramContext, paramString, paramInt);
  }
  
  /* Error */
  private static void a(ClassLoader paramClassLoader)
    throws DynamiteModule.c
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 377
    //   4: invokevirtual 132	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   7: iconst_0
    //   8: anewarray 134	java/lang/Class
    //   11: invokevirtual 381	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   14: iconst_0
    //   15: anewarray 4	java/lang/Object
    //   18: invokevirtual 386	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   21: checkcast 140	android/os/IBinder
    //   24: astore_0
    //   25: aload_0
    //   26: ifnonnull +10 -> 36
    //   29: aconst_null
    //   30: astore_0
    //   31: aload_0
    //   32: putstatic 388	com/google/android/gms/dynamite/DynamiteModule:aKo	Lcom/google/android/gms/dynamite/m;
    //   35: return
    //   36: aload_0
    //   37: ldc_w 390
    //   40: invokeinterface 146 2 0
    //   45: astore_1
    //   46: aload_1
    //   47: instanceof 282
    //   50: ifeq +11 -> 61
    //   53: aload_1
    //   54: checkcast 282	com/google/android/gms/dynamite/m
    //   57: astore_0
    //   58: goto -27 -> 31
    //   61: new 392	com/google/android/gms/dynamite/n
    //   64: dup
    //   65: aload_0
    //   66: invokespecial 393	com/google/android/gms/dynamite/n:<init>	(Landroid/os/IBinder;)V
    //   69: astore_0
    //   70: goto -39 -> 31
    //   73: astore_0
    //   74: new 15	com/google/android/gms/dynamite/DynamiteModule$c
    //   77: dup
    //   78: ldc_w 395
    //   81: aload_0
    //   82: iconst_0
    //   83: invokespecial 360	com/google/android/gms/dynamite/DynamiteModule$c:<init>	(Ljava/lang/String;Ljava/lang/Throwable;B)V
    //   86: athrow
    //   87: astore_0
    //   88: goto -14 -> 74
    //   91: astore_0
    //   92: goto -18 -> 74
    //   95: astore_0
    //   96: goto -22 -> 74
    //   99: astore_0
    //   100: goto -26 -> 74
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	paramClassLoader	ClassLoader
    //   45	9	1	localIInterface	android.os.IInterface
    // Exception table:
    //   from	to	target	type
    //   0	25	73	java/lang/ClassNotFoundException
    //   31	35	73	java/lang/ClassNotFoundException
    //   36	58	73	java/lang/ClassNotFoundException
    //   61	70	73	java/lang/ClassNotFoundException
    //   0	25	87	java/lang/InstantiationException
    //   31	35	87	java/lang/InstantiationException
    //   36	58	87	java/lang/InstantiationException
    //   61	70	87	java/lang/InstantiationException
    //   0	25	91	java/lang/IllegalAccessException
    //   31	35	91	java/lang/IllegalAccessException
    //   36	58	91	java/lang/IllegalAccessException
    //   61	70	91	java/lang/IllegalAccessException
    //   0	25	95	java/lang/NoSuchMethodException
    //   31	35	95	java/lang/NoSuchMethodException
    //   36	58	95	java/lang/NoSuchMethodException
    //   61	70	95	java/lang/NoSuchMethodException
    //   0	25	99	java/lang/reflect/InvocationTargetException
    //   31	35	99	java/lang/reflect/InvocationTargetException
    //   36	58	99	java/lang/reflect/InvocationTargetException
    //   61	70	99	java/lang/reflect/InvocationTargetException
  }
  
  private static int b(Context paramContext, String paramString, boolean paramBoolean)
  {
    k localk = S(paramContext);
    if (localk == null) {
      return 0;
    }
    try
    {
      int i = localk.a(com.google.android.gms.a.c.Q(paramContext), paramString, paramBoolean);
      return i;
    }
    catch (RemoteException paramContext)
    {
      paramContext = String.valueOf(paramContext.getMessage());
      if (paramContext.length() == 0) {}
    }
    for (paramContext = "Failed to retrieve remote module version: ".concat(paramContext);; paramContext = new String("Failed to retrieve remote module version: "))
    {
      Log.w("DynamiteModule", paramContext);
      return 0;
    }
  }
  
  private static DynamiteModule b(Context paramContext, String paramString, int paramInt)
    throws DynamiteModule.c
  {
    Log.i("DynamiteModule", String.valueOf(paramString).length() + 51 + "Selected remote version of " + paramString + ", version >= " + paramInt);
    k localk = S(paramContext);
    if (localk == null) {
      throw new c("Failed to create IDynamiteLoader.", (byte)0);
    }
    try
    {
      paramContext = localk.a(com.google.android.gms.a.c.Q(paramContext), paramString, paramInt);
      if (com.google.android.gms.a.c.a(paramContext) == null) {
        throw new c("Failed to load remote module.", (byte)0);
      }
    }
    catch (RemoteException paramContext)
    {
      throw new c("Failed to load remote module.", paramContext, (byte)0);
    }
    return new DynamiteModule((Context)com.google.android.gms.a.c.a(paramContext));
  }
  
  /* Error */
  private static int c(Context paramContext, String paramString, boolean paramBoolean)
    throws DynamiteModule.c
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 420	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 4
    //   6: iload_2
    //   7: ifeq +138 -> 145
    //   10: ldc_w 422
    //   13: astore_0
    //   14: aload 4
    //   16: new 254	java/lang/StringBuilder
    //   19: dup
    //   20: aload_0
    //   21: invokestatic 163	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   24: invokevirtual 167	java/lang/String:length	()I
    //   27: bipush 42
    //   29: iadd
    //   30: aload_1
    //   31: invokestatic 163	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   34: invokevirtual 167	java/lang/String:length	()I
    //   37: iadd
    //   38: invokespecial 257	java/lang/StringBuilder:<init>	(I)V
    //   41: ldc_w 424
    //   44: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: aload_0
    //   48: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: ldc_w 426
    //   54: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: aload_1
    //   58: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: invokevirtual 266	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: invokestatic 432	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   67: aconst_null
    //   68: aconst_null
    //   69: aconst_null
    //   70: aconst_null
    //   71: invokevirtual 438	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   74: astore_0
    //   75: aload_0
    //   76: ifnull +14 -> 90
    //   79: aload_0
    //   80: astore_1
    //   81: aload_0
    //   82: invokeinterface 441 1 0
    //   87: ifne +65 -> 152
    //   90: aload_0
    //   91: astore_1
    //   92: ldc -81
    //   94: ldc_w 443
    //   97: invokestatic 268	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   100: pop
    //   101: aload_0
    //   102: astore_1
    //   103: new 15	com/google/android/gms/dynamite/DynamiteModule$c
    //   106: dup
    //   107: ldc_w 445
    //   110: iconst_0
    //   111: invokespecial 336	com/google/android/gms/dynamite/DynamiteModule$c:<init>	(Ljava/lang/String;B)V
    //   114: athrow
    //   115: astore 4
    //   117: aload_0
    //   118: astore_1
    //   119: aload 4
    //   121: instanceof 15
    //   124: ifeq +132 -> 256
    //   127: aload_0
    //   128: astore_1
    //   129: aload 4
    //   131: athrow
    //   132: astore_0
    //   133: aload_1
    //   134: ifnull +9 -> 143
    //   137: aload_1
    //   138: invokeinterface 345 1 0
    //   143: aload_0
    //   144: athrow
    //   145: ldc_w 447
    //   148: astore_0
    //   149: goto -135 -> 14
    //   152: aload_0
    //   153: astore_1
    //   154: aload_0
    //   155: iconst_0
    //   156: invokeinterface 451 2 0
    //   161: istore_3
    //   162: aload_0
    //   163: astore 4
    //   165: iload_3
    //   166: ifle +66 -> 232
    //   169: aload_0
    //   170: astore_1
    //   171: ldc 2
    //   173: monitorenter
    //   174: aload_0
    //   175: iconst_2
    //   176: invokeinterface 455 2 0
    //   181: putstatic 244	com/google/android/gms/dynamite/DynamiteModule:aKp	Ljava/lang/String;
    //   184: ldc 2
    //   186: monitorexit
    //   187: aload_0
    //   188: astore_1
    //   189: getstatic 50	com/google/android/gms/dynamite/DynamiteModule:aKq	Ljava/lang/ThreadLocal;
    //   192: invokevirtual 294	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   195: checkcast 9	com/google/android/gms/dynamite/DynamiteModule$a
    //   198: astore 5
    //   200: aload_0
    //   201: astore 4
    //   203: aload 5
    //   205: ifnull +27 -> 232
    //   208: aload_0
    //   209: astore_1
    //   210: aload_0
    //   211: astore 4
    //   213: aload 5
    //   215: getfield 340	com/google/android/gms/dynamite/DynamiteModule$a:aKz	Landroid/database/Cursor;
    //   218: ifnonnull +14 -> 232
    //   221: aload_0
    //   222: astore_1
    //   223: aload 5
    //   225: aload_0
    //   226: putfield 340	com/google/android/gms/dynamite/DynamiteModule$a:aKz	Landroid/database/Cursor;
    //   229: aconst_null
    //   230: astore 4
    //   232: aload 4
    //   234: ifnull +10 -> 244
    //   237: aload 4
    //   239: invokeinterface 345 1 0
    //   244: iload_3
    //   245: ireturn
    //   246: astore 4
    //   248: ldc 2
    //   250: monitorexit
    //   251: aload_0
    //   252: astore_1
    //   253: aload 4
    //   255: athrow
    //   256: aload_0
    //   257: astore_1
    //   258: new 15	com/google/android/gms/dynamite/DynamiteModule$c
    //   261: dup
    //   262: ldc_w 457
    //   265: aload 4
    //   267: iconst_0
    //   268: invokespecial 360	com/google/android/gms/dynamite/DynamiteModule$c:<init>	(Ljava/lang/String;Ljava/lang/Throwable;B)V
    //   271: athrow
    //   272: astore_0
    //   273: aconst_null
    //   274: astore_1
    //   275: goto -142 -> 133
    //   278: astore 4
    //   280: aconst_null
    //   281: astore_0
    //   282: goto -165 -> 117
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	285	0	paramContext	Context
    //   0	285	1	paramString	String
    //   0	285	2	paramBoolean	boolean
    //   161	84	3	i	int
    //   4	11	4	localContentResolver	android.content.ContentResolver
    //   115	15	4	localException1	Exception
    //   163	75	4	localContext	Context
    //   246	20	4	localThrowable	Throwable
    //   278	1	4	localException2	Exception
    //   198	26	5	locala	a
    // Exception table:
    //   from	to	target	type
    //   81	90	115	java/lang/Exception
    //   92	101	115	java/lang/Exception
    //   103	115	115	java/lang/Exception
    //   154	162	115	java/lang/Exception
    //   171	174	115	java/lang/Exception
    //   189	200	115	java/lang/Exception
    //   213	221	115	java/lang/Exception
    //   223	229	115	java/lang/Exception
    //   253	256	115	java/lang/Exception
    //   81	90	132	finally
    //   92	101	132	finally
    //   103	115	132	finally
    //   119	127	132	finally
    //   129	132	132	finally
    //   154	162	132	finally
    //   171	174	132	finally
    //   189	200	132	finally
    //   213	221	132	finally
    //   223	229	132	finally
    //   253	256	132	finally
    //   258	272	132	finally
    //   174	187	246	finally
    //   248	251	246	finally
    //   0	6	272	finally
    //   14	75	272	finally
    //   0	6	278	java/lang/Exception
    //   14	75	278	java/lang/Exception
  }
  
  private static DynamiteModule c(Context paramContext, String paramString, int paramInt)
    throws DynamiteModule.c
  {
    Log.i("DynamiteModule", String.valueOf(paramString).length() + 51 + "Selected remote version of " + paramString + ", version >= " + paramInt);
    m localm;
    try
    {
      localm = aKo;
      if (localm == null) {
        throw new c("DynamiteLoaderV2 was not cached.", (byte)0);
      }
    }
    finally {}
    a locala = (a)aKq.get();
    if ((locala == null) || (locala.aKz == null)) {
      throw new c("No result cursor", (byte)0);
    }
    paramContext = a(paramContext.getApplicationContext(), paramString, paramInt, locala.aKz, localm);
    if (paramContext == null) {
      throw new c("Failed to get module context", (byte)0);
    }
    return new DynamiteModule(paramContext);
  }
  
  public static int j(Context paramContext, String paramString)
  {
    try
    {
      Object localObject = paramContext.getApplicationContext().getClassLoader().loadClass(String.valueOf(paramString).length() + 61 + "com.google.android.gms.dynamite.descriptors." + paramString + ".ModuleDescriptor");
      paramContext = ((Class)localObject).getDeclaredField("MODULE_ID");
      localObject = ((Class)localObject).getDeclaredField("MODULE_VERSION");
      if (!paramContext.get(null).equals(paramString))
      {
        paramContext = String.valueOf(paramContext.get(null));
        Log.e("DynamiteModule", String.valueOf(paramContext).length() + 51 + String.valueOf(paramString).length() + "Module descriptor id '" + paramContext + "' didn't match expected id '" + paramString + "'");
        return 0;
      }
      int i = ((Field)localObject).getInt(null);
      return i;
    }
    catch (ClassNotFoundException paramContext)
    {
      Log.w("DynamiteModule", String.valueOf(paramString).length() + 45 + "Local module descriptor class for " + paramString + " not found.");
      return 0;
    }
    catch (Exception paramContext)
    {
      paramContext = String.valueOf(paramContext.getMessage());
      if (paramContext.length() == 0) {}
    }
    for (paramContext = "Failed to load module descriptor class: ".concat(paramContext);; paramContext = new String("Failed to load module descriptor class: "))
    {
      Log.e("DynamiteModule", paramContext);
      break;
    }
  }
  
  public static int k(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, false);
  }
  
  private static DynamiteModule l(Context paramContext, String paramString)
  {
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {}
    for (paramString = "Selected local version of ".concat(paramString);; paramString = new String("Selected local version of "))
    {
      Log.i("DynamiteModule", paramString);
      return new DynamiteModule(paramContext.getApplicationContext());
    }
  }
  
  public final IBinder bn(String paramString)
    throws DynamiteModule.c
  {
    try
    {
      IBinder localIBinder = (IBinder)this.aKy.getClassLoader().loadClass(paramString).newInstance();
      return localIBinder;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "Failed to instantiate module class: ".concat(paramString);; paramString = new String("Failed to instantiate module class: ")) {
        throw new c(paramString, localClassNotFoundException, (byte)0);
      }
    }
    catch (InstantiationException localInstantiationException)
    {
      for (;;) {}
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;) {}
    }
  }
  
  @DynamiteApi
  public static class DynamiteLoaderClassLoader
  {
    public static ClassLoader sClassLoader;
  }
  
  static final class a
  {
    public Cursor aKz;
  }
  
  static final class b
    implements i
  {
    private final int aKA;
    private final int aKB;
    
    public b(int paramInt)
    {
      this.aKA = paramInt;
      this.aKB = 0;
    }
    
    public final int a(Context paramContext, String paramString, boolean paramBoolean)
    {
      return 0;
    }
    
    public final int j(Context paramContext, String paramString)
    {
      return this.aKA;
    }
  }
  
  public static final class c
    extends Exception
  {
    private c(String paramString)
    {
      super();
    }
    
    private c(String paramString, Throwable paramThrowable)
    {
      super(paramThrowable);
    }
  }
  
  public static abstract interface d
  {
    public abstract j a(Context paramContext, String paramString, i parami)
      throws DynamiteModule.c;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/dynamite/DynamiteModule.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */