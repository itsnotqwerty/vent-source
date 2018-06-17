package io.intercom.android.sdk.models;

final class AutoValue_Participant
  extends Participant
{
  private final Avatar avatar;
  private final String email;
  private final String id;
  private final String name;
  private final String type;
  
  AutoValue_Participant(String paramString1, String paramString2, String paramString3, String paramString4, Avatar paramAvatar)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null id");
    }
    this.id = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null name");
    }
    this.name = paramString2;
    if (paramString3 == null) {
      throw new NullPointerException("Null type");
    }
    this.type = paramString3;
    if (paramString4 == null) {
      throw new NullPointerException("Null email");
    }
    this.email = paramString4;
    if (paramAvatar == null) {
      throw new NullPointerException("Null avatar");
    }
    this.avatar = paramAvatar;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Participant)) {
        break;
      }
      paramObject = (Participant)paramObject;
    } while ((this.id.equals(((Participant)paramObject).getId())) && (this.name.equals(((Participant)paramObject).getName())) && (this.type.equals(((Participant)paramObject).getType())) && (this.email.equals(((Participant)paramObject).getEmail())) && (this.avatar.equals(((Participant)paramObject).getAvatar())));
    return false;
    return false;
  }
  
  public final Avatar getAvatar()
  {
    return this.avatar;
  }
  
  public final String getEmail()
  {
    return this.email;
  }
  
  public final String getId()
  {
    return this.id;
  }
  
  public final String getName()
  {
    return this.name;
  }
  
  public final String getType()
  {
    return this.type;
  }
  
  public final int hashCode()
  {
    return ((((this.id.hashCode() ^ 0xF4243) * 1000003 ^ this.name.hashCode()) * 1000003 ^ this.type.hashCode()) * 1000003 ^ this.email.hashCode()) * 1000003 ^ this.avatar.hashCode();
  }
  
  public final String toString()
  {
    return "Participant{id=" + this.id + ", name=" + this.name + ", type=" + this.type + ", email=" + this.email + ", avatar=" + this.avatar + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_Participant.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */