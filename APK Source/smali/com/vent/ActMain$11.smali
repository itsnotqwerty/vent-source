.class final Lcom/vent/ActMain$11;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain;->BP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXa:Lcom/vent/ActMain;


# direct methods
.method constructor <init>(Lcom/vent/ActMain;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain$11;->bXa:Lcom/vent/ActMain;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/ActMain;->bWQ:Z

    iget-object v1, p0, Lcom/vent/ActMain$11;->bXa:Lcom/vent/ActMain;

    iget-object v0, p0, Lcom/vent/ActMain$11;->cmT:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vent/ActMain;->em(I)V

    sget-boolean v0, Lcom/vent/ActMain;->bWP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$11;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BP()V

    :cond_0
    return-void
.end method
