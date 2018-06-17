.class public final Lio/intercom/a/a/a/c/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/b$d;,
        Lio/intercom/a/a/a/c/c/b$a;,
        Lio/intercom/a/a/a/c/c/b$c;,
        Lio/intercom/a/a/a/c/c/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/n",
        "<[BTData;>;"
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


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/c/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/c/b$b",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/b;->cMv:Lio/intercom/a/a/a/c/c/b$b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic aw(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;
    .locals 4

    check-cast p1, [B

    new-instance v0, Lio/intercom/a/a/a/c/c/n$a;

    new-instance v1, Lio/intercom/a/a/a/h/b;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/intercom/a/a/a/c/c/b$c;

    iget-object v3, p0, Lio/intercom/a/a/a/c/c/b;->cMv:Lio/intercom/a/a/a/c/c/b$b;

    invoke-direct {v2, p1, v3}, Lio/intercom/a/a/a/c/c/b$c;-><init>([BLio/intercom/a/a/a/c/c/b$b;)V

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/c/n$a;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a/b;)V

    return-object v0
.end method
