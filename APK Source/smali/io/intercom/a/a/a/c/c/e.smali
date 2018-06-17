.class public final Lio/intercom/a/a/a/c/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/e$c;,
        Lio/intercom/a/a/a/c/c/e$b;,
        Lio/intercom/a/a/a/c/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/n",
        "<",
        "Ljava/lang/String;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final cMz:Lio/intercom/a/a/a/c/c/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/e$a",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/c/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/c/e$a",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/e;->cMz:Lio/intercom/a/a/a/c/c/e$a;

    return-void
.end method


# virtual methods
.method public final synthetic aw(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;
    .locals 4

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lio/intercom/a/a/a/c/c/n$a;

    new-instance v1, Lio/intercom/a/a/a/h/b;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/intercom/a/a/a/c/c/e$b;

    iget-object v3, p0, Lio/intercom/a/a/a/c/c/e;->cMz:Lio/intercom/a/a/a/c/c/e$a;

    invoke-direct {v2, p1, v3}, Lio/intercom/a/a/a/c/c/e$b;-><init>(Ljava/lang/String;Lio/intercom/a/a/a/c/c/e$a;)V

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/c/n$a;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a/b;)V

    return-object v0
.end method
