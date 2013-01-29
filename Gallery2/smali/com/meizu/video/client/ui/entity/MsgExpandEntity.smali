.class public Lcom/meizu/video/client/ui/entity/MsgExpandEntity;
.super Lcom/meizu/video/client/ui/entity/MsgEntity;
.source "MsgExpandEntity.java"


# instance fields
.field private level:Ljava/lang/String;

.field private select:Ljava/lang/String;

.field private valueExpand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->level:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->select:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->valueExpand:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .parameter "level"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->level:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSelect(Ljava/lang/String;)V
    .locals 0
    .parameter "select"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->select:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setValueExpand(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, valueExpand:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->valueExpand:Ljava/util/ArrayList;

    .line 36
    return-void
.end method
