.class public final Lc/a/a/a/a;
.super Lc/a/a/a/c;


# instance fields
.field public final bIu:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lc/a/a/a/c;-><init>(B)V

    iput-object p1, p0, Lc/a/a/a/a;->bIu:Ljava/lang/Class;

    return-void
.end method
