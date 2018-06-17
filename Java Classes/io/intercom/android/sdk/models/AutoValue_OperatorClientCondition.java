package io.intercom.android.sdk.models;

final class AutoValue_OperatorClientCondition
  extends OperatorClientCondition
{
  private final String conditionId;
  private final String id;
  
  AutoValue_OperatorClientCondition(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null id");
    }
    this.id = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null conditionId");
    }
    this.conditionId = paramString2;
  }
  
  public final String conditionId()
  {
    return this.conditionId;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof OperatorClientCondition)) {
        break;
      }
      paramObject = (OperatorClientCondition)paramObject;
    } while ((this.id.equals(((OperatorClientCondition)paramObject).id())) && (this.conditionId.equals(((OperatorClientCondition)paramObject).conditionId())));
    return false;
    return false;
  }
  
  public final int hashCode()
  {
    return (this.id.hashCode() ^ 0xF4243) * 1000003 ^ this.conditionId.hashCode();
  }
  
  public final String id()
  {
    return this.id;
  }
  
  public final String toString()
  {
    return "OperatorClientCondition{id=" + this.id + ", conditionId=" + this.conditionId + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_OperatorClientCondition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */