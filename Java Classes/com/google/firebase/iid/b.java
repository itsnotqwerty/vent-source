package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.l;
import com.google.android.gms.common.util.o;
import java.io.File;
import java.io.IOException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class b
{
  private Context aUM;
  private SharedPreferences beU;
  
  public b(Context paramContext)
  {
    this(paramContext, "com.google.android.gms.appid");
  }
  
  private b(Context paramContext, String paramString)
  {
    this.aUM = paramContext;
    this.beU = paramContext.getSharedPreferences(paramString, 0);
    paramContext = String.valueOf(paramString);
    paramString = String.valueOf("-no-backup");
    if (paramString.length() != 0) {
      paramContext = paramContext.concat(paramString);
    }
    for (;;)
    {
      paramString = this.aUM;
      if (l.oJ())
      {
        paramString = paramString.getNoBackupFilesDir();
        paramContext = new File(paramString, paramContext);
        if (paramContext.exists()) {}
      }
      try
      {
        if ((paramContext.createNewFile()) && (!isEmpty()))
        {
          Log.i("FirebaseInstanceId", "App restored, clearing state");
          uG();
          FirebaseInstanceId.us().uA();
        }
        return;
        paramContext = new String(paramContext);
        continue;
        paramString = o.f(new File(paramString.getApplicationInfo().dataDir, "no_backup"));
      }
      catch (IOException paramContext)
      {
        while (!Log.isLoggable("FirebaseInstanceId", 3)) {}
        paramContext = String.valueOf(paramContext.getMessage());
        if (paramContext.length() == 0) {}
      }
    }
    for (paramContext = "Error creating file in no backup dir: ".concat(paramContext);; paramContext = new String("Error creating file in no backup dir: "))
    {
      Log.d("FirebaseInstanceId", paramContext);
      return;
    }
  }
  
  private static String J(String paramString1, String paramString2)
  {
    return String.valueOf(paramString1).length() + 3 + String.valueOf(paramString2).length() + paramString1 + "|S|" + paramString2;
  }
  
  private static String g(String paramString1, String paramString2, String paramString3)
  {
    return String.valueOf(paramString1).length() + 4 + String.valueOf(paramString2).length() + String.valueOf(paramString3).length() + paramString1 + "|T|" + paramString2 + "|" + paramString3;
  }
  
  private final boolean isEmpty()
  {
    try
    {
      boolean bool = this.beU.getAll().isEmpty();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload 4
    //   4: aload 5
    //   6: invokestatic 169	java/lang/System:currentTimeMillis	()J
    //   9: invokestatic 174	com/google/firebase/iid/c:a	(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    //   12: astore 4
    //   14: aload 4
    //   16: ifnonnull +6 -> 22
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield 31	com/google/firebase/iid/b:beU	Landroid/content/SharedPreferences;
    //   26: invokeinterface 178 1 0
    //   31: astore 5
    //   33: aload 5
    //   35: aload_1
    //   36: aload_2
    //   37: aload_3
    //   38: invokestatic 180	com/google/firebase/iid/b:g	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   41: aload 4
    //   43: invokeinterface 186 3 0
    //   48: pop
    //   49: aload 5
    //   51: invokeinterface 189 1 0
    //   56: pop
    //   57: goto -38 -> 19
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	b
    //   0	65	1	paramString1	String
    //   0	65	2	paramString2	String
    //   0	65	3	paramString3	String
    //   0	65	4	paramString4	String
    //   0	65	5	paramString5	String
    // Exception table:
    //   from	to	target	type
    //   2	14	60	finally
    //   22	57	60	finally
  }
  
  public final boolean cZ(String paramString)
  {
    for (;;)
    {
      try
      {
        String str2 = this.beU.getString("topic_operaion_queue", "");
        String str1 = String.valueOf(",");
        String str3 = String.valueOf(paramString);
        if (str3.length() != 0)
        {
          str1 = str1.concat(str3);
          if (!str2.startsWith(str1)) {
            break label144;
          }
          str1 = String.valueOf(",");
          paramString = String.valueOf(paramString);
          if (paramString.length() != 0)
          {
            paramString = str1.concat(paramString);
            paramString = str2.substring(paramString.length());
            this.beU.edit().putString("topic_operaion_queue", paramString).apply();
            bool = true;
            return bool;
          }
        }
        else
        {
          str1 = new String(str1);
          continue;
        }
        paramString = new String(str1);
      }
      finally {}
      continue;
      label144:
      boolean bool = false;
    }
  }
  
  final KeyPair da(String paramString)
  {
    try
    {
      KeyPair localKeyPair = a.uE();
      long l = System.currentTimeMillis();
      SharedPreferences.Editor localEditor = this.beU.edit();
      localEditor.putString(J(paramString, "|P|"), Base64.encodeToString(localKeyPair.getPublic().getEncoded(), 11));
      localEditor.putString(J(paramString, "|K|"), Base64.encodeToString(localKeyPair.getPrivate().getEncoded(), 11));
      localEditor.putString(J(paramString, "cre"), Long.toString(l));
      localEditor.commit();
      return localKeyPair;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final void db(String paramString)
  {
    try
    {
      paramString = String.valueOf(paramString).concat("|T|");
      SharedPreferences.Editor localEditor = this.beU.edit();
      Iterator localIterator = this.beU.getAll().keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str.startsWith(paramString)) {
          localEditor.remove(str);
        }
      }
      localEditor.commit();
    }
    finally {}
  }
  
  /* Error */
  public final KeyPair dc(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 31	com/google/firebase/iid/b:beU	Landroid/content/SharedPreferences;
    //   6: aload_1
    //   7: ldc -36
    //   9: invokestatic 222	com/google/firebase/iid/b:J	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   12: aconst_null
    //   13: invokeinterface 198 3 0
    //   18: astore_2
    //   19: aload_0
    //   20: getfield 31	com/google/firebase/iid/b:beU	Landroid/content/SharedPreferences;
    //   23: aload_1
    //   24: ldc -14
    //   26: invokestatic 222	com/google/firebase/iid/b:J	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   29: aconst_null
    //   30: invokeinterface 198 3 0
    //   35: astore_3
    //   36: aload_2
    //   37: ifnull +7 -> 44
    //   40: aload_3
    //   41: ifnonnull +9 -> 50
    //   44: aconst_null
    //   45: astore_1
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_1
    //   49: areturn
    //   50: aload_2
    //   51: bipush 8
    //   53: invokestatic 289	android/util/Base64:decode	(Ljava/lang/String;I)[B
    //   56: astore_1
    //   57: aload_3
    //   58: bipush 8
    //   60: invokestatic 289	android/util/Base64:decode	(Ljava/lang/String;I)[B
    //   63: astore_2
    //   64: ldc_w 291
    //   67: invokestatic 297	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
    //   70: astore_3
    //   71: new 224	java/security/KeyPair
    //   74: dup
    //   75: aload_3
    //   76: new 299	java/security/spec/X509EncodedKeySpec
    //   79: dup
    //   80: aload_1
    //   81: invokespecial 302	java/security/spec/X509EncodedKeySpec:<init>	([B)V
    //   84: invokevirtual 306	java/security/KeyFactory:generatePublic	(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    //   87: aload_3
    //   88: new 308	java/security/spec/PKCS8EncodedKeySpec
    //   91: dup
    //   92: aload_2
    //   93: invokespecial 309	java/security/spec/PKCS8EncodedKeySpec:<init>	([B)V
    //   96: invokevirtual 313	java/security/KeyFactory:generatePrivate	(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    //   99: invokespecial 316	java/security/KeyPair:<init>	(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    //   102: astore_1
    //   103: goto -57 -> 46
    //   106: astore_1
    //   107: aload_1
    //   108: invokestatic 37	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   111: astore_1
    //   112: ldc 73
    //   114: new 134	java/lang/StringBuilder
    //   117: dup
    //   118: aload_1
    //   119: invokestatic 37	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   122: invokevirtual 43	java/lang/String:length	()I
    //   125: bipush 19
    //   127: iadd
    //   128: invokespecial 137	java/lang/StringBuilder:<init>	(I)V
    //   131: ldc_w 318
    //   134: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload_1
    //   138: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokestatic 321	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   147: pop
    //   148: invokestatic 90	com/google/firebase/iid/FirebaseInstanceId:us	()Lcom/google/firebase/iid/FirebaseInstanceId;
    //   151: invokevirtual 93	com/google/firebase/iid/FirebaseInstanceId:uA	()V
    //   154: aconst_null
    //   155: astore_1
    //   156: goto -110 -> 46
    //   159: astore_1
    //   160: aload_0
    //   161: monitorexit
    //   162: aload_1
    //   163: athrow
    //   164: astore_1
    //   165: goto -58 -> 107
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	this	b
    //   0	168	1	paramString	String
    //   18	75	2	localObject1	Object
    //   35	53	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   50	103	106	java/security/spec/InvalidKeySpecException
    //   2	36	159	finally
    //   50	103	159	finally
    //   107	154	159	finally
    //   50	103	164	java/security/NoSuchAlgorithmException
  }
  
  public final c h(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString1 = c.dd(this.beU.getString(g(paramString1, paramString2, paramString3), null));
      return paramString1;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public final void i(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString1 = g(paramString1, paramString2, paramString3);
      paramString2 = this.beU.edit();
      paramString2.remove(paramString1);
      paramString2.commit();
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public final String uF()
  {
    Object localObject3 = null;
    try
    {
      Object localObject4 = this.beU.getString("topic_operaion_queue", null);
      Object localObject1 = localObject3;
      if (localObject4 != null)
      {
        localObject4 = ((String)localObject4).split(",");
        localObject1 = localObject3;
        if (localObject4.length > 1)
        {
          localObject1 = localObject3;
          if (!TextUtils.isEmpty(localObject4[1])) {
            localObject1 = localObject4[1];
          }
        }
      }
      return (String)localObject1;
    }
    finally {}
  }
  
  public final void uG()
  {
    try
    {
      this.beU.edit().clear().commit();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */