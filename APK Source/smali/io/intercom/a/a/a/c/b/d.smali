.class final Lio/intercom/a/a/a/c/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/b/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/b/a$b;"
    }
.end annotation


# instance fields
.field private final cIY:Lio/intercom/a/a/a/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/d",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final cIZ:Lio/intercom/a/a/a/c/j;

.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/d;Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/d",
            "<TDataType;>;TDataType;",
            "Lio/intercom/a/a/a/c/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/d;->cIY:Lio/intercom/a/a/a/c/d;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/d;->data:Ljava/lang/Object;

    iput-object p3, p0, Lio/intercom/a/a/a/c/b/d;->cIZ:Lio/intercom/a/a/a/c/j;

    return-void
.end method


# virtual methods
.method public final l(Ljava/io/File;)Z
    .locals 3

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/d;->cIY:Lio/intercom/a/a/a/c/d;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/d;->data:Ljava/lang/Object;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/d;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-interface {v0, v1, p1, v2}, Lio/intercom/a/a/a/c/d;->a(Ljava/lang/Object;Ljava/io/File;Lio/intercom/a/a/a/c/j;)Z

    move-result v0

    return v0
.end method
