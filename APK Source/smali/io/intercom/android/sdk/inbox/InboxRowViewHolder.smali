.class Lio/intercom/android/sdk/inbox/InboxRowViewHolder;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final authorAvatar:Lio/intercom/android/sdk/views/AuthorAvatarView;

.field private final authorName:Landroid/widget/TextView;

.field private final conversationClickListener:Lio/intercom/android/sdk/inbox/ConversationClickListener;

.field private final conversationIndicator:Landroid/widget/ImageView;

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final summary:Landroid/widget/TextView;

.field private final timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

.field private final timeStamp:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lio/intercom/android/sdk/inbox/ConversationClickListener;Lio/intercom/android/sdk/utilities/TimeFormatter;Lio/intercom/a/a/a/j;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->conversationClickListener:Lio/intercom/android/sdk/inbox/ConversationClickListener;

    iput-object p3, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    iput-object p4, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_author_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/AuthorAvatarView;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorAvatar:Lio/intercom/android/sdk/views/AuthorAvatarView;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_user_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorName:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_time_stamp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->timeStamp:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_message_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->summary:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_conversation_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->conversationIndicator:Landroid/widget/ImageView;

    return-void
.end method

.method private setRowParticipantDetails(Lio/intercom/android/sdk/models/Conversation;Ljava/lang/String;Lio/intercom/android/sdk/models/TeamPresence;Lio/intercom/android/sdk/identity/AppConfig;)V
    .locals 5

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getLastParticipatingAdmin()Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorAvatar:Lio/intercom/android/sdk/views/AuthorAvatarView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive()Z

    move-result v3

    iget-object v4, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v1, v2, v3, p4, v4}, Lio/intercom/android/sdk/views/AuthorAvatarView;->loadAvatarWithActiveState(Lio/intercom/android/sdk/models/Avatar;ZLio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getGroupConversationParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lio/intercom/android/sdk/utilities/GroupConversationTextFormatter;->groupConversationTitle(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lio/intercom/android/sdk/models/TeamPresence;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorAvatar:Lio/intercom/android/sdk/views/AuthorAvatarView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v1, v0, p4, v2}, Lio/intercom/android/sdk/views/AuthorAvatarView;->loadAvatar(Lio/intercom/android/sdk/models/Avatar;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorAvatar:Lio/intercom/android/sdk/views/AuthorAvatarView;

    invoke-virtual {p3}, Lio/intercom/android/sdk/models/TeamPresence;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v0, v1, p4, v2}, Lio/intercom/android/sdk/views/AuthorAvatarView;->loadAvatars(Ljava/util/List;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method bindData(Lio/intercom/android/sdk/models/Conversation;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/android/sdk/models/TeamPresence;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getLastUserVisiblePart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v2

    invoke-virtual {p2}, Lio/intercom/android/sdk/identity/UserIdentity;->getIntercomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/models/Participant;->isUserWithId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->summary:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lio/intercom/android/sdk/R$string;->intercom_you:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->timeStamp:Landroid/widget/TextView;

    iget-object v3, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getCreatedAt()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getFormattedTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lio/intercom/android/sdk/identity/AppConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4, p3}, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->setRowParticipantDetails(Lio/intercom/android/sdk/models/Conversation;Ljava/lang/String;Lio/intercom/android/sdk/models/TeamPresence;Lio/intercom/android/sdk/identity/AppConfig;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->isRead()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorName:Landroid/widget/TextView;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/FontUtils;->setRobotoMediumTypeface(Landroid/widget/TextView;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->summary:Landroid/widget/TextView;

    sget v2, Lio/intercom/android/sdk/R$color;->intercom_grey_800:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lio/intercom/android/sdk/R$drawable;->intercom_unread_dot:I

    invoke-static {v1, v0}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v2

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->timeStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->timeStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->isUserParticipated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->conversationIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    iget-object v2, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->authorName:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->summary:Landroid/widget/TextView;

    sget v2, Lio/intercom/android/sdk/R$color;->intercom_grey_600:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->timeStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->timeStamp:Landroid/widget/TextView;

    sget v2, Lio/intercom/android/sdk/R$color;->intercom_grey_500:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->conversationIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->conversationClickListener:Lio/intercom/android/sdk/inbox/ConversationClickListener;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/inbox/ConversationClickListener;->onConversationClicked(I)V

    :cond_0
    return-void
.end method
