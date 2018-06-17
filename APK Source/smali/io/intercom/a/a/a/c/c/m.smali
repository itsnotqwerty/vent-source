.class public final Lio/intercom/a/a/a/c/c/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cMS:Lio/intercom/a/a/a/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i/e",
            "<",
            "Lio/intercom/a/a/a/c/c/m$a",
            "<TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lio/intercom/a/a/a/c/c/m;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/c/m$1;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/a/a/a/c/c/m$1;-><init>(Lio/intercom/a/a/a/c/c/m;J)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/m;->cMS:Lio/intercom/a/a/a/i/e;

    return-void
.end method


# virtual methods
.method public final ax(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/a/a/a/c/c/m$a;->ay(Ljava/lang/Object;)Lio/intercom/a/a/a/c/c/m$a;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/m;->cMS:Lio/intercom/a/a/a/i/e;

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/i/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/c/m$a;->release()V

    return-object v1
.end method
