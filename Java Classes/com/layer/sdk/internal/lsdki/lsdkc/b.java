package com.layer.sdk.internal.lsdki.lsdkc;

import com.layer.b.d.g;
import com.layer.b.d.m;

public class b
  extends Error
{
  private final g a;
  private final Object b;
  
  public b(Object paramObject, Throwable paramThrowable, String paramString)
  {
    super(paramString, paramThrowable);
    this.b = paramObject;
    if ((paramThrowable != null) && ((paramThrowable instanceof m)))
    {
      this.a = ((m)paramThrowable).bwa;
      return;
    }
    this.a = null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkc/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */