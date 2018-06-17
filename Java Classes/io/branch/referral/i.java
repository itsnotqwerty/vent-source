package io.branch.referral;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

final class i
{
  private static i cwU;
  private static int cwX = 750;
  Object cwV = null;
  final Handler cwW;
  boolean cwY = true;
  boolean cwZ = false;
  Class<?> cxa;
  Class<?> cxb;
  Class<?> cxc;
  Class<?> cxd;
  Class<?> cxe;
  
  private i()
  {
    try
    {
      this.cxa = Class.forName("android.support.customtabs.CustomTabsClient");
      this.cxb = Class.forName("android.support.customtabs.CustomTabsServiceConnection");
      this.cxc = Class.forName("android.support.customtabs.CustomTabsCallback");
      this.cxd = Class.forName("android.support.customtabs.CustomTabsSession");
      this.cxe = Class.forName("android.support.customtabs.ICustomTabsService");
      this.cwW = new Handler();
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        this.cwY = false;
      }
    }
  }
  
  public static i GK()
  {
    if (cwU == null) {
      cwU = new i();
    }
    return cwU;
  }
  
  static Uri a(String paramString, o paramo, ag paramag, Context paramContext)
  {
    Object localObject = null;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = "https://" + paramString + "/_strong_match?os=" + paramo.cAF;
      localObject = paramString + "&" + n.a.cyB.key + "=" + paramo.GO();
      if (!paramo.cAx) {
        break label389;
      }
    }
    label389:
    for (paramString = n.a.cyD.key;; paramString = n.a.cyE.key)
    {
      localObject = (String)localObject + "&" + n.a.cyC.key + "=" + paramString;
      paramString = (String)localObject;
      if (paramag.cBF != null)
      {
        paramString = (String)localObject;
        if (!k.bS(paramContext)) {
          paramString = (String)localObject + "&" + n.a.cyP.key + "=" + paramag.cBF;
        }
      }
      paramag = paramString;
      if (!q.getString("bnc_device_fingerprint_id").equals("bnc_no_value")) {
        paramag = paramString + "&" + n.a.cxT.key + "=" + q.getString("bnc_device_fingerprint_id");
      }
      paramString = paramag;
      if (!paramo.cAI.equals("bnc_no_value")) {
        paramString = paramag + "&" + n.a.cyG.key + "=" + paramo.cAI;
      }
      paramo = paramString;
      if (!q.GU().equals("bnc_no_value")) {
        paramo = paramString + "&" + n.a.cyc.key + "=" + q.GU();
      }
      localObject = Uri.parse(paramo + "&sdk=android2.11.1");
      return (Uri)localObject;
    }
  }
  
  final void a(final b paramb, boolean paramBoolean)
  {
    if (paramb != null)
    {
      if (paramBoolean) {
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            paramb.GG();
          }
        }, cwX);
      }
    }
    else {
      return;
    }
    paramb.GG();
  }
  
  private abstract class a
    implements ServiceConnection
  {
    public a() {}
    
    public abstract void am(Object paramObject);
    
    public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      try
      {
        Constructor localConstructor = i.this.cxa.getDeclaredConstructor(new Class[] { i.this.cxe, ComponentName.class });
        localConstructor.setAccessible(true);
        am(localConstructor.newInstance(new Object[] { Class.forName("android.support.customtabs.ICustomTabsService$Stub").getMethod("asInterface", new Class[] { IBinder.class }).invoke(null, new Object[] { paramIBinder }), paramComponentName }));
        return;
      }
      catch (Throwable paramComponentName)
      {
        am(null);
      }
    }
  }
  
  static abstract interface b
  {
    public abstract void GG();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */