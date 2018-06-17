package com.b.a;

import com.b.a.a.i;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class a
{
  public final String b;
  public final List<y> bCF;
  public final Proxy bFL;
  public final SocketFactory bFM;
  public final SSLSocketFactory bFN;
  public final HostnameVerifier bFO;
  public final j bFP;
  public final e bFQ;
  public final ProxySelector bFR;
  public final int c;
  final List<p> j;
  
  public a(String paramString, int paramInt, SocketFactory paramSocketFactory, SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier, j paramj, e parame, Proxy paramProxy, List<y> paramList, List<p> paramList1, ProxySelector paramProxySelector)
  {
    if (paramString == null) {
      throw new NullPointerException("uriHost == null");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("uriPort <= 0: " + paramInt);
    }
    if (parame == null) {
      throw new IllegalArgumentException("authenticator == null");
    }
    if (paramList == null) {
      throw new IllegalArgumentException("protocols == null");
    }
    if (paramProxySelector == null) {
      throw new IllegalArgumentException("proxySelector == null");
    }
    this.bFL = paramProxy;
    this.b = paramString;
    this.c = paramInt;
    this.bFM = paramSocketFactory;
    this.bFN = paramSSLSocketFactory;
    this.bFO = paramHostnameVerifier;
    this.bFP = paramj;
    this.bFQ = parame;
    this.bCF = i.a(paramList);
    this.j = i.a(paramList1);
    this.bFR = paramProxySelector;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof a))
    {
      paramObject = (a)paramObject;
      bool1 = bool2;
      if (i.a(this.bFL, ((a)paramObject).bFL))
      {
        bool1 = bool2;
        if (this.b.equals(((a)paramObject).b))
        {
          bool1 = bool2;
          if (this.c == ((a)paramObject).c)
          {
            bool1 = bool2;
            if (i.a(this.bFN, ((a)paramObject).bFN))
            {
              bool1 = bool2;
              if (i.a(this.bFO, ((a)paramObject).bFO))
              {
                bool1 = bool2;
                if (i.a(this.bFP, ((a)paramObject).bFP))
                {
                  bool1 = bool2;
                  if (i.a(this.bFQ, ((a)paramObject).bFQ))
                  {
                    bool1 = bool2;
                    if (i.a(this.bCF, ((a)paramObject).bCF))
                    {
                      bool1 = bool2;
                      if (i.a(this.j, ((a)paramObject).j))
                      {
                        bool1 = bool2;
                        if (i.a(this.bFR, ((a)paramObject).bFR)) {
                          bool1 = true;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    int n = 0;
    int i;
    int i1;
    int i2;
    int k;
    if (this.bFL != null)
    {
      i = this.bFL.hashCode();
      i1 = this.b.hashCode();
      i2 = this.c;
      if (this.bFN == null) {
        break label166;
      }
      k = this.bFN.hashCode();
      label48:
      if (this.bFO == null) {
        break label171;
      }
    }
    label166:
    label171:
    for (int m = this.bFO.hashCode();; m = 0)
    {
      if (this.bFP != null) {
        n = this.bFP.hashCode();
      }
      return (((((m + (k + (((i + 527) * 31 + i1) * 31 + i2) * 31) * 31) * 31 + n) * 31 + this.bFQ.hashCode()) * 31 + this.bCF.hashCode()) * 31 + this.j.hashCode()) * 31 + this.bFR.hashCode();
      i = 0;
      break;
      k = 0;
      break label48;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */