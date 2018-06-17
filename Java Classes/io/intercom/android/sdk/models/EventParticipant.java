package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import io.intercom.android.sdk.utilities.NullSafety;

public class EventParticipant
  implements Parcelable
{
  public static final Parcelable.Creator<EventParticipant> CREATOR = new Parcelable.Creator()
  {
    public final EventParticipant createFromParcel(Parcel paramAnonymousParcel)
    {
      return new EventParticipant(paramAnonymousParcel);
    }
    
    public final EventParticipant[] newArray(int paramAnonymousInt)
    {
      return new EventParticipant[paramAnonymousInt];
    }
  };
  public static final EventParticipant NULL = new EventParticipant(new Builder());
  private final Avatar avatar;
  private final String id;
  private final String initial;
  private final String label;
  private final String type;
  
  protected EventParticipant(Parcel paramParcel)
  {
    this.id = paramParcel.readString();
    this.initial = paramParcel.readString();
    this.label = paramParcel.readString();
    this.type = paramParcel.readString();
    this.avatar = ((Avatar)paramParcel.readValue(Avatar.class.getClassLoader()));
  }
  
  private EventParticipant(Builder paramBuilder)
  {
    this.id = NullSafety.valueOrEmpty(paramBuilder.id);
    this.initial = NullSafety.valueOrEmpty(paramBuilder.initial);
    this.label = NullSafety.valueOrEmpty(paramBuilder.label);
    this.type = NullSafety.valueOrEmpty(paramBuilder.type);
    if (paramBuilder.avatar == null) {}
    for (paramBuilder = new Avatar.Builder().build();; paramBuilder = paramBuilder.avatar.build())
    {
      this.avatar = paramBuilder;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Avatar getAvatar()
  {
    return this.avatar;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getInitial()
  {
    return this.initial;
  }
  
  public String getLabel()
  {
    return this.label;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.id);
    paramParcel.writeString(this.initial);
    paramParcel.writeString(this.label);
    paramParcel.writeString(this.type);
    paramParcel.writeValue(this.avatar);
  }
  
  public static final class Builder
  {
    Avatar.Builder avatar;
    String id;
    String initial;
    String label;
    String type;
    
    public final EventParticipant build()
    {
      return new EventParticipant(this, null);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/EventParticipant.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */