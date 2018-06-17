package io.intercom.android.sdk.models;

final class AutoValue_Reaction
  extends Reaction
{
  private final String imageUrl;
  private final int index;
  
  AutoValue_Reaction(int paramInt, String paramString)
  {
    this.index = paramInt;
    if (paramString == null) {
      throw new NullPointerException("Null imageUrl");
    }
    this.imageUrl = paramString;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Reaction)) {
        break;
      }
      paramObject = (Reaction)paramObject;
    } while ((this.index == ((Reaction)paramObject).getIndex()) && (this.imageUrl.equals(((Reaction)paramObject).getImageUrl())));
    return false;
    return false;
  }
  
  public final String getImageUrl()
  {
    return this.imageUrl;
  }
  
  public final int getIndex()
  {
    return this.index;
  }
  
  public final int hashCode()
  {
    return (this.index ^ 0xF4243) * 1000003 ^ this.imageUrl.hashCode();
  }
  
  public final String toString()
  {
    return "Reaction{index=" + this.index + ", imageUrl=" + this.imageUrl + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_Reaction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */