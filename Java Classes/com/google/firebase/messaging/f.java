package com.google.firebase.messaging;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.nc;
import com.google.android.gms.internal.nd;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.ni;
import com.google.android.gms.measurement.AppMeasurement;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class f
{
  private static Bundle K(String paramString1, String paramString2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString(paramString1, paramString2);
    return localBundle;
  }
  
  private static String Z(Object paramObject)
    throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException
  {
    return (String)Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mName").get(paramObject);
  }
  
  /* Error */
  private static Object a(ni paramni, String paramString, e parame)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: ldc 27
    //   5: invokestatic 33	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   8: astore 5
    //   10: aload_0
    //   11: getfield 58	com/google/android/gms/internal/ni:bam	Ljava/lang/String;
    //   14: aload_0
    //   15: getfield 61	com/google/android/gms/internal/ni:ban	Ljava/lang/String;
    //   18: invokestatic 63	com/google/firebase/messaging/f:K	(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    //   21: astore 6
    //   23: aload 5
    //   25: iconst_0
    //   26: anewarray 29	java/lang/Class
    //   29: invokevirtual 67	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   32: iconst_0
    //   33: anewarray 4	java/lang/Object
    //   36: invokevirtual 73	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   39: astore_3
    //   40: aload 5
    //   42: ldc 75
    //   44: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   47: aload_3
    //   48: aload_1
    //   49: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   52: aload 5
    //   54: ldc 81
    //   56: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   59: aload_3
    //   60: aload_0
    //   61: getfield 85	com/google/android/gms/internal/ni:bao	J
    //   64: invokestatic 91	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   67: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   70: aload 5
    //   72: ldc 35
    //   74: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   77: aload_3
    //   78: aload_0
    //   79: getfield 58	com/google/android/gms/internal/ni:bam	Ljava/lang/String;
    //   82: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   85: aload 5
    //   87: ldc 93
    //   89: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   92: aload_3
    //   93: aload_0
    //   94: getfield 61	com/google/android/gms/internal/ni:ban	Ljava/lang/String;
    //   97: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   100: aload_0
    //   101: getfield 96	com/google/android/gms/internal/ni:bap	Ljava/lang/String;
    //   104: invokestatic 102	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   107: ifeq +186 -> 293
    //   110: aload 4
    //   112: astore_1
    //   113: aload 5
    //   115: ldc 104
    //   117: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   120: aload_3
    //   121: aload_1
    //   122: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   125: aload 5
    //   127: ldc 106
    //   129: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   132: astore 4
    //   134: aload_0
    //   135: getfield 109	com/google/android/gms/internal/ni:bav	Ljava/lang/String;
    //   138: invokestatic 102	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   141: ifne +160 -> 301
    //   144: aload_0
    //   145: getfield 109	com/google/android/gms/internal/ni:bav	Ljava/lang/String;
    //   148: astore_1
    //   149: aload 4
    //   151: aload_3
    //   152: aload_1
    //   153: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   156: aload 5
    //   158: ldc 111
    //   160: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   163: aload_3
    //   164: aload 6
    //   166: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   169: aload 5
    //   171: ldc 113
    //   173: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   176: aload_3
    //   177: aload_0
    //   178: getfield 116	com/google/android/gms/internal/ni:baq	J
    //   181: invokestatic 91	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   184: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   187: aload 5
    //   189: ldc 118
    //   191: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   194: astore 4
    //   196: aload_0
    //   197: getfield 121	com/google/android/gms/internal/ni:bat	Ljava/lang/String;
    //   200: invokestatic 102	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   203: ifne +106 -> 309
    //   206: aload_0
    //   207: getfield 121	com/google/android/gms/internal/ni:bat	Ljava/lang/String;
    //   210: astore_1
    //   211: aload 4
    //   213: aload_3
    //   214: aload_1
    //   215: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   218: aload 5
    //   220: ldc 123
    //   222: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   225: aload_3
    //   226: aload 6
    //   228: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   231: aload 5
    //   233: ldc 125
    //   235: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   238: aload_3
    //   239: aload_0
    //   240: getfield 128	com/google/android/gms/internal/ni:bar	J
    //   243: invokestatic 91	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   246: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   249: aload 5
    //   251: ldc -126
    //   253: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   256: astore_1
    //   257: aload_0
    //   258: getfield 133	com/google/android/gms/internal/ni:baw	Ljava/lang/String;
    //   261: invokestatic 102	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   264: ifne +53 -> 317
    //   267: aload_0
    //   268: getfield 133	com/google/android/gms/internal/ni:baw	Ljava/lang/String;
    //   271: astore_0
    //   272: aload_1
    //   273: aload_3
    //   274: aload_0
    //   275: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   278: aload 5
    //   280: ldc -121
    //   282: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   285: aload_3
    //   286: aload 6
    //   288: invokevirtual 79	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   291: aload_3
    //   292: areturn
    //   293: aload_0
    //   294: getfield 96	com/google/android/gms/internal/ni:bap	Ljava/lang/String;
    //   297: astore_1
    //   298: goto -185 -> 113
    //   301: aload_2
    //   302: getfield 140	com/google/firebase/messaging/e:bgd	Ljava/lang/String;
    //   305: astore_1
    //   306: goto -157 -> 149
    //   309: aload_2
    //   310: getfield 143	com/google/firebase/messaging/e:bgc	Ljava/lang/String;
    //   313: astore_1
    //   314: goto -103 -> 211
    //   317: aload_2
    //   318: getfield 146	com/google/firebase/messaging/e:bge	Ljava/lang/String;
    //   321: astore_0
    //   322: goto -50 -> 272
    //   325: astore_0
    //   326: aconst_null
    //   327: astore_3
    //   328: ldc -108
    //   330: ldc -106
    //   332: aload_0
    //   333: invokestatic 156	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   336: pop
    //   337: aload_3
    //   338: areturn
    //   339: astore_0
    //   340: goto -12 -> 328
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	343	0	paramni	ni
    //   0	343	1	paramString	String
    //   0	343	2	parame	e
    //   39	299	3	localObject	Object
    //   1	211	4	localField	Field
    //   8	271	5	localClass	Class
    //   21	266	6	localBundle	Bundle
    // Exception table:
    //   from	to	target	type
    //   3	40	325	java/lang/Exception
    //   40	110	339	java/lang/Exception
    //   113	149	339	java/lang/Exception
    //   149	211	339	java/lang/Exception
    //   211	272	339	java/lang/Exception
    //   272	291	339	java/lang/Exception
    //   293	298	339	java/lang/Exception
    //   301	306	339	java/lang/Exception
    //   309	314	339	java/lang/Exception
    //   317	322	339	java/lang/Exception
  }
  
  private static String a(ni paramni, e parame)
  {
    if ((paramni != null) && (!TextUtils.isEmpty(paramni.bau))) {
      return paramni.bau;
    }
    return parame.bgf;
  }
  
  private static List<Object> a(AppMeasurement paramAppMeasurement, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Method localMethod = AppMeasurement.class.getDeclaredMethod("getConditionalUserProperties", new Class[] { String.class, String.class });
      localMethod.setAccessible(true);
      paramAppMeasurement = (List)localMethod.invoke(paramAppMeasurement, new Object[] { paramString, "" });
      if (Log.isLoggable("FirebaseAbtUtil", 2))
      {
        int i = paramAppMeasurement.size();
        Log.v("FirebaseAbtUtil", String.valueOf(paramString).length() + 55 + "Number of currently set _Es for origin: " + paramString + " is " + i);
      }
      return paramAppMeasurement;
    }
    catch (Exception paramAppMeasurement)
    {
      for (;;)
      {
        Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", paramAppMeasurement);
        paramAppMeasurement = localArrayList;
      }
    }
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (Log.isLoggable("FirebaseAbtUtil", 2))
    {
      paramString1 = String.valueOf(paramString1);
      if (paramString1.length() == 0) {
        break label43;
      }
    }
    label43:
    for (paramString1 = "_CE(experimentId) called by ".concat(paramString1);; paramString1 = new String("_CE(experimentId) called by "))
    {
      Log.v("FirebaseAbtUtil", paramString1);
      if (ar(paramContext)) {
        break;
      }
      return;
    }
    paramContext = aq(paramContext);
    try
    {
      paramString1 = AppMeasurement.class.getDeclaredMethod("clearConditionalUserProperty", new Class[] { String.class, String.class, Bundle.class });
      paramString1.setAccessible(true);
      if (Log.isLoggable("FirebaseAbtUtil", 2)) {
        Log.v("FirebaseAbtUtil", String.valueOf(paramString2).length() + 17 + String.valueOf(paramString3).length() + "Clearing _E: [" + paramString2 + ", " + paramString3 + "]");
      }
      paramString1.invoke(paramContext, new Object[] { paramString2, paramString4, K(paramString2, paramString3) });
      return;
    }
    catch (Exception paramContext)
    {
      Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", paramContext);
    }
  }
  
  public static void a(Context paramContext, String paramString, byte[] paramArrayOfByte, e parame)
  {
    Object localObject1;
    if (Log.isLoggable("FirebaseAbtUtil", 2))
    {
      localObject1 = String.valueOf(paramString);
      if (((String)localObject1).length() != 0)
      {
        localObject1 = "_SE called by ".concat((String)localObject1);
        Log.v("FirebaseAbtUtil", (String)localObject1);
      }
    }
    else
    {
      if (ar(paramContext)) {
        break label64;
      }
    }
    label64:
    do
    {
      return;
      localObject1 = new String("_SE called by ");
      break;
      localObject1 = aq(paramContext);
      paramArrayOfByte = q(paramArrayOfByte);
      if (paramArrayOfByte != null) {
        break label98;
      }
    } while (!Log.isLoggable("FirebaseAbtUtil", 2));
    Log.v("FirebaseAbtUtil", "_SE failed; either _P was not set, or we couldn't deserialize the _P.");
    return;
    for (;;)
    {
      label98:
      int i;
      String str1;
      String str2;
      int k;
      try
      {
        Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
        Iterator localIterator = a((AppMeasurement)localObject1, paramString).iterator();
        i = 0;
        if (!localIterator.hasNext()) {
          break label589;
        }
        Object localObject2 = localIterator.next();
        str1 = Z(localObject2);
        str2 = aa(localObject2);
        long l = ((Long)Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mCreationTimestamp").get(localObject2)).longValue();
        if ((paramArrayOfByte.bam.equals(str1)) && (paramArrayOfByte.ban.equals(str2)))
        {
          if (!Log.isLoggable("FirebaseAbtUtil", 2)) {
            break label682;
          }
          Log.v("FirebaseAbtUtil", String.valueOf(str1).length() + 23 + String.valueOf(str2).length() + "_E is already set. [" + str1 + ", " + str2 + "]");
          break label682;
        }
        int m = 0;
        localObject2 = paramArrayOfByte.bay;
        int n = localObject2.length;
        int j = 0;
        k = m;
        if (j < n)
        {
          if (localObject2[j].bam.equals(str1))
          {
            if (!Log.isLoggable("FirebaseAbtUtil", 2)) {
              break label688;
            }
            Log.v("FirebaseAbtUtil", String.valueOf(str1).length() + 33 + String.valueOf(str2).length() + "_E is found in the _OE list. [" + str1 + ", " + str2 + "]");
            break label688;
          }
        }
        else
        {
          if (k != 0) {
            continue;
          }
          if (paramArrayOfByte.bao <= l) {
            break label515;
          }
          if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            Log.v("FirebaseAbtUtil", String.valueOf(str1).length() + 115 + String.valueOf(str2).length() + "Clearing _E as it was not in the _OE list, andits start time is older than the start time of the _E to be set. [" + str1 + ", " + str2 + "]");
          }
          a(paramContext, paramString, str1, str2, a(paramArrayOfByte, parame));
          continue;
        }
        j += 1;
      }
      catch (Exception paramContext)
      {
        Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", paramContext);
        return;
      }
      continue;
      label515:
      if (Log.isLoggable("FirebaseAbtUtil", 2))
      {
        Log.v("FirebaseAbtUtil", String.valueOf(str1).length() + 109 + String.valueOf(str2).length() + "_E was not found in the _OE list, but not clearing it as it has a new start time than the _E to be set.  [" + str1 + ", " + str2 + "]");
        continue;
        label589:
        if (i != 0)
        {
          if (!Log.isLoggable("FirebaseAbtUtil", 2)) {
            break;
          }
          paramContext = paramArrayOfByte.bam;
          paramString = paramArrayOfByte.ban;
          Log.v("FirebaseAbtUtil", String.valueOf(paramContext).length() + 44 + String.valueOf(paramString).length() + "_E is already set. Not setting it again [" + paramContext + ", " + paramString + "]");
          return;
        }
        a((AppMeasurement)localObject1, paramContext, paramString, paramArrayOfByte, parame);
        return;
        label682:
        i = 1;
        continue;
        label688:
        k = 1;
      }
    }
  }
  
  private static void a(AppMeasurement paramAppMeasurement, Context paramContext, String paramString, ni paramni, e parame)
  {
    Object localObject1;
    String str;
    if (Log.isLoggable("FirebaseAbtUtil", 2))
    {
      localObject1 = paramni.bam;
      str = paramni.ban;
      Log.v("FirebaseAbtUtil", String.valueOf(localObject1).length() + 7 + String.valueOf(str).length() + "_SEI: " + (String)localObject1 + " " + str);
    }
    label475:
    do
    {
      do
      {
        for (;;)
        {
          try
          {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            localObject1 = a(paramAppMeasurement, paramString);
            int i = b(paramAppMeasurement, paramString);
            Object localObject2;
            if (a(paramAppMeasurement, paramString).size() >= i)
            {
              if (paramni.bax != 0)
              {
                i = paramni.bax;
                if (i != 1) {
                  break;
                }
                localObject2 = ((List)localObject1).get(0);
                str = Z(localObject2);
                localObject2 = aa(localObject2);
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                  Log.v("FirebaseAbtUtil", String.valueOf(str).length() + 38 + "Clearing _E due to overflow policy: [" + str + "]");
                }
                a(paramContext, paramString, str, (String)localObject2, a(paramni, parame));
              }
            }
            else
            {
              localObject1 = ((List)localObject1).iterator();
              if (!((Iterator)localObject1).hasNext()) {
                break label475;
              }
              localObject2 = ((Iterator)localObject1).next();
              str = Z(localObject2);
              localObject2 = aa(localObject2);
              if ((!str.equals(paramni.bam)) || (((String)localObject2).equals(paramni.ban)) || (!Log.isLoggable("FirebaseAbtUtil", 2))) {
                continue;
              }
              Log.v("FirebaseAbtUtil", String.valueOf(str).length() + 77 + String.valueOf(localObject2).length() + "Clearing _E, as only one _V of the same _E can be set atany given time: [" + str + ", " + (String)localObject2 + "].");
              a(paramContext, paramString, str, (String)localObject2, a(paramni, parame));
              continue;
            }
            i = 1;
          }
          catch (Exception paramAppMeasurement)
          {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", paramAppMeasurement);
            return;
          }
        }
      } while (!Log.isLoggable("FirebaseAbtUtil", 2));
      paramAppMeasurement = paramni.bam;
      paramContext = paramni.ban;
      Log.v("FirebaseAbtUtil", String.valueOf(paramAppMeasurement).length() + 44 + String.valueOf(paramContext).length() + "_E won't be set due to overflow policy. [" + paramAppMeasurement + ", " + paramContext + "]");
      return;
      paramContext = a(paramni, paramString, parame);
      if (paramContext != null) {
        break;
      }
    } while (!Log.isLoggable("FirebaseAbtUtil", 2));
    paramAppMeasurement = paramni.bam;
    paramContext = paramni.ban;
    Log.v("FirebaseAbtUtil", String.valueOf(paramAppMeasurement).length() + 42 + String.valueOf(paramContext).length() + "Could not create _CUP for: [" + paramAppMeasurement + ", " + paramContext + "]. Skipping.");
    return;
    try
    {
      paramString = AppMeasurement.class.getDeclaredMethod("setConditionalUserProperty", new Class[] { Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty") });
      paramString.setAccessible(true);
      paramString.invoke(paramAppMeasurement, new Object[] { paramContext });
      return;
    }
    catch (Exception paramAppMeasurement)
    {
      Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", paramAppMeasurement);
    }
  }
  
  private static String aa(Object paramObject)
    throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException
  {
    return (String)Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mValue").get(paramObject);
  }
  
  private static AppMeasurement aq(Context paramContext)
  {
    try
    {
      paramContext = AppMeasurement.getInstance(paramContext);
      return paramContext;
    }
    catch (NoClassDefFoundError paramContext) {}
    return null;
  }
  
  private static boolean ar(Context paramContext)
  {
    if (aq(paramContext) == null) {
      if (Log.isLoggable("FirebaseAbtUtil", 2)) {
        Log.v("FirebaseAbtUtil", "Firebase Analytics not available");
      }
    }
    do
    {
      return false;
      try
      {
        Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
        return true;
      }
      catch (ClassNotFoundException paramContext) {}
    } while (!Log.isLoggable("FirebaseAbtUtil", 2));
    Log.v("FirebaseAbtUtil", "Firebase Analytics library is missing support for abt. Please update to a more recent version.");
    return false;
  }
  
  private static int b(AppMeasurement paramAppMeasurement, String paramString)
  {
    try
    {
      Method localMethod = AppMeasurement.class.getDeclaredMethod("getMaxUserProperties", new Class[] { String.class });
      localMethod.setAccessible(true);
      int i = ((Integer)localMethod.invoke(paramAppMeasurement, new Object[] { paramString })).intValue();
      return i;
    }
    catch (Exception paramAppMeasurement)
    {
      Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", paramAppMeasurement);
    }
    return 20;
  }
  
  private static ni q(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = (ni)nd.a(new ni(), paramArrayOfByte, paramArrayOfByte.length);
      return paramArrayOfByte;
    }
    catch (nc paramArrayOfByte) {}
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/messaging/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */