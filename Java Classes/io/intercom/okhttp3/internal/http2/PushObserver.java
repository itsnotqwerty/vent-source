package io.intercom.okhttp3.internal.http2;

import io.intercom.b.e;
import java.io.IOException;
import java.util.List;

public abstract interface PushObserver
{
  public static final PushObserver CANCEL = new PushObserver()
  {
    public final boolean onData(int paramAnonymousInt1, e paramAnonymouse, int paramAnonymousInt2, boolean paramAnonymousBoolean)
      throws IOException
    {
      paramAnonymouse.ah(paramAnonymousInt2);
      return true;
    }
    
    public final boolean onHeaders(int paramAnonymousInt, List<Header> paramAnonymousList, boolean paramAnonymousBoolean)
    {
      return true;
    }
    
    public final boolean onRequest(int paramAnonymousInt, List<Header> paramAnonymousList)
    {
      return true;
    }
    
    public final void onReset(int paramAnonymousInt, ErrorCode paramAnonymousErrorCode) {}
  };
  
  public abstract boolean onData(int paramInt1, e parame, int paramInt2, boolean paramBoolean)
    throws IOException;
  
  public abstract boolean onHeaders(int paramInt, List<Header> paramList, boolean paramBoolean);
  
  public abstract boolean onRequest(int paramInt, List<Header> paramList);
  
  public abstract void onReset(int paramInt, ErrorCode paramErrorCode);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/http2/PushObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */