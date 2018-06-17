.class public final Lio/intercom/a/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field final cFB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/k",
            "<**>;>;"
        }
    .end annotation
.end field

.field cFC:Lio/intercom/a/a/a/c/b/c/a;

.field cFD:Lio/intercom/a/a/a/c/b/c/a;

.field cFE:Lio/intercom/a/a/a/c/b/b/a$a;

.field cFF:Lio/intercom/a/a/a/c/b/b/i;

.field cFG:Lio/intercom/a/a/a/g/g;

.field cFH:Lio/intercom/a/a/a/d/l$a;

.field cFI:Lio/intercom/a/a/a/c/b/c/a;

.field cFJ:Z

.field cFq:Lio/intercom/a/a/a/c/b/j;

.field cFr:Lio/intercom/a/a/a/c/b/a/e;

.field cFs:Lio/intercom/a/a/a/c/b/b/h;

.field cFw:Lio/intercom/a/a/a/c/b/a/b;

.field cFy:Lio/intercom/a/a/a/d/d;

.field logLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/d;->cFB:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lio/intercom/a/a/a/d;->logLevel:I

    new-instance v0, Lio/intercom/a/a/a/g/g;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/g;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/d;->cFG:Lio/intercom/a/a/a/g/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/d;->cFJ:Z

    return-void
.end method
