.class public Lio/intercom/android/sdk/blocks/BlockFactory;
.super Ljava/lang/Object;


# instance fields
.field private final textSplittingStrategy:Lio/intercom/android/sdk/blocks/logic/TextSplittingStrategy;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/blocks/logic/TextSplittingStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/BlockFactory;->textSplittingStrategy:Lio/intercom/android/sdk/blocks/logic/TextSplittingStrategy;

    return-void
.end method


# virtual methods
.method public getBlocksForText(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/BlockFactory;->textSplittingStrategy:Lio/intercom/android/sdk/blocks/logic/TextSplittingStrategy;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/blocks/logic/TextSplittingStrategy;->apply(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;-><init>()V

    sget-object v5, Lio/intercom/android/sdk/blocks/BlockType;->PARAGRAPH:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v5}, Lio/intercom/android/sdk/blocks/BlockType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withText(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v4
.end method
