package com.google.a.b.a;

import com.google.a.b.k;
import com.google.a.f;
import com.google.a.s;
import com.google.a.u;
import com.google.a.v;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class i
  implements v
{
  private final com.google.a.e bgP;
  private final com.google.a.b.c bgt;
  private final d bgu;
  private final com.google.a.b.d bgw;
  private final com.google.a.b.b.b bha = com.google.a.b.b.b.vG();
  
  public i(com.google.a.b.c paramc, com.google.a.e parame, com.google.a.b.d paramd, d paramd1)
  {
    this.bgt = paramc;
    this.bgP = parame;
    this.bgw = paramd;
    this.bgu = paramd1;
  }
  
  private Map<String, b> a(final f paramf, com.google.a.c.a<?> parama, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface()) {
      return localLinkedHashMap;
    }
    Type localType1 = parama.biJ;
    Object localObject2 = paramClass;
    Object localObject1 = parama;
    int i;
    label53:
    int j;
    label143:
    final boolean bool2;
    if (localObject2 != Object.class)
    {
      Field[] arrayOfField = ((Class)localObject2).getDeclaredFields();
      int k = arrayOfField.length;
      i = 0;
      if (i < k)
      {
        final Field localField = arrayOfField[i];
        boolean bool1 = a(localField, true);
        boolean bool3 = a(localField, false);
        if ((bool1) || (bool3))
        {
          this.bha.a(localField);
          Type localType2 = com.google.a.b.b.resolve(((com.google.a.c.a)localObject1).biJ, (Class)localObject2, localField.getGenericType());
          List localList = b(localField);
          parama = null;
          int m = localList.size();
          j = 0;
          if (j < m)
          {
            String str = (String)localList.get(j);
            if (j != 0) {
              bool1 = false;
            }
            final com.google.a.c.a locala = com.google.a.c.a.e(localType2);
            final boolean bool4 = k.d(locala.bkb);
            final Object localObject3 = (com.google.a.a.b)localField.getAnnotation(com.google.a.a.b.class);
            paramClass = null;
            if (localObject3 != null) {
              paramClass = d.a(this.bgt, paramf, locala, (com.google.a.a.b)localObject3);
            }
            if (paramClass != null)
            {
              bool2 = true;
              label228:
              localObject3 = paramClass;
              if (paramClass == null) {
                localObject3 = paramf.a(locala);
              }
              paramClass = (b)localLinkedHashMap.put(str, new b(str, bool1, bool3)
              {
                final void a(com.google.a.d.a paramAnonymousa, Object paramAnonymousObject)
                  throws IOException, IllegalAccessException
                {
                  paramAnonymousa = localObject3.a(paramAnonymousa);
                  if ((paramAnonymousa != null) || (!bool4)) {
                    localField.set(paramAnonymousObject, paramAnonymousa);
                  }
                }
                
                final void a(com.google.a.d.c paramAnonymousc, Object paramAnonymousObject)
                  throws IOException, IllegalAccessException
                {
                  Object localObject = localField.get(paramAnonymousObject);
                  if (bool2) {}
                  for (paramAnonymousObject = localObject3;; paramAnonymousObject = new m(paramf, localObject3, locala.biJ))
                  {
                    ((u)paramAnonymousObject).a(paramAnonymousc, localObject);
                    return;
                  }
                }
                
                public final boolean ag(Object paramAnonymousObject)
                  throws IOException, IllegalAccessException
                {
                  if (!this.biw) {}
                  while (localField.get(paramAnonymousObject) == paramAnonymousObject) {
                    return false;
                  }
                  return true;
                }
              });
              if (parama != null) {
                break label383;
              }
              parama = paramClass;
            }
          }
        }
      }
    }
    label383:
    for (;;)
    {
      j += 1;
      break label143;
      bool2 = false;
      break label228;
      if (parama != null) {
        throw new IllegalArgumentException(localType1 + " declares multiple JSON fields named " + parama.name);
      }
      i += 1;
      break label53;
      localObject1 = com.google.a.c.a.e(com.google.a.b.b.resolve(((com.google.a.c.a)localObject1).biJ, (Class)localObject2, ((Class)localObject2).getGenericSuperclass()));
      localObject2 = ((com.google.a.c.a)localObject1).bkb;
      break;
      return localLinkedHashMap;
    }
  }
  
  private boolean a(Field paramField, boolean paramBoolean)
  {
    Object localObject = this.bgw;
    int i;
    if ((((com.google.a.b.d)localObject).n(paramField.getType())) || (((com.google.a.b.d)localObject).aF(paramBoolean)))
    {
      i = 1;
      if (i != 0) {
        break label289;
      }
      if ((((com.google.a.b.d)localObject).bhk & paramField.getModifiers()) == 0) {
        break label59;
      }
      i = 1;
    }
    for (;;)
    {
      if (i != 0) {
        break label289;
      }
      return true;
      i = 0;
      break;
      label59:
      if ((((com.google.a.b.d)localObject).bhj != -1.0D) && (!((com.google.a.b.d)localObject).a((com.google.a.a.d)paramField.getAnnotation(com.google.a.a.d.class), (com.google.a.a.e)paramField.getAnnotation(com.google.a.a.e.class))))
      {
        i = 1;
      }
      else if (paramField.isSynthetic())
      {
        i = 1;
      }
      else
      {
        if (((com.google.a.b.d)localObject).bhm)
        {
          com.google.a.a.a locala = (com.google.a.a.a)paramField.getAnnotation(com.google.a.a.a.class);
          if (locala != null)
          {
            if (!paramBoolean) {
              break label157;
            }
            if (locala.vj()) {
              break label167;
            }
          }
          label157:
          while (!locala.vk())
          {
            i = 1;
            break;
          }
        }
        label167:
        if ((!((com.google.a.b.d)localObject).bhl) && (com.google.a.b.d.p(paramField.getType())))
        {
          i = 1;
        }
        else if (com.google.a.b.d.o(paramField.getType()))
        {
          i = 1;
        }
        else
        {
          if (paramBoolean) {}
          for (localObject = ((com.google.a.b.d)localObject).bhn;; localObject = ((com.google.a.b.d)localObject).bho)
          {
            if (((List)localObject).isEmpty()) {
              break label284;
            }
            new com.google.a.c(paramField);
            paramField = ((List)localObject).iterator();
            do
            {
              if (!paramField.hasNext()) {
                break;
              }
            } while (!((com.google.a.b)paramField.next()).va());
            i = 1;
            break;
          }
          label284:
          i = 0;
        }
      }
    }
    label289:
    return false;
  }
  
  private List<String> b(Field paramField)
  {
    Object localObject = (com.google.a.a.c)paramField.getAnnotation(com.google.a.a.c.class);
    if (localObject == null)
    {
      paramField = Collections.singletonList(this.bgP.a(paramField));
      return paramField;
    }
    paramField = ((com.google.a.a.c)localObject).value();
    String[] arrayOfString = ((com.google.a.a.c)localObject).vm();
    if (arrayOfString.length == 0) {
      return Collections.singletonList(paramField);
    }
    localObject = new ArrayList(arrayOfString.length + 1);
    ((List)localObject).add(paramField);
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      paramField = (Field)localObject;
      if (i >= j) {
        break;
      }
      ((List)localObject).add(arrayOfString[i]);
      i += 1;
    }
  }
  
  public final <T> u<T> a(f paramf, com.google.a.c.a<T> parama)
  {
    Class localClass = parama.bkb;
    if (!Object.class.isAssignableFrom(localClass)) {
      return null;
    }
    return new a(this.bgt.b(parama), a(paramf, parama, localClass));
  }
  
  public static final class a<T>
    extends u<T>
  {
    private final com.google.a.b.i<T> bhW;
    private final Map<String, i.b> biv;
    
    a(com.google.a.b.i<T> parami, Map<String, i.b> paramMap)
    {
      this.bhW = parami;
      this.biv = paramMap;
    }
    
    public final T a(com.google.a.d.a parama)
      throws IOException
    {
      if (parama.vv() == com.google.a.d.b.bku)
      {
        parama.nextNull();
        return null;
      }
      Object localObject1 = this.bhW.vo();
      try
      {
        parama.beginObject();
        for (;;)
        {
          if (!parama.hasNext()) {
            break label103;
          }
          localObject2 = parama.nextName();
          localObject2 = (i.b)this.biv.get(localObject2);
          if ((localObject2 != null) && (((i.b)localObject2).bix)) {
            break;
          }
          parama.skipValue();
        }
      }
      catch (IllegalStateException parama)
      {
        for (;;)
        {
          Object localObject2;
          throw new s(parama);
          ((i.b)localObject2).a(parama, localObject1);
        }
      }
      catch (IllegalAccessException parama)
      {
        throw new AssertionError(parama);
      }
      label103:
      parama.endObject();
      return (T)localObject1;
    }
    
    public final void a(com.google.a.d.c paramc, T paramT)
      throws IOException
    {
      if (paramT == null)
      {
        paramc.vF();
        return;
      }
      paramc.vD();
      try
      {
        Iterator localIterator = this.biv.values().iterator();
        while (localIterator.hasNext())
        {
          i.b localb = (i.b)localIterator.next();
          if (localb.ag(paramT))
          {
            paramc.jdMethod_do(localb.name);
            localb.a(paramc, paramT);
          }
        }
        paramc.vE();
      }
      catch (IllegalAccessException paramc)
      {
        throw new AssertionError(paramc);
      }
    }
  }
  
  static abstract class b
  {
    final boolean biw;
    final boolean bix;
    final String name;
    
    protected b(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.name = paramString;
      this.biw = paramBoolean1;
      this.bix = paramBoolean2;
    }
    
    abstract void a(com.google.a.d.a parama, Object paramObject)
      throws IOException, IllegalAccessException;
    
    abstract void a(com.google.a.d.c paramc, Object paramObject)
      throws IOException, IllegalAccessException;
    
    abstract boolean ag(Object paramObject)
      throws IOException, IllegalAccessException;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */