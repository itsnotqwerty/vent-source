.class public Lio/intercom/android/sdk/activities/IntercomMessengerActivity;
.super Lio/intercom/android/sdk/activities/IntercomBaseActivity;

# interfaces
.implements Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;
.implements Lio/intercom/android/sdk/inbox/InboxFragment$Listener;


# static fields
.field static final LAST_PARTICIPANT:Ljava/lang/String; = "last_participant"

.field static final PARCEL_CONVERSATION_ID:Ljava/lang/String; = "parcel_conversation_id"

.field static final PARCEL_INITIAL_MESSAGE:Ljava/lang/String; = "parcel_initial_message"

.field static final SHOW_INBOX:Ljava/lang/String; = "showInbox"


# instance fields
.field private activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

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

.field background:Landroid/view/View;

.field colorAnimation:Landroid/animation/ValueAnimator;

.field private containerView:Landroid/view/View;

.field private inboxFragment:Lio/intercom/android/sdk/inbox/InboxFragment;

.field private isTwoPane:Z

.field private metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method private applyBackOrCloseMessenger()V
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->closedMessengerBackButton()V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->closeMessenger()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->trackMoveToConversationListMetric()V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->hideKeyboard()V

    invoke-super {p0}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method private closeMessenger()V
    .locals 4

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->hideKeyboard()V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->showBackgroundColour()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->fadeOutBackground()V

    return-void
.end method

.method private displayConversation(Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;ZZLjava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->displayConversation(Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;ZZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private displayConversation(Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/models/LastParticipatingAdmin;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;)V"
        }
    .end annotation

    iget-boolean v3, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->isTwoPane:Z

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lio/intercom/android/sdk/conversation/ConversationFragment;->newInstance(Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;ZZLjava/lang/String;Ljava/util/List;)Lio/intercom/android/sdk/conversation/ConversationFragment;

    move-result-object v0

    const-class v1, Lio/intercom/android/sdk/conversation/ConversationFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->displayFragment(Landroid/support/v4/app/i;Ljava/lang/String;Z)V

    return-void
.end method

.method private displayFragment(Landroid/support/v4/app/i;Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "frag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "displaying "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v1

    instance-of v0, p1, Lio/intercom/android/sdk/conversation/ConversationFragment;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->isTwoPane:Z

    if-eqz v0, :cond_1

    sget v0, Lio/intercom/android/sdk/R$id;->conversation_fragment:I

    :goto_0
    invoke-virtual {v1, v0, p1, p2}, Landroid/support/v4/app/t;->b(ILandroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "frag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to the back stack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/support/v4/app/t;->u(Ljava/lang/String;)Landroid/support/v4/app/t;

    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/t;->commitAllowingStateLoss()I

    return-void

    :cond_1
    sget v0, Lio/intercom/android/sdk/R$id;->inbox_fragment:I

    goto :goto_0
.end method

.method private fadeOutBackground()V
    .locals 5

    const v0, 0x106000d

    invoke-static {p0, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_transparent_black:I

    invoke-static {p0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->colorAnimation:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->colorAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->colorAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->colorAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$3;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$3;-><init>(Lio/intercom/android/sdk/activities/IntercomMessengerActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->colorAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$4;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$4;-><init>(Lio/intercom/android/sdk/activities/IntercomMessengerActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->colorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getScreenHeight()I
    .locals 1

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private hasLoadedFragment(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static openComposer(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showInbox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "parcel_initial_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static openConversation(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showInbox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "parcel_conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p2}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isNull(Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "last_participant"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-class v1, Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static openInbox(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showInbox"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showBackgroundColour()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->background:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_transparent_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private showMessenger()V
    .locals 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    const-string v5, ""

    sget-object v2, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NULL:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    if-eqz v0, :cond_7

    const-class v1, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "parcel_conversation_id"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "parcel_initial_message"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "showInbox"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "last_participant"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v2, "last_participant"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    move-object v2, v0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->isTwoPane:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->inboxFragment:Lio/intercom/android/sdk/inbox/InboxFragment;

    const-class v4, Lio/intercom/android/sdk/inbox/InboxFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4, v3}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->displayFragment(Landroid/support/v4/app/i;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    if-nez v0, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->displayConversation(Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;ZZLjava/lang/String;)V

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->background:Landroid/view/View;

    const v0, 0x106000d

    invoke-static {p0, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_transparent_black:I

    invoke-static {p0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0xc8

    iget-object v3, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->background:Landroid/view/View;

    new-instance v4, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$1;

    invoke-direct {v4, p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$1;-><init>(Lio/intercom/android/sdk/activities/IntercomMessengerActivity;)V

    invoke-static {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->animateBackground(IIILandroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v6, v3

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->inboxFragment:Lio/intercom/android/sdk/inbox/InboxFragment;

    const-class v1, Lio/intercom/android/sdk/inbox/InboxFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->displayFragment(Landroid/support/v4/app/i;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->displayConversation(Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;ZZLjava/lang/String;)V

    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_0
.end method

.method private trackMoveToConversationListMetric()V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getExistingConversationFragment()Lio/intercom/android/sdk/conversation/ConversationFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->openConversationsListFromNewConversation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->openConversationsListFromConversation(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method animateSdkWindowIn()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->containerView:Landroid/view/View;

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$2;-><init>(Lio/intercom/android/sdk/activities/IntercomMessengerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method getExistingConversationFragment()Lio/intercom/android/sdk/conversation/ConversationFragment;
    .locals 2

    const-class v0, Lio/intercom/android/sdk/conversation/ConversationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/conversation/ConversationFragment;

    return-object v0
.end method

.method hideBackgroundColor()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->background:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_full_transparent_full_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getExistingConversationFragment()Lio/intercom/android/sdk/conversation/ConversationFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->shouldHandleOnBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->handleOnBackPressed()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->applyBackOrCloseMessenger()V

    goto :goto_0
.end method

.method public onBackToInboxClicked()V
    .locals 3

    const-class v0, Lio/intercom/android/sdk/inbox/InboxFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->hasLoadedFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->applyBackOrCloseMessenger()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->trackMoveToConversationListMetric()V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->hideKeyboard()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->inboxFragment:Lio/intercom/android/sdk/inbox/InboxFragment;

    const-class v1, Lio/intercom/android/sdk/inbox/InboxFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->displayFragment(Landroid/support/v4/app/i;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onComposerSelected()V
    .locals 6

    const/4 v3, 0x1

    const-string v1, ""

    sget-object v2, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NONE:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iget-boolean v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->isTwoPane:Z

    if-nez v0, :cond_0

    move v4, v3

    :goto_0
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->displayConversation(Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;ZZLjava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->teamPresence()Lio/intercom/android/sdk/models/TeamPresence;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/TeamPresence;->getOfficeHours()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->newConversationFromComposeButton(Z)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onConversationSelected(Lio/intercom/android/sdk/models/Conversation;)V
    .locals 10

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getLastParticipatingAdmin()Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    move-result-object v2

    invoke-static {v2}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isNull(Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NONE:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    :cond_0
    new-instance v7, Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->isRead()Z

    move-result v3

    iget-boolean v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->isTwoPane:Z

    if-nez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    const-string v5, ""

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getGroupConversationParticipants()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->displayConversation(Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;ZZLjava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->teamPresence()Lio/intercom/android/sdk/models/TeamPresence;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/TeamPresence;->getOfficeHours()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive()Z

    move-result v4

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getLastActiveAt()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getLastActiveMinutes(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v4, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->openConversationFromConversationList(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onConversationsLoaded(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Lio/intercom/android/sdk/state/InboxState$Status;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->isTwoPane:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/state/InboxState$Status;->SUCCESS:Lio/intercom/android/sdk/state/InboxState$Status;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getExistingConversationFragment()Lio/intercom/android/sdk/conversation/ConversationFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->onConversationSelected(Lio/intercom/android/sdk/models/Conversation;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->isInboundMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->onComposerSelected()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_messenger_activity_layout:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$bool;->intercom_is_two_pane:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->isTwoPane:Z

    iget-boolean v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->isTwoPane:Z

    invoke-static {v0}, Lio/intercom/android/sdk/inbox/InboxFragment;->newInstance(Z)Lio/intercom/android/sdk/inbox/InboxFragment;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->inboxFragment:Lio/intercom/android/sdk/inbox/InboxFragment;

    sget v0, Lio/intercom/android/sdk/R$id;->messenger_container:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->containerView:Landroid/view/View;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->showMessenger()V

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getActivityFinisher()Lio/intercom/android/sdk/utilities/ActivityFinisher;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    invoke-virtual {v1, p0}, Lio/intercom/android/sdk/utilities/ActivityFinisher;->register(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/utilities/ActivityFinisher;->unregister(Landroid/app/Activity;)V

    invoke-super {p0}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;->onDestroy()V

    return-void
.end method

.method public onToolbarCloseClicked()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->closedMessengerCloseButton()V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->closeMessenger()V

    return-void
.end method

.method public setStatusBarColor()V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColorDark()I

    move-result v0

    invoke-static {v1, v0}, Lio/intercom/android/sdk/views/StatusBarThemer;->setStatusBarColor(Landroid/view/Window;I)V

    return-void
.end method
