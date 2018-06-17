.class public final Lio/intercom/a/b/a/b/a/h;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/r",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final cRW:Lio/intercom/a/b/a/s;


# instance fields
.field private final gson:Lio/intercom/a/b/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/b/a/b/a/h$1;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/a/h$1;-><init>()V

    sput-object v0, Lio/intercom/a/b/a/b/a/h;->cRW:Lio/intercom/a/b/a/s;

    return-void
.end method

.method constructor <init>(Lio/intercom/a/b/a/e;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/h;->gson:Lio/intercom/a/b/a/e;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    sget-object v1, Lio/intercom/a/b/a/b/a/h$2;->bim:[I

    invoke-virtual {v0}, Lio/intercom/a/b/a/d/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lio/intercom/a/b/a/b/a/h;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endArray()V

    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Lio/intercom/a/b/a/b/g;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/g;-><init>()V

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginObject()V

    :goto_2
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lio/intercom/a/b/a/b/a/h;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endObject()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextNull()V

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

.method public final a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 2
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
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/h;->gson:Lio/intercom/a/b/a/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/b/a/e;->L(Ljava/lang/Class;)Lio/intercom/a/b/a/r;

    move-result-object v0

    instance-of v1, v0, Lio/intercom/a/b/a/b/a/h;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kl()Lio/intercom/a/b/a/d/c;

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Km()Lio/intercom/a/b/a/d/c;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    goto :goto_0
.end method
