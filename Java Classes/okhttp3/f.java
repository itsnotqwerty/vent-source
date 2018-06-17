package okhttp3;

import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class f
{
  public static final f cWv = new f(new LinkedHashSet(new a().pins), null);
  @Nullable
  final okhttp3.internal.h.c cWw;
  final Set<b> pins;
  
  f(Set<b> paramSet, @Nullable okhttp3.internal.h.c paramc)
  {
    this.pins = paramSet;
    this.cWw = paramc;
  }
  
  private static d.f c(X509Certificate paramX509Certificate)
  {
    return d.f.R(paramX509Certificate.getPublicKey().getEncoded()).Nn();
  }
  
  public static String pin(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate)) {
      throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }
    return "sha256/" + c((X509Certificate)paramCertificate).KF();
  }
  
  public final void check(String paramString, List<Certificate> paramList)
    throws SSLPeerUnverifiedException
  {
    int k = 0;
    Object localObject1 = Collections.emptyList();
    Object localObject2 = this.pins.iterator();
    Object localObject3;
    int i;
    boolean bool;
    if (((Iterator)localObject2).hasNext())
    {
      localObject3 = (b)((Iterator)localObject2).next();
      if (((b)localObject3).pattern.startsWith("*."))
      {
        i = paramString.indexOf('.');
        if ((paramString.length() - i - 1 == ((b)localObject3).canonicalHostname.length()) && (paramString.regionMatches(false, i + 1, ((b)localObject3).canonicalHostname, 0, ((b)localObject3).canonicalHostname.length())))
        {
          bool = true;
          label108:
          if (!bool) {
            break label569;
          }
          if (!((List)localObject1).isEmpty()) {
            break label566;
          }
          localObject1 = new ArrayList();
          label132:
          ((List)localObject1).add(localObject3);
        }
      }
    }
    label375:
    label410:
    label566:
    label569:
    for (;;)
    {
      break;
      bool = false;
      break label108;
      bool = paramString.equals(((b)localObject3).canonicalHostname);
      break label108;
      if (((List)localObject1).isEmpty()) {
        return;
      }
      Object localObject4 = paramList;
      if (this.cWw != null) {
        localObject4 = this.cWw.clean(paramList, paramString);
      }
      int m = ((List)localObject4).size();
      i = 0;
      for (;;)
      {
        if (i >= m) {
          break label410;
        }
        X509Certificate localX509Certificate = (X509Certificate)((List)localObject4).get(i);
        int n = ((List)localObject1).size();
        j = 0;
        paramList = null;
        localObject2 = null;
        if (j < n)
        {
          b localb = (b)((List)localObject1).get(j);
          if (localb.hashAlgorithm.equals("sha256/"))
          {
            localObject3 = paramList;
            if (paramList == null) {
              localObject3 = c(localX509Certificate);
            }
            if (localb.cWx.equals(localObject3)) {
              break;
            }
            paramList = (List<Certificate>)localObject3;
          }
          do
          {
            j += 1;
            break;
            if (!localb.hashAlgorithm.equals("sha1/")) {
              break label375;
            }
            localObject3 = localObject2;
            if (localObject2 == null) {
              localObject3 = d.f.R(localX509Certificate.getPublicKey().getEncoded()).Nm();
            }
            localObject2 = localObject3;
          } while (!localb.cWx.equals(localObject3));
          return;
          throw new AssertionError("unsupported hashAlgorithm: " + localb.hashAlgorithm);
        }
        i += 1;
      }
      paramList = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
      int j = ((List)localObject4).size();
      i = 0;
      while (i < j)
      {
        localObject2 = (X509Certificate)((List)localObject4).get(i);
        paramList.append("\n    ").append(pin((Certificate)localObject2)).append(": ").append(((X509Certificate)localObject2).getSubjectDN().getName());
        i += 1;
      }
      paramList.append("\n  Pinned certificates for ").append(paramString).append(":");
      j = ((List)localObject1).size();
      i = k;
      while (i < j)
      {
        paramString = (b)((List)localObject1).get(i);
        paramList.append("\n    ").append(paramString);
        i += 1;
      }
      throw new SSLPeerUnverifiedException(paramList.toString());
      break label132;
    }
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    return ((paramObject instanceof f)) && (okhttp3.internal.c.equal(this.cWw, ((f)paramObject).cWw)) && (this.pins.equals(((f)paramObject).pins));
  }
  
  public final int hashCode()
  {
    if (this.cWw != null) {}
    for (int i = this.cWw.hashCode();; i = 0) {
      return i * 31 + this.pins.hashCode();
    }
  }
  
  public static final class a
  {
    final List<f.b> pins = new ArrayList();
  }
  
  static final class b
  {
    final d.f cWx;
    final String canonicalHostname;
    final String hashAlgorithm;
    final String pattern;
    
    public final boolean equals(Object paramObject)
    {
      return ((paramObject instanceof b)) && (this.pattern.equals(((b)paramObject).pattern)) && (this.hashAlgorithm.equals(((b)paramObject).hashAlgorithm)) && (this.cWx.equals(((b)paramObject).cWx));
    }
    
    public final int hashCode()
    {
      return ((this.pattern.hashCode() + 527) * 31 + this.hashAlgorithm.hashCode()) * 31 + this.cWx.hashCode();
    }
    
    public final String toString()
    {
      return this.hashAlgorithm + this.cWx.KF();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */