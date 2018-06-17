package d;

import javax.annotation.Nullable;

final class p
{
  static long cUq;
  @Nullable
  static o dcl;
  
  static o Nu()
  {
    try
    {
      if (dcl != null)
      {
        o localo = dcl;
        dcl = localo.dcl;
        localo.dcl = null;
        cUq -= 8192L;
        return localo;
      }
      return new o();
    }
    finally {}
  }
  
  static void b(o paramo)
  {
    if ((paramo.dcl != null) || (paramo.dcm != null)) {
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
    paramo.dcl = dcl;
    paramo.limit = 0;
    paramo.pos = 0;
    dcl = paramo;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */