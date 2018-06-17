.class final Lcom/vent/ba$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ba;->a(ZLjava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXf:Ljava/lang/Runnable;

.field final synthetic chs:Lcom/vent/ba;

.field final synthetic cht:Z

.field final synthetic chu:I


# direct methods
.method constructor <init>(Lcom/vent/ba;ZLjava/lang/Runnable;I)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ba$5;->chs:Lcom/vent/ba;

    iput-boolean p2, p0, Lcom/vent/ba$5;->cht:Z

    iput-object p3, p0, Lcom/vent/ba$5;->bXf:Ljava/lang/Runnable;

    iput p4, p0, Lcom/vent/ba$5;->chu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vent/ba$5;->chs:Lcom/vent/ba;

    iget-boolean v1, p0, Lcom/vent/ba$5;->cht:Z

    iget-object v2, p0, Lcom/vent/ba$5;->bXf:Ljava/lang/Runnable;

    iget v3, p0, Lcom/vent/ba$5;->chu:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/vent/ba;->a(ZLjava/lang/Runnable;I)V

    return-void
.end method
