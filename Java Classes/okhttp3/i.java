package okhttp3;

import java.util.Arrays;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.internal.c;

public final class i
{
  private static final g[] cYI = { g.cYu, g.cYy, g.cYv, g.cYz, g.cYF, g.cYE, g.cYf, g.cYg, g.cXD, g.cXE, g.cXb, g.cXf, g.cWF };
  public static final i cYJ;
  public static final i cYK = new a(cYJ).a(new ab[] { ab.cZD }).Mb().Mc();
  public static final i cYL = new a(false).Mc();
  @Nullable
  final String[] cipherSuites;
  public final boolean supportsTlsExtensions;
  final boolean tls;
  @Nullable
  final String[] tlsVersions;
  
  static
  {
    a locala = new a(true);
    g[] arrayOfg = cYI;
    if (!locala.tls) {
      throw new IllegalStateException("no cipher suites for cleartext connections");
    }
    String[] arrayOfString = new String[arrayOfg.length];
    int i = 0;
    while (i < arrayOfg.length)
    {
      arrayOfString[i] = arrayOfg[i].javaName;
      i += 1;
    }
    cYJ = locala.g(arrayOfString).a(new ab[] { ab.cZA, ab.cZB, ab.cZC, ab.cZD }).Mb().Mc();
  }
  
  i(a parama)
  {
    this.tls = parama.tls;
    this.cipherSuites = parama.cipherSuites;
    this.tlsVersions = parama.tlsVersions;
    this.supportsTlsExtensions = parama.supportsTlsExtensions;
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if (!(paramObject instanceof i)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (i)paramObject;
    } while ((this.tls != ((i)paramObject).tls) || ((this.tls) && ((!Arrays.equals(this.cipherSuites, ((i)paramObject).cipherSuites)) || (!Arrays.equals(this.tlsVersions, ((i)paramObject).tlsVersions)) || (this.supportsTlsExtensions != ((i)paramObject).supportsTlsExtensions))));
    return true;
  }
  
  public final int hashCode()
  {
    int i = 17;
    int j;
    int k;
    if (this.tls)
    {
      j = Arrays.hashCode(this.cipherSuites);
      k = Arrays.hashCode(this.tlsVersions);
      if (!this.supportsTlsExtensions) {
        break label53;
      }
    }
    label53:
    for (i = 0;; i = 1)
    {
      i += ((j + 527) * 31 + k) * 31;
      return i;
    }
  }
  
  public final boolean isCompatible(SSLSocket paramSSLSocket)
  {
    if (!this.tls) {}
    while (((this.tlsVersions != null) && (!c.nonEmptyIntersection(c.NATURAL_ORDER, this.tlsVersions, paramSSLSocket.getEnabledProtocols()))) || ((this.cipherSuites != null) && (!c.nonEmptyIntersection(g.ORDER_BY_NAME, this.cipherSuites, paramSSLSocket.getEnabledCipherSuites())))) {
      return false;
    }
    return true;
  }
  
  public final String toString()
  {
    Object localObject2 = null;
    if (!this.tls) {
      return "ConnectionSpec()";
    }
    Object localObject1;
    if (this.cipherSuites != null) {
      if (this.cipherSuites != null)
      {
        localObject1 = g.forJavaNames(this.cipherSuites);
        localObject1 = localObject1.toString();
        label39:
        if (this.tlsVersions == null) {
          break label120;
        }
        if (this.tlsVersions != null) {
          localObject2 = ab.forJavaNames(this.tlsVersions);
        }
      }
    }
    label120:
    for (localObject2 = localObject2.toString();; localObject2 = "[all enabled]")
    {
      return "ConnectionSpec(cipherSuites=" + (String)localObject1 + ", tlsVersions=" + (String)localObject2 + ", supportsTlsExtensions=" + this.supportsTlsExtensions + ")";
      localObject1 = null;
      break;
      localObject1 = "[all enabled]";
      break label39;
    }
  }
  
  public static final class a
  {
    @Nullable
    String[] cipherSuites;
    boolean supportsTlsExtensions;
    boolean tls;
    @Nullable
    String[] tlsVersions;
    
    public a(i parami)
    {
      this.tls = parami.tls;
      this.cipherSuites = parami.cipherSuites;
      this.tlsVersions = parami.tlsVersions;
      this.supportsTlsExtensions = parami.supportsTlsExtensions;
    }
    
    a(boolean paramBoolean)
    {
      this.tls = paramBoolean;
    }
    
    public final a Mb()
    {
      if (!this.tls) {
        throw new IllegalStateException("no TLS extensions for cleartext connections");
      }
      this.supportsTlsExtensions = true;
      return this;
    }
    
    public final i Mc()
    {
      return new i(this);
    }
    
    public final a a(ab... paramVarArgs)
    {
      if (!this.tls) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      String[] arrayOfString = new String[paramVarArgs.length];
      int i = 0;
      while (i < paramVarArgs.length)
      {
        arrayOfString[i] = paramVarArgs[i].javaName;
        i += 1;
      }
      return h(arrayOfString);
    }
    
    public final a g(String... paramVarArgs)
    {
      if (!this.tls) {
        throw new IllegalStateException("no cipher suites for cleartext connections");
      }
      if (paramVarArgs.length == 0) {
        throw new IllegalArgumentException("At least one cipher suite is required");
      }
      this.cipherSuites = ((String[])paramVarArgs.clone());
      return this;
    }
    
    public final a h(String... paramVarArgs)
    {
      if (!this.tls) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      if (paramVarArgs.length == 0) {
        throw new IllegalArgumentException("At least one TLS version is required");
      }
      this.tlsVersions = ((String[])paramVarArgs.clone());
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */