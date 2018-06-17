package io.branch.referral.b;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class b
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new Parcelable.Creator() {};
  public int cFm = 0;
  public final HashMap<String, String> cFn = new HashMap();
  public String cxn = "";
  public String cxo = "Share";
  public String cxp = "";
  public String cxq = "";
  public String cxr = "";
  public final ArrayList<String> cxu = new ArrayList();
  
  public b() {}
  
  private b(Parcel paramParcel)
  {
    this();
    this.cxo = paramParcel.readString();
    this.cxr = paramParcel.readString();
    this.cxp = paramParcel.readString();
    this.cxn = paramParcel.readString();
    this.cxq = paramParcel.readString();
    this.cFm = paramParcel.readInt();
    ArrayList localArrayList = (ArrayList)paramParcel.readSerializable();
    this.cxu.addAll(localArrayList);
    int j = paramParcel.readInt();
    int i = 0;
    while (i < j)
    {
      this.cFn.put(paramParcel.readString(), paramParcel.readString());
      i += 1;
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.cxo);
    paramParcel.writeString(this.cxr);
    paramParcel.writeString(this.cxp);
    paramParcel.writeString(this.cxn);
    paramParcel.writeString(this.cxq);
    paramParcel.writeInt(this.cFm);
    paramParcel.writeSerializable(this.cxu);
    paramParcel.writeInt(this.cFn.size());
    Iterator localIterator = this.cFn.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramParcel.writeString((String)localEntry.getKey());
      paramParcel.writeString((String)localEntry.getValue());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */