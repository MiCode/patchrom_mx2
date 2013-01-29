.class public Lcom/meizu/video/client/ui/entity/LableEntity;
.super Ljava/lang/Object;
.source "LableEntity.java"


# instance fields
.field private key:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->type:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->key:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->value:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->size:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->key:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->size:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->type:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/LableEntity;->value:Ljava/lang/String;

    .line 35
    return-void
.end method
