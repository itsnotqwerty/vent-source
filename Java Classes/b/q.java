package b;

final class q
{
  static long b;
  static p cUy;
  
  static p Lp()
  {
    try
    {
      if (cUy != null)
      {
        p localp = cUy;
        cUy = localp.cUP;
        localp.cUP = null;
        b -= 2048L;
        return localp;
      }
      return new p();
    }
    finally {}
  }
  
  static void b(p paramp)
  {
    if ((paramp.cUP != null) || (paramp.cUQ != null)) {
      throw new IllegalArgumentException();
    }
    if (paramp.d) {
      return;
    }
    try
    {
      if (b + 2048L > 65536L) {
        return;
      }
    }
    finally {}
    b += 2048L;
    paramp.cUP = cUy;
    paramp.c = 0;
    paramp.b = 0;
    cUy = paramp;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */