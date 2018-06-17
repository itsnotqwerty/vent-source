package okhttp3.internal.h;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.c;

public final class d
  implements HostnameVerifier
{
  public static final d dbT = new d();
  
  public static List<String> allSubjectAltNames(X509Certificate paramX509Certificate)
  {
    List localList = getSubjectAltNames(paramX509Certificate, 7);
    paramX509Certificate = getSubjectAltNames(paramX509Certificate, 2);
    ArrayList localArrayList = new ArrayList(localList.size() + paramX509Certificate.size());
    localArrayList.addAll(localList);
    localArrayList.addAll(paramX509Certificate);
    return localArrayList;
  }
  
  private static List<String> getSubjectAltNames(X509Certificate paramX509Certificate, int paramInt)
  {
    localArrayList = new ArrayList();
    try
    {
      paramX509Certificate = paramX509Certificate.getSubjectAlternativeNames();
      if (paramX509Certificate == null) {
        return Collections.emptyList();
      }
      paramX509Certificate = paramX509Certificate.iterator();
      while (paramX509Certificate.hasNext())
      {
        Object localObject = (List)paramX509Certificate.next();
        if ((localObject != null) && (((List)localObject).size() >= 2))
        {
          Integer localInteger = (Integer)((List)localObject).get(0);
          if ((localInteger != null) && (localInteger.intValue() == paramInt))
          {
            localObject = (String)((List)localObject).get(1);
            if (localObject != null) {
              localArrayList.add(localObject);
            }
          }
        }
      }
      return localArrayList;
    }
    catch (CertificateParsingException paramX509Certificate)
    {
      return Collections.emptyList();
    }
  }
  
  public static boolean verify(String paramString, X509Certificate paramX509Certificate)
  {
    int i;
    if (c.verifyAsIpAddress(paramString))
    {
      paramX509Certificate = getSubjectAltNames(paramX509Certificate, 7);
      int j = paramX509Certificate.size();
      i = 0;
      while (i < j)
      {
        if (paramString.equalsIgnoreCase((String)paramX509Certificate.get(i))) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    String str1 = paramString.toLowerCase(Locale.US);
    Iterator localIterator = getSubjectAltNames(paramX509Certificate, 2).iterator();
    String str2;
    boolean bool;
    if (localIterator.hasNext())
    {
      str2 = (String)localIterator.next();
      if ((str1 == null) || (str1.length() == 0) || (str1.startsWith(".")) || (str1.endsWith(".."))) {
        bool = false;
      }
      label135:
      while (bool)
      {
        return true;
        if ((str2 == null) || (str2.length() == 0) || (str2.startsWith(".")) || (str2.endsWith(".."))) {
          bool = false;
        } else {
          if (str1.endsWith(".")) {
            break label392;
          }
        }
      }
    }
    label392:
    for (paramString = str1 + '.';; paramString = str1)
    {
      paramX509Certificate = str2;
      if (!str2.endsWith(".")) {
        paramX509Certificate = str2 + '.';
      }
      paramX509Certificate = paramX509Certificate.toLowerCase(Locale.US);
      if (!paramX509Certificate.contains("*"))
      {
        bool = paramString.equals(paramX509Certificate);
        break label135;
      }
      if ((!paramX509Certificate.startsWith("*.")) || (paramX509Certificate.indexOf('*', 1) != -1))
      {
        bool = false;
        break label135;
      }
      if (paramString.length() < paramX509Certificate.length())
      {
        bool = false;
        break label135;
      }
      if ("*.".equals(paramX509Certificate))
      {
        bool = false;
        break label135;
      }
      paramX509Certificate = paramX509Certificate.substring(1);
      if (!paramString.endsWith(paramX509Certificate))
      {
        bool = false;
        break label135;
      }
      i = paramString.length() - paramX509Certificate.length();
      if ((i > 0) && (paramString.lastIndexOf('.', i - 1) != -1))
      {
        bool = false;
        break label135;
      }
      bool = true;
      break label135;
      break;
      return false;
    }
  }
  
  public final boolean verify(String paramString, SSLSession paramSSLSession)
  {
    try
    {
      boolean bool = verify(paramString, (X509Certificate)paramSSLSession.getPeerCertificates()[0]);
      return bool;
    }
    catch (SSLException paramString) {}
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/h/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */