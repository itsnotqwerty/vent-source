package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ParcelableVolumeInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new Parcelable.Creator() {};
  public int CQ;
  public int CR;
  public int CS;
  public int CT;
  public int CU;
  
  public ParcelableVolumeInfo(Parcel paramParcel)
  {
    this.CQ = paramParcel.readInt();
    this.CS = paramParcel.readInt();
    this.CT = paramParcel.readInt();
    this.CU = paramParcel.readInt();
    this.CR = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.CQ);
    paramParcel.writeInt(this.CS);
    paramParcel.writeInt(this.CT);
    paramParcel.writeInt(this.CU);
    paramParcel.writeInt(this.CR);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/session/ParcelableVolumeInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */