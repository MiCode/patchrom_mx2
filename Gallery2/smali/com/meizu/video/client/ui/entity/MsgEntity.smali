.class public Lcom/meizu/video/client/ui/entity/MsgEntity;
.super Ljava/lang/Object;
.source "MsgEntity.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/MsgEntity;->key:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/MsgEntity;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/MsgEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/MsgEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/MsgEntity;->key:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/MsgEntity;->value:Ljava/lang/String;

    .line 28
    return-void
.end method
