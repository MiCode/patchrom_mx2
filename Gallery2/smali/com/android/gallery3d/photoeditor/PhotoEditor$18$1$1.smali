.class Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;->onDone(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/net/Uri;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$18;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #setter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1502(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;

    .line 548
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$18;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$18;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateSave(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$18;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$18;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    .line 550
    return-void

    .line 548
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
