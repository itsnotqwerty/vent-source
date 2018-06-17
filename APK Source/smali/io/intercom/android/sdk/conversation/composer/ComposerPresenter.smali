.class public Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/composer/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;
    }
.end annotation


# static fields
.field private static final SELECT_INPUT_DELAY_MS:I = 0x64


# instance fields
.field private final composerFragment:Lcom/intercom/composer/b;

.field private final composerLayout:Landroid/widget/FrameLayout;

.field private conversationId:Ljava/lang/String;

.field private final defaultInputRunnable:Ljava/lang/Runnable;

.field private final galleryInputManager:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

.field private final handler:Landroid/os/Handler;

.field private final inputDrawableManager:Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;

.field private inputProvider:Lio/intercom/android/sdk/conversation/composer/InputProvider;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field

.field private final textInputManager:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;Landroid/widget/FrameLayout;Landroid/support/v4/app/n;Landroid/view/LayoutInflater;Lio/intercom/android/sdk/nexus/NexusClient;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/store/Store;Landroid/content/Context;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;",
            "Landroid/widget/FrameLayout;",
            "Landroid/support/v4/app/n;",
            "Landroid/view/LayoutInflater;",
            "Lio/intercom/android/sdk/nexus/NexusClient;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->handler:Landroid/os/Handler;

    new-instance v1, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$1;-><init>(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;)V

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->defaultInputRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p11

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->store:Lio/intercom/android/sdk/store/Store;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p8

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    move-object/from16 v0, p9

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->conversationId:Ljava/lang/String;

    new-instance v2, Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;

    invoke-interface/range {p7 .. p7}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v1

    move-object/from16 v0, p12

    invoke-direct {v2, v0, v1}, Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->inputDrawableManager:Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;

    const-class v1, Lcom/intercom/composer/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v1

    instance-of v2, v1, Lcom/intercom/composer/b;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/intercom/composer/b;

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerFragment:Lcom/intercom/composer/b;

    :goto_0
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerFragment:Lcom/intercom/composer/b;

    new-instance v2, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$2;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$2;-><init>(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;)V

    iput-object v2, v1, Lcom/intercom/composer/b;->bkB:Lcom/intercom/composer/c;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerFragment:Lcom/intercom/composer/b;

    iput-object p0, v1, Lcom/intercom/composer/b;->bkC:Lcom/intercom/composer/f;

    new-instance v1, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    iget-object v9, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->inputDrawableManager:Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;

    move-object/from16 v2, p12

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v10, p11

    move-object v11, p1

    invoke-direct/range {v1 .. v11}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/nexus/NexusClient;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;)V

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->textInputManager:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    new-instance v1, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->inputDrawableManager:Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;

    move-object/from16 v2, p12

    move-object v4, p1

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->galleryInputManager:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    const/4 v1, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, p12

    invoke-static {v0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_1
    invoke-direct {p0, p3, v1}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->setUpInputs(Landroid/support/v4/app/n;Z)V

    return-void

    :cond_1
    invoke-static/range {p13 .. p13}, Lcom/intercom/composer/b;->dj(I)Lcom/intercom/composer/b;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerFragment:Lcom/intercom/composer/b;

    invoke-virtual {p3}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$id;->composer_container:I

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerFragment:Lcom/intercom/composer/b;

    const-class v4, Lcom/intercom/composer/b;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/t;->b(ILandroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/t;->commit()I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;)Lcom/intercom/composer/b;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerFragment:Lcom/intercom/composer/b;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;)Lio/intercom/android/sdk/conversation/composer/InputProvider;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->inputProvider:Lio/intercom/android/sdk/conversation/composer/InputProvider;

    return-object v0
.end method

.method private addInputsToProvider(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->inputProvider:Lio/intercom/android/sdk/conversation/composer/InputProvider;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/conversation/composer/InputProvider;->addInputs(Ljava/util/List;)V

    return-void
.end method

.method private setUpInputs(Landroid/support/v4/app/n;Z)V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->textInputManager:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->createInput()Lcom/intercom/composer/b/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->galleryInputManager:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->createGifInput()Lcom/intercom/composer/b/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->galleryInputManager:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->createGalleryInput()Lcom/intercom/composer/b/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-class v0, Lio/intercom/android/sdk/conversation/composer/InputProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lio/intercom/android/sdk/conversation/composer/InputProvider;

    invoke-direct {v0}, Lio/intercom/android/sdk/conversation/composer/InputProvider;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->inputProvider:Lio/intercom/android/sdk/conversation/composer/InputProvider;

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->addInputsToProvider(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->inputProvider:Lio/intercom/android/sdk/conversation/composer/InputProvider;

    const-class v2, Lio/intercom/android/sdk/conversation/composer/InputProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/t;->commit()I

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast v0, Lio/intercom/android/sdk/conversation/composer/InputProvider;

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->inputProvider:Lio/intercom/android/sdk/conversation/composer/InputProvider;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->inputProvider:Lio/intercom/android/sdk/conversation/composer/InputProvider;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/InputProvider;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->addInputsToProvider(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->textInputManager:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->cleanup()V

    return-void
.end method

.method public hideComposer()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public isOpen()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerFragment:Lcom/intercom/composer/b;

    iget-object v2, v2, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    invoke-virtual {v2}, Lcom/intercom/composer/ComposerView;->getSelectedInput()Lcom/intercom/composer/b/b;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    instance-of v2, v3, Lcom/intercom/composer/b/c/b;

    if-nez v2, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerFragment:Lcom/intercom/composer/b;

    iget-object v1, v0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    invoke-virtual {v1}, Lcom/intercom/composer/ComposerView;->getSelectedInput()Lcom/intercom/composer/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/b;

    invoke-virtual {v1, v0, v3, v3}, Lcom/intercom/composer/ComposerView;->a(Lcom/intercom/composer/b/b;ZZ)Z

    :goto_0
    iget-object v0, v1, Lcom/intercom/composer/ComposerView;->bkS:Lcom/intercom/composer/c/a;

    invoke-virtual {v0}, Lcom/intercom/composer/c/a;->vX()Z

    return-void

    :cond_0
    iget-object v0, v1, Lcom/intercom/composer/ComposerView;->bkR:Lcom/intercom/composer/b/b/e;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/intercom/composer/b/b/e;->blF:Lcom/intercom/composer/b/b;

    invoke-virtual {v0}, Lcom/intercom/composer/b/b/e;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onInputSelected(Lcom/intercom/composer/b/b;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {}, Lio/intercom/android/sdk/actions/Actions;->composerInputChanged()Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->conversationId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intercom/composer/b/b;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->clickedInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestFocus()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->textInputManager:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->requestFocus()V

    return-void
.end method

.method public returnToDefaultInput()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->defaultInputRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->conversationId:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->textInputManager:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->setConversationId(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->galleryInputManager:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->setConversationId(Ljava/lang/String;)V

    return-void
.end method

.method public setHint(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->textInputManager:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->setHint(I)V

    return-void
.end method

.method public showComposer()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->composerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public updateMaxLines()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->textInputManager:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->updateMaxLines()V

    return-void
.end method
