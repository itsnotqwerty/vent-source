package io.intercom.a.b.a;

import io.intercom.a.b.a.b.j;
import io.intercom.a.b.a.d.c;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

public abstract class i
{
  public final n Ka()
  {
    if ((this instanceof n)) {
      return (n)this;
    }
    throw new IllegalStateException("Not a JSON Primitive: " + this);
  }
  
  public boolean getAsBoolean()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public double getAsDouble()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public int getAsInt()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public long getAsLong()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public String toString()
  {
    try
    {
      Object localObject = new StringWriter();
      c localc = new c((Writer)localObject);
      localc.bgE = true;
      j.a(this, localc);
      localObject = ((StringWriter)localObject).toString();
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }
  
  public Number ve()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public String vf()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */