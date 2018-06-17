.class final enum Lio/intercom/android/sdk/blocks/BlockType$16;
.super Lio/intercom/android/sdk/blocks/BlockType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/blocks/BlockType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/intercom/android/sdk/blocks/BlockType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/intercom/android/sdk/blocks/BlockType$1;)V

    return-void
.end method


# virtual methods
.method public final generateViewFromBlockAndLayout(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Lio/intercom/android/sdk/blocks/models/Block;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->getTwitterButton()Lio/intercom/android/sdk/blocks/blockInterfaces/TwitterBlock;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://twitter.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/Block;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/Block;->getAlign()Lio/intercom/android/sdk/blocks/BlockAlignment;

    move-result-object v2

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/blockInterfaces/TwitterBlock;->addTwitterButton(Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
