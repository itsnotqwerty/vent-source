package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.b.h;
import io.intercom.a.b.a.p;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
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
  implements s
{
  private final io.intercom.a.b.a.b.c cRm;
  private final io.intercom.a.b.a.b.d cRn;
  private final d cRp;
  private final io.intercom.a.b.a.d cSh;
  
  public i(io.intercom.a.b.a.b.c paramc, io.intercom.a.b.a.d paramd, io.intercom.a.b.a.b.d paramd1, d paramd2)
  {
    this.cRm = paramc;
    this.cSh = paramd;
    this.cRn = paramd1;
    this.cRp = paramd2;
  }
  
  private Map<String, b> a(final io.intercom.a.b.a.e parame, io.intercom.a.b.a.c.a<?> parama, Class<?> paramClass)
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
    label140:
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
          localField.setAccessible(true);
          Type localType2 = io.intercom.a.b.a.b.b.resolve(((io.intercom.a.b.a.c.a)localObject1).biJ, (Class)localObject2, localField.getGenericType());
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
            final io.intercom.a.b.a.c.a locala = io.intercom.a.b.a.c.a.f(localType2);
            final boolean bool4 = io.intercom.a.b.a.b.i.d(locala.bkb);
            final Object localObject3 = (io.intercom.a.b.a.a.b)localField.getAnnotation(io.intercom.a.b.a.a.b.class);
            paramClass = null;
            if (localObject3 != null) {
              paramClass = d.a(this.cRm, parame, locala, (io.intercom.a.b.a.a.b)localObject3);
            }
            if (paramClass != null)
            {
              bool2 = true;
              label225:
              localObject3 = paramClass;
              if (paramClass == null) {
                localObject3 = parame.a(locala);
              }
              paramClass = (b)localLinkedHashMap.put(str, new b(str, bool1, bool3)
              {
                final void a(io.intercom.a.b.a.d.a paramAnonymousa, Object paramAnonymousObject)
                  throws IOException, IllegalAccessException
                {
                  paramAnonymousa = localObject3.a(paramAnonymousa);
                  if ((paramAnonymousa != null) || (!bool4)) {
                    localField.set(paramAnonymousObject, paramAnonymousa);
                  }
                }
                
                final void a(io.intercom.a.b.a.d.c paramAnonymousc, Object paramAnonymousObject)
                  throws IOException, IllegalAccessException
                {
                  Object localObject = localField.get(paramAnonymousObject);
                  if (bool2) {}
                  for (paramAnonymousObject = localObject3;; paramAnonymousObject = new m(parame, localObject3, locala.biJ))
                  {
                    ((r)paramAnonymousObject).a(paramAnonymousc, localObject);
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
                break label380;
              }
              parama = paramClass;
            }
          }
        }
      }
    }
    label380:
    for (;;)
    {
      j += 1;
      break label140;
      bool2 = false;
      break label225;
      if (parama != null) {
        throw new IllegalArgumentException(localType1 + " declares multiple JSON fields named " + parama.name);
      }
      i += 1;
      break label53;
      localObject1 = io.intercom.a.b.a.c.a.f(io.intercom.a.b.a.b.b.resolve(((io.intercom.a.b.a.c.a)localObject1).biJ, (Class)localObject2, ((Class)localObject2).getGenericSuperclass()));
      localObject2 = ((io.intercom.a.b.a.c.a)localObject1).bkb;
      break;
      return localLinkedHashMap;
    }
  }
  
  private boolean a(Field paramField, boolean paramBoolean)
  {
    Object localObject = this.cRn;
    if (!((io.intercom.a.b.a.b.d)localObject).b(paramField.getType(), paramBoolean))
    {
      int i;
      if ((((io.intercom.a.b.a.b.d)localObject).bhk & paramField.getModifiers()) != 0) {
        i = 1;
      }
      while (i == 0)
      {
        return true;
        if ((((io.intercom.a.b.a.b.d)localObject).bhj != -1.0D) && (!((io.intercom.a.b.a.b.d)localObject).a((io.intercom.a.b.a.a.d)paramField.getAnnotation(io.intercom.a.b.a.a.d.class), (io.intercom.a.b.a.a.e)paramField.getAnnotation(io.intercom.a.b.a.a.e.class))))
        {
          i = 1;
        }
        else if (paramField.isSynthetic())
        {
          i = 1;
        }
        else
        {
          if (((io.intercom.a.b.a.b.d)localObject).bhm)
          {
            io.intercom.a.b.a.a.a locala = (io.intercom.a.b.a.a.a)paramField.getAnnotation(io.intercom.a.b.a.a.a.class);
            if (locala != null)
            {
              if (!paramBoolean) {
                break label138;
              }
              if (locala.vj()) {
                break label148;
              }
            }
            label138:
            while (!locala.vk())
            {
              i = 1;
              break;
            }
          }
          label148:
          if ((!((io.intercom.a.b.a.b.d)localObject).bhl) && (io.intercom.a.b.a.b.d.p(paramField.getType())))
          {
            i = 1;
          }
          else if (io.intercom.a.b.a.b.d.o(paramField.getType()))
          {
            i = 1;
          }
          else
          {
            if (paramBoolean) {}
            for (localObject = ((io.intercom.a.b.a.b.d)localObject).bhn;; localObject = ((io.intercom.a.b.a.b.d)localObject).bho)
            {
              if (((List)localObject).isEmpty()) {
                break label265;
              }
              new io.intercom.a.b.a.b(paramField);
              paramField = ((List)localObject).iterator();
              do
              {
                if (!paramField.hasNext()) {
                  break;
                }
              } while (!((io.intercom.a.b.a.a)paramField.next()).JY());
              i = 1;
              break;
            }
            label265:
            i = 0;
          }
        }
      }
    }
    return false;
  }
  
  private List<String> b(Field paramField)
  {
    Object localObject = (io.intercom.a.b.a.a.c)paramField.getAnnotation(io.intercom.a.b.a.a.c.class);
    if (localObject == null)
    {
      paramField = Collections.singletonList(this.cSh.a(paramField));
      return paramField;
    }
    paramField = ((io.intercom.a.b.a.a.c)localObject).value();
    String[] arrayOfString = ((io.intercom.a.b.a.a.c)localObject).vm();
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
  
  public final <T> r<T> a(io.intercom.a.b.a.e parame, io.intercom.a.b.a.c.a<T> parama)
  {
    Class localClass = parama.bkb;
    if (!Object.class.isAssignableFrom(localClass)) {
      return null;
    }
    return new a(this.cRm.b(parama), a(parame, parama, localClass));
  }
  
  public static final class a<T>
    extends r<T>
  {
    private final Map<String, i.b> biv;
    private final h<T> cRZ;
    
    a(h<T> paramh, Map<String, i.b> paramMap)
    {
      this.cRZ = paramh;
      this.biv = paramMap;
    }
    
    public final T a(io.intercom.a.b.a.d.a parama)
      throws IOException
    {
      if (parama.Kh() == io.intercom.a.b.a.d.b.cTE)
      {
        parama.nextNull();
        return null;
      }
      Object localObject1 = this.cRZ.vo();
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
          throw new p(parama);
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
    
    public final void a(io.intercom.a.b.a.d.c paramc, T paramT)
      throws IOException
    {
      if (paramT == null)
      {
        paramc.Kn();
        return;
      }
      paramc.Kl();
      try
      {
        Iterator localIterator = this.biv.values().iterator();
        while (localIterator.hasNext())
        {
          i.b localb = (i.b)localIterator.next();
          if (localb.ag(paramT))
          {
            paramc.fd(localb.name);
            localb.a(paramc, paramT);
          }
        }
        paramc.Km();
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
    
    abstract void a(io.intercom.a.b.a.d.a parama, Object paramObject)
      throws IOException, IllegalAccessException;
    
    abstract void a(io.intercom.a.b.a.d.c paramc, Object paramObject)
      throws IOException, IllegalAccessException;
    
    abstract boolean ag(Object paramObject)
      throws IOException, IllegalAccessException;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */