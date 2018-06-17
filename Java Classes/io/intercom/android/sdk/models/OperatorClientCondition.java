package io.intercom.android.sdk.models;

import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.utilities.NullSafety;

@AutoValue
public abstract class OperatorClientCondition
{
  public static OperatorClientCondition create(String paramString1, String paramString2)
  {
    return new AutoValue_OperatorClientCondition(paramString1, paramString2);
  }
  
  public abstract String conditionId();
  
  public abstract String id();
  
  public static final class Builder
  {
    String condition_id;
    String id;
    
    public final OperatorClientCondition build()
    {
      return OperatorClientCondition.create(NullSafety.valueOrEmpty(this.id), NullSafety.valueOrEmpty(this.condition_id));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/OperatorClientCondition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */