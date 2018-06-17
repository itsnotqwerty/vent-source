.class public Lcom/amazonaws/internal/config/SignerConfig;
.super Ljava/lang/Object;


# instance fields
.field public final aov:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/internal/config/SignerConfig;->aov:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/internal/config/SignerConfig;->aov:Ljava/lang/String;

    return-object v0
.end method
