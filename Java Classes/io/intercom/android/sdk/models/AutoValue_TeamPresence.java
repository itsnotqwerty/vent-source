package io.intercom.android.sdk.models;

import java.util.List;

final class AutoValue_TeamPresence
  extends TeamPresence
{
  private final List<Participant> activeAdmins;
  private final String expectedResponseDelay;
  private final String officeHours;
  
  AutoValue_TeamPresence(List<Participant> paramList, String paramString1, String paramString2)
  {
    if (paramList == null) {
      throw new NullPointerException("Null activeAdmins");
    }
    this.activeAdmins = paramList;
    if (paramString1 == null) {
      throw new NullPointerException("Null expectedResponseDelay");
    }
    this.expectedResponseDelay = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null officeHours");
    }
    this.officeHours = paramString2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof TeamPresence)) {
        break;
      }
      paramObject = (TeamPresence)paramObject;
    } while ((this.activeAdmins.equals(((TeamPresence)paramObject).getActiveAdmins())) && (this.expectedResponseDelay.equals(((TeamPresence)paramObject).getExpectedResponseDelay())) && (this.officeHours.equals(((TeamPresence)paramObject).getOfficeHours())));
    return false;
    return false;
  }
  
  public final List<Participant> getActiveAdmins()
  {
    return this.activeAdmins;
  }
  
  public final String getExpectedResponseDelay()
  {
    return this.expectedResponseDelay;
  }
  
  public final String getOfficeHours()
  {
    return this.officeHours;
  }
  
  public final int hashCode()
  {
    return ((this.activeAdmins.hashCode() ^ 0xF4243) * 1000003 ^ this.expectedResponseDelay.hashCode()) * 1000003 ^ this.officeHours.hashCode();
  }
  
  public final String toString()
  {
    return "TeamPresence{activeAdmins=" + this.activeAdmins + ", expectedResponseDelay=" + this.expectedResponseDelay + ", officeHours=" + this.officeHours + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_TeamPresence.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */