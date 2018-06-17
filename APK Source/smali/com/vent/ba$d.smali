.class final Lcom/vent/ba$d;
.super Lcom/c/a/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field chL:Lcom/layer/atlas/util/b/a/a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/w;I)Lcom/c/a/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/vent/ba$d;->chL:Lcom/layer/atlas/util/b/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/layer/atlas/util/b/a/a;->a(Lcom/c/a/w;I)Lcom/c/a/y$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/c/a/w;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ba$d;->chL:Lcom/layer/atlas/util/b/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/layer/atlas/util/b/a/a;->a(Lcom/c/a/w;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
