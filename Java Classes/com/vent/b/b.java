package com.vent.b;

final class b
  extends Exception
{
  final d clz;
  
  public b(int paramInt, String paramString)
  {
    this(new d(paramInt, paramString));
  }
  
  public b(int paramInt, String paramString, Exception paramException)
  {
    this(new d(paramInt, paramString), paramException);
  }
  
  private b(d paramd)
  {
    this(paramd, null);
  }
  
  private b(d paramd, Exception paramException)
  {
    super(paramd.cmd, paramException);
    this.clz = paramd;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */