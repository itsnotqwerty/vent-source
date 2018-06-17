package com.firebase.jobdispatcher;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.Pair;
import java.util.ArrayList;

final class f
{
  private static Boolean axp = null;
  
  private static void ap(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new IllegalStateException();
    }
  }
  
  public static Pair<o, Bundle> d(Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      Log.e("FJD.GooglePlayReceiver", "No callback received, terminating");
      return null;
    }
    return e(paramBundle);
  }
  
  @SuppressLint({"ParcelClassLoader"})
  private static Pair<o, Bundle> e(Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    Parcel localParcel = f(paramBundle);
    for (;;)
    {
      int i;
      try
      {
        if (localParcel.readInt() <= 0)
        {
          Log.w("FJD.GooglePlayReceiver", "No callback received, terminating");
          return null;
        }
        if (localParcel.readInt() != 1279544898)
        {
          Log.w("FJD.GooglePlayReceiver", "No callback received, terminating");
          return null;
        }
        int j = localParcel.readInt();
        i = 0;
        paramBundle = null;
        if (i < j)
        {
          Object localObject1;
          Object localObject2;
          if (kF())
          {
            localObject1 = localParcel.readString();
            if (localObject1 == null) {
              break label397;
            }
            if ((paramBundle == null) && ("callback".equals(localObject1))) {
              continue;
            }
            localObject2 = localParcel.readValue(null);
            if ((localObject2 instanceof String))
            {
              localBundle.putString((String)localObject1, (String)localObject2);
              break label397;
            }
          }
          else
          {
            localObject1 = localParcel.readValue(null);
            if (!(localObject1 instanceof String))
            {
              Log.w("FJD.GooglePlayReceiver", "Bad callback received, terminating");
              localObject1 = null;
              continue;
            }
            localObject1 = (String)localObject1;
            continue;
          }
          if ((localObject2 instanceof Boolean))
          {
            localBundle.putBoolean((String)localObject1, ((Boolean)localObject2).booleanValue());
          }
          else if ((localObject2 instanceof Integer))
          {
            localBundle.putInt((String)localObject1, ((Integer)localObject2).intValue());
          }
          else if ((localObject2 instanceof ArrayList))
          {
            localBundle.putParcelableArrayList((String)localObject1, (ArrayList)localObject2);
          }
          else if ((localObject2 instanceof Bundle))
          {
            localBundle.putBundle((String)localObject1, (Bundle)localObject2);
          }
          else if ((localObject2 instanceof Parcelable))
          {
            localBundle.putParcelable((String)localObject1, (Parcelable)localObject2);
            break label397;
            if (localParcel.readInt() != 4)
            {
              Log.w("FJD.GooglePlayReceiver", "Bad callback received, terminating");
              return null;
            }
            if (!"com.google.android.gms.gcm.PendingCallback".equals(localParcel.readString()))
            {
              Log.w("FJD.GooglePlayReceiver", "Bad callback received, terminating");
              return null;
            }
            paramBundle = new h(localParcel.readStrongBinder());
          }
        }
      }
      finally
      {
        localParcel.recycle();
      }
      if (paramBundle == null)
      {
        Log.w("FJD.GooglePlayReceiver", "No callback received, terminating");
        localParcel.recycle();
        return null;
      }
      paramBundle = Pair.create(paramBundle, localBundle);
      localParcel.recycle();
      return paramBundle;
      label397:
      i += 1;
    }
  }
  
  private static Parcel f(Bundle paramBundle)
  {
    Parcel localParcel = Parcel.obtain();
    paramBundle.writeToParcel(localParcel, 0);
    localParcel.setDataPosition(0);
    return localParcel;
  }
  
  /* Error */
  private static boolean kF()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: ldc 2
    //   4: monitorenter
    //   5: getstatic 10	com/firebase/jobdispatcher/f:axp	Ljava/lang/Boolean;
    //   8: ifnonnull +85 -> 93
    //   11: new 40	android/os/Bundle
    //   14: dup
    //   15: invokespecial 41	android/os/Bundle:<init>	()V
    //   18: astore_2
    //   19: aload_2
    //   20: ldc -104
    //   22: ldc -103
    //   24: invokevirtual 82	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   27: aload_2
    //   28: invokestatic 45	com/firebase/jobdispatcher/f:f	(Landroid/os/Bundle;)Landroid/os/Parcel;
    //   31: astore_2
    //   32: aload_2
    //   33: invokevirtual 51	android/os/Parcel:readInt	()I
    //   36: ifle +69 -> 105
    //   39: iconst_1
    //   40: istore_0
    //   41: iload_0
    //   42: invokestatic 155	com/firebase/jobdispatcher/f:ap	(Z)V
    //   45: aload_2
    //   46: invokevirtual 51	android/os/Parcel:readInt	()I
    //   49: ldc 58
    //   51: if_icmpne +59 -> 110
    //   54: iconst_1
    //   55: istore_0
    //   56: iload_0
    //   57: invokestatic 155	com/firebase/jobdispatcher/f:ap	(Z)V
    //   60: aload_2
    //   61: invokevirtual 51	android/os/Parcel:readInt	()I
    //   64: iconst_1
    //   65: if_icmpne +50 -> 115
    //   68: iload_1
    //   69: istore_0
    //   70: iload_0
    //   71: invokestatic 155	com/firebase/jobdispatcher/f:ap	(Z)V
    //   74: ldc -104
    //   76: aload_2
    //   77: invokevirtual 66	android/os/Parcel:readString	()Ljava/lang/String;
    //   80: invokevirtual 74	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   83: invokestatic 159	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   86: putstatic 10	com/firebase/jobdispatcher/f:axp	Ljava/lang/Boolean;
    //   89: aload_2
    //   90: invokevirtual 57	android/os/Parcel:recycle	()V
    //   93: getstatic 10	com/firebase/jobdispatcher/f:axp	Ljava/lang/Boolean;
    //   96: invokevirtual 89	java/lang/Boolean:booleanValue	()Z
    //   99: istore_0
    //   100: ldc 2
    //   102: monitorexit
    //   103: iload_0
    //   104: ireturn
    //   105: iconst_0
    //   106: istore_0
    //   107: goto -66 -> 41
    //   110: iconst_0
    //   111: istore_0
    //   112: goto -56 -> 56
    //   115: iconst_0
    //   116: istore_0
    //   117: goto -47 -> 70
    //   120: astore_3
    //   121: getstatic 162	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
    //   124: putstatic 10	com/firebase/jobdispatcher/f:axp	Ljava/lang/Boolean;
    //   127: aload_2
    //   128: invokevirtual 57	android/os/Parcel:recycle	()V
    //   131: goto -38 -> 93
    //   134: astore_2
    //   135: ldc 2
    //   137: monitorexit
    //   138: aload_2
    //   139: athrow
    //   140: astore_3
    //   141: aload_2
    //   142: invokevirtual 57	android/os/Parcel:recycle	()V
    //   145: aload_3
    //   146: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   40	77	0	bool1	boolean
    //   1	68	1	bool2	boolean
    //   18	110	2	localObject1	Object
    //   134	8	2	localObject2	Object
    //   120	1	3	localRuntimeException	RuntimeException
    //   140	6	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   32	39	120	java/lang/RuntimeException
    //   41	54	120	java/lang/RuntimeException
    //   56	68	120	java/lang/RuntimeException
    //   70	89	120	java/lang/RuntimeException
    //   5	32	134	finally
    //   89	93	134	finally
    //   93	100	134	finally
    //   127	131	134	finally
    //   141	147	134	finally
    //   32	39	140	finally
    //   41	54	140	finally
    //   56	68	140	finally
    //   70	89	140	finally
    //   121	127	140	finally
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */