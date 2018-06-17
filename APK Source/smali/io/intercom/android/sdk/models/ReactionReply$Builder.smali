.class public Lio/intercom/android/sdk/models/ReactionReply$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/ReactionReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field reaction_index:Ljava/lang/Integer;

.field reaction_set:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Reaction$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/intercom/android/sdk/models/ReactionReply;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/models/ReactionReply;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/models/ReactionReply;-><init>(Lio/intercom/android/sdk/models/ReactionReply$Builder;)V

    return-object v0
.end method
