package c.a.a.a;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public final class b
  implements Serializable
{
  private static Map<Class<? extends c.a.a.c>, Map<? extends Object, b>> bxE = new HashMap();
  public final String a;
  public final byte bKG;
  public final c cUZ;
  
  public b(String paramString, byte paramByte, c paramc)
  {
    this.a = paramString;
    this.bKG = paramByte;
    this.cUZ = paramc;
  }
  
  public static void a(Class<? extends c.a.a.c> paramClass, Map<? extends Object, b> paramMap)
  {
    bxE.put(paramClass, paramMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */