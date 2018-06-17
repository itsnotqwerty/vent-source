package com.layer.b.d;

public final class m
  extends Exception
{
  public final b buL;
  public final f bvU;
  public final g bwa;
  
  public m(f paramf, g paramg, b paramb, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    this.bvU = paramf;
    this.bwa = paramg;
    this.buL = paramb;
  }
  
  public m(f paramf, g paramg, String paramString)
  {
    this(paramf, paramg, null, paramString, null);
  }
  
  public m(f paramf, g paramg, String paramString, Throwable paramThrowable)
  {
    this(paramf, paramg, null, paramString, paramThrowable);
  }
  
  public m(f paramf, g paramg, Throwable paramThrowable)
  {
    this(paramf, paramg, null, paramg.toString(), paramThrowable);
  }
  
  public final String toString()
  {
    return "TransportException{mResponseType=" + this.bvU + ", mCode=" + this.bwa + ", mErrorCode=" + this.buL + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/d/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */