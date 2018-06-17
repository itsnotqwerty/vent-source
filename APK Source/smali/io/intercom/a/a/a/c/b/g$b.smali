.class final Lio/intercom/a/a/a/c/b/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/h$a",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final cJF:Lio/intercom/a/a/a/c/a;

.field final synthetic cJG:Lio/intercom/a/a/a/c/b/g;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/g;Lio/intercom/a/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/g$b;->cJF:Lio/intercom/a/a/a/c/a;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<TZ;>;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<TZ;>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g$b;->cJF:Lio/intercom/a/a/a/c/a;

    sget-object v2, Lio/intercom/a/a/a/c/a;->cHF:Lio/intercom/a/a/a/c/a;

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    invoke-virtual {v0, v7}, Lio/intercom/a/a/a/c/b/f;->B(Ljava/lang/Class;)Lio/intercom/a/a/a/c/m;

    move-result-object v6

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    invoke-static {v0}, Lio/intercom/a/a/a/c/b/g;->a(Lio/intercom/a/a/a/c/b/g;)Lio/intercom/a/a/a/e;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget v2, v2, Lio/intercom/a/a/a/c/b/g;->width:I

    iget-object v5, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget v5, v5, Lio/intercom/a/a/a/c/b/g;->height:I

    invoke-interface {v6, v0, p1, v2, v5}, Lio/intercom/a/a/a/c/m;->transform(Landroid/content/Context;Lio/intercom/a/a/a/c/b/u;II)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    move-object v9, v0

    :goto_0
    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/u;->recycle()V

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/f;->cFu:Lio/intercom/a/a/a/e;

    iget-object v0, v0, Lio/intercom/a/a/a/e;->cFv:Lio/intercom/a/a/a/h;

    iget-object v0, v0, Lio/intercom/a/a/a/h;->cFZ:Lio/intercom/a/a/a/f/f;

    invoke-interface {v9}, Lio/intercom/a/a/a/c/b/u;->Iu()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/a/a/a/f/f;->J(Ljava/lang/Class;)Lio/intercom/a/a/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/f;->cFu:Lio/intercom/a/a/a/e;

    iget-object v0, v0, Lio/intercom/a/a/a/e;->cFv:Lio/intercom/a/a/a/h;

    iget-object v0, v0, Lio/intercom/a/a/a/h;->cFZ:Lio/intercom/a/a/a/f/f;

    invoke-interface {v9}, Lio/intercom/a/a/a/c/b/u;->Iu()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/f/f;->J(Ljava/lang/Class;)Lio/intercom/a/a/a/c/l;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/g;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/l;->b(Lio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c;

    move-result-object v0

    move-object v2, v0

    move-object v10, v1

    :goto_2
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v5, v1, Lio/intercom/a/a/a/c/b/g;->cJw:Lio/intercom/a/a/a/c/h;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/f;->Ia()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    move v1, v4

    :goto_3
    if-ge v1, v11, :cond_5

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/n$a;->cIS:Lio/intercom/a/a/a/c/h;

    invoke-interface {v0, v5}, Lio/intercom/a/a/a/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_4
    if-nez v0, :cond_6

    move v0, v3

    :goto_5
    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g$b;->cJF:Lio/intercom/a/a/a/c/a;

    invoke-virtual {v1, v0, v3, v2}, Lio/intercom/a/a/a/c/b/i;->a(ZLio/intercom/a/a/a/c/a;Lio/intercom/a/a/a/c/c;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v10, :cond_7

    new-instance v0, Lio/intercom/a/a/a/h$d;

    invoke-interface {v9}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/h$d;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    new-instance v0, Lio/intercom/a/a/a/h$d;

    invoke-interface {v9}, Lio/intercom/a/a/a/c/b/u;->Iu()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/h$d;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_3
    sget-object v0, Lio/intercom/a/a/a/c/c;->cHP:Lio/intercom/a/a/a/c/c;

    move-object v2, v0

    move-object v10, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_4

    :cond_6
    move v0, v4

    goto :goto_5

    :cond_7
    sget-object v0, Lio/intercom/a/a/a/c/c;->cHN:Lio/intercom/a/a/a/c/c;

    if-ne v2, v0, :cond_9

    new-instance v0, Lio/intercom/a/a/a/c/b/c;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/g;->cJw:Lio/intercom/a/a/a/c/h;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v2, v2, Lio/intercom/a/a/a/c/b/g;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/b/c;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/h;)V

    :goto_6
    invoke-static {v9}, Lio/intercom/a/a/a/c/b/t;->c(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/t;

    move-result-object v9

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/g;->cJn:Lio/intercom/a/a/a/c/b/g$c;

    iput-object v0, v1, Lio/intercom/a/a/a/c/b/g$c;->cIL:Lio/intercom/a/a/a/c/h;

    iput-object v10, v1, Lio/intercom/a/a/a/c/b/g$c;->cJH:Lio/intercom/a/a/a/c/l;

    iput-object v9, v1, Lio/intercom/a/a/a/c/b/g$c;->cJI:Lio/intercom/a/a/a/c/b/t;

    :cond_8
    return-object v9

    :cond_9
    sget-object v0, Lio/intercom/a/a/a/c/c;->cHO:Lio/intercom/a/a/a/c/c;

    if-ne v2, v0, :cond_a

    new-instance v0, Lio/intercom/a/a/a/c/b/w;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/f;->cFu:Lio/intercom/a/a/a/e;

    iget-object v1, v1, Lio/intercom/a/a/a/e;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v2, v2, Lio/intercom/a/a/a/c/b/g;->cJw:Lio/intercom/a/a/a/c/h;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v3, v3, Lio/intercom/a/a/a/c/b/g;->cIX:Lio/intercom/a/a/a/c/h;

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget v4, v4, Lio/intercom/a/a/a/c/b/g;->width:I

    iget-object v5, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget v5, v5, Lio/intercom/a/a/a/c/b/g;->height:I

    iget-object v8, p0, Lio/intercom/a/a/a/c/b/g$b;->cJG:Lio/intercom/a/a/a/c/b/g;

    iget-object v8, v8, Lio/intercom/a/a/a/c/b/g;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-direct/range {v0 .. v8}, Lio/intercom/a/a/a/c/b/w;-><init>(Lio/intercom/a/a/a/c/b/a/b;Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/h;IILio/intercom/a/a/a/c/m;Ljava/lang/Class;Lio/intercom/a/a/a/c/j;)V

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown strategy: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v9, p1

    move-object v6, v1

    goto/16 :goto_0
.end method
