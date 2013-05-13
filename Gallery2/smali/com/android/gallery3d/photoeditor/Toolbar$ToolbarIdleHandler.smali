.class Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;
.super Ljava/lang/Object;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToolbarIdleHandler"
.end annotation


# instance fields
.field private final fadeIn:Landroid/view/animation/Animation;

.field private final fadeOut:Landroid/view/animation/Animation;

.field private idle:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final tools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, tools:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->tools:Ljava/util/List;

    .line 160
    new-instance v0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;-><init>(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->mainHandler:Landroid/os/Handler;

    .line 177
    const v0, 0x7f050010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeIn:Landroid/view/animation/Animation;

    .line 178
    const v0, 0x7f050011

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;

    .line 179
    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public getIdleState()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    return v0
.end method

.method public killIdle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    if-eqz v2, :cond_1

    .line 184
    iput-boolean v4, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    .line 185
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->tools:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 186
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 187
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 189
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 194
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public makeIdle()V
    .locals 3

    .prologue
    .line 201
    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    if-nez v2, :cond_1

    .line 202
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    .line 203
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->tools:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 204
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 205
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 210
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method
