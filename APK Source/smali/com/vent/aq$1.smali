.class final Lcom/vent/aq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ceJ:Lcom/vent/aq;


# direct methods
.method constructor <init>(Lcom/vent/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/aq$1;->ceJ:Lcom/vent/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vent/aq$1;->ceJ:Lcom/vent/aq;

    iget v1, v0, Lcom/vent/aq;->ceH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vent/aq;->ceH:I

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/vent/aq$1;->ceJ:Lcom/vent/aq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/vent/aq;->ceH:I

    iget-object v0, p0, Lcom/vent/aq$1;->ceJ:Lcom/vent/aq;

    invoke-virtual {v0, v2, v2, v2}, Lcom/vent/aq;->c(ZZZ)V

    :cond_0
    return-void
.end method
