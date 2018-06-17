package io.intercom.a.a.a.g;

public final class j
  implements c, d
{
  private boolean cOz;
  private final d cPI;
  private c cQv;
  private c cQw;
  
  j()
  {
    this(null);
  }
  
  public j(d paramd)
  {
    this.cPI = paramd;
  }
  
  public final boolean Ju()
  {
    return (this.cQv.Ju()) || (this.cQw.Ju());
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
  
  public final void a(c paramc1, c paramc2)
  {
    this.cQv = paramc1;
    this.cQw = paramc2;
  }
  
  public final boolean a(c paramc)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramc instanceof j))
    {
      paramc = (j)paramc;
      if (this.cQv != null) {
        break label52;
      }
      bool1 = bool2;
      if (paramc.cQv == null)
      {
        if (this.cQw != null) {
          break label73;
        }
        bool1 = bool2;
        if (paramc.cQw != null) {}
      }
    }
    for (;;)
    {
      bool1 = true;
      label52:
      label73:
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!this.cQv.a(paramc.cQv));
        break;
        bool1 = bool2;
      } while (!this.cQw.a(paramc.cQw));
    }
  }
  
  public final boolean b(c paramc)
  {
    if ((this.cPI == null) || (this.cPI.b(this))) {}
    for (int i = 1; (i != 0) && ((paramc.equals(this.cQv)) || (!this.cQv.Ju())); i = 0) {
      return true;
    }
    return false;
  }
  
  public final void begin()
  {
    this.cOz = true;
    if ((!this.cQv.isComplete()) && (!this.cQw.isRunning())) {
      this.cQw.begin();
    }
    if ((this.cOz) && (!this.cQv.isRunning())) {
      this.cQv.begin();
    }
  }
  
  public final boolean c(c paramc)
  {
    if ((this.cPI == null) || (this.cPI.c(this))) {}
    for (int i = 1; (i != 0) && (paramc.equals(this.cQv)) && (!Jv()); i = 0) {
      return true;
    }
    return false;
  }
  
  public final void clear()
  {
    this.cOz = false;
    this.cQw.clear();
    this.cQv.clear();
  }
  
  public final boolean d(c paramc)
  {
    if ((this.cPI == null) || (this.cPI.d(this))) {}
    for (int i = 1; (i != 0) && (paramc.equals(this.cQv)); i = 0) {
      return true;
    }
    return false;
  }
  
  public final void f(c paramc)
  {
    if (paramc.equals(this.cQw)) {}
    do
    {
      return;
      if (this.cPI != null) {
        this.cPI.f(this);
      }
    } while (this.cQw.isComplete());
    this.cQw.clear();
  }
  
  public final void g(c paramc)
  {
    if (!paramc.equals(this.cQv)) {}
    while (this.cPI == null) {
      return;
    }
    this.cPI.g(this);
  }
  
  public final boolean isCancelled()
  {
    return this.cQv.isCancelled();
  }
  
  public final boolean isComplete()
  {
    return (this.cQv.isComplete()) || (this.cQw.isComplete());
  }
  
  public final boolean isFailed()
  {
    return this.cQv.isFailed();
  }
  
  public final boolean isRunning()
  {
    return this.cQv.isRunning();
  }
  
  public final void pause()
  {
    this.cOz = false;
    this.cQv.pause();
    this.cQw.pause();
  }
  
  public final void recycle()
  {
    this.cQv.recycle();
    this.cQw.recycle();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/g/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */