package com.layer.b.a;

import java.io.IOException;
import java.io.Serializable;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.Certificate;
import java.security.spec.X509EncodedKeySpec;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

public final class a
  implements com.layer.b.c.a
{
  private final Object a = new Object();
  private com.layer.b.c.d btZ;
  private b bua;
  public j bub;
  private f buc;
  private com.layer.b.d.a bud;
  private URL bue;
  public g bug = null;
  private final Object buh = new Object();
  private a bui;
  private String h;
  public final Object i = new Object();
  public String j = null;
  private String n;
  
  public a(com.layer.b.d.a parama, com.layer.b.b.a parama1, b paramb, f paramf)
  {
    this(parama, parama1, paramb, paramf, (byte)0);
  }
  
  private a(com.layer.b.d.a parama, com.layer.b.b.a parama1, b paramb, f paramf, byte paramByte)
  {
    this.bua = paramb;
    this.bub = null;
    this.buc = paramf;
    this.bud = parama;
    a(parama1);
    this.h = null;
  }
  
  private void a(d paramd)
  {
    synchronized (this.a)
    {
      this.btZ = paramd;
      this.bua.a(paramd);
      return;
    }
  }
  
  private void b(a parama)
  {
    synchronized (this.buh)
    {
      this.bui = parama;
      if (parama != null)
      {
        this.n = ("Layer session-token=\"" + parama.c + "\"");
        return;
      }
      this.n = null;
    }
  }
  
  private String h()
  {
    synchronized (this.i)
    {
      String str = this.j;
      return str;
    }
  }
  
  private void i()
  {
    synchronized (this.i)
    {
      this.bug = null;
      this.j = null;
      return;
    }
  }
  
  private g wM()
  {
    synchronized (this.i)
    {
      g localg = this.bug;
      return localg;
    }
  }
  
  private com.layer.b.c.d wN()
    throws IOException
  {
    Object localObject2;
    do
    {
      try
      {
        if (com.layer.b.e.a.a(2)) {
          com.layer.b.e.a.a("Initializing TLS: Generating CSR");
        }
        KeyPair localKeyPair = e.c(this.buc);
        localObject3 = this.bud.d();
        localObject4 = this.bud.c();
        localObject2 = new JSONObject();
        e.a((JSONObject)localObject2, "typ", "JWS");
        e.a((JSONObject)localObject2, "cty", "layer-csr;v=1");
        e.a((JSONObject)localObject2, "alg", "RS256");
        localObject2 = e.a((JSONObject)localObject2);
        localObject5 = new JSONObject();
        e.a((JSONObject)localObject5, "uat", localObject3);
        e.a((JSONObject)localObject5, "prn", localObject4);
        e.a((JSONObject)localObject5, "pka", localKeyPair.getPublic().getAlgorithm());
        e.a((JSONObject)localObject5, "pky", b.f.L(localKeyPair.getPublic().getEncoded()).b());
        localObject3 = e.a((JSONObject)localObject5);
        localObject4 = e.dx((String)localObject2 + "." + (String)localObject3);
        localObject5 = localKeyPair.getPrivate();
        localObject6 = Signature.getInstance("SHA256withRSA");
        ((Signature)localObject6).initSign((PrivateKey)localObject5);
        ((Signature)localObject6).update((byte[])localObject4);
        localObject4 = b.f.L(((Signature)localObject6).sign()).b();
        localObject2 = (String)localObject2 + "." + (String)localObject3 + "." + (String)localObject4;
        localObject3 = ((String)localObject2).split("\\.");
        if (localObject3.length != 3) {
          throw new IllegalArgumentException("Wrong number of components: " + localObject3.length);
        }
      }
      catch (GeneralSecurityException localGeneralSecurityException)
      {
        if (com.layer.b.e.a.a(6)) {
          com.layer.b.e.a.g(localGeneralSecurityException.getMessage(), localGeneralSecurityException);
        }
        localObject1 = null;
        return (com.layer.b.c.d)localObject1;
      }
      Object localObject4 = e.r(b.f.fp(localObject3[0]).g());
      e.a((JSONObject)localObject4, "typ", "JWS");
      e.a((JSONObject)localObject4, "cty", "layer-csr;v=1");
      e.a((JSONObject)localObject4, "alg", "RS256");
      Object localObject5 = e.r(b.f.fp(localObject3[1]).g());
      localObject4 = e.a((JSONObject)localObject5, "pka", "RSA");
      localObject5 = b.f.fp(((JSONObject)localObject5).getString("pky")).g();
      localObject4 = KeyFactory.getInstance((String)localObject4).generatePublic(new X509EncodedKeySpec((byte[])localObject5));
      localObject5 = e.dx(localObject3[0] + "." + localObject3[1]);
      Object localObject3 = b.f.fp(localObject3[2]).g();
      Object localObject6 = Signature.getInstance("SHA256withRSA");
      ((Signature)localObject6).initVerify((PublicKey)localObject4);
      ((Signature)localObject6).update((byte[])localObject5);
      if (!((Signature)localObject6).verify((byte[])localObject3)) {
        throw new GeneralSecurityException("Signature doesn't match");
      }
      if (com.layer.b.e.a.a(2)) {
        com.layer.b.e.a.a("Initializing TLS: Posting CSR");
      }
      localObject4 = this.bud;
      localObject5 = this.bue;
      localObject3 = this.buc;
      localObject6 = new JSONObject();
      ((JSONObject)localObject6).put("csr", localObject2);
      localObject2 = h.a((com.layer.b.d.a)localObject4, (URL)localObject5, (JSONObject)localObject6);
      if (!((JSONObject)localObject2).has("certificate")) {
        throw new IllegalArgumentException("no 'certificate' attribute found");
      }
      localObject2 = e.a((f)localObject3, b.f.fp(((JSONObject)localObject2).getString("certificate")).g());
      if (com.layer.b.e.a.a(2)) {
        com.layer.b.e.a.a("Initializing TLS: Saving certificate");
      }
      localObject2 = new d(this.buc, (KeyPair)localObject1, (Certificate)localObject2, this.bua.a());
      a((d)localObject2);
      Object localObject1 = localObject2;
    } while (!com.layer.b.e.a.a(2));
    com.layer.b.e.a.a("Initializing TLS: Certificate ready");
    return (com.layer.b.c.d)localObject2;
  }
  
  /* Error */
  public final void a(com.b.a.t arg1)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 319
    //   4: invokevirtual 323	com/b/a/t:a	(Ljava/lang/String;)Ljava/lang/String;
    //   7: ifnull +23 -> 30
    //   10: aload_1
    //   11: ldc_w 325
    //   14: invokevirtual 323	com/b/a/t:a	(Ljava/lang/String;)Ljava/lang/String;
    //   17: ifnull +13 -> 30
    //   20: aload_1
    //   21: ldc_w 327
    //   24: invokevirtual 323	com/b/a/t:a	(Ljava/lang/String;)Ljava/lang/String;
    //   27: ifnonnull +4 -> 31
    //   30: return
    //   31: aload_1
    //   32: ldc_w 319
    //   35: invokevirtual 323	com/b/a/t:a	(Ljava/lang/String;)Ljava/lang/String;
    //   38: invokestatic 333	java/util/UUID:fromString	(Ljava/lang/String;)Ljava/util/UUID;
    //   41: astore_2
    //   42: aload_1
    //   43: ldc_w 325
    //   46: invokevirtual 323	com/b/a/t:a	(Ljava/lang/String;)Ljava/lang/String;
    //   49: astore_3
    //   50: new 335	java/util/Date
    //   53: dup
    //   54: aload_1
    //   55: ldc_w 327
    //   58: invokevirtual 323	com/b/a/t:a	(Ljava/lang/String;)Ljava/lang/String;
    //   61: invokestatic 341	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   64: ldc2_w 342
    //   67: lmul
    //   68: invokespecial 346	java/util/Date:<init>	(J)V
    //   71: astore_1
    //   72: aload_0
    //   73: invokespecial 348	com/layer/b/a/a:wM	()Lcom/layer/b/a/g;
    //   76: astore 4
    //   78: aload 4
    //   80: ifnull +79 -> 159
    //   83: new 8	com/layer/b/a/a$a
    //   86: dup
    //   87: aload_2
    //   88: aload 4
    //   90: getfield 351	com/layer/b/a/g:c	Ljava/lang/String;
    //   93: aload_3
    //   94: aload_1
    //   95: invokespecial 354	com/layer/b/a/a$a:<init>	(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    //   98: astore_2
    //   99: aload_0
    //   100: getfield 51	com/layer/b/a/a:buh	Ljava/lang/Object;
    //   103: astore_1
    //   104: aload_1
    //   105: monitorenter
    //   106: aload_0
    //   107: aload_2
    //   108: invokespecial 356	com/layer/b/a/a:b	(Lcom/layer/b/a/a$a;)V
    //   111: aload_0
    //   112: getfield 53	com/layer/b/a/a:bua	Lcom/layer/b/a/b;
    //   115: aload_2
    //   116: invokeinterface 358 2 0
    //   121: aload_1
    //   122: monitorexit
    //   123: aload_0
    //   124: invokespecial 360	com/layer/b/a/a:i	()V
    //   127: return
    //   128: astore_2
    //   129: aload_1
    //   130: monitorexit
    //   131: aload_2
    //   132: athrow
    //   133: astore_1
    //   134: bipush 6
    //   136: invokestatic 110	com/layer/b/e/a:a	(I)Z
    //   139: ifeq +11 -> 150
    //   142: aload_1
    //   143: invokevirtual 361	java/lang/NumberFormatException:getMessage	()Ljava/lang/String;
    //   146: aload_1
    //   147: invokestatic 231	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   150: aload_1
    //   151: athrow
    //   152: astore_1
    //   153: aload_0
    //   154: invokespecial 360	com/layer/b/a/a:i	()V
    //   157: aload_1
    //   158: athrow
    //   159: aload_0
    //   160: invokevirtual 364	com/layer/b/a/a:e	()V
    //   163: goto -40 -> 123
    //   166: astore_1
    //   167: bipush 6
    //   169: invokestatic 110	com/layer/b/e/a:a	(I)Z
    //   172: ifeq +11 -> 183
    //   175: aload_1
    //   176: invokevirtual 365	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   179: aload_1
    //   180: invokestatic 231	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   183: aload_1
    //   184: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	185	0	this	a
    //   41	75	2	localObject1	Object
    //   128	4	2	localObject2	Object
    //   49	45	3	str	String
    //   76	13	4	localg	g
    // Exception table:
    //   from	to	target	type
    //   106	123	128	finally
    //   129	131	128	finally
    //   31	78	133	java/lang/NumberFormatException
    //   83	106	133	java/lang/NumberFormatException
    //   131	133	133	java/lang/NumberFormatException
    //   159	163	133	java/lang/NumberFormatException
    //   31	78	152	finally
    //   83	106	152	finally
    //   131	133	152	finally
    //   134	150	152	finally
    //   150	152	152	finally
    //   159	163	152	finally
    //   167	183	152	finally
    //   183	185	152	finally
    //   31	78	166	java/lang/IllegalArgumentException
    //   83	106	166	java/lang/IllegalArgumentException
    //   131	133	166	java/lang/IllegalArgumentException
    //   159	163	166	java/lang/IllegalArgumentException
  }
  
  public final void a(com.layer.b.b.a parama)
  {
    this.bue = parama.wC();
  }
  
  public final void b(String paramString)
  {
    if (paramString == null) {
      try
      {
        throw new IllegalArgumentException("Challenge may not be null");
      }
      catch (RuntimeException paramString)
      {
        if (com.layer.b.e.a.a(6)) {
          com.layer.b.e.a.g(paramString.getMessage(), paramString);
        }
        throw paramString;
      }
    }
    int i1 = paramString.indexOf(' ');
    if (i1 == -1) {
      throw new com.layer.b.a.a.a("Invalid challenge: " + paramString);
    }
    HashMap localHashMap = new HashMap();
    int i5 = paramString.length();
    String str = null;
    Object localObject1 = null;
    StringBuffer localStringBuffer = new StringBuffer();
    int k = 1;
    int i2 = 0;
    int m = 0;
    i1 += 1;
    for (;;)
    {
      char c;
      int i4;
      int i3;
      if (i1 < i5)
      {
        c = paramString.charAt(i1);
        i4 = i1 + 1;
        if (k != 0) {
          if (c == '=')
          {
            str = localStringBuffer.toString().trim();
            i1 = 0;
            localStringBuffer.setLength(0);
            k = m;
            m = i1;
            i3 = i2;
            if (i4 == i5)
            {
              str = localStringBuffer.toString().trim();
              localObject1 = null;
              k = 1;
              i3 = i2;
              m = i1;
            }
          }
        }
      }
      Object localObject2;
      for (;;)
      {
        i1 = k;
        localObject2 = localObject1;
        if (k == 0) {
          break label715;
        }
        if ((str == null) || (str.equals("")))
        {
          throw new com.layer.b.a.a.a("Invalid challenge: " + paramString);
          if (c == ',')
          {
            str = localStringBuffer.toString().trim();
            localObject1 = null;
            m = 1;
            localStringBuffer.setLength(0);
            i1 = k;
            k = m;
            break;
          }
          localStringBuffer.append(c);
          i1 = k;
          k = m;
          break;
          if (i2 == 0) {
            if (c == ',')
            {
              localObject2 = localStringBuffer.toString().trim();
              i3 = 1;
              localStringBuffer.setLength(0);
              i1 = i2;
            }
          }
        }
        for (;;)
        {
          if (i4 == i5)
          {
            localObject1 = localStringBuffer.toString().trim();
            i2 = 1;
            m = k;
            k = i2;
            i3 = i1;
            break;
            if (localStringBuffer.length() == 0)
            {
              i3 = m;
              localObject2 = localObject1;
              i1 = i2;
              if (c != ' ')
              {
                i3 = m;
                localObject2 = localObject1;
                i1 = i2;
                if (c != '\t')
                {
                  i3 = m;
                  localObject2 = localObject1;
                  i1 = i2;
                  if (c != '\n')
                  {
                    i3 = m;
                    localObject2 = localObject1;
                    i1 = i2;
                    if (c != '\r')
                    {
                      localStringBuffer.append(c);
                      i3 = m;
                      localObject2 = localObject1;
                      i1 = i2;
                      if (c == '"')
                      {
                        i1 = 1;
                        i3 = m;
                        localObject2 = localObject1;
                      }
                    }
                  }
                }
              }
            }
            else
            {
              localStringBuffer.append(c);
              i3 = m;
              localObject2 = localObject1;
              i1 = i2;
              continue;
              localStringBuffer.append(c);
              i3 = m;
              localObject2 = localObject1;
              i1 = i2;
              if (c == '"')
              {
                i1 = 0;
                i3 = m;
                localObject2 = localObject1;
                continue;
                localObject2 = localObject1;
                if (localObject1 != null)
                {
                  localObject2 = localObject1;
                  if (((String)localObject1).length() > 1)
                  {
                    localObject2 = localObject1;
                    if (((String)localObject1).charAt(0) == '"')
                    {
                      localObject2 = localObject1;
                      if (((String)localObject1).charAt(((String)localObject1).length() - 1) == '"') {
                        localObject2 = ((String)localObject1).substring(1, ((String)localObject1).length() - 1);
                      }
                    }
                  }
                }
                localHashMap.put(str.toLowerCase(), localObject2);
                m = 1;
                i1 = 0;
                break label715;
                this.h = ((String)localHashMap.get("realm"));
                paramString = (String)localHashMap.get("nonce");
                this.bub.a(paramString);
                return;
              }
            }
          }
        }
        m = k;
        k = i3;
        localObject1 = localObject2;
        i3 = i1;
      }
      label715:
      k = m;
      m = i1;
      localObject1 = localObject2;
      i2 = i3;
      i1 = i4;
    }
  }
  
  public final String c()
  {
    synchronized (this.buh)
    {
      Object localObject2 = wQ();
      if ((localObject2 != null) && (((a)localObject2).d != null) && (((a)localObject2).d.after(new Date())))
      {
        localObject2 = this.n;
        return (String)localObject2;
      }
      ??? = h();
      if (??? != null) {
        return "Layer realm=\"" + this.h + "\", app-id=\"" + this.bud.b() + "\", identity-token=\"" + (String)??? + "\"";
      }
    }
    return null;
  }
  
  public final void e()
  {
    synchronized (this.buh)
    {
      this.bua.a(null);
      this.bui = null;
      this.n = null;
      i();
      this.bub.b();
      return;
    }
  }
  
  public final void f()
  {
    try
    {
      e();
      return;
    }
    finally
    {
      a(null);
      this.bub.a();
    }
  }
  
  public final com.layer.b.c.d wO()
    throws IOException
  {
    synchronized (this.a)
    {
      d locald;
      if (this.btZ == null)
      {
        locald = this.bua.d();
        if (locald != null) {
          break label60;
        }
        if (com.layer.b.e.a.a(2)) {
          com.layer.b.e.a.a("No saved TLS credentials, generating new credentials");
        }
        localObject1 = wN();
      }
      label60:
      do
      {
        this.btZ = ((com.layer.b.c.d)localObject1);
        localObject1 = this.btZ;
        return (com.layer.b.c.d)localObject1;
        localObject1 = locald;
      } while (!com.layer.b.e.a.a(2));
      com.layer.b.e.a.a("Using saved TLS credentials");
      Object localObject1 = locald;
    }
  }
  
  public final com.layer.b.c.d wP()
    throws IOException
  {
    synchronized (this.a)
    {
      if (com.layer.b.e.a.a(2)) {
        com.layer.b.e.a.a("Connection error, clearing and re-generating TLS credentials");
      }
      f();
      com.layer.b.c.d locald = wN();
      return locald;
    }
  }
  
  public final a wQ()
  {
    synchronized (this.buh)
    {
      if (this.bui == null) {
        b(this.bua.b());
      }
      a locala = this.bui;
      return locala;
    }
  }
  
  public static final class a
    implements Serializable
  {
    public UUID a;
    public String b;
    public String c;
    Date d;
    
    public a(UUID paramUUID, String paramString1, String paramString2, Date paramDate)
    {
      if (paramUUID == null) {
        throw new IllegalArgumentException("Cannot create a session with null Layer user ID");
      }
      if (paramString1 == null) {
        throw new IllegalArgumentException("Cannot create a session with null remote user ID");
      }
      if (paramString2 == null) {
        throw new IllegalArgumentException("Cannot create a session with null token");
      }
      this.a = paramUUID;
      this.b = paramString1;
      this.c = paramString2;
      this.d = paramDate;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */