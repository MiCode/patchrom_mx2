.class Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->onComplete(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

.field final synthetic val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$10;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->val$result:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->val$result:Landroid/graphics/Bitmap;

    #setter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceBtimap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1002(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->setAnimationEnable(Z)V

    .line 410
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->enterMarkedMode()V

    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1302(Lcom/android/gallery3d/photoeditor/PhotoEditor;Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    .line 413
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setOnDoodleViewChanged(Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;)V

    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addInputMethodChangeListener()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->initDoodleParams()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 419
    :cond_1
    return-void
.end method
