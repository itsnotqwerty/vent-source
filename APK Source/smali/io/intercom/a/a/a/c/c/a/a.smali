.class public final Lio/intercom/a/a/a/c/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/n",
        "<",
        "Lio/intercom/a/a/a/c/c/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final cNu:Lio/intercom/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cNv:Lio/intercom/a/a/a/c/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/m",
            "<",
            "Lio/intercom/a/a/a/c/c/g;",
            "Lio/intercom/a/a/a/c/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.intercom.com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    const/16 v1, 0x9c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/a/a/a/c/i;->n(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/a/a/a/c/i;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/c/a/a;->cNu:Lio/intercom/a/a/a/c/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/c/a/a;-><init>(Lio/intercom/a/a/a/c/c/m;)V

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/a/a/c/c/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/c/m",
            "<",
            "Lio/intercom/a/a/a/c/c/g;",
            "Lio/intercom/a/a/a/c/c/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/a/a;->cNv:Lio/intercom/a/a/a/c/c/m;

    return-void
.end method


# virtual methods
.method public final bridge synthetic aw(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;
    .locals 3

    check-cast p1, Lio/intercom/a/a/a/c/c/g;

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/a/a;->cNv:Lio/intercom/a/a/a/c/c/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/a/a;->cNv:Lio/intercom/a/a/a/c/c/m;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/c/m;->ax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/g;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/a/a;->cNv:Lio/intercom/a/a/a/c/c/m;

    invoke-static {p1}, Lio/intercom/a/a/a/c/c/m$a;->ay(Ljava/lang/Object;)Lio/intercom/a/a/a/c/c/m$a;

    move-result-object v1

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/m;->cMS:Lio/intercom/a/a/a/i/e;

    invoke-virtual {v0, v1, p1}, Lio/intercom/a/a/a/i/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    sget-object v0, Lio/intercom/a/a/a/c/c/a/a;->cNu:Lio/intercom/a/a/a/c/i;

    invoke-virtual {p4, v0}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lio/intercom/a/a/a/c/c/n$a;

    new-instance v2, Lio/intercom/a/a/a/c/a/h;

    invoke-direct {v2, p1, v0}, Lio/intercom/a/a/a/c/a/h;-><init>(Lio/intercom/a/a/a/c/c/g;I)V

    invoke-direct {v1, p1, v2}, Lio/intercom/a/a/a/c/c/n$a;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a/b;)V

    return-object v1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method
