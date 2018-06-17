.class public Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/AWS4Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HeaderSigningResult"
.end annotation


# instance fields
.field public final amU:Ljava/lang/String;

.field public final amV:Ljava/lang/String;

.field public final amW:[B

.field private final amX:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amU:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amV:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amW:[B

    iput-object p4, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amX:[B

    return-void
.end method


# virtual methods
.method public final getSignature()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amX:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amX:[B

    iget-object v2, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amX:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
