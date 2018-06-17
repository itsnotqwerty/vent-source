.class public final Lio/intercom/a/a/a/c/c/f$b;
.super Lio/intercom/a/a/a/c/c/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/c/c/f$a",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/c/f$b$1;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/c/f$b$1;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/c/f$a;-><init>(Lio/intercom/a/a/a/c/c/f$d;)V

    return-void
.end method
