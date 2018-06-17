package com.layer.a.c;

public final class e
  extends Exception
{
  private final Object b;
  private final d bpL;
  
  public e(d paramd, Object paramObject, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    this.bpL = paramd;
    this.b = paramObject;
  }
  
  public e(d paramd, String paramString)
  {
    super(paramString);
    this.bpL = paramd;
    this.b = null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/a/c/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */