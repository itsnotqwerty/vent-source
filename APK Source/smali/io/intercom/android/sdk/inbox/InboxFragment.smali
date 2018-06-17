.class public Lio/intercom/android/sdk/inbox/InboxFragment;
.super Landroid/support/v4/app/i;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lio/intercom/android/sdk/inbox/ConversationClickListener;
.implements Lio/intercom/android/sdk/store/Store$Subscriber;
.implements Lio/intercom/android/sdk/views/EndlessScrollListener;
.implements Lio/intercom/android/sdk/views/IntercomToolbar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/inbox/InboxFragment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/i;",
        "Landroid/view/View$OnClickListener;",
        "Lio/intercom/android/sdk/inbox/ConversationClickListener;",
        "Lio/intercom/android/sdk/store/Store$Subscriber",
        "<",
        "Lio/intercom/android/sdk/state/InboxState;",
        ">;",
        "Lio/intercom/android/sdk/views/EndlessScrollListener;",
        "Lio/intercom/android/sdk/views/IntercomToolbar$Listener;"
    }
.end annotation


# static fields
.field private static final ARG_IS_TWO_PANE:Ljava/lang/String; = "is_two_pane"

.field private static final FADE_DURATION_MS:I = 0x96


# instance fields
.field private adapter:Lio/intercom/android/sdk/inbox/InboxAdapter;

.field private appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private composerButton:Landroid/support/design/widget/FloatingActionButton;

.field private endlessRecyclerScrollListener:Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;

.field private inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

.field inboxView:Landroid/support/v7/widget/RecyclerView;

.field private intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

.field private isTwoPane:Z

.field private layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

.field private progressBar:Landroid/widget/ProgressBar;

.field private requestManager:Lio/intercom/a/a/a/j;

.field private rootView:Landroid/view/View;

.field private store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field

.field private subscription:Lio/intercom/android/sdk/store/Store$Subscription;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    sget-object v0, Lio/intercom/android/sdk/inbox/InboxFragment$Listener;->EMPTY:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->isTwoPane:Z

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/inbox/InboxFragment;)Lio/intercom/android/sdk/store/Store;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->store:Lio/intercom/android/sdk/store/Store;

    return-object v0
.end method

.method private displayEmptyView()V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_no_conversations:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setTitle(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_empty_conversations:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    const-string v2, "name"

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/views/IntercomErrorView;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->showComposerButtonIfEnabled()V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private displayErrorView()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_inbox_error_state_title:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setTitle(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_failed_to_load_conversation:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setSubtitle(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_retry:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonText(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->composerButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method private displayInbox()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->showComposerButtonIfEnabled()V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private displayLoadingView()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->composerButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private fadeOutInbox(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->fadeOutTitle(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private isInboundMessageEnabled()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->isInboundMessages()Z

    move-result v0

    return v0
.end method

.method public static newInstance(Z)Lio/intercom/android/sdk/inbox/InboxFragment;
    .locals 3

    new-instance v0, Lio/intercom/android/sdk/inbox/InboxFragment;

    invoke-direct {v0}, Lio/intercom/android/sdk/inbox/InboxFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_two_pane"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/inbox/InboxFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setColorScheme()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->composerButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    invoke-interface {v1}, Lio/intercom/android/sdk/inbox/InboxFragment$Listener;->setStatusBarColor()V

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/views/IntercomToolbar;->setBackgroundColor(I)V

    return-void
.end method

.method private setToolbarTitle()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_conversations:I

    invoke-virtual {p0, v1}, Lio/intercom/android/sdk/inbox/InboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$string;->intercom_conversations_with_app:I

    invoke-static {v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/views/IntercomToolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showComposerButtonIfEnabled()V
    .locals 2

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->composerButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->isInboundMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onAttach(Landroid/content/Context;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    move-object v1, v0

    iput-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement InboxFragment.Listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/intercom/android/sdk/R$id;->compose_action_button:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->isTwoPane:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/inbox/InboxFragment$Listener;->onComposerSelected()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lio/intercom/android/sdk/inbox/InboxFragment$3;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/inbox/InboxFragment$3;-><init>(Lio/intercom/android/sdk/inbox/InboxFragment;)V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/inbox/InboxFragment;->fadeOutInbox(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public onCloseClicked()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/inbox/InboxFragment$Listener;->onToolbarCloseClicked()V

    return-void
.end method

.method public onConversationClicked(I)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->store:Lio/intercom/android/sdk/store/Store;

    invoke-virtual {v0}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->inboxState()Lio/intercom/android/sdk/state/InboxState;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    iget-boolean v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->isTwoPane:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/inbox/InboxFragment$Listener;->onConversationSelected(Lio/intercom/android/sdk/models/Conversation;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lio/intercom/android/sdk/inbox/InboxFragment$4;

    invoke-direct {v1, p0, v0}, Lio/intercom/android/sdk/inbox/InboxFragment$4;-><init>(Lio/intercom/android/sdk/inbox/InboxFragment;Lio/intercom/android/sdk/models/Conversation;)V

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/inbox/InboxFragment;->fadeOutInbox(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v2

    invoke-static {p0}, Lio/intercom/a/a/a/c;->r(Landroid/support/v4/app/i;)Lio/intercom/a/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v2}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->store:Lio/intercom/android/sdk/store/Store;

    invoke-virtual {v2}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v8

    new-instance v4, Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {v2}, Lio/intercom/android/sdk/Injector;->getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    move-result-object v0

    invoke-direct {v4, v8, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    new-instance v0, Lio/intercom/android/sdk/inbox/InboxAdapter;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->store:Lio/intercom/android/sdk/store/Store;

    iget-object v5, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {v2}, Lio/intercom/android/sdk/Injector;->getUserIdentity()Lio/intercom/android/sdk/identity/UserIdentity;

    move-result-object v6

    iget-object v7, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->requestManager:Lio/intercom/a/a/a/j;

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lio/intercom/android/sdk/inbox/InboxAdapter;-><init>(Landroid/view/LayoutInflater;Lio/intercom/android/sdk/inbox/ConversationClickListener;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/utilities/TimeFormatter;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/a/a/j;)V

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->adapter:Lio/intercom/android/sdk/inbox/InboxAdapter;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    new-instance v0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;-><init>(Landroid/support/v7/widget/LinearLayoutManager;Lio/intercom/android/sdk/views/EndlessScrollListener;)V

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->endlessRecyclerScrollListener:Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;

    invoke-virtual {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "is_two_pane"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->isTwoPane:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "inbox frag"

    const-string v2, "creating view for fragment"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_fragment_inbox:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$id;->inbox_recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->endlessRecyclerScrollListener:Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->adapter:Lio/intercom/android/sdk/inbox/InboxAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$id;->compose_action_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->composerButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->composerButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$id;->error_layout_inbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/IntercomErrorView;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonTextColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    new-instance v1, Lio/intercom/android/sdk/inbox/InboxFragment$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/inbox/InboxFragment$1;-><init>(Lio/intercom/android/sdk/inbox/InboxFragment;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/IntercomToolbar;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/views/IntercomToolbar;->setListener(Lio/intercom/android/sdk/views/IntercomToolbar$Listener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/views/IntercomToolbar;->setSubtitleVisibility(I)V

    iget-boolean v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->isTwoPane:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/views/IntercomToolbar;->setCloseButtonVisibility(I)V

    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/intercom/android/sdk/inbox/InboxFragment$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/inbox/InboxFragment$2;-><init>(Lio/intercom/android/sdk/inbox/InboxFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    return-object v0

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/i;->onDetach()V

    sget-object v0, Lio/intercom/android/sdk/inbox/InboxFragment$Listener;->EMPTY:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    return-void
.end method

.method public onInboxClicked()V
    .locals 0

    return-void
.end method

.method public onLoadMore()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->store:Lio/intercom/android/sdk/store/Store;

    invoke-virtual {v0}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->inboxState()Lio/intercom/android/sdk/state/InboxState;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/InboxState;->status()Lio/intercom/android/sdk/state/InboxState$Status;

    move-result-object v0

    sget-object v2, Lio/intercom/android/sdk/state/InboxState$Status;->LOADING:Lio/intercom/android/sdk/state/InboxState$Status;

    if-eq v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getCreatedAt()J

    move-result-wide v0

    iget-object v2, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {v0, v1}, Lio/intercom/android/sdk/actions/Actions;->fetchInboxBeforeDateRequest(J)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {}, Lio/intercom/android/sdk/actions/Actions;->inboxOpened()Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->isTwoPane:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    :cond_0
    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->setToolbarTitle()V

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->setColorScheme()V

    invoke-super {p0}, Landroid/support/v4/app/i;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/i;->onStart()V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v1, Lio/intercom/android/sdk/store/Selectors;->INBOX:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v1, p0}, Lio/intercom/android/sdk/store/Store;->subscribeToChanges(Lio/intercom/android/sdk/store/Store$Selector;Lio/intercom/android/sdk/store/Store$Subscriber;)Lio/intercom/android/sdk/store/Store$Subscription;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->subscription:Lio/intercom/android/sdk/store/Store$Subscription;

    return-void
.end method

.method public onStateChange(Lio/intercom/android/sdk/state/InboxState;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->adapter:Lio/intercom/android/sdk/inbox/InboxAdapter;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/inbox/InboxAdapter;->setInboxState(Lio/intercom/android/sdk/state/InboxState;)V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->adapter:Lio/intercom/android/sdk/inbox/InboxAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/inbox/InboxAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->endlessRecyclerScrollListener:Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/InboxState;->hasMorePages()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->setMorePagesAvailable(Z)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lio/intercom/android/sdk/inbox/InboxFragment$5;->$SwitchMap$io$intercom$android$sdk$state$InboxState$Status:[I

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/InboxState;->status()Lio/intercom/android/sdk/state/InboxState$Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/state/InboxState$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->displayErrorView()V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->displayLoadingView()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->displayLoadingView()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->displayInbox()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->hr()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->bA(I)V

    :cond_3
    invoke-virtual {p1}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->displayEmptyView()V

    :goto_1
    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/InboxState;->status()Lio/intercom/android/sdk/state/InboxState$Status;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/intercom/android/sdk/inbox/InboxFragment$Listener;->onConversationsLoaded(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxFragment;->displayInbox()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onStateChange(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/intercom/android/sdk/state/InboxState;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/inbox/InboxFragment;->onStateChange(Lio/intercom/android/sdk/state/InboxState;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->subscription:Lio/intercom/android/sdk/store/Store$Subscription;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/StoreUtils;->safeUnsubscribe(Lio/intercom/android/sdk/store/Store$Subscription;)V

    invoke-super {p0}, Landroid/support/v4/app/i;->onStop()V

    return-void
.end method

.method public onToolbarClicked()V
    .locals 0

    return-void
.end method

.method public setOverScrollColour()V
    .locals 2

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->inboxView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    invoke-static {v1, v0}, Lio/intercom/android/sdk/utilities/ViewUtils;->setOverScrollColour(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method
