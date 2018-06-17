package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.widget.LinearLayout;
import io.intercom.a.a.a.j;
import io.intercom.a.b.a.e;
import io.intercom.a.c.a.b;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.messengercard.MessengerCard;
import io.intercom.android.sdk.blocks.models.Block;
import io.intercom.android.sdk.blocks.models.Block.Builder;
import io.intercom.android.sdk.blocks.models.BlockAttachment.Builder;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.models.Attachments;
import io.intercom.android.sdk.models.Part;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ViewHolderGenerator
{
  private final Api api;
  private final Provider<AppConfig> appConfigProvider;
  private final b bus;
  private final ButtonClickListener buttonClickListener;
  private final String conversationId;
  private final e gson;
  private final ImageClickListener imageListener;
  private final MetricTracker metricTracker;
  private final j requestManager;
  private final UploadingImageCache uploadingImageCache;
  
  public ViewHolderGenerator(UploadingImageCache paramUploadingImageCache, Api paramApi, Provider<AppConfig> paramProvider, String paramString, ImageClickListener paramImageClickListener, ButtonClickListener paramButtonClickListener, j paramj, e parame, b paramb, MetricTracker paramMetricTracker)
  {
    this.uploadingImageCache = paramUploadingImageCache;
    this.api = paramApi;
    this.appConfigProvider = paramProvider;
    this.conversationId = paramString;
    this.imageListener = paramImageClickListener;
    this.buttonClickListener = paramButtonClickListener;
    this.requestManager = paramj;
    this.gson = parame;
    this.bus = paramb;
    this.metricTracker = paramMetricTracker;
  }
  
  public static LinearLayout createLayoutFromBlocks(BlocksViewHolder paramBlocksViewHolder, List<Block> paramList, Context paramContext)
  {
    return new Blocks(paramContext, LumberMill.getBlocksTwig()).createBlocks(paramList, paramBlocksViewHolder);
  }
  
  public static LinearLayout createPartsLayout(BlocksViewHolder paramBlocksViewHolder, Part paramPart, Context paramContext)
  {
    List localList = paramPart.getBlocks();
    if (!paramPart.getAttachments().isEmpty())
    {
      ArrayList localArrayList = new ArrayList();
      paramPart = paramPart.getAttachments().iterator();
      while (paramPart.hasNext())
      {
        Attachments localAttachments = (Attachments)paramPart.next();
        localArrayList.add(new BlockAttachment.Builder().withName(localAttachments.getName()).withUrl(localAttachments.getUrl()).build());
      }
      localList.add(new Block.Builder().withType(BlockType.ATTACHMENTLIST.name()).withAttachments(localArrayList).build());
    }
    return new Blocks(paramContext, LumberMill.getBlocksTwig()).createBlocks(localList, paramBlocksViewHolder);
  }
  
  private BlocksViewHolder generateHolder(int paramInt, StyleType paramStyleType)
  {
    BlocksViewHolder localBlocksViewHolder = new BlocksViewHolder();
    Button localButton = new Button(paramStyleType, this.appConfigProvider, this.buttonClickListener);
    Heading localHeading = new Heading(paramStyleType, this.appConfigProvider);
    ListBlock localListBlock = new ListBlock(paramStyleType, this.appConfigProvider);
    Attachment localAttachment = new Attachment(paramStyleType, this.appConfigProvider);
    localBlocksViewHolder.setLayout(paramInt);
    localBlocksViewHolder.setParagraph(new Paragraph(paramStyleType, this.appConfigProvider));
    localBlocksViewHolder.setHeading(localHeading);
    localBlocksViewHolder.setSubheading(localHeading);
    localBlocksViewHolder.setCode(new Code());
    localBlocksViewHolder.setUnorderedList(localListBlock);
    localBlocksViewHolder.setOrderedList(localListBlock);
    localBlocksViewHolder.setImage(new NetworkImage(paramStyleType, this.appConfigProvider, this.uploadingImageCache, this.imageListener, this.requestManager));
    localBlocksViewHolder.setLocalImage(new LocalImage(paramStyleType, this.requestManager));
    localBlocksViewHolder.setButton(localButton);
    localBlocksViewHolder.setAttachmentList(localAttachment);
    localBlocksViewHolder.setLocalAttachment(localAttachment);
    localBlocksViewHolder.setTwitterButton(localButton);
    localBlocksViewHolder.setFacebookButton(localButton);
    localBlocksViewHolder.setVideo(new Video(paramStyleType, this.api, this.appConfigProvider, this.requestManager));
    localBlocksViewHolder.setLink(new LinkCard(paramStyleType, this.appConfigProvider, this.conversationId, this.requestManager));
    localBlocksViewHolder.setConversationRating(new ConversationRatingCard(this.api, this.conversationId, this.appConfigProvider, this.requestManager));
    localBlocksViewHolder.setLinkList(new LinkListRenderer(this.api, this.appConfigProvider, this.conversationId));
    localBlocksViewHolder.setMessengerCardBlock(new MessengerCard(this.appConfigProvider, this.gson, this.bus, this.metricTracker, this.conversationId));
    return localBlocksViewHolder;
  }
  
  public BlocksViewHolder getAdminHolder()
  {
    return generateHolder(R.layout.intercom_blocks_admin_layout, StyleType.ADMIN);
  }
  
  public BlocksViewHolder getChatFullHolder()
  {
    return generateHolder(R.layout.intercom_blocks_admin_layout, StyleType.CHAT_FULL);
  }
  
  public BlocksViewHolder getContainerCardHolder()
  {
    return generateHolder(R.layout.intercom_blocks_container_card_layout, StyleType.CONTAINER_CARD);
  }
  
  public BlocksViewHolder getConversationRatingHolder()
  {
    return generateHolder(R.layout.intercom_blocks_container_layout, StyleType.CHAT_FULL);
  }
  
  public BlocksViewHolder getLinkHolder()
  {
    return generateHolder(R.layout.intercom_blocks_container_layout, StyleType.CHAT_FULL);
  }
  
  public BlocksViewHolder getLinkListHolder()
  {
    return generateHolder(R.layout.intercom_blocks_container_card_layout, StyleType.CHAT_FULL);
  }
  
  public BlocksViewHolder getNoteHolder()
  {
    return generateHolder(R.layout.intercom_blocks_note_layout, StyleType.NOTE);
  }
  
  public BlocksViewHolder getPostHolder()
  {
    return generateHolder(R.layout.intercom_blocks_container_layout, StyleType.POST);
  }
  
  public BlocksViewHolder getPreviewHolder()
  {
    return generateHolder(R.layout.intercom_blocks_user_layout, StyleType.PREVIEW);
  }
  
  public BlocksViewHolder getUserHolder()
  {
    return generateHolder(R.layout.intercom_blocks_user_layout, StyleType.USER);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/ViewHolderGenerator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */