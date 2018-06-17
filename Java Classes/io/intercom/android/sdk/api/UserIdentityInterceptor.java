package io.intercom.android.sdk.api;

import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.okhttp3.Interceptor;
import io.intercom.okhttp3.Interceptor.Chain;
import io.intercom.okhttp3.Response;
import io.intercom.okhttp3.ResponseBody;
import java.io.IOException;

class UserIdentityInterceptor
  implements Interceptor
{
  private static final String NO_USER_IDENTITY = "A network request was made with no user registered on this device.Please call registerUnidentifiedUser() or registerIdentifiedUser(Registration).";
  private static final String USER_IDENTITY_CHANGED = "registered user changed while this request was in flight";
  private final Twig twig = LumberMill.getLogger();
  private final UserIdentity userIdentity;
  
  public UserIdentityInterceptor(UserIdentity paramUserIdentity)
  {
    this.userIdentity = paramUserIdentity;
  }
  
  public Response intercept(Interceptor.Chain paramChain)
    throws IOException
  {
    if (this.userIdentity.identityExists())
    {
      String str = this.userIdentity.getFingerprint();
      paramChain = paramChain.proceed(paramChain.request());
      if (str.equals(this.userIdentity.getFingerprint()))
      {
        this.twig.internal("interceptor", "proceeding");
        return paramChain;
      }
      this.twig.internal("interceptor", "halting: user identity changed");
      if (paramChain != null) {
        paramChain.body().close();
      }
      throw new IOException("registered user changed while this request was in flight");
    }
    throw new IOException("A network request was made with no user registered on this device.Please call registerUnidentifiedUser() or registerIdentifiedUser(Registration).");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/UserIdentityInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */