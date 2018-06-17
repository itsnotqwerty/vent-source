package com.google.a;

import com.google.a.b.l;
import com.google.a.d.c;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

public abstract class k
{
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
      l.a(this, localc);
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
  
  public final p vh()
  {
    if ((this instanceof p)) {
      return (p)this;
    }
    throw new IllegalStateException("Not a JSON Primitive: " + this);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */