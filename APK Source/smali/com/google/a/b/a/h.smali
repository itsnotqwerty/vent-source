.class public final Lcom/google/a/b/a/h;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/u",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final bhS:Lcom/google/a/v;


# instance fields
.field private final bil:Lcom/google/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/a/b/a/h$1;

    invoke-direct {v0}, Lcom/google/a/b/a/h$1;-><init>()V

    sput-object v0, Lcom/google/a/b/a/h;->bhS:Lcom/google/a/v;

    return-void
.end method

.method constructor <init>(Lcom/google/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/u;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/h;->bil:Lcom/google/a/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/a/b/a/h$2;->bim:[I

    invoke-virtual {v0}, Lcom/google/a/d/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/a/d/a;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/a/b/a/h;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/a;->endArray()V

    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/a/b/h;

    invoke-direct {v0}, Lcom/google/a/b/h;-><init>()V

    invoke-virtual {p1}, Lcom/google/a/d/a;->beginObject()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/a/d/a;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/a/b/a/h;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->endObject()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/a/d/a;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/a/d/a;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/google/a/d/a;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lcom/google/a/d/a;->nextNull()V

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/c;->vF()Lcom/google/a/d/c;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/h;->bil:Lcom/google/a/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/f;->l(Ljava/lang/Class;)Lcom/google/a/u;

    move-result-object v0

    instance-of v1, v0, Lcom/google/a/b/a/h;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/a/d/c;->vD()Lcom/google/a/d/c;

    invoke-virtual {p1}, Lcom/google/a/d/c;->vE()Lcom/google/a/d/c;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    goto :goto_0
.end method
