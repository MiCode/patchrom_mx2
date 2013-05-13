.class Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->onDone(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$23;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "filePath"

    .prologue
    .line 850
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #setter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v1, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1702(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;

    .line 851
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v2, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1700(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->canSave:Z
    invoke-static {v2, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$202(Lcom/android/gallery3d/photoeditor/PhotoEditor;Z)Z

    .line 852
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->canSave:Z
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateSave(Z)V

    .line 853
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$2100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 854
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->isShared:Z
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$2200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #setter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->shareTempFile:Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$2302(Lcom/android/gallery3d/photoeditor/PhotoEditor;Ljava/lang/String;)Ljava/lang/String;

    .line 856
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1700(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->initShareIntent(Landroid/net/Uri;)Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$2400(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 857
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->startActivity(Landroid/content/Intent;)V

    .line 862
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 851
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 859
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$23;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    goto :goto_1
.end method
