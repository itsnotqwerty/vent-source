.class public final Lc/a/a/a/g;
.super Lc/a/a/a/c;


# instance fields
.field public final bIu:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/c;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lc/a/a/a/c;-><init>(B)V

    iput-object p1, p0, Lc/a/a/a/g;->bIu:Ljava/lang/Class;

    return-void
.end method
