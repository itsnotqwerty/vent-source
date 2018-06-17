package io.intercom.android.sdk.commons.utilities;

import java.util.Collection;

public class CollectionUtils
{
  public static int capacityFor(Collection<?> paramCollection)
  {
    if (paramCollection == null) {
      return 0;
    }
    return paramCollection.size();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/commons/utilities/CollectionUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */