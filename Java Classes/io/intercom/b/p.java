package io.intercom.b;

import javax.annotation.Nullable;

final class p
{
  @Nullable
  static o cUo;
  static long cUq;
  
  static o KP()
  {
    try
    {
      if (cUo != null)
      {
        o localo = cUo;
        cUo = localo.cUo;
        localo.cUo = null;
        cUq -= 8192L;
        return localo;
      }
      return new o();
    }
    finally {}
  }
  
  static void b(o paramo)
  {
    if ((paramo.cUo != null) || (paramo.cUp != null)) {
      throw new IllegalArgumentException();
    }
    if (paramo.cUm) {
      return;
    }
    try
    {
      if (cUq + 8192L > 65536L) {
        return;
      }
    }
    finally {}
    cUq += 8192L;
    paramo.cUo = cUo;
    paramo.limit = 0;
    paramo.pos = 0;
    cUo = paramo;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */