package com.google.android.gms.internal;

public abstract class bb
  extends ba
{
  private boolean aGI;
  
  protected bb(bd parambd)
  {
    super(parambd);
  }
  
  public final void initialize()
  {
    mG();
    this.aGI = true;
  }
  
  public final boolean isInitialized()
  {
    return this.aGI;
  }
  
  public abstract void mG();
  
  protected final void pf()
  {
    if (!isInitialized()) {
      throw new IllegalStateException("Not initialized");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */