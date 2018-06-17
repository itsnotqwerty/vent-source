package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.Keep;
import android.util.Log;
import java.io.IOException;
import java.security.KeyPair;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class FirebaseInstanceId
{
  private static final long beI = TimeUnit.HOURS.toSeconds(8L);
  public static b beJ;
  private static ScheduledThreadPoolExecutor beK;
  private static Map<String, FirebaseInstanceId> bes = new android.support.v4.g.a();
  final com.google.firebase.a beL;
  final z beM;
  private final aa beN;
  private KeyPair beO;
  private boolean beP = false;
  private boolean beQ;
  
  private FirebaseInstanceId(com.google.firebase.a parama, z paramz)
  {
    if (z.b(parama) == null) {
      throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }
    this.beL = parama;
    this.beM = paramz;
    this.beN = new aa(parama.getApplicationContext(), paramz);
    this.beQ = uB();
    if (uD()) {
      ut();
    }
  }
  
  static void a(Runnable paramRunnable, long paramLong)
  {
    try
    {
      if (beK == null) {
        beK = new ScheduledThreadPoolExecutor(1);
      }
      beK.schedule(paramRunnable, paramLong, TimeUnit.SECONDS);
      return;
    }
    finally {}
  }
  
  @Keep
  public static FirebaseInstanceId getInstance(com.google.firebase.a parama)
  {
    try
    {
      FirebaseInstanceId localFirebaseInstanceId2 = (FirebaseInstanceId)bes.get(parama.ul().beC);
      FirebaseInstanceId localFirebaseInstanceId1 = localFirebaseInstanceId2;
      if (localFirebaseInstanceId2 == null)
      {
        if (beJ == null) {
          beJ = new b(parama.getApplicationContext());
        }
        localFirebaseInstanceId1 = new FirebaseInstanceId(parama, new z(parama.getApplicationContext()));
        bes.put(parama.ul().beC, localFirebaseInstanceId1);
      }
      return localFirebaseInstanceId1;
    }
    finally {}
  }
  
  private final boolean uB()
  {
    Object localObject1 = this.beL.getApplicationContext();
    Object localObject2 = ((Context)localObject1).getSharedPreferences("com.google.firebase.messaging", 0);
    if (((SharedPreferences)localObject2).contains("auto_init")) {
      return ((SharedPreferences)localObject2).getBoolean("auto_init", true);
    }
    try
    {
      localObject2 = ((Context)localObject1).getPackageManager();
      if (localObject2 != null)
      {
        localObject1 = ((PackageManager)localObject2).getApplicationInfo(((Context)localObject1).getPackageName(), 128);
        if ((localObject1 != null) && (((ApplicationInfo)localObject1).metaData != null) && (((ApplicationInfo)localObject1).metaData.containsKey("firebase_messaging_auto_init_enabled")))
        {
          boolean bool = ((ApplicationInfo)localObject1).metaData.getBoolean("firebase_messaging_auto_init_enabled");
          return bool;
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return uC();
  }
  
  private final boolean uC()
  {
    try
    {
      Class.forName("com.google.firebase.messaging.a");
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      Object localObject;
      do
      {
        localObject = this.beL.getApplicationContext();
        Intent localIntent = new Intent("com.google.firebase.MESSAGING_EVENT");
        localIntent.setPackage(((Context)localObject).getPackageName());
        localObject = ((Context)localObject).getPackageManager().resolveService(localIntent, 0);
        if (localObject == null) {
          break;
        }
      } while (((ResolveInfo)localObject).serviceInfo != null);
    }
    return false;
  }
  
  private boolean uD()
  {
    try
    {
      boolean bool = this.beQ;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static FirebaseInstanceId us()
  {
    return getInstance(com.google.firebase.a.um());
  }
  
  private final void ut()
  {
    c localc = uw();
    if ((localc == null) || (localc.de(this.beM.uR())) || (beJ.uF() != null)) {
      startSync();
    }
  }
  
  static b ux()
  {
    return beJ;
  }
  
  static boolean uy()
  {
    return (Log.isLoggable("FirebaseInstanceId", 3)) || ((Build.VERSION.SDK_INT == 23) && (Log.isLoggable("FirebaseInstanceId", 3)));
  }
  
  private final KeyPair uz()
  {
    try
    {
      if (this.beO == null) {
        this.beO = beJ.dc("");
      }
      if (this.beO == null) {
        this.beO = beJ.da("");
      }
      KeyPair localKeyPair = this.beO;
      return localKeyPair;
    }
    finally {}
  }
  
  final void H(long paramLong)
  {
    try
    {
      long l = Math.min(Math.max(30L, paramLong << 1), beI);
      a(new d(this, this.beM, l), paramLong);
      this.beP = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String I(String paramString1, String paramString2)
    throws IOException
  {
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new IOException("MAIN_THREAD");
    }
    Object localObject = beJ.h("", paramString1, paramString2);
    if ((localObject != null) && (!((c)localObject).de(this.beM.uR()))) {
      localObject = ((c)localObject).beW;
    }
    String str;
    do
    {
      return (String)localObject;
      str = b(paramString1, paramString2, new Bundle());
      localObject = str;
    } while (str == null);
    beJ.a("", paramString1, paramString2, str, this.beM.uR());
    return str;
  }
  
  final void aE(boolean paramBoolean)
  {
    try
    {
      this.beP = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String b(String paramString1, String paramString2, Bundle paramBundle)
    throws IOException
  {
    paramBundle.putString("scope", paramString2);
    paramBundle.putString("sender", paramString1);
    paramBundle.putString("subtype", paramString1);
    paramBundle.putString("appid", getId());
    paramBundle.putString("gmp_app_id", this.beL.ul().beC);
    paramBundle.putString("gmsv", Integer.toString(this.beM.uT()));
    paramBundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
    paramBundle.putString("app_ver", this.beM.uR());
    paramBundle.putString("app_ver_name", this.beM.uS());
    paramBundle.putString("cliv", "fiid-12211000");
    paramBundle = this.beN.m(paramBundle);
    if (paramBundle == null) {
      throw new IOException("SERVICE_NOT_AVAILABLE");
    }
    paramString1 = paramBundle.getString("registration_id");
    if (paramString1 != null) {}
    do
    {
      return paramString1;
      paramString2 = paramBundle.getString("unregistered");
      paramString1 = paramString2;
    } while (paramString2 != null);
    paramString1 = paramBundle.getString("error");
    if ("RST".equals(paramString1))
    {
      uA();
      throw new IOException("INSTANCE_ID_RESET");
    }
    if (paramString1 != null) {
      throw new IOException(paramString1);
    }
    paramString1 = String.valueOf(paramBundle);
    Log.w("FirebaseInstanceId", String.valueOf(paramString1).length() + 21 + "Unexpected response: " + paramString1, new Throwable());
    throw new IOException("SERVICE_NOT_AVAILABLE");
  }
  
  public final String getId()
  {
    ut();
    return z.a(uz());
  }
  
  final void startSync()
  {
    try
    {
      if (!this.beP) {
        H(0L);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void uA()
  {
    try
    {
      beJ.uG();
      this.beO = null;
      if (uD()) {
        startSync();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void uu()
    throws IOException
  {
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new IOException("MAIN_THREAD");
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("iid-operation", "delete");
    localBundle.putString("delete", "1");
    b("*", "*", localBundle);
    uA();
  }
  
  public final String uv()
  {
    c localc = uw();
    if ((localc == null) || (localc.de(this.beM.uR()))) {
      startSync();
    }
    if (localc != null) {
      return localc.beW;
    }
    return null;
  }
  
  final c uw()
  {
    return beJ.h("", z.b(this.beL), "*");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/FirebaseInstanceId.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */