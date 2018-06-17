package com.google.a.b.a;

import com.google.a.d.c;
import com.google.a.f;
import com.google.a.u;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class m<T>
  extends u<T>
{
  private final u<T> bgO;
  private final f biI;
  private final Type biJ;
  
  m(f paramf, u<T> paramu, Type paramType)
  {
    this.biI = paramf;
    this.bgO = paramu;
    this.biJ = paramType;
  }
  
  public final T a(com.google.a.d.a parama)
    throws IOException
  {
    return (T)this.bgO.a(parama);
  }
  
  public final void a(c paramc, T paramT)
    throws IOException
  {
    u localu = this.bgO;
    Type localType = this.biJ;
    Object localObject = localType;
    if (paramT != null) {
      if ((localType != Object.class) && (!(localType instanceof TypeVariable)))
      {
        localObject = localType;
        if (!(localType instanceof Class)) {}
      }
      else
      {
        localObject = paramT.getClass();
      }
    }
    if (localObject != this.biJ)
    {
      localu = this.biI.a(com.google.a.c.a.e((Type)localObject));
      localObject = localu;
      if ((localu instanceof i.a))
      {
        localObject = localu;
        if ((this.bgO instanceof i.a)) {}
      }
    }
    for (localObject = this.bgO;; localObject = localu)
    {
      ((u)localObject).a(paramc, paramT);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */