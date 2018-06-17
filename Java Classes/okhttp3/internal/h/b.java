package okhttp3.internal.h;

import java.security.PublicKey;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

public final class b
  implements e
{
  private final Map<X500Principal, Set<X509Certificate>> subjectToCaCerts = new LinkedHashMap();
  
  public b(X509Certificate... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      X509Certificate localX509Certificate = paramVarArgs[i];
      X500Principal localX500Principal = localX509Certificate.getSubjectX500Principal();
      Set localSet = (Set)this.subjectToCaCerts.get(localX500Principal);
      Object localObject = localSet;
      if (localSet == null)
      {
        localObject = new LinkedHashSet(1);
        this.subjectToCaCerts.put(localX500Principal, localObject);
      }
      ((Set)localObject).add(localX509Certificate);
      i += 1;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    while (((paramObject instanceof b)) && (((b)paramObject).subjectToCaCerts.equals(this.subjectToCaCerts))) {
      return true;
    }
    return false;
  }
  
  public final X509Certificate findByIssuerAndSignature(X509Certificate paramX509Certificate)
  {
    Object localObject = paramX509Certificate.getIssuerX500Principal();
    localObject = (Set)this.subjectToCaCerts.get(localObject);
    if (localObject == null) {
      return null;
    }
    localObject = ((Set)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      X509Certificate localX509Certificate = (X509Certificate)((Iterator)localObject).next();
      PublicKey localPublicKey = localX509Certificate.getPublicKey();
      try
      {
        paramX509Certificate.verify(localPublicKey);
        return localX509Certificate;
      }
      catch (Exception localException) {}
    }
    return null;
  }
  
  public final int hashCode()
  {
    return this.subjectToCaCerts.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/h/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */