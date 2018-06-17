package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.l;
import com.google.firebase.a;
import com.google.firebase.b;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.util.List;

public final class z
{
  private final Context aUM;
  private String bfG;
  private String bfH;
  private int bfI;
  private int bfJ = 0;
  
  public z(Context paramContext)
  {
    this.aUM = paramContext;
  }
  
  public static String a(KeyPair paramKeyPair)
  {
    paramKeyPair = paramKeyPair.getPublic().getEncoded();
    try
    {
      paramKeyPair = MessageDigest.getInstance("SHA1").digest(paramKeyPair);
      paramKeyPair[0] = ((byte)((paramKeyPair[0] & 0xF) + 112));
      paramKeyPair = Base64.encodeToString(paramKeyPair, 0, 8, 11);
      return paramKeyPair;
    }
    catch (NoSuchAlgorithmException paramKeyPair)
    {
      Log.w("FirebaseInstanceId", "Unexpected error, device missing required algorithms");
    }
    return null;
  }
  
  public static String b(a parama)
  {
    String str = parama.ul().beF;
    if (str != null) {
      parama = str;
    }
    do
    {
      do
      {
        return parama;
        str = parama.ul().beC;
        parama = str;
      } while (!str.startsWith("1:"));
      parama = str.split(":");
      if (parama.length < 2) {
        return null;
      }
      str = parama[1];
      parama = str;
    } while (!str.isEmpty());
    return null;
  }
  
  private final PackageInfo dg(String paramString)
  {
    try
    {
      paramString = this.aUM.getPackageManager().getPackageInfo(paramString, 0);
      return paramString;
    }
    catch (PackageManager.NameNotFoundException paramString)
    {
      paramString = String.valueOf(paramString);
      Log.w("FirebaseInstanceId", String.valueOf(paramString).length() + 23 + "Failed to find package " + paramString);
    }
    return null;
  }
  
  private final void uU()
  {
    try
    {
      PackageInfo localPackageInfo = dg(this.aUM.getPackageName());
      if (localPackageInfo != null)
      {
        this.bfG = Integer.toString(localPackageInfo.versionCode);
        this.bfH = localPackageInfo.versionName;
      }
      return;
    }
    finally {}
  }
  
  public final int uQ()
  {
    int i = 0;
    for (;;)
    {
      try
      {
        if (this.bfJ != 0)
        {
          i = this.bfJ;
          return i;
        }
        PackageManager localPackageManager = this.aUM.getPackageManager();
        if (localPackageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1)
        {
          Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
          continue;
        }
        if (l.oK()) {
          break label112;
        }
      }
      finally {}
      Object localObject2 = new Intent("com.google.android.c2dm.intent.REGISTER");
      ((Intent)localObject2).setPackage("com.google.android.gms");
      localObject2 = ((PackageManager)localObject1).queryIntentServices((Intent)localObject2, 0);
      if ((localObject2 != null) && (((List)localObject2).size() > 0))
      {
        this.bfJ = 1;
        i = this.bfJ;
      }
      else
      {
        label112:
        localObject2 = new Intent("com.google.iid.TOKEN_REQUEST");
        ((Intent)localObject2).setPackage("com.google.android.gms");
        List localList = ((PackageManager)localObject1).queryBroadcastReceivers((Intent)localObject2, 0);
        if ((localList == null) || (localList.size() <= 0)) {
          break;
        }
        this.bfJ = 2;
        i = this.bfJ;
      }
    }
    Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
    if (l.oK()) {}
    for (this.bfJ = 2;; this.bfJ = 1)
    {
      i = this.bfJ;
      break;
    }
  }
  
  public final String uR()
  {
    try
    {
      if (this.bfG == null) {
        uU();
      }
      String str = this.bfG;
      return str;
    }
    finally {}
  }
  
  public final String uS()
  {
    try
    {
      if (this.bfH == null) {
        uU();
      }
      String str = this.bfH;
      return str;
    }
    finally {}
  }
  
  public final int uT()
  {
    try
    {
      if (this.bfI == 0)
      {
        PackageInfo localPackageInfo = dg("com.google.android.gms");
        if (localPackageInfo != null) {
          this.bfI = localPackageInfo.versionCode;
        }
      }
      int i = this.bfI;
      return i;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */