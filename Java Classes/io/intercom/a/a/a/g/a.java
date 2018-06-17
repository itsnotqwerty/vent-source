package io.intercom.a.a.a.g;

public final class a
  implements c, d
{
  private final d cPI;
  public c cPJ;
  public c cPK;
  
  public a(d paramd)
  {
    this.cPI = paramd;
  }
  
  private boolean e(c paramc)
  {
    return (paramc.equals(this.cPJ)) || ((this.cPJ.isFailed()) && (paramc.equals(this.cPK)));
  }
  
  public final boolean Ju()
  {
    if (this.cPJ.isFailed()) {
      return this.cPK.Ju();
    }
    return this.cPJ.Ju();
  }
  
  public final boolean Jv()
  {
    boolean bool = false;
    if ((this.cPI != null) && (this.cPI.Jv())) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (Ju())) {
        bool = true;
      }
      return bool;
    }
  }
  
  public final boolean a(c paramc)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramc instanceof a))
    {
      paramc = (a)paramc;
      bool1 = bool2;
      if (this.cPJ.a(paramc.cPJ))
      {
        bool1 = bool2;
        if (this.cPK.a(paramc.cPK)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final boolean b(c paramc)
  {
    if ((this.cPI == null) || (this.cPI.b(this))) {}
    for (int i = 1; (i != 0) && (e(paramc)); i = 0) {
      return true;
    }
    return false;
  }
  
  public final void begin()
  {
    if (!this.cPJ.isRunning()) {
      this.cPJ.begin();
    }
  }
  
  public final boolean c(c paramc)
  {
    if ((this.cPI == null) || (this.cPI.c(this))) {}
    for (int i = 1; (i != 0) && (e(paramc)); i = 0) {
      return true;
    }
    return false;
  }
  
  public final void clear()
  {
    this.cPJ.clear();
    if (this.cPJ.isFailed()) {
      this.cPK.clear();
    }
  }
  
  public final boolean d(c paramc)
  {
    if ((this.cPI == null) || (this.cPI.d(this))) {}
    for (int i = 1; (i != 0) && (e(paramc)); i = 0) {
      return true;
    }
    return false;
  }
  
  public final void f(c paramc)
  {
    if (this.cPI != null) {
      this.cPI.f(this);
    }
  }
  
  public final void g(c paramc)
  {
    if (!paramc.equals(this.cPK)) {
      if (!this.cPK.isRunning()) {
        this.cPK.begin();
      }
    }
    while (this.cPI == null) {
      return;
    }
    this.cPI.g(this);
  }
  
  public final boolean isCancelled()
  {
    if (this.cPJ.isFailed()) {
      return this.cPK.isCancelled();
    }
    return this.cPJ.isCancelled();
  }
  
  public final boolean isComplete()
  {
    if (this.cPJ.isFailed()) {
      return this.cPK.isComplete();
    }
    return this.cPJ.isComplete();
  }
  
  public final boolean isFailed()
  {
    return (this.cPJ.isFailed()) && (this.cPK.isFailed());
  }
  
  public final boolean isRunning()
  {
    if (this.cPJ.isFailed()) {
      return this.cPK.isRunning();
    }
    return this.cPJ.isRunning();
  }
  
  public final void pause()
  {
    if (!this.cPJ.isFailed()) {
      this.cPJ.pause();
    }
    if (this.cPK.isRunning()) {
      this.cPK.pause();
    }
  }
  
  public final void recycle()
  {
    this.cPJ.recycle();
    this.cPK.recycle();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/g/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */