package io.intercom.android.sdk.utilities;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class CustomAttributeValidator
{
  private static final List<? extends Class<? extends Serializable>> ACCEPTED_CUSTOM_ATTRIBUTE_TYPES = Arrays.asList(new Class[] { String.class, Character.class, Short.class, Long.class, Float.class, Double.class, Integer.class, Byte.class, Boolean.class });
  
  public static String getAcceptedTypes()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = ACCEPTED_CUSTOM_ATTRIBUTE_TYPES.iterator();
    while (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      if (localStringBuilder.length() != 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(localClass.getSimpleName());
    }
    return localStringBuilder.toString();
  }
  
  public static boolean isValid(Object paramObject)
  {
    return (paramObject == null) || (ACCEPTED_CUSTOM_ATTRIBUTE_TYPES.contains(paramObject.getClass()));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/CustomAttributeValidator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */