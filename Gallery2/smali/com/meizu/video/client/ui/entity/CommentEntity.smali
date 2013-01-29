.class public Lcom/meizu/video/client/ui/entity/CommentEntity;
.super Ljava/lang/Object;
.source "CommentEntity.java"


# instance fields
.field private author:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->id:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->title:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->author:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->score:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .parameter "author"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->author:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->content:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->id:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->score:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/video/client/ui/entity/CommentEntity;->title:Ljava/lang/String;

    .line 30
    return-void
.end method
