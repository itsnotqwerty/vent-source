.class public final Lio/intercom/a/a/a/c/b/j$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final cKv:Lio/intercom/a/a/a/c/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;"
        }
    .end annotation
.end field

.field public final cKw:Lio/intercom/a/a/a/g/h;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/g/h;Lio/intercom/a/a/a/c/b/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g/h;",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/j$d;->cKw:Lio/intercom/a/a/a/g/h;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/j$d;->cKv:Lio/intercom/a/a/a/c/b/k;

    return-void
.end method
