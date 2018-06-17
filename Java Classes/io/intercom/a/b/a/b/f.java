package io.intercom.a.b.a.b;

import java.math.BigDecimal;

public final class f
  extends Number
{
  private final String value;
  
  public f(String paramString)
  {
    this.value = paramString;
  }
  
  public final double doubleValue()
  {
    return Double.parseDouble(this.value);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof f)) {
        break;
      }
      paramObject = (f)paramObject;
    } while ((this.value == ((f)paramObject).value) || (this.value.equals(((f)paramObject).value)));
    return false;
    return false;
  }
  
  public final float floatValue()
  {
    return Float.parseFloat(this.value);
  }
  
  public final int hashCode()
  {
    return this.value.hashCode();
  }
  
  public final int intValue()
  {
    try
    {
      int i = Integer.parseInt(this.value);
      return i;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        long l = Long.parseLong(this.value);
        return (int)l;
      }
      catch (NumberFormatException localNumberFormatException2) {}
    }
    return new BigDecimal(this.value).intValue();
  }
  
  public final long longValue()
  {
    try
    {
      long l = Long.parseLong(this.value);
      return l;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return new BigDecimal(this.value).longValue();
  }
  
  public final String toString()
  {
    return this.value;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */