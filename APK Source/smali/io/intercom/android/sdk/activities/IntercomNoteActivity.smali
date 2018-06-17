.class public Lio/intercom/android/sdk/activities/IntercomNoteActivity;
.super Lio/intercom/android/sdk/activities/IntercomBaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LAST_PARTICIPANT:Ljava/lang/String; = "last_participant"

.field private static final PARCEL_CONVERSATION_ID:Ljava/lang/String; = "parcel_conversation_id"

.field private static final PARCEL_PART:Ljava/lang/String; = "parcel_part"


# instance fields
.field composerLayout:Landroid/view/View;

.field conversationId:Ljava/lang/String;

.field private lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

.field metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private noteLayout:Landroid/widget/LinearLayout;

.field part:Lio/intercom/android/sdk/models/Part;

.field private final presenter:Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;

.field reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

.field private requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;

    invoke-direct {v0}, Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->presenter:Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/activities/IntercomNoteActivity;)Lio/intercom/a/a/a/j;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->requestManager:Lio/intercom/a/a/a/j;

    return-object v0
.end method

.method public static buildNoteIntent(Landroid/content/Context;Lio/intercom/android/sdk/models/Part;Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "parcel_part"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "last_participant"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "parcel_conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-class v1, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method animateContent()V
    .locals 4

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->noteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->noteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->noteLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->noteLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->noteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->presenter:Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;->closeWindow(Landroid/app/Activity;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->closedInAppFromFull(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/intercom/android/sdk/R$id;->note_touch_target:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->presenter:Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;->closeWindow(Landroid/app/Activity;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->closedInAppFromFull(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->conversationId:Ljava/lang/String;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-static {p0, v0, v1}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->openConversation(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_activity_note:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->setContentView(I)V

    invoke-static {p0}, Lio/intercom/a/a/a/c;->b(Landroid/support/v4/app/j;)Lio/intercom/a/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->requestManager:Lio/intercom/a/a/a/j;

    sget v0, Lio/intercom/android/sdk/R$id;->note_layout:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->noteLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->noteLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v0, Lio/intercom/android/sdk/R$id;->reaction_input_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/conversation/ReactionInputView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/IntercomToolbar;

    new-instance v1, Lio/intercom/android/sdk/activities/InAppToolbarListener;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/InAppToolbarListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setListener(Lio/intercom/android/sdk/views/IntercomToolbar$Listener;)V

    new-instance v1, Lio/intercom/android/sdk/models/Part;

    invoke-direct {v1}, Lio/intercom/android/sdk/models/Part;-><init>()V

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    sget-object v1, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NULL:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v9

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v11

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v12

    new-instance v3, Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lio/intercom/android/sdk/utilities/TimeFormatter;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    const-class v1, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "parcel_part"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "parcel_part"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/models/Part;

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    const-string v1, ""

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Participant;->getForename()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    invoke-interface {v12}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/AppConfig;->getName()Ljava/lang/String;

    move-result-object v1

    sget v5, Lio/intercom/android/sdk/R$string;->intercom_teammate_from_company:I

    invoke-static {p0, v5}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v2

    const-string v5, "company"

    invoke-virtual {v2, v5, v1}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v1, "parcel_conversation_id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "parcel_conversation_id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->conversationId:Ljava/lang/String;

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->conversationId:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/android/sdk/actions/Actions;->conversationMarkedAsRead(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->conversationId:Ljava/lang/String;

    invoke-virtual {v11, v1}, Lio/intercom/android/sdk/api/Api;->markConversationAsRead(Ljava/lang/String;)V

    :cond_1
    const-string v1, "last_participant"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "last_participant"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-static {v1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isNull(Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-virtual {v3, v1, v12}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getAdminActiveStatus(Lio/intercom/android/sdk/models/LastParticipatingAdmin;Lio/intercom/android/sdk/Provider;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive()Z

    move-result v2

    new-instance v3, Lio/intercom/android/sdk/views/ActiveStatePresenter;

    invoke-direct {v3}, Lio/intercom/android/sdk/views/ActiveStatePresenter;-><init>()V

    invoke-interface {v12}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v5, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/views/IntercomToolbar;->setUpNoteToolbar(Lio/intercom/android/sdk/models/Participant;ZLio/intercom/android/sdk/views/ActiveStatePresenter;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;

    new-instance v1, Lio/intercom/android/sdk/blocks/UploadingImageCache;

    invoke-direct {v1}, Lio/intercom/android/sdk/blocks/UploadingImageCache;-><init>()V

    iget-object v4, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->conversationId:Ljava/lang/String;

    new-instance v5, Lio/intercom/android/sdk/blocks/LightboxOpeningImageClickListener;

    invoke-direct {v5, v11}, Lio/intercom/android/sdk/blocks/LightboxOpeningImageClickListener;-><init>(Lio/intercom/android/sdk/api/Api;)V

    new-instance v6, Lio/intercom/android/sdk/blocks/LinkOpeningButtonClickListener;

    invoke-direct {v6, v11}, Lio/intercom/android/sdk/blocks/LinkOpeningButtonClickListener;-><init>(Lio/intercom/android/sdk/api/Api;)V

    iget-object v7, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getGson()Lio/intercom/a/b/a/e;

    move-result-object v8

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getBus()Lio/intercom/a/c/a/b;

    move-result-object v9

    iget-object v10, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    move-object v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;-><init>(Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/Provider;Ljava/lang/String;Lio/intercom/android/sdk/blocks/ImageClickListener;Lio/intercom/android/sdk/blocks/ButtonClickListener;Lio/intercom/a/a/a/j;Lio/intercom/a/b/a/e;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getNoteHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v1

    sget v0, Lio/intercom/android/sdk/R$id;->note_composer_container:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->composerLayout:Landroid/view/View;

    sget v0, Lio/intercom/android/sdk/R$id;->note_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/intercom/android/sdk/views/ContentAwareScrollView;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-static {v1, v0, p0}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->createPartsLayout(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Lio/intercom/android/sdk/models/Part;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v6, v0, p0}, Lio/intercom/android/sdk/utilities/BlockUtils;->getBlockView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/models/ReactionReply;->isNull(Lio/intercom/android/sdk/models/ReactionReply;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lio/intercom/android/sdk/activities/ConversationReactionListener;

    sget-object v1, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->IN_APP:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->conversationId:Ljava/lang/String;

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v4

    iget-object v5, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/activities/ConversationReactionListener;-><init>(Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;

    invoke-direct {v1, p0, v6, v0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;-><init>(Lio/intercom/android/sdk/activities/IntercomNoteActivity;Lio/intercom/android/sdk/views/ContentAwareScrollView;Lio/intercom/android/sdk/conversation/ReactionListener;)V

    invoke-virtual {v6, v1}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->setListener(Lio/intercom/android/sdk/views/ContentAwareScrollView$Listener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/conversation/ReactionInputView;->preloadReactionImages(Lio/intercom/android/sdk/models/ReactionReply;Lio/intercom/a/a/a/j;)V

    :cond_3
    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;-><init>(Lio/intercom/android/sdk/activities/IntercomNoteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_4
    move-object v2, v1

    goto/16 :goto_0
.end method
