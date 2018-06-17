.class public Lcom/layer/sdk/internal/a$c;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/internal/a;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/a$c;->a:Lcom/layer/sdk/internal/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/layer/sdk/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$c;->a:Lcom/layer/sdk/internal/a;

    return-object v0
.end method
