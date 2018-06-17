package com.layer.sdk.internal.lsdkg;

import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.google.firebase.iid.FirebaseInstanceId;
import com.layer.a.c.b.a;
import com.layer.sdk.internal.lsdkj.i;
import com.layer.sdk.internal.lsdkj.i.a;
import com.layer.sdk.internal.lsdkk.g;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import java.io.IOException;
import java.util.concurrent.Executor;

public class a
{
  private static final k.a a = k.a(a.class);
  private final com.layer.sdk.internal.a b;
  private final String c;
  private g d;
  
  public a(com.layer.sdk.internal.a parama, String paramString)
  {
    this.b = parama;
    this.c = paramString;
  }
  
  private void a(String paramString, Executor paramExecutor)
  {
    if (paramString != null)
    {
      if (a(paramString)) {
        return;
      }
      b(paramString, paramExecutor);
      return;
    }
    e();
  }
  
  private boolean a(String paramString)
  {
    if (this.d.a(paramString))
    {
      if (k.a(2)) {
        k.a(a, "FCM token already registered with Layer server, not attempting to re-register.");
      }
      return true;
    }
    return false;
  }
  
  private i b(final String paramString)
  {
    new i(new b.a()new i.a
    {
      public final void c(Throwable paramAnonymousThrowable)
      {
        if (k.a(6)) {
          k.e(a.wu(), "Failed to register FCM registrationId with Layer Server: " + paramAnonymousThrowable.toString());
        }
      }
      
      public final void wp()
      {
        if (k.a(2)) {
          k.a(a.wu(), "Successfully registered FCM registrationId with Layer Server");
        }
        a.a(a.this).b(paramString);
      }
    }, new i.a(this.b, this.b.B(), paramString));
  }
  
  private void b(String paramString, Executor paramExecutor)
  {
    paramString = b(paramString);
    if (paramExecutor == null)
    {
      paramString.run();
      return;
    }
    paramExecutor.execute(paramString);
  }
  
  private static String c(String paramString)
  {
    try
    {
      String str = FirebaseInstanceId.us().I(paramString, "FCM");
      if ((str == null) && (k.a(2))) {
        k.a(a, "FCM token for alternate sender ID '" + paramString + "' is null.");
      }
      if ((str != null) && (k.c())) {
        k.b("Got FCM token from library: " + str);
      }
      return str;
    }
    catch (IOException paramString)
    {
      if (k.a(6)) {
        k.d(a, "Failed to get FCM token for alternate sender ID. Instance ID service will register once it becomes available.", paramString);
      }
    }
    return null;
  }
  
  private boolean d()
  {
    if (this.b.r() == null)
    {
      if (k.a(2)) {
        k.a(a, "Skipping FCM registration since a session is not available.");
      }
      return false;
    }
    return true;
  }
  
  private void e()
  {
    if (k.a(2)) {
      k.a(a, "FCM token is null. Instance ID service will register once it becomes available.");
    }
  }
  
  private void f()
  {
    com.layer.sdk.internal.b localb = this.b.r();
    if (this.d == null) {
      this.d = new g(this.b.e(), localb.d(), this.b.D());
    }
  }
  
  private static String g()
  {
    String str = FirebaseInstanceId.us().uv();
    if ((str == null) && (k.a(2))) {
      k.a(a, "Default FCM token is null.");
    }
    if ((str != null) && (k.c())) {
      k.b("Got FCM token from library: " + str);
    }
    return str;
  }
  
  public void a()
  {
    if (!d()) {
      return;
    }
    f();
    if (this.c == null) {}
    for (String str = g();; str = c(this.c))
    {
      a(str, null);
      return;
    }
  }
  
  public void b()
  {
    try
    {
      if (TextUtils.isEmpty(this.c))
      {
        if (k.a(2)) {
          k.a(a, "Deleting all FCM tokens");
        }
        FirebaseInstanceId.us().uu();
        return;
      }
      if (k.a(2)) {
        k.a(a, "Deleting FCM token for alternate sender ID");
      }
      FirebaseInstanceId localFirebaseInstanceId = FirebaseInstanceId.us();
      str = this.c;
      if (Looper.getMainLooper() == Looper.myLooper()) {
        throw new IOException("MAIN_THREAD");
      }
    }
    catch (IOException localIOException)
    {
      String str;
      if (k.a(6))
      {
        k.d(a, "Error when deleting FCM token", localIOException);
        return;
        Bundle localBundle = new Bundle();
        localBundle.putString("delete", "1");
        localIOException.b(str, "FCM", localBundle);
        FirebaseInstanceId.beJ.i("", str, "FCM");
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkg/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */