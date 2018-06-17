.class abstract Lcom/vent/b/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation


# instance fields
.field bUL:Ljava/lang/String;

.field final synthetic clo:Lcom/vent/b/a;


# direct methods
.method constructor <init>(Lcom/vent/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$b;->clo:Lcom/vent/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
