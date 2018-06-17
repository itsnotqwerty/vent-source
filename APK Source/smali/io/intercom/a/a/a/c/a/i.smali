.class public final Lio/intercom/a/a/a/c/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/c",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final cIt:Lio/intercom/a/a/a/c/d/a/q;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/d/a/q;

    invoke-direct {v0, p1, p2}, Lio/intercom/a/a/a/c/d/a/q;-><init>(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/a/i;->cIt:Lio/intercom/a/a/a/c/d/a/q;

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/i;->cIt:Lio/intercom/a/a/a/c/d/a/q;

    const/high16 v1, 0x500000

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/c/d/a/q;->mark(I)V

    return-void
.end method


# virtual methods
.method public final synthetic HV()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/i;->cIt:Lio/intercom/a/a/a/c/d/a/q;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/a/q;->reset()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/i;->cIt:Lio/intercom/a/a/a/c/d/a/q;

    return-object v0
.end method

.method public final cleanup()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/i;->cIt:Lio/intercom/a/a/a/c/d/a/q;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/a/q;->release()V

    return-void
.end method
