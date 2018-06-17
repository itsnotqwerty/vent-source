package com.intercom.input.gallery;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class b
  implements Parcelable
{
  public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator() {};
  public final String attribution;
  public final String bmd;
  public final String bme;
  public final int bmf;
  public final int imageHeight;
  public final int imageWidth;
  public final String mimeType;
  public final String path;
  
  protected b(Parcel paramParcel)
  {
    this.bmd = paramParcel.readString();
    this.mimeType = paramParcel.readString();
    this.path = paramParcel.readString();
    this.bme = paramParcel.readString();
    this.attribution = paramParcel.readString();
    this.imageWidth = paramParcel.readInt();
    this.imageHeight = paramParcel.readInt();
    this.bmf = paramParcel.readInt();
  }
  
  b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt1, int paramInt2, int paramInt3)
  {
    this.bmd = paramString1;
    this.mimeType = paramString2;
    this.path = paramString3;
    this.bme = paramString4;
    this.attribution = paramString5;
    this.imageWidth = paramInt1;
    this.imageHeight = paramInt2;
    this.bmf = paramInt3;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
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
                  paramObject = (b)paramObject;
                  bool1 = bool2;
                } while (this.imageWidth != ((b)paramObject).imageWidth);
                bool1 = bool2;
              } while (this.imageHeight != ((b)paramObject).imageHeight);
              bool1 = bool2;
            } while (this.bmf != ((b)paramObject).bmf);
            bool1 = bool2;
          } while (!this.bmd.equals(((b)paramObject).bmd));
          bool1 = bool2;
        } while (!this.mimeType.equals(((b)paramObject).mimeType));
        bool1 = bool2;
      } while (!this.path.equals(((b)paramObject).path));
      bool1 = bool2;
    } while (!this.bme.equals(((b)paramObject).bme));
    return this.attribution.equals(((b)paramObject).attribution);
  }
  
  public final int hashCode()
  {
    return ((((((this.bmd.hashCode() * 31 + this.mimeType.hashCode()) * 31 + this.path.hashCode()) * 31 + this.bme.hashCode()) * 31 + this.attribution.hashCode()) * 31 + this.imageWidth) * 31 + this.imageHeight) * 31 + this.bmf;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.bmd);
    paramParcel.writeString(this.mimeType);
    paramParcel.writeString(this.path);
    paramParcel.writeString(this.bme);
    paramParcel.writeString(this.attribution);
    paramParcel.writeInt(this.imageWidth);
    paramParcel.writeInt(this.imageHeight);
    paramParcel.writeInt(this.bmf);
  }
  
  public static final class a
  {
    public String attribution;
    String bmd;
    public String bme;
    int bmf;
    public int imageHeight;
    public int imageWidth;
    String mimeType;
    public String path;
    
    private static String valueOrEmpty(String paramString)
    {
      String str = paramString;
      if (paramString == null) {
        str = "";
      }
      return str;
    }
    
    public final b wa()
    {
      return new b(valueOrEmpty(this.bmd), valueOrEmpty(this.mimeType), valueOrEmpty(this.path), valueOrEmpty(this.bme), valueOrEmpty(this.attribution), this.imageWidth, this.imageHeight, this.bmf);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */