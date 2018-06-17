package com.layer.b.a;

import com.layer.b.e.a;
import java.security.Key;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.Arrays;
import javax.net.ssl.X509KeyManager;

public final class d
  implements com.layer.b.c.d
{
  private final KeyPair bum;
  private final Certificate bun;
  private final PublicKey[] buo;
  private final X509KeyManager[] bup;
  
  public d(f paramf, KeyPair paramKeyPair, Certificate paramCertificate, PublicKey[] paramArrayOfPublicKey)
  {
    if (paramf == null) {
      throw new IllegalArgumentException("Null CryptoFactory");
    }
    if (paramKeyPair == null) {
      throw new IllegalArgumentException("Null KeyPair");
    }
    if (paramCertificate == null) {
      throw new IllegalArgumentException("Null Certificate");
    }
    if (paramArrayOfPublicKey == null) {
      throw new IllegalArgumentException("Null PublicKey");
    }
    if (paramArrayOfPublicKey.length == 0) {
      throw new IllegalArgumentException("No PublicKey");
    }
    this.bum = paramKeyPair;
    this.bun = paramCertificate;
    this.buo = paramArrayOfPublicKey;
    this.bup = new X509KeyManager[] { e.a(paramf, this.bum, this.bun) };
  }
  
  private static boolean a(Key paramKey1, Key paramKey2)
  {
    if ((paramKey1 == null) && (paramKey2 == null)) {
      return true;
    }
    if ((paramKey1 != null) && (paramKey2 != null)) {
      return Arrays.equals(paramKey1.getEncoded(), paramKey2.getEncoded());
    }
    return false;
  }
  
  public final String c()
  {
    Object localObject = this.bum.getPublic().getEncoded();
    byte[] arrayOfByte1 = this.bum.getPrivate().getEncoded();
    try
    {
      byte[] arrayOfByte2 = this.bun.getEncoded();
      localObject = b.f.L((byte[])localObject).b() + "|" + b.f.L(arrayOfByte1).b() + "|" + b.f.L(arrayOfByte2).b();
      return (String)localObject;
    }
    catch (CertificateEncodingException localCertificateEncodingException)
    {
      if (a.a(6)) {
        a.g(localCertificateEncodingException.getMessage(), localCertificateEncodingException);
      }
    }
    return null;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d)) {
      return false;
    }
    paramObject = (d)paramObject;
    for (;;)
    {
      try
      {
        if ((this.bun == null) && (((d)paramObject).bun == null))
        {
          bool = true;
          if (!bool) {
            break;
          }
          if ((this.bum != null) || (((d)paramObject).bum != null)) {
            continue;
          }
          bool = true;
          if (!bool) {
            break;
          }
          if ((this.bum != null) || (((d)paramObject).bum != null)) {
            continue;
          }
          bool = true;
          break label202;
        }
        if ((this.bun == null) || (((d)paramObject).bun == null)) {
          break label208;
        }
        bool = Arrays.equals(this.bun.getEncoded(), ((d)paramObject).bun.getEncoded());
        continue;
        if ((this.bum == null) || (((d)paramObject).bum == null)) {
          break label213;
        }
        bool = a(this.bum.getPublic(), ((d)paramObject).bum.getPublic());
        continue;
        if ((this.bum != null) && (((d)paramObject).bum != null)) {
          bool = a(this.bum.getPrivate(), ((d)paramObject).bum.getPrivate());
        } else {
          bool = false;
        }
      }
      catch (CertificateEncodingException paramObject) {}
      if (!a.a(6)) {
        break;
      }
      a.g(((CertificateEncodingException)paramObject).getMessage(), (Throwable)paramObject);
      return false;
      label202:
      if (!bool) {
        break;
      }
      return true;
      label208:
      boolean bool = false;
      continue;
      label213:
      bool = false;
    }
  }
  
  public final X509KeyManager[] wS()
  {
    return this.bup;
  }
  
  public final PublicKey[] wT()
  {
    return this.buo;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */