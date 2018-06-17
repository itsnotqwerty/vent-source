.class final Lcom/vent/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bWs:Lcom/vent/d;


# direct methods
.method constructor <init>(Lcom/vent/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/d$2;->bWs:Lcom/vent/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/vent/d$2;->bWs:Lcom/vent/d;

    iget-object v0, v0, Lcom/vent/d;->bWr:Lcom/vent/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/d$2;->bWs:Lcom/vent/d;

    iget-object v0, v0, Lcom/vent/d;->bWr:Lcom/vent/aq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/aq;->dX(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
