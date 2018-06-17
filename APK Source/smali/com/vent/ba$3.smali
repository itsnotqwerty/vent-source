.class final Lcom/vent/ba$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic chs:Lcom/vent/ba;


# direct methods
.method constructor <init>(Lcom/vent/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ba$3;->chs:Lcom/vent/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ba$3;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->Em()V

    return-void
.end method
