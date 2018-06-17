package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.lang.reflect.Constructor;
import org.json.JSONObject;

public abstract class c<Ts extends c, Tf extends Ts>
  extends b<Ts>
{
  public int flags;
  
  c() {}
  
  c(Ts paramTs)
  {
    a(paramTs);
  }
  
  c(JSONObject paramJSONObject)
  {
    this(paramJSONObject, (byte)0);
  }
  
  c(JSONObject paramJSONObject, byte paramByte)
  {
    super(paramJSONObject);
  }
  
  public static <Ts extends c> Ts b(Ts paramTs)
  {
    if (paramTs == null) {
      return null;
    }
    return paramTs.EN();
  }
  
  public static <Ts extends c, Tf extends Ts> Tf c(Ts paramTs)
  {
    if (paramTs == null) {
      return null;
    }
    return paramTs.EO();
  }
  
  abstract Ts EL();
  
  abstract Tf EM();
  
  public final Ts EN()
  {
    if ((this.flags & 0x1) == 0) {
      return this;
    }
    c localc = EL();
    localc.a(this);
    return localc;
  }
  
  public final Tf EO()
  {
    if ((this.flags & 0x1) != 0) {
      return this;
    }
    c localc = EM();
    localc.a(this);
    return localc;
  }
  
  void a(Ts paramTs)
  {
    this.cjy = paramTs.cjy;
    paramTs.flags &= 0xFFFFFFFE;
  }
  
  abstract void d(Parcel paramParcel)
    throws Exception;
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.flags);
  }
  
  static final class a<Ts extends c, Tf extends Ts>
    implements Parcelable.Creator<Ts>
  {
    private final Class<Ts> axf;
    private Constructor<Ts> cjx;
    private Constructor<Tf> cjz;
    
    a(Class<Ts> paramClass, Class<Tf> paramClass1)
    {
      this.axf = paramClass;
      try
      {
        this.cjx = paramClass.getConstructor(new Class[0]);
        this.cjz = paramClass1.getConstructor(new Class[0]);
        return;
      }
      catch (NoSuchMethodException paramClass)
      {
        paramClass.printStackTrace();
      }
    }
    
    private Ts e(Parcel paramParcel)
    {
      try
      {
        m localm = m.f(paramParcel);
        int i = paramParcel.readInt();
        if ((i & 0x1) == 0) {}
        for (c localc = (c)this.cjx.newInstance(new Object[0]);; localc = (c)this.cjz.newInstance(new Object[0]))
        {
          localc.cjy = localm;
          localc.flags = i;
          localc.d(paramParcel);
          return localc;
        }
        return null;
      }
      catch (Exception paramParcel) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */