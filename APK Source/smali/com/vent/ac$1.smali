.class final Lcom/vent/ac$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ac;->b(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ccS:Lcom/vent/ac;


# direct methods
.method constructor <init>(Lcom/vent/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ac$1;->ccS:Lcom/vent/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ac$1;->ccS:Lcom/vent/ac;

    invoke-static {v0}, Lcom/vent/ac;->a(Lcom/vent/ac;)V

    return-void
.end method
