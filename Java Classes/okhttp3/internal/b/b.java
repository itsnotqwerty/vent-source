package okhttp3.internal.b;

import java.util.List;
import javax.net.ssl.SSLSocket;
import okhttp3.i;

public final class b
{
  final List<i> connectionSpecs;
  boolean isFallback;
  boolean isFallbackPossible;
  int nextModeIndex = 0;
  
  public b(List<i> paramList)
  {
    this.connectionSpecs = paramList;
  }
  
  final boolean isFallbackPossible(SSLSocket paramSSLSocket)
  {
    int i = this.nextModeIndex;
    while (i < this.connectionSpecs.size())
    {
      if (((i)this.connectionSpecs.get(i)).isCompatible(paramSSLSocket)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */