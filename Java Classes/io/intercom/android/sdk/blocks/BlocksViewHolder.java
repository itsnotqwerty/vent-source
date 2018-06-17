package io.intercom.android.sdk.blocks;

import io.intercom.android.sdk.blocks.blockInterfaces.AttachmentListBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.ButtonBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.CodeBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.ConversationRatingBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.FacebookBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.HeadingBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.ImageBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.LightWeightReplyBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.LinkBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.LinkListBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.LocalAttachmentBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.LocalImageBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.MessengerCardBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.NotificationChannelsCardBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.OrderedListBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.ParagraphBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.SubheadingBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.TwitterBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.UnorderedListBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.VideoBlock;

public class BlocksViewHolder
{
  private AttachmentListBlock attachmentList;
  private ButtonBlock button;
  private CodeBlock code;
  private ConversationRatingBlock conversationRating;
  private FacebookBlock facebookButton;
  private HeadingBlock heading;
  private ImageBlock image;
  private int layout;
  private LinkBlock link;
  private LinkListBlock linkList;
  private LocalAttachmentBlock localAttachment;
  private LocalImageBlock localImage;
  private LightWeightReplyBlock lwr;
  private MessengerCardBlock messengerCardBlock;
  private NotificationChannelsCardBlock notificationChannelsCard;
  private OrderedListBlock orderedList;
  private ParagraphBlock paragraph;
  private SubheadingBlock subheading;
  private TwitterBlock twitterButton;
  private UnorderedListBlock unorderedList;
  private VideoBlock video;
  
  public AttachmentListBlock getAttachmentList()
  {
    return this.attachmentList;
  }
  
  public ButtonBlock getButton()
  {
    return this.button;
  }
  
  public CodeBlock getCode()
  {
    return this.code;
  }
  
  public ConversationRatingBlock getConversationRating()
  {
    return this.conversationRating;
  }
  
  public FacebookBlock getFacebookButton()
  {
    return this.facebookButton;
  }
  
  public HeadingBlock getHeading()
  {
    return this.heading;
  }
  
  public ImageBlock getImage()
  {
    return this.image;
  }
  
  public int getLayout()
  {
    return this.layout;
  }
  
  public LinkBlock getLink()
  {
    return this.link;
  }
  
  public LinkListBlock getLinkList()
  {
    return this.linkList;
  }
  
  public LocalAttachmentBlock getLocalAttachment()
  {
    return this.localAttachment;
  }
  
  public LocalImageBlock getLocalImage()
  {
    return this.localImage;
  }
  
  public LightWeightReplyBlock getLwr()
  {
    return this.lwr;
  }
  
  public MessengerCardBlock getMessengerCardBlock()
  {
    return this.messengerCardBlock;
  }
  
  public NotificationChannelsCardBlock getNotificationChannelsCard()
  {
    return this.notificationChannelsCard;
  }
  
  public OrderedListBlock getOrderedList()
  {
    return this.orderedList;
  }
  
  public ParagraphBlock getParagraph()
  {
    return this.paragraph;
  }
  
  public SubheadingBlock getSubheading()
  {
    return this.subheading;
  }
  
  public TwitterBlock getTwitterButton()
  {
    return this.twitterButton;
  }
  
  public UnorderedListBlock getUnorderedList()
  {
    return this.unorderedList;
  }
  
  public VideoBlock getVideo()
  {
    return this.video;
  }
  
  public void setAttachmentList(AttachmentListBlock paramAttachmentListBlock)
  {
    this.attachmentList = paramAttachmentListBlock;
  }
  
  public void setButton(ButtonBlock paramButtonBlock)
  {
    this.button = paramButtonBlock;
  }
  
  public void setCode(CodeBlock paramCodeBlock)
  {
    this.code = paramCodeBlock;
  }
  
  public void setConversationRating(ConversationRatingBlock paramConversationRatingBlock)
  {
    this.conversationRating = paramConversationRatingBlock;
  }
  
  public void setFacebookButton(FacebookBlock paramFacebookBlock)
  {
    this.facebookButton = paramFacebookBlock;
  }
  
  public void setHeading(HeadingBlock paramHeadingBlock)
  {
    this.heading = paramHeadingBlock;
  }
  
  public void setImage(ImageBlock paramImageBlock)
  {
    this.image = paramImageBlock;
  }
  
  public void setLayout(int paramInt)
  {
    this.layout = paramInt;
  }
  
  public void setLink(LinkBlock paramLinkBlock)
  {
    this.link = paramLinkBlock;
  }
  
  public void setLinkList(LinkListBlock paramLinkListBlock)
  {
    this.linkList = paramLinkListBlock;
  }
  
  public void setLocalAttachment(LocalAttachmentBlock paramLocalAttachmentBlock)
  {
    this.localAttachment = paramLocalAttachmentBlock;
  }
  
  public void setLocalImage(LocalImageBlock paramLocalImageBlock)
  {
    this.localImage = paramLocalImageBlock;
  }
  
  public void setLwr(LightWeightReplyBlock paramLightWeightReplyBlock)
  {
    this.lwr = paramLightWeightReplyBlock;
  }
  
  public void setMessengerCardBlock(MessengerCardBlock paramMessengerCardBlock)
  {
    this.messengerCardBlock = paramMessengerCardBlock;
  }
  
  public void setNotificationChannelsCard(NotificationChannelsCardBlock paramNotificationChannelsCardBlock)
  {
    this.notificationChannelsCard = paramNotificationChannelsCardBlock;
  }
  
  public void setOrderedList(OrderedListBlock paramOrderedListBlock)
  {
    this.orderedList = paramOrderedListBlock;
  }
  
  public void setParagraph(ParagraphBlock paramParagraphBlock)
  {
    this.paragraph = paramParagraphBlock;
  }
  
  public void setSubheading(SubheadingBlock paramSubheadingBlock)
  {
    this.subheading = paramSubheadingBlock;
  }
  
  public void setTwitterButton(TwitterBlock paramTwitterBlock)
  {
    this.twitterButton = paramTwitterBlock;
  }
  
  public void setUnorderedList(UnorderedListBlock paramUnorderedListBlock)
  {
    this.unorderedList = paramUnorderedListBlock;
  }
  
  public void setVideo(VideoBlock paramVideoBlock)
  {
    this.video = paramVideoBlock;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/BlocksViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */