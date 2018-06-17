.class final Lio/intercom/a/a/a/c/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/b$a;
.implements Lio/intercom/a/a/a/c/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/b$a",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/intercom/a/a/a/c/b/e;"
    }
.end annotation


# instance fields
.field private final cIO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private final cIP:Lio/intercom/a/a/a/c/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/f",
            "<*>;"
        }
    .end annotation
.end field

.field private final cIQ:Lio/intercom/a/a/a/c/b/e$a;

.field private cIR:I

.field private cIS:Lio/intercom/a/a/a/c/h;

.field private cIT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/n",
            "<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private cIU:I

.field private volatile cIV:Lio/intercom/a/a/a/c/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/n$a",
            "<*>;"
        }
    .end annotation
.end field

.field private cIW:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/f;Lio/intercom/a/a/a/c/b/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/f",
            "<*>;",
            "Lio/intercom/a/a/a/c/b/e$a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lio/intercom/a/a/a/c/b/f;->Ib()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lio/intercom/a/a/a/c/b/b;-><init>(Ljava/util/List;Lio/intercom/a/a/a/c/b/f;Lio/intercom/a/a/a/c/b/e$a;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lio/intercom/a/a/a/c/b/f;Lio/intercom/a/a/a/c/b/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            ">;",
            "Lio/intercom/a/a/a/c/b/f",
            "<*>;",
            "Lio/intercom/a/a/a/c/b/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/a/a/a/c/b/b;->cIR:I

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/b;->cIO:Ljava/util/List;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/b;->cIP:Lio/intercom/a/a/a/c/b/f;

    iput-object p3, p0, Lio/intercom/a/a/a/c/b/b;->cIQ:Lio/intercom/a/a/a/c/b/e$a;

    return-void
.end method

.method private HX()Z
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/c/b/b;->cIU:I

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/b;->cIT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final HW()Z
    .locals 6

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIT:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/b;->HX()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget v0, p0, Lio/intercom/a/a/a/c/b/b;->cIR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/a/a/a/c/b/b;->cIR:I

    iget v0, p0, Lio/intercom/a/a/a/c/b/b;->cIR:I

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b;->cIO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIO:Ljava/util/List;

    iget v2, p0, Lio/intercom/a/a/a/c/b/b;->cIR:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/h;

    new-instance v2, Lio/intercom/a/a/a/c/b/c;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/b;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v3, v3, Lio/intercom/a/a/a/c/b/f;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-direct {v2, v0, v3}, Lio/intercom/a/a/a/c/b/c;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/h;)V

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/b;->cIP:Lio/intercom/a/a/a/c/b/f;

    invoke-virtual {v3}, Lio/intercom/a/a/a/c/b/f;->HZ()Lio/intercom/a/a/a/c/b/b/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/intercom/a/a/a/c/b/b/a;->a(Lio/intercom/a/a/a/c/h;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/b;->cIW:Ljava/io/File;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b;->cIW:Ljava/io/File;

    if-eqz v2, :cond_0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIS:Lio/intercom/a/a/a/c/h;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b;->cIW:Ljava/io/File;

    invoke-virtual {v0, v2}, Lio/intercom/a/a/a/c/b/f;->m(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIT:Ljava/util/List;

    iput v1, p0, Lio/intercom/a/a/a/c/b/b;->cIU:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    :goto_1
    if-nez v1, :cond_2

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/b;->HX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIT:Ljava/util/List;

    iget v2, p0, Lio/intercom/a/a/a/c/b/b;->cIU:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/intercom/a/a/a/c/b/b;->cIU:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b;->cIW:Ljava/io/File;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/b;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget v3, v3, Lio/intercom/a/a/a/c/b/f;->width:I

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/b;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget v4, v4, Lio/intercom/a/a/a/c/b/f;->height:I

    iget-object v5, p0, Lio/intercom/a/a/a/c/b/b;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v5, v5, Lio/intercom/a/a/a/c/b/f;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-interface {v0, v2, v3, v4, v5}, Lio/intercom/a/a/a/c/c/n;->b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v2, v2, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v2}, Lio/intercom/a/a/a/c/a/b;->HU()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/a/a/a/c/b/f;->z(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/b;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v2, v2, Lio/intercom/a/a/a/c/b/f;->cJg:Lio/intercom/a/a/a/g;

    invoke-interface {v1, v2, p0}, Lio/intercom/a/a/a/c/a/b;->a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public final as(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIQ:Lio/intercom/a/a/a/c/b/e$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/b;->cIS:Lio/intercom/a/a/a/c/h;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v3, v2, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    sget-object v4, Lio/intercom/a/a/a/c/a;->cHE:Lio/intercom/a/a/a/c/a;

    iget-object v5, p0, Lio/intercom/a/a/a/c/b/b;->cIS:Lio/intercom/a/a/a/c/h;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lio/intercom/a/a/a/c/b/e$a;->a(Lio/intercom/a/a/a/c/h;Ljava/lang/Object;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;Lio/intercom/a/a/a/c/h;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/a/b;->cancel()V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b;->cIQ:Lio/intercom/a/a/a/c/b/e$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/b;->cIS:Lio/intercom/a/a/a/c/h;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v2, v2, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    sget-object v3, Lio/intercom/a/a/a/c/a;->cHE:Lio/intercom/a/a/a/c/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lio/intercom/a/a/a/c/b/e$a;->a(Lio/intercom/a/a/a/c/h;Ljava/lang/Exception;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;)V

    return-void
.end method
