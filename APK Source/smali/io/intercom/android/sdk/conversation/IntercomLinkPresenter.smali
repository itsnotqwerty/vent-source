.class Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;
    }
.end annotation


# instance fields
.field private final api:Lio/intercom/android/sdk/api/Api;

.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final conversationId:Ljava/lang/String;

.field private final conversationParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;"
        }
    .end annotation
.end field

.field final intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

.field private wasAtBottom:Z


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/views/IntercomLinkView;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/api/Api;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/views/IntercomLinkView;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/api/Api;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->wasAtBottom:Z

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->api:Lio/intercom/android/sdk/api/Api;

    iput-object p4, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->conversationParts:Ljava/util/List;

    iput-object p5, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->conversationId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;)Lio/intercom/android/sdk/Provider;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;)Lio/intercom/android/sdk/models/Part;
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->getFirstMessagePart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;)Lio/intercom/android/sdk/api/Api;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->api:Lio/intercom/android/sdk/api/Api;

    return-object v0
.end method

.method private getFirstMessagePart()Lio/intercom/android/sdk/models/Part;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->conversationParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isMessagePart()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lio/intercom/android/sdk/models/Part;->NULL:Lio/intercom/android/sdk/models/Part;

    goto :goto_0
.end method

.method private shouldShowIntercomLink()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->shouldShowIntercomLink()Z

    move-result v0

    return v0
.end method


# virtual methods
.method onProfileScrolled(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->shouldShowIntercomLink()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/views/IntercomLinkView;->hideIfIntersectedOrShow(Landroid/view/View;)V

    goto :goto_0
.end method

.method setup(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomLinkView;->setAlpha(F)V

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->shouldShowIntercomLink()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/IntercomLinkView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_link_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-interface {p1, v0}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;->addBottomPadding(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    new-instance v1, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$1;-><init>(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomLinkView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->conversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/IntercomLinkView;->show()V

    goto :goto_0
.end method

.method updateIntercomLink(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->shouldShowIntercomLink()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;->isAtBottom()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->wasAtBottom:Z

    if-nez v1, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/IntercomLinkView;->show()V

    :cond_1
    :goto_1
    invoke-interface {p1}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;->isAtBottom()Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->wasAtBottom:Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->wasAtBottom:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/IntercomLinkView;->hide()V

    goto :goto_1
.end method
