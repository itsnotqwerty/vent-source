.class public final Lio/intercom/a/a/a/c/c/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/o",
        "<",
        "Lio/intercom/a/a/a/c/c/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


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
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/c/m;

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v2, v3}, Lio/intercom/a/a/a/c/c/m;-><init>(J)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/a/a$a;->cNv:Lio/intercom/a/a/a/c/c/m;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/c/r;)Lio/intercom/a/a/a/c/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/c/r;",
            ")",
            "Lio/intercom/a/a/a/c/c/n",
            "<",
            "Lio/intercom/a/a/a/c/c/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/c/a/a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/a/a$a;->cNv:Lio/intercom/a/a/a/c/c/m;

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/c/a/a;-><init>(Lio/intercom/a/a/a/c/c/m;)V

    return-object v0
.end method
