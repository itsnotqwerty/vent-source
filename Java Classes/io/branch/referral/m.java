package io.branch.referral;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

final class m
{
  public static Boolean a(Context paramContext, final a parama)
  {
    for (boolean bool1 = false;; bool1 = true)
    {
      try
      {
        Class.forName("com.facebook.FacebookSdk").getMethod("sdkInitialize", new Class[] { Context.class }).invoke(null, new Object[] { paramContext });
        Class localClass = Class.forName("com.facebook.applinks.AppLinkData");
        localObject = Class.forName("com.facebook.applinks.AppLinkData$CompletionHandler");
        localMethod = localClass.getMethod("fetchDeferredAppLinkData", new Class[] { Context.class, String.class, localObject });
        parama = new InvocationHandler()
        {
          public final Object invoke(Object paramAnonymousObject, Method paramAnonymousMethod, Object[] paramAnonymousArrayOfObject)
            throws Throwable
          {
            if ((paramAnonymousMethod.getName().equals("onDeferredAppLinkDataFetched")) && (paramAnonymousArrayOfObject[0] != null))
            {
              paramAnonymousObject = this.cxP.cast(paramAnonymousArrayOfObject[0]);
              paramAnonymousObject = (Bundle)Bundle.class.cast(this.cxP.getMethod("getArgumentBundle", new Class[0]).invoke(paramAnonymousObject, new Object[0]));
              if (paramAnonymousObject == null) {
                break label108;
              }
            }
            label108:
            for (paramAnonymousObject = ((Bundle)paramAnonymousObject).getString("com.facebook.platform.APPLINK_NATIVE_URL");; paramAnonymousObject = null)
            {
              if (parama != null) {
                parama.eD((String)paramAnonymousObject);
              }
              do
              {
                return null;
              } while (parama == null);
              parama.eD(null);
              return null;
            }
          }
        };
        parama = Proxy.newProxyInstance(((Class)localObject).getClassLoader(), new Class[] { localObject }, parama);
        localObject = paramContext.getString(paramContext.getResources().getIdentifier("facebook_app_id", "string", paramContext.getPackageName()));
        boolean bool2 = TextUtils.isEmpty((CharSequence)localObject);
        if (!bool2) {
          break label142;
        }
      }
      catch (Throwable paramContext)
      {
        Object localObject;
        Method localMethod;
        label142:
        for (;;) {}
      }
      return Boolean.valueOf(bool1);
      localMethod.invoke(null, new Object[] { paramContext, localObject, parama });
    }
  }
  
  public static abstract interface a
  {
    public abstract void eD(String paramString);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */