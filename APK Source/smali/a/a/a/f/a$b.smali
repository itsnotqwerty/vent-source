.class public final La/a/a/f/a$b;
.super La/a/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Maxmimum steps reached"

    invoke-direct {p0, v0}, La/a/a/f/a;-><init>(Ljava/lang/String;)V

    return-void
.end method
