package com.b.a.a.c;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

public final class b
  implements HostnameVerifier
{
  private static final Pattern b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
  public static final b bLJ = new b();
  
  private static List<String> a(X509Certificate paramX509Certificate, int paramInt)
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
  
  private static boolean a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0) || (paramString1.startsWith(".")) || (paramString1.endsWith(".."))) {}
    String str;
    int i;
    do
    {
      do
      {
        do
        {
          do
          {
            return false;
          } while ((paramString2 == null) || (paramString2.length() == 0) || (paramString2.startsWith(".")) || (paramString2.endsWith("..")));
          str = paramString1;
          if (!paramString1.endsWith(".")) {
            str = paramString1 + '.';
          }
          paramString1 = paramString2;
          if (!paramString2.endsWith(".")) {
            paramString1 = paramString2 + '.';
          }
          paramString1 = paramString1.toLowerCase(Locale.US);
          if (!paramString1.contains("*")) {
            return str.equals(paramString1);
          }
        } while ((!paramString1.startsWith("*.")) || (paramString1.indexOf('*', 1) != -1) || (str.length() < paramString1.length()) || ("*.".equals(paramString1)));
        paramString1 = paramString1.substring(1);
      } while (!str.endsWith(paramString1));
      i = str.length() - paramString1.length();
    } while ((i > 0) && (str.lastIndexOf('.', i - 1) != -1));
    return true;
  }
  
  public static List<String> b(X509Certificate paramX509Certificate)
  {
    List localList = a(paramX509Certificate, 7);
    paramX509Certificate = a(paramX509Certificate, 2);
    ArrayList localArrayList = new ArrayList(localList.size() + paramX509Certificate.size());
    localArrayList.addAll(localList);
    localArrayList.addAll(paramX509Certificate);
    return localArrayList;
  }
  
  public final boolean verify(String paramString, SSLSession paramSSLSession)
  {
    try
    {
      paramSSLSession = (X509Certificate)paramSSLSession.getPeerCertificates()[0];
      int j;
      int i;
      label95:
      a locala;
      if (b.matcher(paramString).matches())
      {
        paramSSLSession = a(paramSSLSession, 7);
        j = paramSSLSession.size();
        i = 0;
        if (i >= j) {
          break label721;
        }
        if (paramString.equalsIgnoreCase((String)paramSSLSession.get(i))) {
          return true;
        }
      }
      else
      {
        String str = paramString.toLowerCase(Locale.US);
        paramString = a(paramSSLSession, 2);
        int k = paramString.size();
        i = 0;
        j = 0;
        if (i < k)
        {
          if (!a(str, (String)paramString.get(i))) {
            break label723;
          }
          return true;
        }
        if (j == 0)
        {
          locala = new a(paramSSLSession.getSubjectX500Principal());
          locala.c = 0;
          locala.d = 0;
          locala.bpD = 0;
          locala.f = 0;
          locala.bLI = locala.a.toCharArray();
          paramSSLSession = locala.a();
          if (paramSSLSession != null) {
            break label711;
          }
          paramString = null;
          while (paramString != null)
          {
            return a(str, paramString);
            label199:
            paramString = "";
            if (locala.c == locala.b) {
              paramString = null;
            } else {
              switch (locala.bLI[locala.c])
              {
              }
            }
          }
        }
      }
      for (;;)
      {
        paramString = locala.d();
        while (!"cn".equalsIgnoreCase(paramSSLSession))
        {
          if (locala.c < locala.b) {
            break label583;
          }
          paramString = null;
          break;
          locala.c += 1;
          locala.d = locala.c;
          locala.bpD = locala.d;
          if (locala.c == locala.b) {
            throw new IllegalStateException("Unexpected end of DN: " + locala.a);
          }
          if (locala.bLI[locala.c] == '"') {
            for (locala.c += 1; (locala.c < locala.b) && (locala.bLI[locala.c] == ' '); locala.c += 1) {}
          }
          if (locala.bLI[locala.c] == '\\') {
            locala.bLI[locala.bpD] = locala.zW();
          }
          for (;;)
          {
            locala.c += 1;
            locala.bpD += 1;
            break;
            locala.bLI[locala.bpD] = locala.bLI[locala.c];
          }
          paramString = new String(locala.bLI, locala.d, locala.bpD - locala.d);
          continue;
          paramString = locala.c();
        }
        label583:
        if ((locala.bLI[locala.c] != ',') && (locala.bLI[locala.c] != ';') && (locala.bLI[locala.c] != '+')) {
          throw new IllegalStateException("Malformed DN: " + locala.a);
        }
        locala.c += 1;
        paramSSLSession = locala.a();
        if (paramSSLSession == null)
        {
          throw new IllegalStateException("Malformed DN: " + locala.a);
          return false;
          label711:
          break label199;
          i += 1;
          break;
          label721:
          return false;
          label723:
          i += 1;
          j = 1;
          break label95;
        }
        break label199;
      }
      return false;
    }
    catch (SSLException paramString) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */