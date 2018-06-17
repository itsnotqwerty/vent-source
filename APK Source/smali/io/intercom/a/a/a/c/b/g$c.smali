.class final Lio/intercom/a/a/a/c/b/g$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field cIL:Lio/intercom/a/a/a/c/h;

.field cJH:Lio/intercom/a/a/a/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/l",
            "<TZ;>;"
        }
    .end annotation
.end field

.field cJI:Lio/intercom/a/a/a/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/t",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final Ik()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g$c;->cJI:Lio/intercom/a/a/a/c/b/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
