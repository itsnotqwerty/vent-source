.class public final Lio/intercom/a/a/a/c/a/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/c$a",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final cIu:Lio/intercom/a/a/a/c/b/a/b;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/b/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/a/i$a;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    return-void
.end method


# virtual methods
.method public final HU()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final synthetic at(Ljava/lang/Object;)Lio/intercom/a/a/a/c/a/c;
    .locals 2

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Lio/intercom/a/a/a/c/a/i;

    iget-object v1, p0, Lio/intercom/a/a/a/c/a/i$a;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    invoke-direct {v0, p1, v1}, Lio/intercom/a/a/a/c/a/i;-><init>(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)V

    return-object v0
.end method
