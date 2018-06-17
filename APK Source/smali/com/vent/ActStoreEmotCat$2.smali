.class final Lcom/vent/ActStoreEmotCat$2;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActStoreEmotCat;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYB:Lcom/vent/ActStoreEmotCat;


# direct methods
.method constructor <init>(Lcom/vent/ActStoreEmotCat;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActStoreEmotCat$2;->bYB:Lcom/vent/ActStoreEmotCat;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat$2;->cmT:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat$2;->bYB:Lcom/vent/ActStoreEmotCat;

    invoke-virtual {v0}, Lcom/vent/ActStoreEmotCat;->finish()V

    :cond_0
    return-void
.end method
