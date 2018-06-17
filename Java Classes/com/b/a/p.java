package com.b.a;

import com.b.a.a.i;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class p
{
  private static final l[] bLK = { l.bHV, l.bHZ, l.bHh, l.bHx, l.bHw, l.bHG, l.bHH, l.bGQ, l.bGP, l.bGU, l.bHf, l.bGO, l.bGS, l.bGs };
  public static final p bLL;
  public static final p bLM = new a(bLL).a(new d[] { d.bFX }).zY().zZ();
  public static final p bLN = new a(false).zZ();
  final String[] bLO;
  final boolean d;
  public final boolean e;
  final String[] h;
  
  static
  {
    a locala = new a(true);
    l[] arrayOfl = bLK;
    if (!locala.a) {
      throw new IllegalStateException("no cipher suites for cleartext connections");
    }
    String[] arrayOfString = new String[arrayOfl.length];
    int i = 0;
    while (i < arrayOfl.length)
    {
      arrayOfString[i] = arrayOfl[i].bId;
      i += 1;
    }
    locala.bIH = arrayOfString;
    bLL = locala.a(new d[] { d.bFV, d.bFW, d.bFX }).zY().zZ();
  }
  
  private p(a parama)
  {
    this.d = parama.a;
    this.bLO = parama.bIH;
    this.h = parama.bIZ;
    this.e = parama.d;
  }
  
  private static boolean a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramArrayOfString1 == null) || (paramArrayOfString2 == null) || (paramArrayOfString1.length == 0) || (paramArrayOfString2.length == 0))
    {
      bool1 = false;
      return bool1;
    }
    int k = paramArrayOfString1.length;
    int i = 0;
    label33:
    if (i < k)
    {
      String str = paramArrayOfString1[i];
      int m = paramArrayOfString2.length;
      int j = 0;
      label50:
      if (j < m) {
        if (!i.a(str, paramArrayOfString2[j])) {}
      }
      for (j = 1;; j = 0)
      {
        bool1 = bool2;
        if (j != 0) {
          break;
        }
        i += 1;
        break label33;
        j += 1;
        break label50;
      }
    }
    return false;
  }
  
  private List<d> b()
  {
    d[] arrayOfd = new d[this.h.length];
    int i = 0;
    while (i < this.h.length)
    {
      arrayOfd[i] = d.dA(this.h[i]);
      i += 1;
    }
    return i.c(arrayOfd);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof p)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (p)paramObject;
    } while ((this.d != ((p)paramObject).d) || ((this.d) && ((!Arrays.equals(this.bLO, ((p)paramObject).bLO)) || (!Arrays.equals(this.h, ((p)paramObject).h)) || (this.e != ((p)paramObject).e))));
    return true;
  }
  
  public final boolean f(SSLSocket paramSSLSocket)
  {
    if (!this.d) {}
    do
    {
      String[] arrayOfString;
      do
      {
        return false;
        arrayOfString = paramSSLSocket.getEnabledProtocols();
      } while (!a(this.h, arrayOfString));
      if (this.bLO != null) {
        break;
      }
    } while (paramSSLSocket.getEnabledCipherSuites().length <= 0);
    return true;
    paramSSLSocket = paramSSLSocket.getEnabledCipherSuites();
    return a(this.bLO, paramSSLSocket);
  }
  
  public final int hashCode()
  {
    int i = 17;
    int j;
    int k;
    if (this.d)
    {
      j = Arrays.hashCode(this.bLO);
      k = Arrays.hashCode(this.h);
      if (!this.e) {
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
  
  public final String toString()
  {
    if (this.d)
    {
      if (this.bLO == null)
      {
        localObject = null;
        if (localObject != null) {
          break label116;
        }
      }
      label116:
      for (Object localObject = "[use default]";; localObject = localObject.toString())
      {
        return "ConnectionSpec(cipherSuites=" + (String)localObject + ", tlsVersions=" + b() + ", supportsTlsExtensions=" + this.e + ")";
        localObject = new l[this.bLO.length];
        int i = 0;
        while (i < this.bLO.length)
        {
          localObject[i] = l.dB(this.bLO[i]);
          i += 1;
        }
        localObject = i.c((Object[])localObject);
        break;
      }
    }
    return "ConnectionSpec()";
  }
  
  public static final class a
  {
    boolean a;
    String[] bIH;
    String[] bIZ;
    boolean d;
    
    public a(p paramp)
    {
      this.a = paramp.d;
      this.bIH = p.a(paramp);
      this.bIZ = p.b(paramp);
      this.d = paramp.e;
    }
    
    a(boolean paramBoolean)
    {
      this.a = paramBoolean;
    }
    
    public final a a(d... paramVarArgs)
    {
      if (!this.a) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      if (paramVarArgs.length == 0) {
        throw new IllegalArgumentException("At least one TlsVersion is required");
      }
      String[] arrayOfString = new String[paramVarArgs.length];
      int i = 0;
      while (i < paramVarArgs.length)
      {
        arrayOfString[i] = paramVarArgs[i].e;
        i += 1;
      }
      this.bIZ = arrayOfString;
      return this;
    }
    
    public final a e(String... paramVarArgs)
    {
      if (!this.a) {
        throw new IllegalStateException("no cipher suites for cleartext connections");
      }
      if (paramVarArgs == null)
      {
        this.bIH = null;
        return this;
      }
      this.bIH = ((String[])paramVarArgs.clone());
      return this;
    }
    
    public final a f(String... paramVarArgs)
    {
      if (!this.a) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      if (paramVarArgs == null)
      {
        this.bIZ = null;
        return this;
      }
      this.bIZ = ((String[])paramVarArgs.clone());
      return this;
    }
    
    public final a zY()
    {
      if (!this.a) {
        throw new IllegalStateException("no TLS extensions for cleartext connections");
      }
      this.d = true;
      return this;
    }
    
    public final p zZ()
    {
      return new p(this, (byte)0);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */