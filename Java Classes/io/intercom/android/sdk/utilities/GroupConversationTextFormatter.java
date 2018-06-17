package io.intercom.android.sdk.utilities;

import android.content.Context;
import io.intercom.android.sdk.R.string;

public class GroupConversationTextFormatter
{
  public static CharSequence groupConversationTitle(String paramString, int paramInt, Context paramContext)
  {
    Object localObject;
    if (paramInt == 1) {
      localObject = Phrase.from(paramContext, R.string.intercom_name_and_1_other).put("name", paramString).format();
    }
    do
    {
      return (CharSequence)localObject;
      localObject = paramString;
    } while (paramInt <= 1);
    return Phrase.from(paramContext, R.string.intercom_name_and_x_others).put("name", paramString).put("count", paramInt).format();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/GroupConversationTextFormatter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */