.class Lcom/android/gallery3d/photoeditor/PhotoEditor$16;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->createBackRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1800(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->createYesCancelDialog()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1900(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 769
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->canSave()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->createYesCancelDialog()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1900(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    goto :goto_0

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1700(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setResult(ILandroid/content/Intent;)V

    .line 763
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    .line 767
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setArtisticButtonValid(Z)V

    .line 768
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setExposureButtonValid(Z)V

    goto :goto_0
.end method
