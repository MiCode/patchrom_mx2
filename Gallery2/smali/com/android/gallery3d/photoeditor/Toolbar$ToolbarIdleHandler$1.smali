.class Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;
.super Landroid/os/Handler;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

.field final synthetic val$tools:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->val$tools:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 164
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 174
    :cond_0
    return-void

    .line 166
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->access$600(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    const/4 v3, 0x1

    #setter for: Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z
    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->access$602(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;Z)Z

    .line 168
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->val$tools:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 169
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->access$700(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
