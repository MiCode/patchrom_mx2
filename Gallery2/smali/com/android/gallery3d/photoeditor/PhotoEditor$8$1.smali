.class Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->onComplete(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

.field final synthetic val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$8;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;->val$result:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 3

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$800(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/FilterStack;->setAnimationEnable(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$900(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->enterMarkedMode()V

    .line 274
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 275
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->systemActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setActionBarCustomView(Landroid/view/View;)V

    .line 277
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setSaveMenuItem(Landroid/view/MenuItem;)V

    .line 280
    .end local v0           #doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    :cond_0
    return-void
.end method
