package com.b.a;

import b.b;
import b.f;
import com.b.a.a.i;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class j
{
  public static final j bGk = new j(new a(), (byte)0);
  private final Map<String, Set<f>> b;
  
  private j(a parama)
  {
    this.b = i.j(parama.a);
  }
  
  private static f a(X509Certificate paramX509Certificate)
  {
    return i.a(f.L(paramX509Certificate.getPublicKey().getEncoded()));
  }
  
  public static String a(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate)) {
      throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }
    return "sha1/" + b.a(a((X509Certificate)paramCertificate).bMw);
  }
  
  public final void c(String paramString, List<Certificate> paramList)
    throws SSLPeerUnverifiedException
  {
    Object localObject3 = null;
    Object localObject2 = (Set)this.b.get(paramString);
    int i = paramString.indexOf('.');
    if (i != paramString.lastIndexOf('.')) {}
    for (Object localObject1 = (Set)this.b.get("*." + paramString.substring(i + 1));; localObject1 = null)
    {
      if ((localObject2 == null) && (localObject1 == null)) {
        localObject1 = localObject3;
      }
      while (localObject1 == null)
      {
        return;
        if ((localObject2 != null) && (localObject1 != null))
        {
          localObject3 = new LinkedHashSet();
          ((Set)localObject3).addAll((Collection)localObject2);
          ((Set)localObject3).addAll((Collection)localObject1);
          localObject1 = localObject3;
        }
        else if (localObject2 != null)
        {
          localObject1 = localObject2;
        }
      }
      int j = paramList.size();
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label198;
        }
        if (((Set)localObject1).contains(a((X509Certificate)paramList.get(i)))) {
          break;
        }
        i += 1;
      }
      label198:
      localObject2 = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
      j = paramList.size();
      i = 0;
      while (i < j)
      {
        localObject3 = (X509Certificate)paramList.get(i);
        ((StringBuilder)localObject2).append("\n    ").append(a((Certificate)localObject3)).append(": ").append(((X509Certificate)localObject3).getSubjectDN().getName());
        i += 1;
      }
      ((StringBuilder)localObject2).append("\n  Pinned certificates for ").append(paramString).append(":");
      paramString = ((Set)localObject1).iterator();
      while (paramString.hasNext())
      {
        paramList = (f)paramString.next();
        ((StringBuilder)localObject2).append("\n    sha1/").append(b.a(paramList.bMw));
      }
      throw new SSLPeerUnverifiedException(((StringBuilder)localObject2).toString());
    }
  }
  
  public static final class a
  {
    final Map<String, Set<f>> a = new LinkedHashMap();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */