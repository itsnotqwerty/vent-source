.class final Lokhttp3/internal/a/d$2;
.super Lokhttp3/internal/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/a/d;->ML()Ld/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic cZW:Lokhttp3/internal/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/a/d$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/a/d;Ld/r;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/a/d$2;->cZW:Lokhttp3/internal/a/d;

    invoke-direct {p0, p2}, Lokhttp3/internal/a/e;-><init>(Ld/r;)V

    return-void
.end method


# virtual methods
.method protected final MM()V
    .locals 2

    sget-boolean v0, Lokhttp3/internal/a/d$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/a/d$2;->cZW:Lokhttp3/internal/a/d;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/a/d$2;->cZW:Lokhttp3/internal/a/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/a/d;->hasJournalErrors:Z

    return-void
.end method
