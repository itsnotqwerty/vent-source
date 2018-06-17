package com.vent.b;

public final class d
{
  public final int cmc;
  final String cmd;
  
  d(int paramInt, String paramString)
  {
    this.cmc = paramInt;
    if ((paramString == null) || (paramString.trim().length() == 0))
    {
      this.cmd = c.eP(paramInt);
      return;
    }
    this.cmd = (paramString + " (response: " + c.eP(paramInt) + ")");
  }
  
  public final boolean mQ()
  {
    return this.cmc == 0;
  }
  
  public final String toString()
  {
    return "IabResult: " + this.cmd;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */