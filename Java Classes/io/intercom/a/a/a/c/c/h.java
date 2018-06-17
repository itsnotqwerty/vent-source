package io.intercom.a.a.a.c.c;

import java.util.Collections;
import java.util.Map;

public abstract interface h
{
  @Deprecated
  public static final h cML = new h()
  {
    public final Map<String, String> getHeaders()
    {
      return Collections.emptyMap();
    }
  };
  public static final h cMM;
  
  static
  {
    j.a locala = new j.a();
    locala.cMP = true;
    cMM = new j(locala.headers);
  }
  
  public abstract Map<String, String> getHeaders();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */