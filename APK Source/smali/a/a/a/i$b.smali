.class public final La/a/a/i$b;
.super La/a/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final cqQ:La/a/a/d;


# direct methods
.method public constructor <init>(La/a/a/d;)V
    .locals 1

    const-string v0, "The request yielded a \'null\' result while resolving."

    invoke-direct {p0, v0}, La/a/a/i;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, La/a/a/i$b;->cqQ:La/a/a/d;

    return-void
.end method
