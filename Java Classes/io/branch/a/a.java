package io.branch.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class a
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new Parcelable.Creator() {};
  public String cuA = "";
  public String cuB = "";
  public String cuC = "";
  public String cuD;
  public final HashMap<String, String> cuE = new HashMap();
  public String cuF = "";
  public int cuG = a.cuL;
  public final ArrayList<String> cuH = new ArrayList();
  public long cuI = 0L;
  public Double cuJ;
  public io.branch.referral.b.a cuK = io.branch.referral.b.a.cEG;
  public String cuz = "";
  
  public a() {}
  
  private a(Parcel paramParcel)
  {
    this();
    this.cuz = paramParcel.readString();
    this.cuA = paramParcel.readString();
    this.cuB = paramParcel.readString();
    this.cuC = paramParcel.readString();
    this.cuD = paramParcel.readString();
    this.cuF = paramParcel.readString();
    this.cuI = paramParcel.readLong();
    this.cuG = a.Gp()[paramParcel.readInt()];
    this.cuJ = Double.valueOf(paramParcel.readDouble());
    if (this.cuJ.doubleValue() < 0.0D) {
      this.cuJ = null;
    }
    this.cuK = io.branch.referral.b.a.values()[paramParcel.readInt()];
    ArrayList localArrayList = (ArrayList)paramParcel.readSerializable();
    this.cuH.addAll(localArrayList);
    int j = paramParcel.readInt();
    int i = 0;
    while (i < j)
    {
      this.cuE.put(paramParcel.readString(), paramParcel.readString());
      i += 1;
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.cuz);
    paramParcel.writeString(this.cuA);
    paramParcel.writeString(this.cuB);
    paramParcel.writeString(this.cuC);
    paramParcel.writeString(this.cuD);
    paramParcel.writeString(this.cuF);
    paramParcel.writeLong(this.cuI);
    paramParcel.writeInt(this.cuG - 1);
    if (this.cuJ != null) {}
    for (double d = this.cuJ.doubleValue();; d = -1.0D)
    {
      paramParcel.writeDouble(d);
      paramParcel.writeInt(this.cuK.ordinal());
      paramParcel.writeSerializable(this.cuH);
      paramParcel.writeInt(this.cuE.size());
      Iterator localIterator = this.cuE.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramParcel.writeString((String)localEntry.getKey());
        paramParcel.writeString((String)localEntry.getValue());
      }
    }
  }
  
  public static enum a
  {
    public static final int cuL = 1;
    public static final int cuM = 2;
    
    public static int[] Gp()
    {
      return (int[])cuN.clone();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */