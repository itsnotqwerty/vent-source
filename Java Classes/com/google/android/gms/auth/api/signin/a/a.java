package com.google.android.gms.auth.api.signin.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.ae;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

public final class a
{
  private static final Lock aCd = new ReentrantLock();
  private static a aCe;
  private final Lock aCf = new ReentrantLock();
  private final SharedPreferences aCg;
  
  private a(Context paramContext)
  {
    this.aCg = paramContext.getSharedPreferences("com.google.android.gms.signin", 0);
  }
  
  public static a v(Context paramContext)
  {
    ae.E(paramContext);
    aCd.lock();
    try
    {
      if (aCe == null) {
        aCe = new a(paramContext.getApplicationContext());
      }
      paramContext = aCe;
      return paramContext;
    }
    finally
    {
      aCd.unlock();
    }
  }
  
  public final GoogleSignInAccount bb(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      paramString = bc(String.valueOf("googleSignInAccount").length() + 1 + String.valueOf(paramString).length() + "googleSignInAccount" + ":" + paramString);
    } while (paramString == null);
    try
    {
      paramString = GoogleSignInAccount.ba(paramString);
      return paramString;
    }
    catch (JSONException paramString) {}
    return null;
  }
  
  public final String bc(String paramString)
  {
    this.aCf.lock();
    try
    {
      paramString = this.aCg.getString(paramString, null);
      return paramString;
    }
    finally
    {
      this.aCf.unlock();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/auth/api/signin/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */