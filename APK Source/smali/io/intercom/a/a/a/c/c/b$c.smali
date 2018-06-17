.class final Lio/intercom/a/a/a/c/c/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/b",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private final cMv:Lio/intercom/a/a/a/c/c/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/b$b",
            "<TData;>;"
        }
    .end annotation
.end field

.field private final cMx:[B


# direct methods
.method constructor <init>([BLio/intercom/a/a/a/c/c/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lio/intercom/a/a/a/c/c/b$b",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/b$c;->cMx:[B

    iput-object p2, p0, Lio/intercom/a/a/a/c/c/b$c;->cMv:Lio/intercom/a/a/a/c/c/b$b;

    return-void
.end method


# virtual methods
.method public final HT()Lio/intercom/a/a/a/c/a;
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/a;->cHC:Lio/intercom/a/a/a/c/a;

    return-object v0
.end method

.method public final HU()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/b$c;->cMv:Lio/intercom/a/a/a/c/c/b$b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/c/b$b;->HU()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g;",
            "Lio/intercom/a/a/a/c/a/b$a",
            "<-TData;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/b$c;->cMv:Lio/intercom/a/a/a/c/c/b$b;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/b$c;->cMx:[B

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/c/b$b;->C([B)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->as(Ljava/lang/Object;)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final cleanup()V
    .locals 0

    return-void
.end method
