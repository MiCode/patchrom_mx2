.class Lcom/android/gallery3d/photoeditor/PhotoEditor$12$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$12;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$12;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$12$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$12$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$12;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$12$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$12;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 451
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$12$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$12;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->startActivity(Landroid/content/Intent;)V

    .line 454
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
