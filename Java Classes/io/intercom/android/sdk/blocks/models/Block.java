package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import io.intercom.android.sdk.blocks.BlockAlignment;
import io.intercom.android.sdk.blocks.BlockType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Block
  implements Parcelable
{
  public static final Parcelable.Creator<Block> CREATOR = new Parcelable.Creator()
  {
    public final Block createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Block(paramAnonymousParcel);
    }
    
    public final Block[] newArray(int paramAnonymousInt)
    {
      return new Block[paramAnonymousInt];
    }
  };
  private final BlockAlignment align;
  private final String articleId;
  private final List<BlockAttachment> attachments;
  private final String attribution;
  private final Author author;
  private final List<Channel> channels;
  private final Map<String, String> data;
  private final String description;
  private final String embedUrl;
  private final String fallbackUrl;
  private final Link footerLink;
  private final int height;
  private final String id;
  private final Image image;
  private final List<String> items;
  private final String language;
  private final String linkType;
  private final String linkUrl;
  private final List<Link> links;
  private final List<ConversationRatingOption> options;
  private final String previewUrl;
  private final String provider;
  private final int ratingIndex;
  private final String remark;
  private final String siteName;
  private final String text;
  private final String title;
  private final String trackingUrl;
  private final BlockType type;
  private final String url;
  private final String username;
  private final int width;
  
  Block()
  {
    this(new Builder());
  }
  
  protected Block(Parcel paramParcel)
  {
    this.attachments = paramParcel.createTypedArrayList(BlockAttachment.CREATOR);
    this.items = paramParcel.createStringArrayList();
    int j = paramParcel.readInt();
    this.data = new HashMap(j);
    int i = 0;
    while (i < j)
    {
      localObject1 = paramParcel.readString();
      String str = paramParcel.readString();
      this.data.put(localObject1, str);
      i += 1;
    }
    i = paramParcel.readInt();
    if (i == -1)
    {
      localObject1 = null;
      this.type = ((BlockType)localObject1);
      i = paramParcel.readInt();
      if (i != -1) {
        break label408;
      }
    }
    label408:
    for (Object localObject1 = localObject2;; localObject1 = BlockAlignment.values()[i])
    {
      this.align = ((BlockAlignment)localObject1);
      this.author = ((Author)paramParcel.readParcelable(Author.class.getClassLoader()));
      this.image = ((Image)paramParcel.readParcelable(Image.class.getClassLoader()));
      this.text = paramParcel.readString();
      this.title = paramParcel.readString();
      this.description = paramParcel.readString();
      this.linkType = paramParcel.readString();
      this.siteName = paramParcel.readString();
      this.articleId = paramParcel.readString();
      this.language = paramParcel.readString();
      this.url = paramParcel.readString();
      this.linkUrl = paramParcel.readString();
      this.embedUrl = paramParcel.readString();
      this.trackingUrl = paramParcel.readString();
      this.fallbackUrl = paramParcel.readString();
      this.username = paramParcel.readString();
      this.provider = paramParcel.readString();
      this.previewUrl = paramParcel.readString();
      this.attribution = paramParcel.readString();
      this.id = paramParcel.readString();
      this.width = paramParcel.readInt();
      this.height = paramParcel.readInt();
      this.channels = paramParcel.createTypedArrayList(Channel.CREATOR);
      this.ratingIndex = paramParcel.readInt();
      this.remark = paramParcel.readString();
      this.options = new ArrayList();
      paramParcel.readList(this.options, ConversationRatingOption.class.getClassLoader());
      this.links = new ArrayList();
      paramParcel.readList(this.links, Link.class.getClassLoader());
      this.footerLink = ((Link)paramParcel.readParcelable(Link.class.getClassLoader()));
      return;
      localObject1 = BlockType.values()[i];
      break;
    }
  }
  
  private Block(Builder paramBuilder)
  {
    this.type = BlockType.typeValueOf(paramBuilder.type);
    label45:
    label62:
    label79:
    label96:
    label113:
    label135:
    label157:
    label175:
    label192:
    label209:
    label226:
    label243:
    label260:
    label277:
    label294:
    label311:
    label328:
    int i;
    if (paramBuilder.text == null)
    {
      localObject1 = "";
      this.text = ((String)localObject1);
      if (paramBuilder.title != null) {
        break label487;
      }
      localObject1 = "";
      this.title = ((String)localObject1);
      if (paramBuilder.description != null) {
        break label496;
      }
      localObject1 = "";
      this.description = ((String)localObject1);
      if (paramBuilder.linkType != null) {
        break label505;
      }
      localObject1 = "";
      this.linkType = ((String)localObject1);
      if (paramBuilder.siteName != null) {
        break label514;
      }
      localObject1 = "";
      this.siteName = ((String)localObject1);
      if (paramBuilder.articleId != null) {
        break label523;
      }
      localObject1 = "";
      this.articleId = ((String)localObject1);
      if (paramBuilder.author != null) {
        break label532;
      }
      localObject1 = new Author();
      this.author = ((Author)localObject1);
      if (paramBuilder.image != null) {
        break label541;
      }
      localObject1 = new Image();
      this.image = ((Image)localObject1);
      if (paramBuilder.data != null) {
        break label550;
      }
      localObject1 = Collections.emptyMap();
      this.data = ((Map)localObject1);
      if (paramBuilder.language != null) {
        break label559;
      }
      localObject1 = "";
      this.language = ((String)localObject1);
      if (paramBuilder.url != null) {
        break label568;
      }
      localObject1 = "";
      this.url = ((String)localObject1);
      if (paramBuilder.linkUrl != null) {
        break label577;
      }
      localObject1 = "";
      this.linkUrl = ((String)localObject1);
      if (paramBuilder.embedUrl != null) {
        break label586;
      }
      localObject1 = "";
      this.embedUrl = ((String)localObject1);
      if (paramBuilder.trackingUrl != null) {
        break label595;
      }
      localObject1 = "";
      this.trackingUrl = ((String)localObject1);
      if (paramBuilder.fallbackUrl != null) {
        break label604;
      }
      localObject1 = "";
      this.fallbackUrl = ((String)localObject1);
      if (paramBuilder.username != null) {
        break label613;
      }
      localObject1 = "";
      this.username = ((String)localObject1);
      if (paramBuilder.provider != null) {
        break label622;
      }
      localObject1 = "";
      this.provider = ((String)localObject1);
      if (paramBuilder.id != null) {
        break label631;
      }
      localObject1 = "";
      this.id = ((String)localObject1);
      this.align = BlockAlignment.alignValueOf(paramBuilder.align);
      if (paramBuilder.width != null) {
        break label640;
      }
      i = 0;
      label354:
      this.width = i;
      if (paramBuilder.height != null) {
        break label651;
      }
      i = j;
      label368:
      this.height = i;
      if (paramBuilder.previewUrl != null) {
        break label662;
      }
      localObject1 = "";
      label384:
      this.previewUrl = ((String)localObject1);
      if (paramBuilder.attribution != null) {
        break label671;
      }
    }
    Object localObject2;
    label487:
    label496:
    label505:
    label514:
    label523:
    label532:
    label541:
    label550:
    label559:
    label568:
    label577:
    label586:
    label595:
    label604:
    label613:
    label622:
    label631:
    label640:
    label651:
    label662:
    label671:
    for (Object localObject1 = "";; localObject1 = paramBuilder.attribution)
    {
      this.attribution = ((String)localObject1);
      this.attachments = new ArrayList();
      if (paramBuilder.attachments == null) {
        break label680;
      }
      localObject1 = paramBuilder.attachments.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (BlockAttachment)((Iterator)localObject1).next();
        if (localObject2 != null) {
          this.attachments.add(localObject2);
        }
      }
      localObject1 = paramBuilder.text;
      break;
      localObject1 = paramBuilder.title;
      break label45;
      localObject1 = paramBuilder.description;
      break label62;
      localObject1 = paramBuilder.linkType;
      break label79;
      localObject1 = paramBuilder.siteName;
      break label96;
      localObject1 = paramBuilder.articleId;
      break label113;
      localObject1 = paramBuilder.author;
      break label135;
      localObject1 = paramBuilder.image;
      break label157;
      localObject1 = paramBuilder.data;
      break label175;
      localObject1 = paramBuilder.language;
      break label192;
      localObject1 = paramBuilder.url;
      break label209;
      localObject1 = paramBuilder.linkUrl;
      break label226;
      localObject1 = paramBuilder.embedUrl;
      break label243;
      localObject1 = paramBuilder.trackingUrl;
      break label260;
      localObject1 = paramBuilder.fallbackUrl;
      break label277;
      localObject1 = paramBuilder.username;
      break label294;
      localObject1 = paramBuilder.provider;
      break label311;
      localObject1 = paramBuilder.id;
      break label328;
      i = paramBuilder.width.intValue();
      break label354;
      i = paramBuilder.height.intValue();
      break label368;
      localObject1 = paramBuilder.previewUrl;
      break label384;
    }
    label680:
    this.channels = new ArrayList();
    if (paramBuilder.channels != null)
    {
      localObject1 = paramBuilder.channels.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Channel)((Iterator)localObject1).next();
        if (localObject2 != null) {
          this.channels.add(localObject2);
        }
      }
    }
    this.items = new ArrayList();
    if (paramBuilder.items != null)
    {
      localObject1 = paramBuilder.items.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((Iterator)localObject1).next();
        if (localObject2 != null) {
          this.items.add(localObject2);
        }
      }
    }
    if (paramBuilder.ratingIndex != null)
    {
      this.ratingIndex = paramBuilder.ratingIndex.intValue();
      if (paramBuilder.remark != null) {
        break label960;
      }
    }
    label960:
    for (localObject1 = "";; localObject1 = paramBuilder.remark)
    {
      this.remark = ((String)localObject1);
      this.options = new ArrayList();
      if (paramBuilder.options == null) {
        break label969;
      }
      localObject1 = paramBuilder.options.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ConversationRatingOption.Builder)((Iterator)localObject1).next();
        if (localObject2 != null) {
          this.options.add(((ConversationRatingOption.Builder)localObject2).build());
        }
      }
      if (paramBuilder.rating_index != null)
      {
        this.ratingIndex = paramBuilder.rating_index.intValue();
        break;
      }
      this.ratingIndex = -1;
      break;
    }
    label969:
    this.links = new ArrayList();
    if (paramBuilder.links != null)
    {
      localObject1 = paramBuilder.links.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Builder)((Iterator)localObject1).next();
        if (localObject2 != null) {
          this.links.add(Link.fromBlock(((Builder)localObject2).build()));
        }
      }
    }
    if (paramBuilder.footerLink == null) {}
    for (paramBuilder = new Link();; paramBuilder = Link.fromBlock(paramBuilder.footerLink.build()))
    {
      this.footerLink = paramBuilder;
      return;
    }
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
      paramObject = (Block)paramObject;
      if (this.width != ((Block)paramObject).width) {
        return false;
      }
      if (this.height != ((Block)paramObject).height) {
        return false;
      }
      if (this.ratingIndex != ((Block)paramObject).ratingIndex) {
        return false;
      }
      if (this.attachments != null)
      {
        if (this.attachments.equals(((Block)paramObject).attachments)) {}
      }
      else {
        while (((Block)paramObject).attachments != null) {
          return false;
        }
      }
      if (this.items != null)
      {
        if (this.items.equals(((Block)paramObject).items)) {}
      }
      else {
        while (((Block)paramObject).items != null) {
          return false;
        }
      }
      if (this.data != null)
      {
        if (this.data.equals(((Block)paramObject).data)) {}
      }
      else {
        while (((Block)paramObject).data != null) {
          return false;
        }
      }
      if (this.type != ((Block)paramObject).type) {
        return false;
      }
      if (this.align != ((Block)paramObject).align) {
        return false;
      }
      if (this.author != null)
      {
        if (this.author.equals(((Block)paramObject).author)) {}
      }
      else {
        while (((Block)paramObject).author != null) {
          return false;
        }
      }
      if (this.image != null)
      {
        if (this.image.equals(((Block)paramObject).image)) {}
      }
      else {
        while (((Block)paramObject).image != null) {
          return false;
        }
      }
      if (this.text != null)
      {
        if (this.text.equals(((Block)paramObject).text)) {}
      }
      else {
        while (((Block)paramObject).text != null) {
          return false;
        }
      }
      if (this.title != null)
      {
        if (this.title.equals(((Block)paramObject).title)) {}
      }
      else {
        while (((Block)paramObject).title != null) {
          return false;
        }
      }
      if (this.description != null)
      {
        if (this.description.equals(((Block)paramObject).description)) {}
      }
      else {
        while (((Block)paramObject).description != null) {
          return false;
        }
      }
      if (this.linkType != null)
      {
        if (this.linkType.equals(((Block)paramObject).linkType)) {}
      }
      else {
        while (((Block)paramObject).linkType != null) {
          return false;
        }
      }
      if (this.siteName != null)
      {
        if (this.siteName.equals(((Block)paramObject).siteName)) {}
      }
      else {
        while (((Block)paramObject).siteName != null) {
          return false;
        }
      }
      if (this.articleId != null)
      {
        if (this.articleId.equals(((Block)paramObject).articleId)) {}
      }
      else {
        while (((Block)paramObject).articleId != null) {
          return false;
        }
      }
      if (this.language != null)
      {
        if (this.language.equals(((Block)paramObject).language)) {}
      }
      else {
        while (((Block)paramObject).language != null) {
          return false;
        }
      }
      if (this.url != null)
      {
        if (this.url.equals(((Block)paramObject).url)) {}
      }
      else {
        while (((Block)paramObject).url != null) {
          return false;
        }
      }
      if (this.previewUrl != null)
      {
        if (this.previewUrl.equals(((Block)paramObject).previewUrl)) {}
      }
      else {
        while (((Block)paramObject).previewUrl != null) {
          return false;
        }
      }
      if (this.attribution != null)
      {
        if (this.attribution.equals(((Block)paramObject).attribution)) {}
      }
      else {
        while (((Block)paramObject).attribution != null) {
          return false;
        }
      }
      if (this.linkUrl != null)
      {
        if (this.linkUrl.equals(((Block)paramObject).linkUrl)) {}
      }
      else {
        while (((Block)paramObject).linkUrl != null) {
          return false;
        }
      }
      if (this.embedUrl != null)
      {
        if (this.embedUrl.equals(((Block)paramObject).embedUrl)) {}
      }
      else {
        while (((Block)paramObject).embedUrl != null) {
          return false;
        }
      }
      if (this.trackingUrl != null)
      {
        if (this.trackingUrl.equals(((Block)paramObject).trackingUrl)) {}
      }
      else {
        while (((Block)paramObject).trackingUrl != null) {
          return false;
        }
      }
      if (this.fallbackUrl != null)
      {
        if (this.fallbackUrl.equals(((Block)paramObject).fallbackUrl)) {}
      }
      else {
        while (((Block)paramObject).fallbackUrl != null) {
          return false;
        }
      }
      if (this.username != null)
      {
        if (this.username.equals(((Block)paramObject).username)) {}
      }
      else {
        while (((Block)paramObject).username != null) {
          return false;
        }
      }
      if (this.provider != null)
      {
        if (this.provider.equals(((Block)paramObject).provider)) {}
      }
      else {
        while (((Block)paramObject).provider != null) {
          return false;
        }
      }
      if (this.id != null)
      {
        if (this.id.equals(((Block)paramObject).id)) {}
      }
      else {
        while (((Block)paramObject).id != null) {
          return false;
        }
      }
      if (this.channels != null)
      {
        if (this.channels.equals(((Block)paramObject).channels)) {}
      }
      else {
        while (((Block)paramObject).channels != null) {
          return false;
        }
      }
      if (this.remark != null)
      {
        if (this.remark.equals(((Block)paramObject).remark)) {}
      }
      else {
        while (((Block)paramObject).remark != null) {
          return false;
        }
      }
      if (this.options != null)
      {
        if (this.options.equals(((Block)paramObject).options)) {}
      }
      else {
        while (((Block)paramObject).options != null) {
          return false;
        }
      }
      if (this.links != null)
      {
        if (this.links.equals(((Block)paramObject).links)) {}
      }
      else {
        while (((Block)paramObject).links != null) {
          return false;
        }
      }
      if (this.footerLink != null) {
        return this.footerLink.equals(((Block)paramObject).footerLink);
      }
    } while (((Block)paramObject).footerLink == null);
    return false;
  }
  
  public BlockAlignment getAlign()
  {
    return this.align;
  }
  
  public String getArticleId()
  {
    return this.articleId;
  }
  
  public List<BlockAttachment> getAttachments()
  {
    return this.attachments;
  }
  
  public String getAttribution()
  {
    return this.attribution;
  }
  
  public Author getAuthor()
  {
    return this.author;
  }
  
  public List<Channel> getChannels()
  {
    return this.channels;
  }
  
  public Map<String, String> getData()
  {
    return this.data;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public String getEmbedUrl()
  {
    return this.embedUrl;
  }
  
  public String getFallbackUrl()
  {
    return this.fallbackUrl;
  }
  
  public Link getFooterLink()
  {
    return this.footerLink;
  }
  
  public int getHeight()
  {
    return this.height;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public Image getImage()
  {
    return this.image;
  }
  
  public List<String> getItems()
  {
    return this.items;
  }
  
  public String getLanguage()
  {
    return this.language;
  }
  
  public String getLinkType()
  {
    return this.linkType;
  }
  
  public String getLinkUrl()
  {
    return this.linkUrl;
  }
  
  public List<Link> getLinks()
  {
    return this.links;
  }
  
  public List<ConversationRatingOption> getOptions()
  {
    return this.options;
  }
  
  public String getPreviewUrl()
  {
    return this.previewUrl;
  }
  
  public String getProvider()
  {
    return this.provider;
  }
  
  public int getRatingIndex()
  {
    return this.ratingIndex;
  }
  
  public String getRemark()
  {
    return this.remark;
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
  
  public String getTrackingUrl()
  {
    return this.trackingUrl;
  }
  
  public BlockType getType()
  {
    return this.type;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public String getUsername()
  {
    return this.username;
  }
  
  public int getWidth()
  {
    return this.width;
  }
  
  public int hashCode()
  {
    int i24 = 0;
    int i;
    int j;
    label37:
    int k;
    label54:
    int m;
    label70:
    int n;
    label86:
    int i1;
    label102:
    int i2;
    label118:
    int i3;
    label134:
    int i4;
    label150:
    int i5;
    label166:
    int i6;
    label182:
    int i7;
    label198:
    int i8;
    label214:
    int i9;
    label230:
    int i10;
    label246:
    int i11;
    label262:
    int i12;
    label278:
    int i13;
    label294:
    int i14;
    label310:
    int i15;
    label326:
    int i16;
    label342:
    int i17;
    label358:
    int i18;
    label374:
    int i19;
    label390:
    int i25;
    int i26;
    int i20;
    label420:
    int i27;
    int i21;
    label442:
    int i22;
    if (this.attachments != null)
    {
      i = this.attachments.hashCode();
      if (this.items == null) {
        break label685;
      }
      j = this.items.hashCode();
      if (this.data == null) {
        break label690;
      }
      k = this.data.hashCode();
      if (this.type == null) {
        break label695;
      }
      m = this.type.hashCode();
      if (this.align == null) {
        break label701;
      }
      n = this.align.hashCode();
      if (this.author == null) {
        break label707;
      }
      i1 = this.author.hashCode();
      if (this.image == null) {
        break label713;
      }
      i2 = this.image.hashCode();
      if (this.text == null) {
        break label719;
      }
      i3 = this.text.hashCode();
      if (this.title == null) {
        break label725;
      }
      i4 = this.title.hashCode();
      if (this.description == null) {
        break label731;
      }
      i5 = this.description.hashCode();
      if (this.linkType == null) {
        break label737;
      }
      i6 = this.linkType.hashCode();
      if (this.siteName == null) {
        break label743;
      }
      i7 = this.siteName.hashCode();
      if (this.articleId == null) {
        break label749;
      }
      i8 = this.articleId.hashCode();
      if (this.language == null) {
        break label755;
      }
      i9 = this.language.hashCode();
      if (this.url == null) {
        break label761;
      }
      i10 = this.url.hashCode();
      if (this.previewUrl == null) {
        break label767;
      }
      i11 = this.previewUrl.hashCode();
      if (this.attribution == null) {
        break label773;
      }
      i12 = this.attribution.hashCode();
      if (this.linkUrl == null) {
        break label779;
      }
      i13 = this.linkUrl.hashCode();
      if (this.embedUrl == null) {
        break label785;
      }
      i14 = this.embedUrl.hashCode();
      if (this.trackingUrl == null) {
        break label791;
      }
      i15 = this.trackingUrl.hashCode();
      if (this.fallbackUrl == null) {
        break label797;
      }
      i16 = this.fallbackUrl.hashCode();
      if (this.username == null) {
        break label803;
      }
      i17 = this.username.hashCode();
      if (this.provider == null) {
        break label809;
      }
      i18 = this.provider.hashCode();
      if (this.id == null) {
        break label815;
      }
      i19 = this.id.hashCode();
      i25 = this.width;
      i26 = this.height;
      if (this.channels == null) {
        break label821;
      }
      i20 = this.channels.hashCode();
      i27 = this.ratingIndex;
      if (this.remark == null) {
        break label827;
      }
      i21 = this.remark.hashCode();
      if (this.options == null) {
        break label833;
      }
      i22 = this.options.hashCode();
      label460:
      if (this.links == null) {
        break label839;
      }
    }
    label685:
    label690:
    label695:
    label701:
    label707:
    label713:
    label719:
    label725:
    label731:
    label737:
    label743:
    label749:
    label755:
    label761:
    label767:
    label773:
    label779:
    label785:
    label791:
    label797:
    label803:
    label809:
    label815:
    label821:
    label827:
    label833:
    label839:
    for (int i23 = this.links.hashCode();; i23 = 0)
    {
      if (this.footerLink != null) {
        i24 = this.footerLink.hashCode();
      }
      return (i23 + (i22 + (i21 + ((i20 + (((i19 + (i18 + (i17 + (i16 + (i15 + (i14 + (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + i * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i25) * 31 + i26) * 31) * 31 + i27) * 31) * 31) * 31) * 31 + i24;
      i = 0;
      break;
      j = 0;
      break label37;
      k = 0;
      break label54;
      m = 0;
      break label70;
      n = 0;
      break label86;
      i1 = 0;
      break label102;
      i2 = 0;
      break label118;
      i3 = 0;
      break label134;
      i4 = 0;
      break label150;
      i5 = 0;
      break label166;
      i6 = 0;
      break label182;
      i7 = 0;
      break label198;
      i8 = 0;
      break label214;
      i9 = 0;
      break label230;
      i10 = 0;
      break label246;
      i11 = 0;
      break label262;
      i12 = 0;
      break label278;
      i13 = 0;
      break label294;
      i14 = 0;
      break label310;
      i15 = 0;
      break label326;
      i16 = 0;
      break label342;
      i17 = 0;
      break label358;
      i18 = 0;
      break label374;
      i19 = 0;
      break label390;
      i20 = 0;
      break label420;
      i21 = 0;
      break label442;
      i22 = 0;
      break label460;
    }
  }
  
  public Builder toBuilder()
  {
    Object localObject2 = null;
    Builder localBuilder1 = new Builder();
    switch (this.type)
    {
    default: 
      return localBuilder1;
    case ???: 
      localBuilder1.withText(this.text).withType(this.type.getSerializedName());
      return localBuilder1;
    case ???: 
    case ???: 
      Builder localBuilder2 = localBuilder1.withType(this.type.getSerializedName()).withUrl(this.url);
      if (this.attribution.isEmpty())
      {
        localObject1 = null;
        localBuilder2 = localBuilder2.withAttribution((String)localObject1);
        if (!this.previewUrl.isEmpty()) {
          break label158;
        }
      }
      label158:
      for (Object localObject1 = localObject2;; localObject1 = this.previewUrl)
      {
        localBuilder2.withPreviewUrl((String)localObject1).withHeight(this.height).withWidth(this.width);
        return localBuilder1;
        localObject1 = this.attribution;
        break;
      }
    }
    localBuilder1.withType(this.type.getSerializedName()).withAttachments(this.attachments);
    return localBuilder1;
  }
  
  public String toString()
  {
    return "Block{attachments=" + this.attachments + ", items=" + this.items + ", data=" + this.data + ", type=" + this.type + ", align=" + this.align + ", author=" + this.author + ", image=" + this.image + ", text='" + this.text + '\'' + ", title='" + this.title + '\'' + ", description='" + this.description + '\'' + ", linkType='" + this.linkType + '\'' + ", siteName='" + this.siteName + '\'' + ", articleId='" + this.articleId + '\'' + ", language='" + this.language + '\'' + ", url='" + this.url + '\'' + ", previewUrl='" + this.previewUrl + '\'' + ", attribution='" + this.attribution + '\'' + ", linkUrl='" + this.linkUrl + '\'' + ", embedUrl='" + this.embedUrl + '\'' + ", trackingUrl='" + this.trackingUrl + '\'' + ", fallbackUrl='" + this.fallbackUrl + '\'' + ", username='" + this.username + '\'' + ", provider='" + this.provider + '\'' + ", id='" + this.id + '\'' + ", width=" + this.width + ", height=" + this.height + ", channels=" + this.channels + ", ratingIndex=" + this.ratingIndex + ", remark='" + this.remark + '\'' + ", options=" + this.options + ", links=" + this.links + ", footerLink=" + this.footerLink + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int j = -1;
    paramParcel.writeTypedList(this.attachments);
    paramParcel.writeStringList(this.items);
    paramParcel.writeInt(this.data.size());
    Iterator localIterator = this.data.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramParcel.writeString((String)localEntry.getKey());
      paramParcel.writeString((String)localEntry.getValue());
    }
    if (this.type == null)
    {
      i = -1;
      paramParcel.writeInt(i);
      if (this.align != null) {
        break label361;
      }
    }
    label361:
    for (int i = j;; i = this.align.ordinal())
    {
      paramParcel.writeInt(i);
      paramParcel.writeParcelable(this.author, paramInt);
      paramParcel.writeParcelable(this.image, paramInt);
      paramParcel.writeString(this.text);
      paramParcel.writeString(this.title);
      paramParcel.writeString(this.description);
      paramParcel.writeString(this.linkType);
      paramParcel.writeString(this.siteName);
      paramParcel.writeString(this.articleId);
      paramParcel.writeString(this.language);
      paramParcel.writeString(this.url);
      paramParcel.writeString(this.linkUrl);
      paramParcel.writeString(this.embedUrl);
      paramParcel.writeString(this.trackingUrl);
      paramParcel.writeString(this.fallbackUrl);
      paramParcel.writeString(this.username);
      paramParcel.writeString(this.provider);
      paramParcel.writeString(this.previewUrl);
      paramParcel.writeString(this.attribution);
      paramParcel.writeString(this.id);
      paramParcel.writeInt(this.width);
      paramParcel.writeInt(this.height);
      paramParcel.writeTypedList(this.channels);
      paramParcel.writeInt(this.ratingIndex);
      paramParcel.writeString(this.remark);
      paramParcel.writeTypedList(this.options);
      paramParcel.writeTypedList(this.links);
      paramParcel.writeParcelable(this.footerLink, paramInt);
      return;
      i = this.type.ordinal();
      break;
    }
  }
  
  public static final class Builder
  {
    String align;
    String articleId;
    List<BlockAttachment> attachments;
    String attribution;
    Author author;
    List<Channel> channels;
    Map<String, String> data;
    String description;
    String embedUrl;
    String fallbackUrl;
    Builder footerLink;
    Integer height;
    String id;
    Image image;
    List<String> items;
    String language;
    String linkType;
    String linkUrl;
    List<Builder> links;
    List<ConversationRatingOption.Builder> options;
    String previewUrl;
    String provider;
    Integer ratingIndex;
    Integer rating_index;
    String remark;
    String siteName;
    String text;
    String title;
    String trackingUrl;
    String type;
    String url;
    String username;
    Integer width;
    
    public final Block build()
    {
      return new Block(this, null);
    }
    
    public final boolean equals(Object paramObject)
    {
      Object localObject = paramObject;
      paramObject = this;
      for (;;)
      {
        if (paramObject == localObject) {
          return true;
        }
        if ((localObject == null) || (paramObject.getClass() != localObject.getClass())) {
          return false;
        }
        localObject = (Builder)localObject;
        if (((Builder)paramObject).type != null)
        {
          if (((Builder)paramObject).type.equals(((Builder)localObject).type)) {}
        }
        else {
          while (((Builder)localObject).type != null) {
            return false;
          }
        }
        if (((Builder)paramObject).text != null)
        {
          if (((Builder)paramObject).text.equals(((Builder)localObject).text)) {}
        }
        else {
          while (((Builder)localObject).text != null) {
            return false;
          }
        }
        if (((Builder)paramObject).title != null)
        {
          if (((Builder)paramObject).title.equals(((Builder)localObject).title)) {}
        }
        else {
          while (((Builder)localObject).title != null) {
            return false;
          }
        }
        if (((Builder)paramObject).description != null)
        {
          if (((Builder)paramObject).description.equals(((Builder)localObject).description)) {}
        }
        else {
          while (((Builder)localObject).description != null) {
            return false;
          }
        }
        if (((Builder)paramObject).linkType != null)
        {
          if (((Builder)paramObject).linkType.equals(((Builder)localObject).linkType)) {}
        }
        else {
          while (((Builder)localObject).linkType != null) {
            return false;
          }
        }
        if (((Builder)paramObject).siteName != null)
        {
          if (((Builder)paramObject).siteName.equals(((Builder)localObject).siteName)) {}
        }
        else {
          while (((Builder)localObject).siteName != null) {
            return false;
          }
        }
        if (((Builder)paramObject).articleId != null)
        {
          if (((Builder)paramObject).articleId.equals(((Builder)localObject).articleId)) {}
        }
        else {
          while (((Builder)localObject).articleId != null) {
            return false;
          }
        }
        if (((Builder)paramObject).author != null)
        {
          if (((Builder)paramObject).author.equals(((Builder)localObject).author)) {}
        }
        else {
          while (((Builder)localObject).author != null) {
            return false;
          }
        }
        if (((Builder)paramObject).image != null)
        {
          if (((Builder)paramObject).image.equals(((Builder)localObject).image)) {}
        }
        else {
          while (((Builder)localObject).image != null) {
            return false;
          }
        }
        if (((Builder)paramObject).data != null)
        {
          if (((Builder)paramObject).data.equals(((Builder)localObject).data)) {}
        }
        else {
          while (((Builder)localObject).data != null) {
            return false;
          }
        }
        if (((Builder)paramObject).language != null)
        {
          if (((Builder)paramObject).language.equals(((Builder)localObject).language)) {}
        }
        else {
          while (((Builder)localObject).language != null) {
            return false;
          }
        }
        if (((Builder)paramObject).url != null)
        {
          if (((Builder)paramObject).url.equals(((Builder)localObject).url)) {}
        }
        else {
          while (((Builder)localObject).url != null) {
            return false;
          }
        }
        if (((Builder)paramObject).linkUrl != null)
        {
          if (((Builder)paramObject).linkUrl.equals(((Builder)localObject).linkUrl)) {}
        }
        else {
          while (((Builder)localObject).linkUrl != null) {
            return false;
          }
        }
        if (((Builder)paramObject).embedUrl != null)
        {
          if (((Builder)paramObject).embedUrl.equals(((Builder)localObject).embedUrl)) {}
        }
        else {
          while (((Builder)localObject).embedUrl != null) {
            return false;
          }
        }
        if (((Builder)paramObject).trackingUrl != null)
        {
          if (((Builder)paramObject).trackingUrl.equals(((Builder)localObject).trackingUrl)) {}
        }
        else {
          while (((Builder)localObject).trackingUrl != null) {
            return false;
          }
        }
        if (((Builder)paramObject).fallbackUrl != null)
        {
          if (((Builder)paramObject).fallbackUrl.equals(((Builder)localObject).fallbackUrl)) {}
        }
        else {
          while (((Builder)localObject).fallbackUrl != null) {
            return false;
          }
        }
        if (((Builder)paramObject).username != null)
        {
          if (((Builder)paramObject).username.equals(((Builder)localObject).username)) {}
        }
        else {
          while (((Builder)localObject).username != null) {
            return false;
          }
        }
        if (((Builder)paramObject).provider != null)
        {
          if (((Builder)paramObject).provider.equals(((Builder)localObject).provider)) {}
        }
        else {
          while (((Builder)localObject).provider != null) {
            return false;
          }
        }
        if (((Builder)paramObject).id != null)
        {
          if (((Builder)paramObject).id.equals(((Builder)localObject).id)) {}
        }
        else {
          while (((Builder)localObject).id != null) {
            return false;
          }
        }
        if (((Builder)paramObject).align != null)
        {
          if (((Builder)paramObject).align.equals(((Builder)localObject).align)) {}
        }
        else {
          while (((Builder)localObject).align != null) {
            return false;
          }
        }
        if (((Builder)paramObject).width != null)
        {
          if (((Builder)paramObject).width.equals(((Builder)localObject).width)) {}
        }
        else {
          while (((Builder)localObject).width != null) {
            return false;
          }
        }
        if (((Builder)paramObject).height != null)
        {
          if (((Builder)paramObject).height.equals(((Builder)localObject).height)) {}
        }
        else {
          while (((Builder)localObject).height != null) {
            return false;
          }
        }
        if (((Builder)paramObject).previewUrl != null)
        {
          if (((Builder)paramObject).previewUrl.equals(((Builder)localObject).previewUrl)) {}
        }
        else {
          while (((Builder)localObject).previewUrl != null) {
            return false;
          }
        }
        if (((Builder)paramObject).attribution != null)
        {
          if (((Builder)paramObject).attribution.equals(((Builder)localObject).attribution)) {}
        }
        else {
          while (((Builder)localObject).attribution != null) {
            return false;
          }
        }
        if (((Builder)paramObject).attachments != null)
        {
          if (((Builder)paramObject).attachments.equals(((Builder)localObject).attachments)) {}
        }
        else {
          while (((Builder)localObject).attachments != null) {
            return false;
          }
        }
        if (((Builder)paramObject).items != null)
        {
          if (((Builder)paramObject).items.equals(((Builder)localObject).items)) {}
        }
        else {
          while (((Builder)localObject).items != null) {
            return false;
          }
        }
        if (((Builder)paramObject).channels != null)
        {
          if (((Builder)paramObject).channels.equals(((Builder)localObject).channels)) {}
        }
        else {
          while (((Builder)localObject).channels != null) {
            return false;
          }
        }
        if (((Builder)paramObject).rating_index != null)
        {
          if (((Builder)paramObject).rating_index.equals(((Builder)localObject).rating_index)) {}
        }
        else {
          while (((Builder)localObject).rating_index != null) {
            return false;
          }
        }
        if (((Builder)paramObject).ratingIndex != null)
        {
          if (((Builder)paramObject).ratingIndex.equals(((Builder)localObject).ratingIndex)) {}
        }
        else {
          while (((Builder)localObject).ratingIndex != null) {
            return false;
          }
        }
        if (((Builder)paramObject).remark != null)
        {
          if (((Builder)paramObject).remark.equals(((Builder)localObject).remark)) {}
        }
        else {
          while (((Builder)localObject).remark != null) {
            return false;
          }
        }
        if (((Builder)paramObject).options != null)
        {
          if (((Builder)paramObject).options.equals(((Builder)localObject).options)) {}
        }
        else {
          while (((Builder)localObject).options != null) {
            return false;
          }
        }
        if (((Builder)paramObject).links != null)
        {
          if (((Builder)paramObject).links.equals(((Builder)localObject).links)) {}
        }
        else {
          while (((Builder)localObject).links != null) {
            return false;
          }
        }
        if (((Builder)paramObject).footerLink == null) {
          break;
        }
        paramObject = ((Builder)paramObject).footerLink;
        localObject = ((Builder)localObject).footerLink;
      }
      return ((Builder)localObject).footerLink == null;
    }
    
    public final int hashCode()
    {
      int i28 = 0;
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
      label128:
      int i4;
      label144:
      int i5;
      label162:
      int i6;
      label178:
      int i7;
      label194:
      int i8;
      label210:
      int i9;
      label226:
      int i10;
      label242:
      int i11;
      label258:
      int i12;
      label274:
      int i13;
      label290:
      int i14;
      label306:
      int i15;
      label322:
      int i16;
      label338:
      int i17;
      label354:
      int i18;
      label370:
      int i19;
      label386:
      int i20;
      label404:
      int i21;
      label422:
      int i22;
      label440:
      int i23;
      label456:
      int i24;
      label472:
      int i25;
      label488:
      int i26;
      if (this.type != null)
      {
        i = this.type.hashCode();
        if (this.text == null) {
          break label737;
        }
        j = this.text.hashCode();
        if (this.title == null) {
          break label742;
        }
        k = this.title.hashCode();
        if (this.description == null) {
          break label747;
        }
        m = this.description.hashCode();
        if (this.linkType == null) {
          break label753;
        }
        n = this.linkType.hashCode();
        if (this.siteName == null) {
          break label759;
        }
        i1 = this.siteName.hashCode();
        if (this.articleId == null) {
          break label765;
        }
        i2 = this.articleId.hashCode();
        if (this.author == null) {
          break label771;
        }
        i3 = this.author.hashCode();
        if (this.image == null) {
          break label777;
        }
        i4 = this.image.hashCode();
        if (this.data == null) {
          break label783;
        }
        i5 = this.data.hashCode();
        if (this.language == null) {
          break label789;
        }
        i6 = this.language.hashCode();
        if (this.url == null) {
          break label795;
        }
        i7 = this.url.hashCode();
        if (this.linkUrl == null) {
          break label801;
        }
        i8 = this.linkUrl.hashCode();
        if (this.embedUrl == null) {
          break label807;
        }
        i9 = this.embedUrl.hashCode();
        if (this.trackingUrl == null) {
          break label813;
        }
        i10 = this.trackingUrl.hashCode();
        if (this.fallbackUrl == null) {
          break label819;
        }
        i11 = this.fallbackUrl.hashCode();
        if (this.username == null) {
          break label825;
        }
        i12 = this.username.hashCode();
        if (this.provider == null) {
          break label831;
        }
        i13 = this.provider.hashCode();
        if (this.id == null) {
          break label837;
        }
        i14 = this.id.hashCode();
        if (this.align == null) {
          break label843;
        }
        i15 = this.align.hashCode();
        if (this.width == null) {
          break label849;
        }
        i16 = this.width.hashCode();
        if (this.height == null) {
          break label855;
        }
        i17 = this.height.hashCode();
        if (this.previewUrl == null) {
          break label861;
        }
        i18 = this.previewUrl.hashCode();
        if (this.attribution == null) {
          break label867;
        }
        i19 = this.attribution.hashCode();
        if (this.attachments == null) {
          break label873;
        }
        i20 = this.attachments.hashCode();
        if (this.items == null) {
          break label879;
        }
        i21 = this.items.hashCode();
        if (this.channels == null) {
          break label885;
        }
        i22 = this.channels.hashCode();
        if (this.rating_index == null) {
          break label891;
        }
        i23 = this.rating_index.hashCode();
        if (this.ratingIndex == null) {
          break label897;
        }
        i24 = this.ratingIndex.hashCode();
        if (this.remark == null) {
          break label903;
        }
        i25 = this.remark.hashCode();
        if (this.options == null) {
          break label909;
        }
        i26 = this.options.hashCode();
        label506:
        if (this.links == null) {
          break label915;
        }
      }
      label737:
      label742:
      label747:
      label753:
      label759:
      label765:
      label771:
      label777:
      label783:
      label789:
      label795:
      label801:
      label807:
      label813:
      label819:
      label825:
      label831:
      label837:
      label843:
      label849:
      label855:
      label861:
      label867:
      label873:
      label879:
      label885:
      label891:
      label897:
      label903:
      label909:
      label915:
      for (int i27 = this.links.hashCode();; i27 = 0)
      {
        if (this.footerLink != null) {
          i28 = this.footerLink.hashCode();
        }
        return (i27 + (i26 + (i25 + (i24 + (i23 + (i22 + (i21 + (i20 + (i19 + (i18 + (i17 + (i16 + (i15 + (i14 + (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + i * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i28;
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
        break label128;
        i4 = 0;
        break label144;
        i5 = 0;
        break label162;
        i6 = 0;
        break label178;
        i7 = 0;
        break label194;
        i8 = 0;
        break label210;
        i9 = 0;
        break label226;
        i10 = 0;
        break label242;
        i11 = 0;
        break label258;
        i12 = 0;
        break label274;
        i13 = 0;
        break label290;
        i14 = 0;
        break label306;
        i15 = 0;
        break label322;
        i16 = 0;
        break label338;
        i17 = 0;
        break label354;
        i18 = 0;
        break label370;
        i19 = 0;
        break label386;
        i20 = 0;
        break label404;
        i21 = 0;
        break label422;
        i22 = 0;
        break label440;
        i23 = 0;
        break label456;
        i24 = 0;
        break label472;
        i25 = 0;
        break label488;
        i26 = 0;
        break label506;
      }
    }
    
    public final Builder withAlign(String paramString)
    {
      this.align = paramString;
      return this;
    }
    
    public final Builder withArticleId(String paramString)
    {
      this.articleId = paramString;
      return this;
    }
    
    public final Builder withAttachments(List<BlockAttachment> paramList)
    {
      this.attachments = paramList;
      return this;
    }
    
    public final Builder withAttribution(String paramString)
    {
      this.attribution = paramString;
      return this;
    }
    
    public final Builder withAuthor(Author paramAuthor)
    {
      this.author = paramAuthor;
      return this;
    }
    
    public final Builder withChannels(List<Channel> paramList)
    {
      this.channels = paramList;
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
    
    public final Builder withHeight(int paramInt)
    {
      this.height = Integer.valueOf(paramInt);
      return this;
    }
    
    public final Builder withImage(Image paramImage)
    {
      this.image = paramImage;
      return this;
    }
    
    public final Builder withItems(List<String> paramList)
    {
      this.items = paramList;
      return this;
    }
    
    public final Builder withLinkType(String paramString)
    {
      this.linkType = paramString;
      return this;
    }
    
    public final Builder withOptions(List<ConversationRatingOption.Builder> paramList)
    {
      this.options = paramList;
      return this;
    }
    
    public final Builder withPreviewUrl(String paramString)
    {
      this.previewUrl = paramString;
      return this;
    }
    
    public final Builder withRatingIndex(Integer paramInteger)
    {
      this.ratingIndex = paramInteger;
      return this;
    }
    
    public final Builder withRemark(String paramString)
    {
      this.remark = paramString;
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
    
    public final Builder withWidth(int paramInt)
    {
      this.width = Integer.valueOf(paramInt);
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/Block.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */