.class public Lio/intercom/android/sdk/views/holder/EventViewHolder;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Lio/intercom/android/sdk/views/holder/ConversationPartViewHolder;


# instance fields
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

.field private final avatar:Landroid/widget/ImageView;

.field private final eventTitle:Landroid/widget/TextView;

.field private final requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lio/intercom/android/sdk/views/holder/EventViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/views/holder/EventViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    sget v0, Lio/intercom/android/sdk/R$id;->event_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/EventViewHolder;->eventTitle:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/EventViewHolder;->avatar:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bind(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getEventData()Lio/intercom/android/sdk/models/EventData;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/EventData;->getParticipant()Lio/intercom/android/sdk/models/EventParticipant;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/EventViewHolder;->eventTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/EventData;->getEventAsPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/EventParticipant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Avatar;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/EventParticipant;->getInitial()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/models/Avatar;->create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/Avatar;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/EventViewHolder;->avatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/EventViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v3, p0, Lio/intercom/android/sdk/views/holder/EventViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v1, v2, v0, v3}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    return-void
.end method
