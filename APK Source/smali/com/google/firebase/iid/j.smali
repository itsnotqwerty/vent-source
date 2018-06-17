.class public final Lcom/google/firebase/iid/j;
.super Landroid/os/Binder;


# instance fields
.field final bfi:Lcom/google/firebase/iid/f;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/f;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/j;->bfi:Lcom/google/firebase/iid/f;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/iid/j;)Lcom/google/firebase/iid/f;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/j;->bfi:Lcom/google/firebase/iid/f;

    return-object v0
.end method
