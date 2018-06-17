package com.google.a;

import com.google.a.b.a;
import com.google.a.b.g;
import java.math.BigInteger;

public final class p
  extends k
{
  private static final Class<?>[] bgV = { Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class };
  public Object value;
  
  public p(Boolean paramBoolean)
  {
    setValue(paramBoolean);
  }
  
  public p(Number paramNumber)
  {
    setValue(paramNumber);
  }
  
  public p(String paramString)
  {
    setValue(paramString);
  }
  
  private static boolean a(p paramp)
  {
    if ((paramp.value instanceof Number))
    {
      paramp = (Number)paramp.value;
      return ((paramp instanceof BigInteger)) || ((paramp instanceof Long)) || ((paramp instanceof Integer)) || ((paramp instanceof Short)) || ((paramp instanceof Byte));
    }
    return false;
  }
  
  private void setValue(Object paramObject)
  {
    boolean bool = false;
    if ((paramObject instanceof Character))
    {
      this.value = String.valueOf(((Character)paramObject).charValue());
      return;
    }
    int i;
    if (!(paramObject instanceof Number))
    {
      if (!(paramObject instanceof String)) {
        break label59;
      }
      i = 1;
    }
    for (;;)
    {
      if (i != 0) {
        bool = true;
      }
      a.au(bool);
      this.value = paramObject;
      return;
      label59:
      Class localClass = paramObject.getClass();
      Class[] arrayOfClass = bgV;
      int j = arrayOfClass.length;
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label105;
        }
        if (arrayOfClass[i].isAssignableFrom(localClass))
        {
          i = 1;
          break;
        }
        i += 1;
      }
      label105:
      i = 0;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    double d1;
    double d2;
    do
    {
      do
      {
        do
        {
          return true;
          if ((paramObject == null) || (getClass() != paramObject.getClass())) {
            return false;
          }
          paramObject = (p)paramObject;
          if (this.value != null) {
            break;
          }
        } while (((p)paramObject).value == null);
        return false;
        if ((!a(this)) || (!a((p)paramObject))) {
          break;
        }
      } while (ve().longValue() == ((p)paramObject).ve().longValue());
      return false;
      if ((!(this.value instanceof Number)) || (!(((p)paramObject).value instanceof Number))) {
        break;
      }
      d1 = ve().doubleValue();
      d2 = ((p)paramObject).ve().doubleValue();
    } while ((d1 == d2) || ((Double.isNaN(d1)) && (Double.isNaN(d2))));
    return false;
    return this.value.equals(((p)paramObject).value);
  }
  
  public final boolean getAsBoolean()
  {
    if ((this.value instanceof Boolean)) {
      return ((Boolean)this.value).booleanValue();
    }
    return Boolean.parseBoolean(vf());
  }
  
  public final double getAsDouble()
  {
    if ((this.value instanceof Number)) {
      return ve().doubleValue();
    }
    return Double.parseDouble(vf());
  }
  
  public final int getAsInt()
  {
    if ((this.value instanceof Number)) {
      return ve().intValue();
    }
    return Integer.parseInt(vf());
  }
  
  public final long getAsLong()
  {
    if ((this.value instanceof Number)) {
      return ve().longValue();
    }
    return Long.parseLong(vf());
  }
  
  public final int hashCode()
  {
    if (this.value == null) {
      return 31;
    }
    long l;
    if (a(this))
    {
      l = ve().longValue();
      return (int)(l ^ l >>> 32);
    }
    if ((this.value instanceof Number))
    {
      l = Double.doubleToLongBits(ve().doubleValue());
      return (int)(l ^ l >>> 32);
    }
    return this.value.hashCode();
  }
  
  public final Number ve()
  {
    if ((this.value instanceof String)) {
      return new g((String)this.value);
    }
    return (Number)this.value;
  }
  
  public final String vf()
  {
    if ((this.value instanceof Number)) {
      return ve().toString();
    }
    if ((this.value instanceof Boolean)) {
      return ((Boolean)this.value).toString();
    }
    return (String)this.value;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */