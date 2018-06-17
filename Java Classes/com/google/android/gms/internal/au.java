package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.ads.c.a.a;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

public final class au
  extends bb
{
  private static boolean aMd;
  private a.a aMe;
  private final dh aMf;
  private String aMg;
  private boolean aMh = false;
  private final Object aMi = new Object();
  
  au(bd parambd)
  {
    super(parambd);
    this.aMf = new dh(parambd.aBm);
  }
  
  private final boolean a(a.a parama1, a.a parama2)
  {
    String str2 = null;
    if (parama2 == null) {}
    for (parama2 = null; TextUtils.isEmpty(parama2); parama2 = parama2.azP) {
      return true;
    }
    String str1 = this.aMq.pm().pG();
    boolean bool;
    for (;;)
    {
      synchronized (this.aMi)
      {
        if (!this.aMh)
        {
          this.aMg = oY();
          this.aMh = true;
          parama1 = String.valueOf(parama2);
          str2 = String.valueOf(str1);
          if (str2.length() == 0) {
            break label243;
          }
          parama1 = parama1.concat(str2);
          parama1 = bu(parama1);
          if (!TextUtils.isEmpty(parama1)) {
            break;
          }
          return false;
        }
      }
      if (TextUtils.isEmpty(this.aMg))
      {
        if (parama1 == null)
        {
          parama1 = str2;
          if (parama1 != null) {
            break label193;
          }
          parama1 = String.valueOf(parama2);
          parama2 = String.valueOf(str1);
          if (parama2.length() == 0) {
            break label181;
          }
        }
        label181:
        for (parama1 = parama1.concat(parama2);; parama1 = new String(parama1))
        {
          bool = bv(parama1);
          return bool;
          parama1 = parama1.azP;
          break;
        }
        label193:
        parama1 = String.valueOf(parama1);
        str2 = String.valueOf(str1);
        if (str2.length() != 0) {}
        for (parama1 = parama1.concat(str2);; parama1 = new String(parama1))
        {
          this.aMg = bu(parama1);
          break;
        }
        label243:
        parama1 = new String(parama1);
      }
    }
    if (parama1.equals(this.aMg)) {
      return true;
    }
    if (!TextUtils.isEmpty(this.aMg))
    {
      bw("Resetting the client id because Advertising Id changed.");
      parama1 = this.aMq.pm().pH();
      d("New client Id", parama1);
    }
    for (;;)
    {
      parama2 = String.valueOf(parama2);
      parama1 = String.valueOf(parama1);
      if (parama1.length() != 0) {}
      for (parama1 = parama2.concat(parama1);; parama1 = new String(parama2))
      {
        bool = bv(parama1);
        return bool;
      }
      parama1 = str1;
    }
  }
  
  private static String bu(String paramString)
  {
    MessageDigest localMessageDigest = di.bi("MD5");
    if (localMessageDigest == null) {
      return null;
    }
    return String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, localMessageDigest.digest(paramString.getBytes())) });
  }
  
  private final boolean bv(String paramString)
  {
    try
    {
      paramString = bu(paramString);
      bw("Storing hashed adid.");
      FileOutputStream localFileOutputStream = this.aMq.mContext.openFileOutput("gaClientIdData", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      this.aMg = paramString;
      return true;
    }
    catch (IOException paramString)
    {
      h("Error creating hash file", paramString);
    }
    return false;
  }
  
  /* Error */
  private final a.a oW()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 41	com/google/android/gms/internal/au:aMf	Lcom/google/android/gms/internal/dh;
    //   6: ldc2_w 186
    //   9: invokevirtual 191	com/google/android/gms/internal/dh:o	(J)Z
    //   12: ifeq +32 -> 44
    //   15: aload_0
    //   16: getfield 41	com/google/android/gms/internal/au:aMf	Lcom/google/android/gms/internal/dh;
    //   19: invokevirtual 194	com/google/android/gms/internal/dh:start	()V
    //   22: aload_0
    //   23: invokespecial 197	com/google/android/gms/internal/au:oX	()Lcom/google/android/gms/ads/c/a$a;
    //   26: astore_1
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 199	com/google/android/gms/internal/au:aMe	Lcom/google/android/gms/ads/c/a$a;
    //   32: aload_1
    //   33: invokespecial 201	com/google/android/gms/internal/au:a	(Lcom/google/android/gms/ads/c/a$a;Lcom/google/android/gms/ads/c/a$a;)Z
    //   36: ifeq +17 -> 53
    //   39: aload_0
    //   40: aload_1
    //   41: putfield 199	com/google/android/gms/internal/au:aMe	Lcom/google/android/gms/ads/c/a$a;
    //   44: aload_0
    //   45: getfield 199	com/google/android/gms/internal/au:aMe	Lcom/google/android/gms/ads/c/a$a;
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: areturn
    //   53: aload_0
    //   54: ldc -53
    //   56: invokevirtual 206	com/google/android/gms/internal/ba:bA	(Ljava/lang/String;)V
    //   59: aload_0
    //   60: new 52	com/google/android/gms/ads/c/a$a
    //   63: dup
    //   64: ldc -48
    //   66: iconst_0
    //   67: invokespecial 211	com/google/android/gms/ads/c/a$a:<init>	(Ljava/lang/String;Z)V
    //   70: putfield 199	com/google/android/gms/internal/au:aMe	Lcom/google/android/gms/ads/c/a$a;
    //   73: goto -29 -> 44
    //   76: astore_1
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_1
    //   80: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	au
    //   26	26	1	locala	a.a
    //   76	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	44	76	finally
    //   44	49	76	finally
    //   53	73	76	finally
  }
  
  private final a.a oX()
  {
    Object localObject = null;
    try
    {
      a.a locala = a.r(this.aMq.mContext);
      localObject = locala;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      bz("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
      return null;
    }
    catch (Throwable localThrowable)
    {
      while (aMd) {}
      aMd = true;
      g("Error getting advertiser id", localThrowable);
    }
    return (a.a)localObject;
    return null;
  }
  
  private final String oY()
  {
    Object localObject1 = null;
    try
    {
      FileInputStream localFileInputStream = this.aMq.mContext.openFileInput("gaClientIdData");
      Object localObject2 = new byte[''];
      int i = localFileInputStream.read((byte[])localObject2, 0, 128);
      if (localFileInputStream.available() > 0)
      {
        bz("Hash file seems corrupted, deleting it.");
        localFileInputStream.close();
        this.aMq.mContext.deleteFile("gaClientIdData");
        return null;
      }
      if (i <= 0)
      {
        bw("Hash file is empty.");
        localFileInputStream.close();
        return null;
      }
      localObject2 = new String((byte[])localObject2, 0, i);
      IOException localIOException2;
      return null;
    }
    catch (IOException localIOException1)
    {
      try
      {
        localFileInputStream.close();
        return (String)localObject2;
      }
      catch (IOException localIOException3)
      {
        for (;;)
        {
          localObject1 = localIOException1;
          localIOException2 = localIOException3;
        }
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        return localIOException2;
      }
      localIOException1 = localIOException1;
      g("Error reading Hash file, deleting it", localIOException1);
      this.aMq.mContext.deleteFile("gaClientIdData");
      return (String)localObject1;
    }
    catch (FileNotFoundException localFileNotFoundException2) {}
  }
  
  protected final void mG() {}
  
  public final boolean oU()
  {
    boolean bool2 = false;
    pf();
    a.a locala = oW();
    boolean bool1 = bool2;
    if (locala != null)
    {
      bool1 = bool2;
      if (!locala.azQ) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public final String oV()
  {
    pf();
    Object localObject = oW();
    if (localObject != null) {}
    for (localObject = ((a.a)localObject).azP;; localObject = null)
    {
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        return null;
      }
      return (String)localObject;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */