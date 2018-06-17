.class final Lcom/layer/sdk/internal/a$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/layer/b/d/h;Lcom/layer/b/f/c/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic bpT:Lcom/layer/b/d/h;

.field final synthetic bpU:Lcom/layer/b/f/c/n;

.field final synthetic bpV:Ljava/util/HashSet;

.field final synthetic bpW:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Ljava/util/List;Lcom/layer/b/d/h;Lcom/layer/b/f/c/n;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$14;->bpW:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$14;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/layer/sdk/internal/a$14;->bpT:Lcom/layer/b/d/h;

    iput-object p4, p0, Lcom/layer/sdk/internal/a$14;->bpU:Lcom/layer/b/f/c/n;

    iput-object p5, p0, Lcom/layer/sdk/internal/a$14;->bpV:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/a$14;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$14;->bpW:Lcom/layer/sdk/internal/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$14;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/layer/sdk/internal/a$14;->bpT:Lcom/layer/b/d/h;

    iget-object v3, p0, Lcom/layer/sdk/internal/a$14;->bpU:Lcom/layer/b/f/c/n;

    iget-object v4, p0, Lcom/layer/sdk/internal/a$14;->bpV:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layer/sdk/internal/a;->a(Ljava/util/List;Lcom/layer/b/d/h;Lcom/layer/b/f/c/n;Ljava/util/HashSet;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/a$14;->bpV:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/a$14;->bpW:Lcom/layer/sdk/internal/a;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/a$e;->c:Lcom/layer/sdk/internal/lsdki/a$e;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/layer/sdk/internal/a$14;->bpV:Ljava/util/HashSet;

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/layer/sdk/internal/a;->a(Lcom/layer/sdk/internal/lsdki/a$e;ZZLjava/util/HashSet;Z)V

    goto :goto_0
.end method
