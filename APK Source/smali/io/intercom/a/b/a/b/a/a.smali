.class public final Lio/intercom/a/b/a/b/a/a;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/a/b/a/r",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final cRW:Lio/intercom/a/b/a/s;


# instance fields
.field private final bhT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final cRX:Lio/intercom/a/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/r",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/b/a/b/a/a$1;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/a/a$1;-><init>()V

    sput-object v0, Lio/intercom/a/b/a/b/a/a;->cRW:Lio/intercom/a/b/a/s;

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/r",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    new-instance v0, Lio/intercom/a/b/a/b/a/m;

    invoke-direct {v0, p1, p2, p3}, Lio/intercom/a/b/a/b/a/m;-><init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lio/intercom/a/b/a/b/a/a;->cRX:Lio/intercom/a/b/a/r;

    iput-object p3, p0, Lio/intercom/a/b/a/b/a/a;->bhT:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    sget-object v1, Lio/intercom/a/b/a/d/b;->cTE:Lio/intercom/a/b/a/d/b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextNull()V

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/a;->cRX:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endArray()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/a;->bhT:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kj()Lio/intercom/a/b/a/d/c;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/a/b/a/b/a/a;->cRX:Lio/intercom/a/b/a/r;

    invoke-virtual {v3, p1, v2}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kk()Lio/intercom/a/b/a/d/c;

    goto :goto_0
.end method
