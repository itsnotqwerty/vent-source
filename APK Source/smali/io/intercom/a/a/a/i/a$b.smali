.class final Lio/intercom/a/a/a/i/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final data:[B

.field final limit:I

.field final offset:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/i/a$b;->data:[B

    iput p2, p0, Lio/intercom/a/a/a/i/a$b;->offset:I

    iput p3, p0, Lio/intercom/a/a/a/i/a$b;->limit:I

    return-void
.end method
