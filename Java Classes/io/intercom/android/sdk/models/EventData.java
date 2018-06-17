package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class EventData
  implements Parcelable
{
  public static final Parcelable.Creator<EventData> CREATOR = new Parcelable.Creator()
  {
    public final EventData createFromParcel(Parcel paramAnonymousParcel)
    {
      return new EventData(paramAnonymousParcel);
    }
    
    public final EventData[] newArray(int paramAnonymousInt)
    {
      return new EventData[paramAnonymousInt];
    }
  };
  public static final EventData NULL = new EventData(new Builder());
  private final String eventAsPlainText;
  private final EventParticipant participant;
  
  protected EventData(Parcel paramParcel)
  {
    this.participant = ((EventParticipant)paramParcel.readValue(EventParticipant.class.getClassLoader()));
    this.eventAsPlainText = paramParcel.readString();
  }
  
  private EventData(Builder paramBuilder)
  {
    EventParticipant localEventParticipant;
    if (paramBuilder.participant == null)
    {
      localEventParticipant = EventParticipant.NULL;
      this.participant = localEventParticipant;
      if (paramBuilder.eventAsPlainText != null) {
        break label47;
      }
    }
    label47:
    for (paramBuilder = "";; paramBuilder = paramBuilder.eventAsPlainText)
    {
      this.eventAsPlainText = paramBuilder;
      return;
      localEventParticipant = paramBuilder.participant.build();
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getEventAsPlainText()
  {
    return this.eventAsPlainText;
  }
  
  public EventParticipant getParticipant()
  {
    return this.participant;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(this.participant);
    paramParcel.writeString(this.eventAsPlainText);
  }
  
  public static final class Builder
  {
    String eventAsPlainText;
    EventParticipant.Builder participant;
    
    public final EventData build()
    {
      return new EventData(this, null);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/EventData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */