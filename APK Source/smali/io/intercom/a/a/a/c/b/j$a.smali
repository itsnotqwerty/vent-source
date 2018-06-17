.class public final Lio/intercom/a/a/a/c/b/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final cJc:Lio/intercom/a/a/a/c/b/g$d;

.field public final cJm:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/c/b/g",
            "<*>;>;"
        }
    .end annotation
.end field

.field public cKo:I


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/g$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/b/j$a$1;

    invoke-direct {v0, p0}, Lio/intercom/a/a/a/c/b/j$a$1;-><init>(Lio/intercom/a/a/a/c/b/j$a;)V

    invoke-static {v0}, Lio/intercom/a/a/a/i/a/a;->a(Lio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/j$a;->cJm:Landroid/support/v4/g/k$a;

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/j$a;->cJc:Lio/intercom/a/a/a/c/b/g$d;

    return-void
.end method
