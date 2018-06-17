package com.layer.sdk.internal.telemetry;

import com.google.a.a.c;

class d
{
  @c("count")
  private long btA;
  @c("max")
  long bty;
  @c("total")
  private long btz;
  
  final void J(long paramLong)
  {
    this.btA += 1L;
    this.btz += paramLong;
    if (paramLong > this.bty) {}
    for (;;)
    {
      this.bty = paramLong;
      return;
      paramLong = this.bty;
    }
  }
  
  final long wG()
  {
    long l = 0L;
    if (this.btA > 0L) {
      l = this.btz / this.btA;
    }
    return l;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/telemetry/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */