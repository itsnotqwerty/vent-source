package io.intercom.a.b.a.b;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;

public final class b
{
  static final Type[] EMPTY_TYPE_ARRAY = new Type[0];
  
  private static GenericArrayType a(Type paramType)
  {
    return new a(paramType);
  }
  
  public static Type a(Type paramType, Class<?> paramClass)
  {
    paramClass = getSupertype(paramType, paramClass, Collection.class);
    paramType = paramClass;
    if ((paramClass instanceof WildcardType)) {
      paramType = ((WildcardType)paramClass).getUpperBounds()[0];
    }
    if ((paramType instanceof ParameterizedType)) {
      return ((ParameterizedType)paramType).getActualTypeArguments()[0];
    }
    return Object.class;
  }
  
  private static Type a(Type paramType1, Class<?> paramClass, Type paramType2, Collection<TypeVariable> paramCollection)
  {
    Object localObject1 = paramType2;
    Object localObject2;
    if ((localObject1 instanceof TypeVariable))
    {
      localObject2 = (TypeVariable)localObject1;
      if (paramCollection.contains(localObject2)) {
        paramType2 = (Type)localObject1;
      }
    }
    label63:
    int j;
    int i;
    label95:
    label144:
    label153:
    label161:
    label218:
    do
    {
      do
      {
        return paramType2;
        paramCollection.add(localObject2);
        paramType2 = ((TypeVariable)localObject2).getGenericDeclaration();
        if ((paramType2 instanceof Class))
        {
          paramType2 = (Class)paramType2;
          if (paramType2 == null) {
            break label161;
          }
          localObject1 = getGenericSupertype(paramType1, paramClass, paramType2);
          if (!(localObject1 instanceof ParameterizedType)) {
            break label161;
          }
          paramType2 = paramType2.getTypeParameters();
          j = paramType2.length;
          i = 0;
          if (i >= j) {
            break label153;
          }
          if (!localObject2.equals(paramType2[i])) {
            break label144;
          }
        }
        for (paramType2 = ((ParameterizedType)localObject1).getActualTypeArguments()[i];; paramType2 = (Type)localObject2)
        {
          localObject1 = paramType2;
          if (paramType2 != localObject2) {
            break;
          }
          return paramType2;
          paramType2 = null;
          break label63;
          i += 1;
          break label95;
          throw new NoSuchElementException();
        }
        if ((!(localObject1 instanceof Class)) || (!((Class)localObject1).isArray())) {
          break label218;
        }
        paramType2 = (Class)localObject1;
        localObject1 = paramType2.getComponentType();
        paramType1 = a(paramType1, paramClass, (Type)localObject1, paramCollection);
      } while (localObject1 == paramType1);
      return a(paramType1);
      if (!(localObject1 instanceof GenericArrayType)) {
        break label260;
      }
      paramType2 = (GenericArrayType)localObject1;
      localObject1 = paramType2.getGenericComponentType();
      paramType1 = a(paramType1, paramClass, (Type)localObject1, paramCollection);
    } while (localObject1 == paramType1);
    return a(paramType1);
    label260:
    Object localObject3;
    if ((localObject1 instanceof ParameterizedType))
    {
      localObject2 = (ParameterizedType)localObject1;
      paramType2 = ((ParameterizedType)localObject2).getOwnerType();
      localObject3 = a(paramType1, paramClass, paramType2, paramCollection);
      if (localObject3 != paramType2)
      {
        i = 1;
        label301:
        localObject1 = ((ParameterizedType)localObject2).getActualTypeArguments();
        int k = localObject1.length;
        j = 0;
        label318:
        if (j >= k) {
          break label385;
        }
        paramType2 = a(paramType1, paramClass, localObject1[j], paramCollection);
        if (paramType2 == localObject1[j]) {
          break label600;
        }
        if (i != 0) {
          break label597;
        }
        localObject1 = (Type[])((Type[])localObject1).clone();
        i = 1;
        label364:
        localObject1[j] = paramType2;
      }
    }
    label385:
    label597:
    label600:
    for (;;)
    {
      j += 1;
      break label318;
      i = 0;
      break label301;
      paramType2 = (Type)localObject2;
      if (i == 0) {
        break;
      }
      return new b((Type)localObject3, ((ParameterizedType)localObject2).getRawType(), (Type[])localObject1);
      paramType2 = (Type)localObject1;
      if (!(localObject1 instanceof WildcardType)) {
        break;
      }
      localObject1 = (WildcardType)localObject1;
      localObject2 = ((WildcardType)localObject1).getLowerBounds();
      localObject3 = ((WildcardType)localObject1).getUpperBounds();
      if (localObject2.length == 1)
      {
        paramClass = a(paramType1, paramClass, localObject2[0], paramCollection);
        paramType2 = (Type)localObject1;
        if (paramClass == localObject2[0]) {
          break;
        }
        if ((paramClass instanceof WildcardType)) {
          paramType1 = ((WildcardType)paramClass).getLowerBounds();
        }
        for (;;)
        {
          return new c(new Type[] { Object.class }, paramType1);
          paramType1 = new Type[1];
          paramType1[0] = paramClass;
        }
      }
      paramType2 = (Type)localObject1;
      if (localObject3.length != 1) {
        break;
      }
      paramClass = a(paramType1, paramClass, localObject3[0], paramCollection);
      paramType2 = (Type)localObject1;
      if (paramClass == localObject3[0]) {
        break;
      }
      if ((paramClass instanceof WildcardType)) {
        paramType1 = ((WildcardType)paramClass).getUpperBounds();
      }
      for (;;)
      {
        return new c(paramType1, EMPTY_TYPE_ARRAY);
        paramType1 = new Type[1];
        paramType1[0] = paramClass;
      }
      break label364;
    }
  }
  
  public static Type b(Type paramType)
  {
    if ((paramType instanceof Class))
    {
      paramType = (Class)paramType;
      if (paramType.isArray()) {
        paramType = new a(b(paramType.getComponentType()));
      }
      for (;;)
      {
        return (Type)paramType;
      }
    }
    if ((paramType instanceof ParameterizedType))
    {
      paramType = (ParameterizedType)paramType;
      return new b(paramType.getOwnerType(), paramType.getRawType(), paramType.getActualTypeArguments());
    }
    if ((paramType instanceof GenericArrayType)) {
      return new a(((GenericArrayType)paramType).getGenericComponentType());
    }
    if ((paramType instanceof WildcardType))
    {
      paramType = (WildcardType)paramType;
      return new c(paramType.getUpperBounds(), paramType.getLowerBounds());
    }
    return paramType;
  }
  
  public static Type[] b(Type paramType, Class<?> paramClass)
  {
    if (paramType == Properties.class) {
      return new Type[] { String.class, String.class };
    }
    paramType = getSupertype(paramType, paramClass, Map.class);
    if ((paramType instanceof ParameterizedType)) {
      return ((ParameterizedType)paramType).getActualTypeArguments();
    }
    return new Type[] { Object.class, Object.class };
  }
  
  public static Type c(Type paramType)
  {
    if ((paramType instanceof GenericArrayType)) {
      return ((GenericArrayType)paramType).getGenericComponentType();
    }
    return ((Class)paramType).getComponentType();
  }
  
  static void checkNotPrimitive(Type paramType)
  {
    if ((!(paramType instanceof Class)) || (!((Class)paramType).isPrimitive())) {}
    for (boolean bool = true;; bool = false)
    {
      a.au(bool);
      return;
    }
  }
  
  public static boolean equals(Type paramType1, Type paramType2)
  {
    Type localType1 = paramType1;
    for (paramType1 = paramType2;; paramType1 = paramType1.getGenericComponentType())
    {
      if (localType1 == paramType1) {
        return true;
      }
      if ((localType1 instanceof Class)) {
        return localType1.equals(paramType1);
      }
      if ((localType1 instanceof ParameterizedType))
      {
        if (!(paramType1 instanceof ParameterizedType)) {
          return false;
        }
        paramType2 = (ParameterizedType)localType1;
        paramType1 = (ParameterizedType)paramType1;
        localType1 = paramType2.getOwnerType();
        Type localType2 = paramType1.getOwnerType();
        if ((localType1 == localType2) || ((localType1 != null) && (localType1.equals(localType2)))) {}
        for (int i = 1; (i != 0) && (paramType2.getRawType().equals(paramType1.getRawType())) && (Arrays.equals(paramType2.getActualTypeArguments(), paramType1.getActualTypeArguments())); i = 0) {
          return true;
        }
        return false;
      }
      if (!(localType1 instanceof GenericArrayType)) {
        break;
      }
      if (!(paramType1 instanceof GenericArrayType)) {
        return false;
      }
      paramType2 = (GenericArrayType)localType1;
      paramType1 = (GenericArrayType)paramType1;
      localType1 = paramType2.getGenericComponentType();
    }
    if ((localType1 instanceof WildcardType))
    {
      if (!(paramType1 instanceof WildcardType)) {
        return false;
      }
      paramType2 = (WildcardType)localType1;
      paramType1 = (WildcardType)paramType1;
      return (Arrays.equals(paramType2.getUpperBounds(), paramType1.getUpperBounds())) && (Arrays.equals(paramType2.getLowerBounds(), paramType1.getLowerBounds()));
    }
    if ((localType1 instanceof TypeVariable))
    {
      if (!(paramType1 instanceof TypeVariable)) {
        return false;
      }
      paramType2 = (TypeVariable)localType1;
      paramType1 = (TypeVariable)paramType1;
      return (paramType2.getGenericDeclaration() == paramType1.getGenericDeclaration()) && (paramType2.getName().equals(paramType1.getName()));
    }
    return false;
  }
  
  private static Type getGenericSupertype(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    Object localObject = paramClass1;
    paramClass1 = paramType;
    paramType = (Type)localObject;
    if (paramClass2 == paramType) {}
    label13:
    label89:
    do
    {
      return paramClass1;
      if (paramClass2.isInterface())
      {
        localObject = paramType.getInterfaces();
        int i = 0;
        int j = localObject.length;
        for (;;)
        {
          if (i >= j) {
            break label89;
          }
          if (localObject[i] == paramClass2) {
            return paramType.getGenericInterfaces()[i];
          }
          if (paramClass2.isAssignableFrom(localObject[i]))
          {
            paramClass1 = paramType.getGenericInterfaces()[i];
            paramType = localObject[i];
            break;
          }
          i += 1;
        }
      }
      paramClass1 = paramClass2;
    } while (paramType.isInterface());
    for (;;)
    {
      paramClass1 = paramClass2;
      if (paramType == Object.class) {
        break label13;
      }
      paramClass1 = paramType.getSuperclass();
      if (paramClass1 == paramClass2) {
        return paramType.getGenericSuperclass();
      }
      if (paramClass2.isAssignableFrom(paramClass1))
      {
        localObject = paramType.getGenericSuperclass();
        paramType = paramClass1;
        paramClass1 = (Class<?>)localObject;
        break;
      }
      paramType = paramClass1;
    }
  }
  
  public static Class<?> getRawType(Type paramType)
  {
    for (;;)
    {
      if ((paramType instanceof Class)) {
        return (Class)paramType;
      }
      if ((paramType instanceof ParameterizedType))
      {
        paramType = ((ParameterizedType)paramType).getRawType();
        a.au(paramType instanceof Class);
        return (Class)paramType;
      }
      if ((paramType instanceof GenericArrayType)) {
        return Array.newInstance(getRawType(((GenericArrayType)paramType).getGenericComponentType()), 0).getClass();
      }
      if ((paramType instanceof TypeVariable)) {
        return Object.class;
      }
      if (!(paramType instanceof WildcardType)) {
        break;
      }
      paramType = ((WildcardType)paramType).getUpperBounds()[0];
    }
    if (paramType == null) {}
    for (String str = "null";; str = paramType.getClass().getName()) {
      throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + paramType + "> is of type " + str);
    }
  }
  
  private static Type getSupertype(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    a.au(paramClass2.isAssignableFrom(paramClass1));
    return resolve(paramType, paramClass1, getGenericSupertype(paramType, paramClass1, paramClass2));
  }
  
  static int hashCodeOrZero(Object paramObject)
  {
    if (paramObject != null) {
      return paramObject.hashCode();
    }
    return 0;
  }
  
  public static Type resolve(Type paramType1, Class<?> paramClass, Type paramType2)
  {
    return a(paramType1, paramClass, paramType2, new HashSet());
  }
  
  public static String typeToString(Type paramType)
  {
    if ((paramType instanceof Class)) {
      return ((Class)paramType).getName();
    }
    return paramType.toString();
  }
  
  private static final class a
    implements Serializable, GenericArrayType
  {
    private final Type componentType;
    
    public a(Type paramType)
    {
      this.componentType = b.b(paramType);
    }
    
    public final boolean equals(Object paramObject)
    {
      return ((paramObject instanceof GenericArrayType)) && (b.equals(this, (GenericArrayType)paramObject));
    }
    
    public final Type getGenericComponentType()
    {
      return this.componentType;
    }
    
    public final int hashCode()
    {
      return this.componentType.hashCode();
    }
    
    public final String toString()
    {
      return b.typeToString(this.componentType) + "[]";
    }
  }
  
  private static final class b
    implements Serializable, ParameterizedType
  {
    private final Type ownerType;
    private final Type rawType;
    private final Type[] typeArguments;
    
    public b(Type paramType1, Type paramType2, Type... paramVarArgs)
    {
      int i;
      boolean bool;
      if ((paramType2 instanceof Class))
      {
        Class localClass = (Class)paramType2;
        if ((Modifier.isStatic(localClass.getModifiers())) || (localClass.getEnclosingClass() == null))
        {
          i = 1;
          if ((paramType1 == null) && (i == 0)) {
            break label160;
          }
          bool = true;
          label54:
          a.au(bool);
        }
      }
      else
      {
        if (paramType1 != null) {
          break label166;
        }
      }
      label160:
      label166:
      for (paramType1 = null;; paramType1 = b.b(paramType1))
      {
        this.ownerType = paramType1;
        this.rawType = b.b(paramType2);
        this.typeArguments = ((Type[])paramVarArgs.clone());
        int k = this.typeArguments.length;
        i = j;
        while (i < k)
        {
          a.E(this.typeArguments[i]);
          b.checkNotPrimitive(this.typeArguments[i]);
          this.typeArguments[i] = b.b(this.typeArguments[i]);
          i += 1;
        }
        i = 0;
        break;
        bool = false;
        break label54;
      }
    }
    
    public final boolean equals(Object paramObject)
    {
      return ((paramObject instanceof ParameterizedType)) && (b.equals(this, (ParameterizedType)paramObject));
    }
    
    public final Type[] getActualTypeArguments()
    {
      return (Type[])this.typeArguments.clone();
    }
    
    public final Type getOwnerType()
    {
      return this.ownerType;
    }
    
    public final Type getRawType()
    {
      return this.rawType;
    }
    
    public final int hashCode()
    {
      return Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode() ^ b.hashCodeOrZero(this.ownerType);
    }
    
    public final String toString()
    {
      int j = this.typeArguments.length;
      if (j == 0) {
        return b.typeToString(this.rawType);
      }
      StringBuilder localStringBuilder = new StringBuilder((j + 1) * 30);
      localStringBuilder.append(b.typeToString(this.rawType)).append("<").append(b.typeToString(this.typeArguments[0]));
      int i = 1;
      while (i < j)
      {
        localStringBuilder.append(", ").append(b.typeToString(this.typeArguments[i]));
        i += 1;
      }
      return ">";
    }
  }
  
  private static final class c
    implements Serializable, WildcardType
  {
    private final Type lowerBound;
    private final Type upperBound;
    
    public c(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
    {
      if (paramArrayOfType2.length <= 1)
      {
        bool1 = true;
        a.au(bool1);
        if (paramArrayOfType1.length != 1) {
          break label87;
        }
        bool1 = true;
        label27:
        a.au(bool1);
        if (paramArrayOfType2.length != 1) {
          break label97;
        }
        a.E(paramArrayOfType2[0]);
        b.checkNotPrimitive(paramArrayOfType2[0]);
        if (paramArrayOfType1[0] != Object.class) {
          break label92;
        }
      }
      label87:
      label92:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        a.au(bool1);
        this.lowerBound = b.b(paramArrayOfType2[0]);
        this.upperBound = Object.class;
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label27;
      }
      label97:
      a.E(paramArrayOfType1[0]);
      b.checkNotPrimitive(paramArrayOfType1[0]);
      this.lowerBound = null;
      this.upperBound = b.b(paramArrayOfType1[0]);
    }
    
    public final boolean equals(Object paramObject)
    {
      return ((paramObject instanceof WildcardType)) && (b.equals(this, (WildcardType)paramObject));
    }
    
    public final Type[] getLowerBounds()
    {
      if (this.lowerBound != null) {
        return new Type[] { this.lowerBound };
      }
      return b.EMPTY_TYPE_ARRAY;
    }
    
    public final Type[] getUpperBounds()
    {
      return new Type[] { this.upperBound };
    }
    
    public final int hashCode()
    {
      if (this.lowerBound != null) {}
      for (int i = this.lowerBound.hashCode() + 31;; i = 1) {
        return i ^ this.upperBound.hashCode() + 31;
      }
    }
    
    public final String toString()
    {
      if (this.lowerBound != null) {
        return "? super " + b.typeToString(this.lowerBound);
      }
      if (this.upperBound == Object.class) {
        return "?";
      }
      return "? extends " + b.typeToString(this.upperBound);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */