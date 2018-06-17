.class public final Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$b;->a:Ljava/util/UUID;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$b;->b:Ljava/lang/Integer;

    return-void
.end method
