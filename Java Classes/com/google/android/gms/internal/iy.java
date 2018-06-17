package com.google.android.gms.internal;

abstract class iy
  extends ix
{
  private boolean initialized;
  
  iy(hz paramhz)
  {
    super(paramhz);
    paramhz = this.zzjev;
    paramhz.aVq += 1;
  }
  
  public final void initialize()
  {
    if (this.initialized) {
      throw new IllegalStateException("Can't initialize twice");
    }
    if (!ri())
    {
      this.zzjev.se();
      this.initialized = true;
    }
  }
  
  final boolean isInitialized()
  {
    return this.initialized;
  }
  
  protected final void pf()
  {
    if (!isInitialized()) {
      throw new IllegalStateException("Not initialized");
    }
  }
  
  protected void rC() {}
  
  protected abstract boolean ri();
  
  public final void si()
  {
    if (this.initialized) {
      throw new IllegalStateException("Can't initialize twice");
    }
    rC();
    this.zzjev.se();
    this.initialized = true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/iy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */