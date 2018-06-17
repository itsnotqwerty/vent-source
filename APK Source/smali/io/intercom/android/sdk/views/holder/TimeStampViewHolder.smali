.class public Lio/intercom/android/sdk/views/holder/TimeStampViewHolder;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Lio/intercom/android/sdk/views/holder/ConversationPartViewHolder;


# instance fields
.field private final timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/intercom/android/sdk/utilities/TimeFormatter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lio/intercom/android/sdk/views/holder/TimeStampViewHolder;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    return-void
.end method


# virtual methods
.method public bind(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/TimeStampViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/TimeStampViewHolder;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getAbsoluteDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
