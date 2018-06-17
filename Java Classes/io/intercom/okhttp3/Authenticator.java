package io.intercom.okhttp3;

import java.io.IOException;
import javax.annotation.Nullable;

public abstract interface Authenticator
{
  public static final Authenticator NONE = new Authenticator()
  {
    public final Request authenticate(Route paramAnonymousRoute, Response paramAnonymousResponse)
    {
      return null;
    }
  };
  
  @Nullable
  public abstract Request authenticate(Route paramRoute, Response paramResponse)
    throws IOException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/Authenticator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */