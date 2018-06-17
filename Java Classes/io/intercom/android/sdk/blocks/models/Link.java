package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import io.intercom.android.sdk.blocks.BlockType;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Link
  implements Parcelable
{
  public static final Parcelable.Creator<Link> CREATOR = new Parcelable.Creator()
  {
    public final Link createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Link(paramAnonymousParcel);
    }
    
    public final Link[] newArray(int paramAnonymousInt)
    {
      return new Link[paramAnonymousInt];
    }
  };
  private final String articleId;
  private final Author author;
  private final Map<String, String> data;
  private final String description;
  private final Image image;
  private final String linkType;
  private final String siteName;
  private final String text;
  private final String title;
  private final BlockType type;
  private final String url;
  
  Link()
  {
    this(new Builder());
  }
  
  protected Link(Parcel paramParcel)
  {
    this.type = BlockType.typeValueOf(paramParcel.readString());
    this.text = paramParcel.readString();
    this.title = paramParcel.readString();
    this.description = paramParcel.readString();
    this.linkType = paramParcel.readString();
    this.siteName = paramParcel.readString();
    this.articleId = paramParcel.readString();
    this.url = paramParcel.readString();
    this.author = ((Author)paramParcel.readParcelable(Author.class.getClassLoader()));
    this.image = ((Image)paramParcel.readParcelable(Image.class.getClassLoader()));
    this.data = new HashMap();
    int j = paramParcel.readInt();
    int i = 0;
    while (i < j)
    {
      String str1 = paramParcel.readString();
      String str2 = paramParcel.readString();
      this.data.put(str1, str2);
      i += 1;
    }
  }
  
  private Link(Builder paramBuilder)
  {
    this.type = BlockType.typeValueOf(paramBuilder.type);
    Object localObject;
    if (paramBuilder.text == null)
    {
      localObject = "";
      this.text = ((String)localObject);
      if (paramBuilder.title != null) {
        break label189;
      }
      localObject = "";
      label40:
      this.title = ((String)localObject);
      if (paramBuilder.description != null) {
        break label197;
      }
      localObject = "";
      label55:
      this.description = ((String)localObject);
      if (paramBuilder.linkType != null) {
        break label205;
      }
      localObject = "";
      label70:
      this.linkType = ((String)localObject);
      if (paramBuilder.siteName != null) {
        break label213;
      }
      localObject = "";
      label85:
      this.siteName = ((String)localObject);
      if (paramBuilder.articleId != null) {
        break label221;
      }
      localObject = "";
      label100:
      this.articleId = ((String)localObject);
      if (paramBuilder.author != null) {
        break label229;
      }
      localObject = new Author();
      label120:
      this.author = ((Author)localObject);
      if (paramBuilder.image != null) {
        break label237;
      }
      localObject = new Image();
      label140:
      this.image = ((Image)localObject);
      if (paramBuilder.data != null) {
        break label245;
      }
      localObject = new HashMap();
      label160:
      this.data = ((Map)localObject);
      if (paramBuilder.url != null) {
        break label253;
      }
    }
    label189:
    label197:
    label205:
    label213:
    label221:
    label229:
    label237:
    label245:
    label253:
    for (paramBuilder = "";; paramBuilder = paramBuilder.url)
    {
      this.url = paramBuilder;
      return;
      localObject = paramBuilder.text;
      break;
      localObject = paramBuilder.title;
      break label40;
      localObject = paramBuilder.description;
      break label55;
      localObject = paramBuilder.linkType;
      break label70;
      localObject = paramBuilder.siteName;
      break label85;
      localObject = paramBuilder.articleId;
      break label100;
      localObject = paramBuilder.author;
      break label120;
      localObject = paramBuilder.image;
      break label140;
      localObject = paramBuilder.data;
      break label160;
    }
  }
  
  public static Link fromBlock(Block paramBlock)
  {
    if (paramBlock == null) {
      return new Link();
    }
    Builder localBuilder = new Builder();
    localBuilder.type = paramBlock.getType().name();
    localBuilder.text = paramBlock.getText();
    localBuilder.title = paramBlock.getTitle();
    localBuilder.description = paramBlock.getDescription();
    localBuilder.linkType = paramBlock.getLinkType();
    localBuilder.author = paramBlock.getAuthor();
    localBuilder.image = paramBlock.getImage();
    localBuilder.data = paramBlock.getData();
    localBuilder.siteName = paramBlock.getSiteName();
    localBuilder.articleId = paramBlock.getArticleId();
    localBuilder.url = paramBlock.getUrl();
    return new Link(localBuilder);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (Link)paramObject;
      if (this.type != ((Link)paramObject).type) {
        return false;
      }
      if (this.text != null)
      {
        if (this.text.equals(((Link)paramObject).text)) {}
      }
      else {
        while (((Link)paramObject).text != null) {
          return false;
        }
      }
      if (this.title != null)
      {
        if (this.title.equals(((Link)paramObject).title)) {}
      }
      else {
        while (((Link)paramObject).title != null) {
          return false;
        }
      }
      if (this.description != null)
      {
        if (this.description.equals(((Link)paramObject).description)) {}
      }
      else {
        while (((Link)paramObject).description != null) {
          return false;
        }
      }
      if (this.linkType != null)
      {
        if (this.linkType.equals(((Link)paramObject).linkType)) {}
      }
      else {
        while (((Link)paramObject).linkType != null) {
          return false;
        }
      }
      if (this.author != null)
      {
        if (this.author.equals(((Link)paramObject).author)) {}
      }
      else {
        while (((Link)paramObject).author != null) {
          return false;
        }
      }
      if (this.image != null)
      {
        if (this.image.equals(((Link)paramObject).image)) {}
      }
      else {
        while (((Link)paramObject).image != null) {
          return false;
        }
      }
      if (this.data != null)
      {
        if (this.data.equals(((Link)paramObject).data)) {}
      }
      else {
        while (((Link)paramObject).data != null) {
          return false;
        }
      }
      if (this.siteName != null)
      {
        if (this.siteName.equals(((Link)paramObject).siteName)) {}
      }
      else {
        while (((Link)paramObject).siteName != null) {
          return false;
        }
      }
      if (this.articleId != null)
      {
        if (this.articleId.equals(((Link)paramObject).articleId)) {}
      }
      else {
        while (((Link)paramObject).articleId != null) {
          return false;
        }
      }
      if (this.url != null) {
        return this.url.equals(((Link)paramObject).url);
      }
    } while (((Link)paramObject).url == null);
    return false;
  }
  
  public String getArticleId()
  {
    return this.articleId;
  }
  
  public Author getAuthor()
  {
    return this.author;
  }
  
  public Map<String, String> getData()
  {
    return this.data;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public Image getImage()
  {
    return this.image;
  }
  
  public String getLinkType()
  {
    return this.linkType;
  }
  
  public String getSiteName()
  {
    return this.siteName;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public BlockType getType()
  {
    return this.type;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public int hashCode()
  {
    int i6 = 0;
    int i;
    int j;
    label33:
    int k;
    label48:
    int m;
    label64:
    int n;
    label80:
    int i1;
    label96:
    int i2;
    label112:
    int i3;
    label130:
    int i4;
    if (this.type != null)
    {
      i = this.type.hashCode();
      if (this.text == null) {
        break label243;
      }
      j = this.text.hashCode();
      if (this.title == null) {
        break label248;
      }
      k = this.title.hashCode();
      if (this.description == null) {
        break label253;
      }
      m = this.description.hashCode();
      if (this.linkType == null) {
        break label259;
      }
      n = this.linkType.hashCode();
      if (this.author == null) {
        break label265;
      }
      i1 = this.author.hashCode();
      if (this.image == null) {
        break label271;
      }
      i2 = this.image.hashCode();
      if (this.data == null) {
        break label277;
      }
      i3 = this.data.hashCode();
      if (this.siteName == null) {
        break label283;
      }
      i4 = this.siteName.hashCode();
      label146:
      if (this.articleId == null) {
        break label289;
      }
    }
    label243:
    label248:
    label253:
    label259:
    label265:
    label271:
    label277:
    label283:
    label289:
    for (int i5 = this.articleId.hashCode();; i5 = 0)
    {
      if (this.url != null) {
        i6 = this.url.hashCode();
      }
      return (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + i * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i6;
      i = 0;
      break;
      j = 0;
      break label33;
      k = 0;
      break label48;
      m = 0;
      break label64;
      n = 0;
      break label80;
      i1 = 0;
      break label96;
      i2 = 0;
      break label112;
      i3 = 0;
      break label130;
      i4 = 0;
      break label146;
    }
  }
  
  public String toString()
  {
    return "LinkCard{type=" + this.type + ", text='" + this.text + '\'' + ", title='" + this.title + '\'' + ", description='" + this.description + '\'' + ", linkType='" + this.linkType + '\'' + ", author=" + this.author + ", image=" + this.image + ", data=" + this.data + ", siteName='" + this.siteName + '\'' + ", articleId='" + this.articleId + '\'' + ", url='" + this.url + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.type.name());
    paramParcel.writeString(this.text);
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.description);
    paramParcel.writeString(this.linkType);
    paramParcel.writeString(this.siteName);
    paramParcel.writeString(this.articleId);
    paramParcel.writeString(this.url);
    paramParcel.writeParcelable(this.author, paramInt);
    paramParcel.writeParcelable(this.image, paramInt);
    paramParcel.writeInt(this.data.size());
    Iterator localIterator = this.data.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramParcel.writeString((String)localEntry.getKey());
      paramParcel.writeString((String)localEntry.getValue());
    }
  }
  
  public static final class Builder
  {
    String articleId;
    Author author;
    Map<String, String> data;
    String description;
    Image image;
    String linkType;
    String siteName;
    String text;
    String title;
    String type;
    String url;
    
    public final Link build()
    {
      return new Link(this, null);
    }
    
    public final Builder withArticleId(String paramString)
    {
      this.articleId = paramString;
      return this;
    }
    
    public final Builder withAuthor(Author paramAuthor)
    {
      this.author = paramAuthor;
      return this;
    }
    
    public final Builder withData(Map<String, String> paramMap)
    {
      this.data = paramMap;
      return this;
    }
    
    public final Builder withDescription(String paramString)
    {
      this.description = paramString;
      return this;
    }
    
    public final Builder withImage(Image paramImage)
    {
      this.image = paramImage;
      return this;
    }
    
    public final Builder withLinkType(String paramString)
    {
      this.linkType = paramString;
      return this;
    }
    
    public final Builder withSiteName(String paramString)
    {
      this.siteName = paramString;
      return this;
    }
    
    public final Builder withText(String paramString)
    {
      this.text = paramString;
      return this;
    }
    
    public final Builder withTitle(String paramString)
    {
      this.title = paramString;
      return this;
    }
    
    public final Builder withType(String paramString)
    {
      this.type = paramString;
      return this;
    }
    
    public final Builder withUrl(String paramString)
    {
      this.url = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/Link.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */