package io.intercom.a.b.a;

import io.intercom.a.b.a.b.g;

public final class l
  extends i
{
  public final g<String, i> cRu = new g();
  
  public final void a(String paramString, i parami)
  {
    Object localObject = parami;
    if (parami == null) {
      localObject = k.cRt;
    }
    this.cRu.put(paramString, localObject);
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof l)) && (((l)paramObject).cRu.equals(this.cRu)));
  }
  
  public final int hashCode()
  {
    return this.cRu.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */