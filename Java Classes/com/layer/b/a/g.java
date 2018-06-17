package com.layer.b.a;

import b.f;
import com.layer.b.e.a;
import java.io.UnsupportedEncodingException;
import java.security.KeyPair;
import java.util.Date;
import java.util.UUID;
import org.json.JSONObject;

public final class g
{
  UUID a;
  UUID b;
  KeyPair buq;
  Date bur;
  Date but;
  public String c;
  public String d;
  
  public g()
  {
    this(new Date(), new Date(new Date().getTime() + 604800000L));
  }
  
  private g(Date paramDate1, Date paramDate2)
  {
    a(j(paramDate1));
    K(j(paramDate2));
  }
  
  private void K(long paramLong)
  {
    this.but = new Date(1000L * paramLong);
  }
  
  private void a(long paramLong)
  {
    this.bur = new Date(1000L * paramLong);
  }
  
  public static g dy(String paramString)
    throws UnsupportedEncodingException
  {
    Object localObject2 = paramString.split("[.]");
    if (localObject2.length != 3)
    {
      if (a.a(6)) {
        a.c("Identity token does not have three parts");
      }
      throw new IllegalArgumentException("Identity token does not have three parts");
    }
    Object localObject1 = f.fp(localObject2[0]).g();
    if (localObject1 == null)
    {
      if (a.a(6)) {
        a.c("Identity token header cannot be base64 decoded");
      }
      throw new IllegalArgumentException("Identity token header cannot be base64 decoded");
    }
    paramString = f.fp(localObject2[1]).g();
    if (paramString == null)
    {
      if (a.a(6)) {
        a.c("Identity token payload cannot be base64 decoded");
      }
      throw new IllegalArgumentException("Identity token payload cannot be base64 decoded");
    }
    if ((localObject2[2] == null) || (localObject2[2].isEmpty())) {
      if (a.a(5)) {
        a.b("Identity token doesn't contain signature");
      }
    }
    for (;;)
    {
      localObject1 = new JSONObject(new String((byte[])localObject1, "UTF-8"));
      paramString = new JSONObject(new String(paramString, "UTF-8"));
      localObject2 = new g();
      ((g)localObject2).b = dz(((JSONObject)localObject1).optString("kid"));
      ((g)localObject2).a = dz(paramString.optString("iss"));
      ((g)localObject2).c = paramString.optString("prn");
      ((g)localObject2).d = paramString.optString("nce");
      ((g)localObject2).a(paramString.optLong("iat"));
      ((g)localObject2).K(paramString.optLong("exp"));
      ((g)localObject2).buq = null;
      return (g)localObject2;
      try
      {
        if ((f.fp(localObject2[2]).g() != null) || (!a.a(5))) {
          continue;
        }
        a.b("Identity token signature is null / empty");
      }
      catch (Exception localException) {}
      if (a.a(6)) {
        a.g("Identity token signature failed base64 decoding", localException);
      }
    }
  }
  
  private static UUID dz(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if ((paramString.startsWith("layer:///")) && (!paramString.endsWith("/"))) {
      return UUID.fromString(paramString.substring(paramString.lastIndexOf("/") + 1));
    }
    return UUID.fromString(paramString);
  }
  
  private static long j(Date paramDate)
  {
    return paramDate.getTime() / 1000L;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */