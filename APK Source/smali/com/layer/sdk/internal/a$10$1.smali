.class final Lcom/layer/sdk/internal/a$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a$10;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic bpY:Lcom/layer/sdk/internal/a$10;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a$10;Z)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$10$1;->bpY:Lcom/layer/sdk/internal/a$10;

    iput-boolean p2, p0, Lcom/layer/sdk/internal/a$10$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/a$10$1;->bpY:Lcom/layer/sdk/internal/a$10;

    iget-object v0, v0, Lcom/layer/sdk/internal/a$10;->b:Lcom/layer/sdk/internal/a;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/a$e;->c:Lcom/layer/sdk/internal/lsdki/a$e;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/layer/sdk/internal/a$10$1;->a:Z

    move v3, v2

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/layer/sdk/internal/a;->a(Lcom/layer/sdk/internal/lsdki/a$e;ZZZLjava/util/HashSet;Lcom/layer/sdk/internal/lsdki/a$c;ZZ)V

    return-void
.end method
