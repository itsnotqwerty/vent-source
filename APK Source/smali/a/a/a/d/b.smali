.class public final La/a/a/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "La/a/a/g/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cpd:La/a/a/d$c;

.field private final cti:La/a/a/j;

.field private final ctj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TD;>;"
        }
    .end annotation
.end field

.field private final ctk:Z

.field private final ctl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/a/a/j;La/a/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/j;",
            "La/a/a/d;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/i$b;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, La/a/a/i$b;

    invoke-static {}, La/a/a/d;->FO()La/a/a/d$a;

    move-result-object v1

    invoke-virtual {v1, p1}, La/a/a/d$a;->d(La/a/a/j;)La/a/a/d$a;

    invoke-virtual {v1}, La/a/a/d$a;->FQ()La/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/i$b;-><init>(La/a/a/d;)V

    throw v0

    :cond_0
    iput-object p1, p0, La/a/a/d/b;->cti:La/a/a/j;

    iget-object v0, p2, La/a/a/d;->cpd:La/a/a/d$c;

    iput-object v0, p0, La/a/a/d/b;->cpd:La/a/a/d$c;

    invoke-virtual {p2, p1}, La/a/a/d;->c(La/a/a/j;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, La/a/a/d/b;->ctj:Ljava/util/Set;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/d/b;->ctl:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/d/b;->ctk:Z

    return-void

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, La/a/a/d/b;->ctj:Ljava/util/Set;

    goto :goto_0
.end method
