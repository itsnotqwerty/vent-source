package io.intercom.android.sdk.models;

import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.commons.utilities.CollectionUtils;
import io.intercom.android.sdk.utilities.NullSafety;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@AutoValue
public abstract class TeamPresence
{
  public static TeamPresence create(List<Participant> paramList, String paramString1, String paramString2)
  {
    return new AutoValue_TeamPresence(paramList, paramString1, paramString2);
  }
  
  public abstract List<Participant> getActiveAdmins();
  
  public abstract String getExpectedResponseDelay();
  
  public abstract String getOfficeHours();
  
  public boolean isEmpty()
  {
    return (getActiveAdmins().isEmpty()) && (getExpectedResponseDelay().isEmpty());
  }
  
  public static final class Builder
  {
    List<Participant.Builder> active_admins;
    String expected_response_delay;
    String office_hours;
    
    public final TeamPresence build()
    {
      ArrayList localArrayList = new ArrayList(CollectionUtils.capacityFor(this.active_admins));
      if (this.active_admins != null)
      {
        Iterator localIterator = this.active_admins.iterator();
        while (localIterator.hasNext())
        {
          Participant.Builder localBuilder = (Participant.Builder)localIterator.next();
          if (localBuilder != null) {
            localArrayList.add(localBuilder.build());
          }
        }
      }
      return TeamPresence.create(localArrayList, NullSafety.valueOrEmpty(this.expected_response_delay), NullSafety.valueOrEmpty(this.office_hours));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/TeamPresence.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */