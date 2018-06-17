.class public final Lcom/google/firebase/messaging/e;
.super Ljava/lang/Object;


# instance fields
.field private bgb:Ljava/lang/String;

.field bgc:Ljava/lang/String;

.field bgd:Ljava/lang/String;

.field bge:Ljava/lang/String;

.field bgf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_exp_set"

    iput-object v0, p0, Lcom/google/firebase/messaging/e;->bgb:Ljava/lang/String;

    const-string v0, "_exp_activate"

    iput-object v0, p0, Lcom/google/firebase/messaging/e;->bgc:Ljava/lang/String;

    const-string v0, "_exp_timeout"

    iput-object v0, p0, Lcom/google/firebase/messaging/e;->bgd:Ljava/lang/String;

    const-string v0, "_exp_expire"

    iput-object v0, p0, Lcom/google/firebase/messaging/e;->bge:Ljava/lang/String;

    const-string v0, "_exp_clear"

    iput-object v0, p0, Lcom/google/firebase/messaging/e;->bgf:Ljava/lang/String;

    return-void
.end method
