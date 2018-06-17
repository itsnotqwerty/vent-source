package io.intercom.android.sdk.views;

import android.content.res.Resources;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.utilities.TimeFormatter;

public class PartMetadataFormatter
{
  private final TimeFormatter timeFormatter;
  
  public PartMetadataFormatter(TimeFormatter paramTimeFormatter)
  {
    this.timeFormatter = paramTimeFormatter;
  }
  
  private String formatLastPart(Part paramPart, Resources paramResources)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramPart.isDisplayDelivered())
    {
      localStringBuilder.append(paramResources.getString(R.string.intercom_delivered));
      if (!"seen".equalsIgnoreCase(paramPart.getSeenByAdmin())) {
        break label80;
      }
      localStringBuilder.append(". ").append(paramResources.getString(R.string.intercom_message_seen));
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append(this.timeFormatter.getFormattedTime(paramPart.getCreatedAt()));
      break;
      label80:
      if ("unseen".equalsIgnoreCase(paramPart.getSeenByAdmin())) {
        localStringBuilder.append(". ").append(paramResources.getString(R.string.intercom_message_unseen));
      }
    }
  }
  
  private String formatPart(Part paramPart)
  {
    if (paramPart.isDisplayDelivered()) {
      return "";
    }
    return this.timeFormatter.getAbsoluteTime(paramPart.getCreatedAt());
  }
  
  public String getMetadataString(Part paramPart, boolean paramBoolean, Resources paramResources)
  {
    switch (paramPart.getMessageState())
    {
    default: 
      if (paramBoolean) {
        return formatLastPart(paramPart, paramResources);
      }
      break;
    case ???: 
      return paramResources.getString(R.string.intercom_message_state_sending);
    case ???: 
    case ???: 
      return paramResources.getString(R.string.intercom_message_failed_try_again);
    }
    return formatPart(paramPart);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/PartMetadataFormatter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */