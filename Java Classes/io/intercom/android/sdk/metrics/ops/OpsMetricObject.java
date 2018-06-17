package io.intercom.android.sdk.metrics.ops;

public class OpsMetricObject
{
  private final String id;
  private final String name;
  private final String type;
  private final long value;
  
  public OpsMetricObject(String paramString1, String paramString2, long paramLong, String paramString3)
  {
    this.type = paramString1;
    this.name = paramString2;
    this.value = paramLong;
    this.id = paramString3;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return bool1;
              bool1 = bool2;
            } while (paramObject == null);
            bool1 = bool2;
          } while (getClass() != paramObject.getClass());
          paramObject = (OpsMetricObject)paramObject;
          bool1 = bool2;
        } while (this.value != ((OpsMetricObject)paramObject).value);
        bool1 = bool2;
      } while (!this.type.equals(((OpsMetricObject)paramObject).type));
      bool1 = bool2;
    } while (!this.name.equals(((OpsMetricObject)paramObject).name));
    return this.id.equals(((OpsMetricObject)paramObject).id);
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public int hashCode()
  {
    return ((this.type.hashCode() * 31 + this.name.hashCode()) * 31 + (int)(this.value ^ this.value >>> 32)) * 31 + this.id.hashCode();
  }
  
  public String toString()
  {
    return "OpsMetricObject{type='" + this.type + '\'' + ", name='" + this.name + '\'' + ", value=" + this.value + ", id='" + this.id + '\'' + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/metrics/ops/OpsMetricObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */