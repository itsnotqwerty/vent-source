.class public final Lio/intercom/a/a/a/c/c/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cIS:Lio/intercom/a/a/a/c/h;

.field public final cMV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            ">;"
        }
    .end annotation
.end field

.field public final cMW:Lio/intercom/a/a/a/c/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/a/b",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/a/b",
            "<TData;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lio/intercom/a/a/a/c/c/n$a;-><init>(Lio/intercom/a/a/a/c/h;Ljava/util/List;Lio/intercom/a/a/a/c/a/b;)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/a/a/c/h;Ljava/util/List;Lio/intercom/a/a/a/c/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            ">;",
            "Lio/intercom/a/a/a/c/a/b",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/h;

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/n$a;->cIS:Lio/intercom/a/a/a/c/h;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/n$a;->cMV:Ljava/util/List;

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/a/b;

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    return-void
.end method
