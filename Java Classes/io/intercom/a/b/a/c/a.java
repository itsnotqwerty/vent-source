package io.intercom.a.b.a.c;

import io.intercom.a.b.a.b.b;
import java.lang.reflect.Type;

public final class a<T>
{
  public final Type biJ;
  public final Class<? super T> bkb;
  final int bkc;
  
  protected a()
  {
    Type localType = getClass().getGenericSuperclass();
    if ((localType instanceof Class)) {
      throw new RuntimeException("Missing type parameter.");
    }
    this.biJ = b.b(((java.lang.reflect.ParameterizedType)localType).getActualTypeArguments()[0]);
    this.bkb = b.getRawType(this.biJ);
    this.bkc = this.biJ.hashCode();
  }
  
  private a(Type paramType)
  {
    this.biJ = b.b((Type)io.intercom.a.b.a.b.a.E(paramType));
    this.bkb = b.getRawType(this.biJ);
    this.bkc = this.biJ.hashCode();
  }
  
  public static <T> a<T> N(Class<T> paramClass)
  {
    return new a(paramClass);
  }
  
  public static a<?> f(Type paramType)
  {
    return new a(paramType);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof a)) && (b.equals(this.biJ, ((a)paramObject).biJ));
  }
  
  public final int hashCode()
  {
    return this.bkc;
  }
  
  public final String toString()
  {
    return b.typeToString(this.biJ);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */