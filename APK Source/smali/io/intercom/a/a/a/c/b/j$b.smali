.class public final Lio/intercom/a/a/a/c/b/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final cFC:Lio/intercom/a/a/a/c/b/c/a;

.field final cFD:Lio/intercom/a/a/a/c/b/c/a;

.field final cFI:Lio/intercom/a/a/a/c/b/c/a;

.field public final cJm:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;>;"
        }
    .end annotation
.end field

.field final cKq:Lio/intercom/a/a/a/c/b/c/a;

.field final cKr:Lio/intercom/a/a/a/c/b/l;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/b/j$b$1;

    invoke-direct {v0, p0}, Lio/intercom/a/a/a/c/b/j$b$1;-><init>(Lio/intercom/a/a/a/c/b/j$b;)V

    invoke-static {v0}, Lio/intercom/a/a/a/i/a/a;->a(Lio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/j$b;->cJm:Landroid/support/v4/g/k$a;

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/j$b;->cFD:Lio/intercom/a/a/a/c/b/c/a;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/j$b;->cFC:Lio/intercom/a/a/a/c/b/c/a;

    iput-object p3, p0, Lio/intercom/a/a/a/c/b/j$b;->cKq:Lio/intercom/a/a/a/c/b/c/a;

    iput-object p4, p0, Lio/intercom/a/a/a/c/b/j$b;->cFI:Lio/intercom/a/a/a/c/b/c/a;

    iput-object p5, p0, Lio/intercom/a/a/a/c/b/j$b;->cKr:Lio/intercom/a/a/a/c/b/l;

    return-void
.end method
