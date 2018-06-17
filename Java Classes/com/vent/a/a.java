package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class a
  implements Parcelable
{
  public static void a(a parama, Parcel paramParcel, int paramInt)
  {
    if (parama == null)
    {
      paramParcel.writeInt(0);
      return;
    }
    paramParcel.writeInt(1);
    parama.writeToParcel(paramParcel, paramInt);
  }
  
  public static <T extends a> T b(Parcel paramParcel, Parcelable.Creator<T> paramCreator)
  {
    if (paramParcel.readInt() == 0) {
      return null;
    }
    return (a)paramCreator.createFromParcel(paramParcel);
  }
  
  public JSONObject EK()
    throws JSONException
  {
    throw new AssertionError();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  static final class a<T>
    implements Parcelable.Creator<T>
  {
    private final Class<T> axf;
    private Constructor<T> cjx;
    
    a(Class<T> paramClass)
    {
      this.axf = paramClass;
      try
      {
        this.cjx = paramClass.getConstructor(new Class[] { Parcel.class });
        return;
      }
      catch (NoSuchMethodException paramClass)
      {
        paramClass.printStackTrace();
      }
    }
    
    public final T createFromParcel(Parcel paramParcel)
    {
      try
      {
        paramParcel = this.cjx.newInstance(new Object[] { paramParcel });
        return paramParcel;
      }
      catch (Exception paramParcel) {}
      return null;
    }
    
    public final T[] newArray(int paramInt)
    {
      return (Object[])Array.newInstance(this.axf, paramInt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */