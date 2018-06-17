package com.layer.sdk.internal.lsdkd;

import com.layer.sdk.changes.LayerChange;
import com.layer.sdk.changes.LayerChange.Type;

public class b
  extends LayerChange
{
  private final e c;
  private d d;
  
  public b(LayerChange.Type paramType, d paramd, e parame, Object paramObject1, Object paramObject2) {}
  
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) && (paramObject2 == null)) {}
    do
    {
      return false;
      if ((paramObject1 == null) || (paramObject2 == null)) {
        return true;
      }
    } while (paramObject1.equals(paramObject2));
    return true;
  }
  
  public LayerChange a(f paramf)
  {
    switch (1.bqe[getChangeType().ordinal()])
    {
    default: 
      return null;
    case 1: 
    case 2: 
      return new LayerChange(getChangeType(), getObject(), null, null, null);
    }
    a locala = b().b();
    if (locala == null) {
      return null;
    }
    Object localObject = locala.a(paramf, getOldValue());
    paramf = locala.a(paramf, getNewValue());
    return new LayerChange(getChangeType(), getObject(), getAttributeName(), localObject, paramf);
  }
  
  public d a()
  {
    return this.d;
  }
  
  public e b()
  {
    return this.c;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */