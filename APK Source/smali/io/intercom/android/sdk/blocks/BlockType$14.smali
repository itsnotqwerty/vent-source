.class final enum Lio/intercom/android/sdk/blocks/BlockType$14;
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
    .locals 7

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->getButton()Lio/intercom/android/sdk/blocks/blockInterfaces/ButtonBlock;

    move-result-object v0

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/Block;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lio/intercom/android/sdk/blocks/BlockType$14;->getUrl(Lio/intercom/android/sdk/blocks/models/Block;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/Block;->getAlign()Lio/intercom/android/sdk/blocks/BlockAlignment;

    move-result-object v3

    move v4, p4

    move v5, p5

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lio/intercom/android/sdk/blocks/blockInterfaces/ButtonBlock;->addButton(Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
