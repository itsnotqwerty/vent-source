package com.google.ads.mediation;

import com.google.android.gms.internal.af;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@Deprecated
public class e
{
  public final void g(Map<String, String> paramMap)
    throws e.a
  {
    Object localObject1 = new HashMap();
    Object localObject2 = getClass().getFields();
    int j = localObject2.length;
    int i = 0;
    Object localObject3;
    while (i < j)
    {
      localObject3 = localObject2[i];
      b localb = (b)((Field)localObject3).getAnnotation(b.class);
      if (localb != null) {
        ((Map)localObject1).put(localb.name(), localObject3);
      }
      i += 1;
    }
    if (((Map)localObject1).isEmpty()) {
      af.bt("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
    }
    paramMap = paramMap.entrySet().iterator();
    Object localObject4;
    while (paramMap.hasNext())
    {
      localObject2 = (Map.Entry)paramMap.next();
      localObject3 = (Field)((Map)localObject1).remove(((Map.Entry)localObject2).getKey());
      if (localObject3 != null)
      {
        try
        {
          ((Field)localObject3).set(this, ((Map.Entry)localObject2).getValue());
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          localObject2 = (String)((Map.Entry)localObject2).getKey();
          af.bt(String.valueOf(localObject2).length() + 49 + "Server option \"" + (String)localObject2 + "\" could not be set: Illegal Access");
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          localObject2 = (String)((Map.Entry)localObject2).getKey();
          af.bt(String.valueOf(localObject2).length() + 43 + "Server option \"" + (String)localObject2 + "\" could not be set: Bad Type");
        }
      }
      else
      {
        localObject4 = (String)((Map.Entry)localObject2).getKey();
        localObject2 = (String)((Map.Entry)localObject2).getValue();
        af.br(String.valueOf(localObject4).length() + 31 + String.valueOf(localObject2).length() + "Unexpected server option: " + (String)localObject4 + " = \"" + (String)localObject2 + "\"");
      }
    }
    localObject2 = new StringBuilder();
    localObject1 = ((Map)localObject1).values().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject4 = (Field)((Iterator)localObject1).next();
      if (((b)((Field)localObject4).getAnnotation(b.class)).lp())
      {
        paramMap = String.valueOf(((b)((Field)localObject4).getAnnotation(b.class)).name());
        if (paramMap.length() != 0) {}
        for (paramMap = "Required server option missing: ".concat(paramMap);; paramMap = new String("Required server option missing: "))
        {
          af.bt(paramMap);
          if (((StringBuilder)localObject2).length() > 0) {
            ((StringBuilder)localObject2).append(", ");
          }
          ((StringBuilder)localObject2).append(((b)((Field)localObject4).getAnnotation(b.class)).name());
          break;
        }
      }
    }
    if (((StringBuilder)localObject2).length() > 0)
    {
      paramMap = String.valueOf(((StringBuilder)localObject2).toString());
      if (paramMap.length() != 0) {}
      for (paramMap = "Required server option(s) missing: ".concat(paramMap);; paramMap = new String("Required server option(s) missing: ")) {
        throw new a(paramMap);
      }
    }
  }
  
  public static final class a
    extends Exception
  {
    public a(String paramString)
    {
      super();
    }
  }
  
  @Retention(RetentionPolicy.RUNTIME)
  @Target({java.lang.annotation.ElementType.FIELD})
  public static @interface b
  {
    boolean lp() default true;
    
    String name();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/mediation/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */