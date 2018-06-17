.class final Lio/intercom/a/a/a/c/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/c",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/a/d$a;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final HV()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/d$a;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final cleanup()V
    .locals 0

    return-void
.end method
