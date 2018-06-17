package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class LinkList
  implements Parcelable
{
  public static final Parcelable.Creator<LinkList> CREATOR = new Parcelable.Creator()
  {
    public final LinkList createFromParcel(Parcel paramAnonymousParcel)
    {
      ArrayList localArrayList = new ArrayList();
      paramAnonymousParcel.readList(localArrayList, Link.class.getClassLoader());
      return new LinkList(localArrayList, (Link)paramAnonymousParcel.readParcelable(Link.class.getClassLoader()));
    }
    
    public final LinkList[] newArray(int paramAnonymousInt)
    {
      return new LinkList[paramAnonymousInt];
    }
  };
  private final Link footerLink;
  private final List<Link> links;
  
  public LinkList(List<Link> paramList, Link paramLink)
  {
    this.links = paramList;
    this.footerLink = paramLink;
  }
  
  public static LinkList fromBlock(Block paramBlock)
  {
    if (paramBlock == null) {
      return new LinkList(Collections.emptyList(), new Link.Builder().build());
    }
    return new LinkList(paramBlock.getLinks(), paramBlock.getFooterLink());
  }
  
  public int describeContents()
  {
    return 0;
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
          return bool1;
          bool1 = bool2;
        } while (paramObject == null);
        bool1 = bool2;
      } while (getClass() != paramObject.getClass());
      paramObject = (LinkList)paramObject;
      bool1 = bool2;
    } while (!this.links.equals(((LinkList)paramObject).links));
    return this.footerLink.equals(((LinkList)paramObject).footerLink);
  }
  
  public Link getFooterLink()
  {
    return this.footerLink;
  }
  
  public List<Link> getLinks()
  {
    return this.links;
  }
  
  public int hashCode()
  {
    return this.links.hashCode() * 31 + this.footerLink.hashCode();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(this.links);
    paramParcel.writeParcelable(this.footerLink, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/LinkList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */