package io.intercom.android.sdk.utilities;

import io.intercom.android.sdk.store.Store.Subscription;
import javax.annotation.Nullable;

public class StoreUtils
{
  public static void safeUnsubscribe(@Nullable Store.Subscription paramSubscription)
  {
    if (paramSubscription != null) {
      paramSubscription.unsubscribe();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/StoreUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */